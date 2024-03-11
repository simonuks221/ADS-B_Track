#include <stdint.h>
#include <stdio.h>
#include <stdarg.h>
#include "driver/uart.h"
#include "driver/gpio.h"
#include "esp_log.h"
#include "gps_app.h"

#define GPS_TX_PIN GPIO_NUM_6 //TODO: CHANGE
#define GPS_RX_PIN GPIO_NUM_7
#define TX_BUF_LEN 50
#define TX_FIFO_LEN 0
#define RX_FIFO_LEN 1024

bool GPS_APP_Init(void) {
    /* Setup UART settings */
    const uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_DEFAULT,
    };
    if(uart_driver_install(UART_NUM_2, RX_FIFO_LEN, TX_FIFO_LEN, 0, NULL, 0) != ESP_OK) {
        return false;
    }
    if(uart_param_config(UART_NUM_2, &uart_config) != ESP_OK) {
        return false;
    }
    if(uart_set_pin(UART_NUM_2, GPS_TX_PIN, GPS_RX_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE) != ESP_OK) {
        return false;
    }
    return true;
}

/*
static void rx_task(void *arg)
{
    uint8_t* data = (uint8_t*) malloc(RX_BUF_SIZE + 1);
    while (1) {
        const int rxBytes = uart_read_bytes(UART_NUM_1, data, RX_BUF_SIZE, 1000 / portTICK_PERIOD_MS);
        if (rxBytes > 0) {
            data[rxBytes] = 0;
        }
    }
    free(data);
}
*/