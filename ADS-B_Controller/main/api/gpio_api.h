#ifndef GPIO_API_H
#define GPIO_API_H

#include <stdbool.h>
#include "driver/gpio.h"

#define FPGA_MOSI_PIN GPIO_NUM_30
#define FPGA_MISO_PIN GPIO_NUM_31
#define FPGA_CLK_PIN GPIO_NUM_32
#define FPGA_CS_PIN GPIO_NUM_33

#define SD_MISO_PIN GPIO_NUM_11 ///TODO: change
#define SD_MOSI_PIN GPIO_NUM_12
#define SD_CLK_PIN GPIO_NUM_13
#define SD_CS_PIN GPIO_NUM_14
#define SD_CARD_DETECT_PIN GPIO_NUM_15

#define GPS_TX_PIN GPIO_NUM_6
#define GPS_RX_PIN GPIO_NUM_7

#define NEXTION_TX_PIN GPIO_NUM_4
#define NEXTION_RX_PIN GPIO_NUM_5

typedef enum eGpio {
    eGpioFirst = 0,
    eGpioFpgaInt = eGpioFirst,
    eGpioPPS,
    eGpioFpgaCS,
    eGpioLEDOne,
    eGpioLEDTwo,
    eGpioLEDThree,
    eGpioLast
} eGpio_t;

bool GPIO_API_Init(void);
bool GPIO_API_Set(eGpio_t gpio, bool state); /* Set gpio level */

#endif // GPIO_API_H
