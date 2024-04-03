#ifndef UART_API_H
#define UART_API_H

#include <stdbool.h>
#include <stdint.h>

typedef enum eUart {
    eUartFirst = 0,
    eUartNextion = eUartFirst,
    eUartGps,
    eUartDebug, /* Uart programming port */
    eUartLast
}eUart_t;

bool UART_API_Init(void);
bool UART_API_RegisterDelimiter(eUart_t uart, char delimiter, void (*callback)(uint8_t *, size_t)) ;
uint32_t UART_API_Send(eUart_t uart, uint8_t *buffer, uint32_t len);


#endif // UART_API_H
