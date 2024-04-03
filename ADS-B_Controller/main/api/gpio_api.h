#ifndef GPIO_API_H
#define GPIO_API_H

#include <stdbool.h>
#include "driver/gpio.h"

#define FPGA_MOSI_PIN GPIO_NUM_11
#define FPGA_MISO_PIN GPIO_NUM_13
#define FPGA_CLK_PIN GPIO_NUM_12
#define FPGA_CS_PIN GPIO_NUM_10
#define FPGA_DATA_IRQ_PIN GPIO_NUM_48

#define SD_MISO_PIN GPIO_NUM_35
#define SD_MOSI_PIN GPIO_NUM_37
#define SD_CLK_PIN GPIO_NUM_36
#define SD_CS_PIN GPIO_NUM_38
#define SD_CARD_DETECT_PIN GPIO_NUM_7

#define GPS_TX_PIN GPIO_NUM_17
#define GPS_RX_PIN GPIO_NUM_18
#define GPS_RST_PIN GPIO_NUM_20
#define GPS_WAKEUP_PIN GPIO_NUM_21
#define GPS_PPS_PIN GPIO_NUM_47

#define NEXTION_TX_PIN GPIO_NUM_1
#define NEXTION_RX_PIN GPIO_NUM_2

#define LED_0_PIN GPIO_NUM_5
#define LED_1_PIN GPIO_NUM_4
#define LED_2_PIN GPIO_NUM_6

#define PROG_RX_PIN GPIO_NUM_44
#define PROG_TX_PIN GPIO_NUM_43
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
