#include <stdint.h>
#include <stdio.h>
#include <stdarg.h>
#include "driver/uart.h"
#include "driver/gpio.h"
#include "esp_log.h"
#include "nextion_app.h"

#define NEXTION_TX_PIN GPIO_NUM_4 //TODO: CHANGE
#define NEXTION_RX_PIN GPIO_NUM_5
#define TX_BUF_LEN 50
#define TX_FIFO_LEN 0
#define RX_FIFO_LEN 1024

/* Define cmd format */
static char *nextion_cmd_format_lut[eNextionCmdLast] = {
    [eNextionCmdWifiOk] = "\x0C\x01",
    [eNextionCmdWifiError] = "\x0C\x02",
    [eNextionCmdGpsOk] = "\x0D\x01",
    [eNextionCmdGpsError] = "\x0D\x02",
    [eNextionCmdRegressionOk] = "\x0E\x01",
    [eNextionCmdRegressionError] = "\x0E\x02",
    [eNextionCmdPOk] = "\x0F\x01",
    [eNextionCmdStart] = "\x0A%2.6f%2.6f%6f" /* Arguments: Latitude float, longitude float, globaltime float?  */,
    [eNextionCmdInfo] = "\x0B%6f" /* Arguments: float globaltime? */
};


bool Nextion_APP_Init(void) {
    /* Setup UART settings */
    const uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_DEFAULT,
    };
    if(uart_driver_install(UART_NUM_1, RX_FIFO_LEN, TX_FIFO_LEN, 0, NULL, 0) != ESP_OK) {
        return false;
    }
    if(uart_param_config(UART_NUM_1, &uart_config) != ESP_OK) {
        return false;
    }
    if(uart_set_pin(UART_NUM_1, NEXTION_TX_PIN, NEXTION_RX_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE) != ESP_OK) {
        return false;
    }
    return true;
}

/* Used for sending Nextion command packets with arguments */
bool Nextion_APP_SendCmd(eNextionCmd_t cmd, ...) {
    if(cmd >= eNextionCmdLast) {
        return false;
    }
    static char tx_buffer[TX_BUF_LEN] = {0};
    /* Assemble NEXTION command from format in LUT and arguments given from variadic */
    va_list args;
    va_start(args, cmd);
    uint16_t tx_len = vsnprintf(tx_buffer, TX_BUF_LEN, nextion_cmd_format_lut[cmd], args);
    va_end(args);

    /* Send data */
    uint16_t sent_bytes = uart_write_bytes(UART_NUM_1, tx_buffer, tx_len);
    return sent_bytes == tx_len;
}