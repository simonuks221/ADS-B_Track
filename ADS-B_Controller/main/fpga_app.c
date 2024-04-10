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
        unsigned int empty : 6; /* 6 bits empty */
    } data;
} uStatusRegister_t;

/* FPGA inner registers */
#define STATUS_REG 0x01         /* Holds status information: init successful, packet received.... Read only */
#define PACKET_STORAGE_REG 0x02 /* Holds received packets. Read only */
#define RTC_REG    0x03         /* FPGA RTC timer value register. Write only */

/* FPGA APP flags */
#define FLAG_INIT_DONE BIT0    /* FPGA ready to work */
#define FLAG_PACKET_READY BIT1 /* FPGA has received packet in buffer, need to read it out */

static uint32_t fpga_flags = 0;

static const char *LOG_TAG = "FPGA";

static spi_device_handle_t spi_handle;

uint8_t empty_buf[100] = {0};

static bool FPGA_APP_ReadPacket(void) {
    ESP_LOGI(LOG_TAG, "Reading packet");
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
        ESP_LOGE(LOG_TAG, "Failed transmitting read packet");
    }
    ESP_LOGI(LOG_TAG, "PAcket 0x%x", new_packet.data[0]);
    return Connection_APP_SendMessagePacket(new_packet); //TODO: pointer or smth?
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

    if(spi_bus_initialize(SPI2_HOST, &buscfg, SPI_DMA_CH_AUTO) != ESP_OK) {
        ESP_LOGE(LOG_TAG, "Failed init SPI bus");
        return true;
    }
    spi_device_interface_config_t dev_config = {
        .mode = 0,
        .clock_speed_hz = 1000000, //TODO: check max freq
        .spics_io_num = FPGA_CS_PIN,
        .queue_size = 10,
        .flags = SPI_DEVICE_BIT_LSBFIRST,
        .address_bits = 8,
    };
    if(spi_bus_add_device(SPI2_HOST,  &dev_config, &spi_handle) != ESP_OK) {
        ESP_LOGE(LOG_TAG, "Failed registering device");
        return true;
    }
    return true;
}

bool FPGA_APP_Run(void) {
    if(GET_FLAG(fpga_flags, FLAG_INIT_DONE) && GET_FLAG(fpga_flags, FLAG_PACKET_READY)) {
        FPGA_APP_ReadPacket();
        /* Read status again if more packets are available */
        FPGA_APP_ReadStatus();
    } else if(!GET_FLAG(fpga_flags, FLAG_INIT_DONE)) {
        /* FPGA not ready, continuously check status register */
        FPGA_APP_ReadStatus();
    }
    return true;
}

void FPGA_APP_UpdateRtc(void) {
    //TODO: implement periodic rtc updates
}

void FPGA_APP_DataIrq(void) {
    SET_FLAG(fpga_flags, FLAG_PACKET_READY);
}
