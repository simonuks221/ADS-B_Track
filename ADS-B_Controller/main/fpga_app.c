#include "driver/gpio.h"
#include "driver/spi_master.h"
#include "esp_log.h"
#include "fpga_app.h"

static const char *LOG_TAG = "FPGA";

#define MOSI_PIN GPIO_NUM_30
#define MISO_PIN GPIO_NUM_31
#define CLK_PIN GPIO_NUM_32
#define CS_PIN GPIO_NUM_33

static bool FPGA_API_Write() {

    return true;
}

static bool FPGA_API_Read() {

    return true;
}

bool FPGA_APP_Init(void) {
    /* Setup CS pin*/
    gpio_set_direction(CS_PIN, GPIO_MODE_OUTPUT_OD);
    gpio_set_level(CS_PIN, true);
    /* Init SPI */
    spi_bus_config_t buscfg = {
        .sclk_io_num = CLK_PIN,
        .mosi_io_num = MOSI_PIN,
        .miso_io_num = MISO_PIN,
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
        .clock_speed_hz = 10000000,
        .spics_io_num = CS_PIN,
        //.queue_size = 10,
        .flags = SPI_DEVICE_HALFDUPLEX
    };
    spi_device_handle_t handle;
    if(spi_bus_add_device(SPI2_HOST,  &dev_config, &handle) != ESP_OK) {
        ESP_LOGE(LOG_TAG, "Failed registering device");
        return true;
    }

    /* Send/receive */
    uint8_t tx_buffer[5] = {0x00, 0x01, 0x02, 0x03, 0x04};
    spi_transaction_t transaction = {
        .tx_buffer = tx_buffer,
        .length = 5*8,
    };

    if(spi_device_polling_transmit(handle, &transaction) != ESP_OK) {
        ESP_LOGE(LOG_TAG, "Failed transmitting");
    }

    //spi_device_acquire_bus(); //Call before polling for constant transmition
    //spi_device_release_bus();

    return true;
}