#include <stdint.h>
#include <stdio.h>
#include <stdarg.h>
#include "esp_log.h"

#include "nextion_api.h"
#include "uart_api.h"

#define TX_BUF_LEN 50

/* Define cmd format */
static char *nextion_cmd_format_lut[eNextionCmdLast] = {
    [eNextionCmdWifiOk] = "\x0C\x01",
    [eNextionCmdWifiError] = "\x0C\x02",
    [eNextionCmdGpsOk] = "\x0D\x01",
    [eNextionCmdGpsError] = "\x0D\x02",
    [eNextionCmdRegressionOk] = "\x0E\x01",
    [eNextionCmdRegressionError] = "\x0E\x02",
    [eNextionCmdPOk] = "\x0F\x01",                     //TODO: check if need extra nulls at end
    [eNextionCmdStart] = "\x0A%6.0f%2.6f%2.6f\x00\x00" /* Arguments: globaltime float? Latitude float, longitude float  */,
    [eNextionCmdInfo] = "\x0B%6.0f\x00\x00"            /* Arguments: float globaltime? */
};


bool Nextion_API_Init(void) {
    //Nextion_API_SendCmd(eNextionCmdGpsOk);
    return true;
}

/* Used for sending Nextion command packets with arguments */
bool Nextion_API_SendCmd(eNextionCmd_t cmd, ...) {
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
    uint32_t sent_bytes = UART_API_Send(eUartNextion, (uint8_t *)tx_buffer, tx_len);
    return (sent_bytes == tx_len);
}