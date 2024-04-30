#include "driver/spi_master.h"
#include "esp_log.h"


#include "fpga_app.h"
#include "gpio_api.h"
#include "common/common.h"
#include "connection_app.h"

/* Types for register union packing */
typedef union uStatusRegister {
    uint8_t buffer;
    struct {
        unsigned int on : 1;    /* 1 bit always on */
        unsigned int init : 1;  /* 1 bit for if init done */
        unsigned int packet_available : 1; /* 1 bit for if packet already in FIFO */
        unsigned int empty : 6; /* 6 bits empty */
    } data;
} uStatusRegister_t;

/* FPGA inner registers */
#define STATUS_REG 0x01          /* Holds status information: init successful, packet received.... Read only */
#define PACKET_STORAGE_REG 0x02  /* Holds received packets. Read only */
#define RTC_SET_REG    0x03      /* FPGA RTC timer value register. Write only */
#define RTC_READ_REG    0x04     /* FPGA RTC fifo register. Read only */

/* FPGA APP flags */

#define FLAG_INIT_DONE BIT1    /* FPGA ready to work */
#define FLAG_PACKET_READY BIT2 /* FPGA has received packet in buffer, need to read it out */

static uint32_t fpga_flags = 0;

static const char *LOG_TAG = "FPGA";

static spi_device_handle_t spi_handle;

uint8_t empty_buf[100] = {0};

static bool FPGA_APP_ReadPacket(void) {
    uint8_t tx_buffer = PACKET_STORAGE_REG;
    sADSBPacket_t new_packet;

    spi_transaction_t transaction = {
        .tx_buffer = empty_buf,
        .addr = tx_buffer,
        .length = ADSB_PACKET_LEN_BYTES * 8, /* Tx length bits */
        .rx_buffer = (void *)new_packet.data,
        .rxlength = ADSB_PACKET_LEN_BYTES * 8
    };
    //spi_device_acquire_bus(); //Call before polling for constant transmition
    //spi_device_release_bus();
    if(spi_device_polling_transmit(spi_handle, &transaction) != ESP_OK) {
        ESP_LOGE(LOG_TAG, "Failed transmitting read data packet");
        return false;
    }
    ESP_LOGI(LOG_TAG, "Captured packet: %u", new_packet.data[0]);

    /* Read out timestamp */
    tx_buffer = RTC_READ_REG;

    uADSBtimestamp_t timestamp;

    transaction = (spi_transaction_t){
        .tx_buffer = empty_buf,
        .addr = tx_buffer,
        .length = ADSB_TIMESTAMP_LEN_BYTES * 8, /* Tx length bits */
        .rx_buffer = (void *)timestamp.buffer,
        .rxlength = ADSB_TIMESTAMP_LEN_BYTES * 8
    };

    if(spi_device_polling_transmit(spi_handle, &transaction) != ESP_OK) {
        ESP_LOGE(LOG_TAG, "Failed transmitting read timestamp packet");
        return false;
    }
    char timestamp_char[ADSB_TIMESTAMP_LEN_BYTES*2] = {0}; //TODO: remove hardcode
    if(!HexToString(timestamp.buffer, ADSB_TIMESTAMP_LEN_BYTES, timestamp_char)) {
        ESP_LOGE(LOG_TAG, "Failed making hex string");
        return false;
    }
    ESP_LOGI(LOG_TAG, "Timstamp: %s", timestamp_char);

    new_packet.timestamp_s = timestamp.data.s;
    new_packet.timestamp_ns = (uint32_t)(timestamp.data.impulses * 6.66f); //6.66f - one period of FPGA clock
    uint32_t temp_impulses = timestamp.data.impulses;
    ESP_LOGI(LOG_TAG, "Captured time s: %lu, impulses: %lu, ns: %lu",  new_packet.timestamp_s, temp_impulses, new_packet.timestamp_ns);

    return Connection_APP_SendMessagePacket(new_packet); //TODO: pointer?
}

static bool FPGA_APP_ReadStatus(void) {
    uint8_t tx_buffer = STATUS_REG;
    uStatusRegister_t status_register = {.buffer = 0};

    spi_transaction_t transaction = {
        .tx_buffer = empty_buf, //TODO: remove this and make half duplex
        .length = 8, /* Tx length in bits */
        .addr = tx_buffer,
        .rx_buffer = (void *)&status_register.buffer,
        .rxlength = 8
    };
    if(spi_device_polling_transmit(spi_handle, &transaction) != ESP_OK) {
        ESP_LOGE(LOG_TAG, "Failed transmitting read status");
        return false;
    }
    ESP_LOGI(LOG_TAG, "Read status: 0x%x", status_register.buffer);
    /* Unpack status register */
    if(status_register.data.on != 1) {
        ESP_LOGE(LOG_TAG, "Status register always ON invalid");
        return true;
    }

    status_register.data.init == 1 ?  SET_FLAG(fpga_flags, FLAG_INIT_DONE) : CLEAR_FLAG(fpga_flags, FLAG_INIT_DONE);
    /* Check if all packets are read */
    if(status_register.data.packet_available == 1) {
        SET_FLAG(fpga_flags, FLAG_PACKET_READY);
    }
    return true;
}

bool FPGA_APP_Init(void) {
    /* Init SPI */
    spi_bus_config_t buscfg = {
        .sclk_io_num = FPGA_CLK_PIN,
        .mosi_io_num = FPGA_MOSI_PIN,
        .miso_io_num = FPGA_MISO_PIN,
        .data2_io_num = -1,
        .data3_io_num = -1,
        .max_transfer_sz = 256,
        .data4_io_num = -1,
        .data5_io_num = -1,
        .data6_io_num = -1,
        .data7_io_num = -1
    };

    if(spi_bus_initialize(SPI3_HOST, &buscfg, SPI_DMA_CH_AUTO) != ESP_OK) {
        ESP_LOGE(LOG_TAG, "Failed init SPI bus");
        return true;
    }
    spi_device_interface_config_t dev_config = {
        .mode = 0,
        .clock_speed_hz = 10000000, //TODO: check max freq
        .spics_io_num = FPGA_CS_PIN,
        .queue_size = 10,
        .flags = SPI_DEVICE_BIT_LSBFIRST,
        .address_bits = 8,
    };
    if(spi_bus_add_device(SPI3_HOST,  &dev_config, &spi_handle) != ESP_OK) {
        ESP_LOGE(LOG_TAG, "Failed registering device");
        return true;
    }
    return true;
}

bool FPGA_APP_Run(void) {
    if(GET_FLAG(fpga_flags, FLAG_INIT_DONE) && GET_FLAG(fpga_flags, FLAG_PACKET_READY)) {
        while(GET_FLAG(fpga_flags, FLAG_PACKET_READY)) {
            FPGA_APP_ReadPacket();
            CLEAR_FLAG(fpga_flags, FLAG_PACKET_READY);
            /* Read status again if more packets are available */
            FPGA_APP_ReadStatus();
        }
    } else if(!GET_FLAG(fpga_flags, FLAG_INIT_DONE)) {
        /* FPGA not ready, continuously check status register */
        FPGA_APP_ReadStatus();
    }
    return true;
}

void FPGA_APP_UpdateRtc(uint32_t seconds) {
    return;
    // uint8_t tx_buffer[ADSB_TIMESTAMP_SECONDS_BYTES + 1] = {RTC_SET_REG};
    // memcpy(&tx_buffer[1], &seconds, ADSB_TIMESTAMP_SECONDS_BYTES);

    // spi_transaction_t transaction = {
    //     .tx_buffer = empty_buf, //TODO: remove this and make half duplex
    //     .length = ARRAY_SIZE(tx_buffer)*8, /* Tx length in bits */
    //     .addr = (uint64_t)*tx_buffer,
    //     .rx_buffer = (void *)empty_buf,
    //     .rxlength = 0
    // };
    // if(spi_device_polling_transmit(spi_handle, &transaction) != ESP_OK) {
    //     ESP_LOGE(LOG_TAG, "Failed transmitting update rtc");
    //     return;
    // }
}

void FPGA_APP_DataIrq(void) {
    SET_FLAG(fpga_flags, FLAG_PACKET_READY);
}
