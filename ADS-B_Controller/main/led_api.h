#ifndef LED_API_H
#define LED_API_H

#include <stdbool.h>

typedef enum eLed {
    eLedFirst = 0,
    eLedOne = eLedFirst,
    eLedTwo,
    eLedThree,
    eLedLast
} eLed_t;

bool LED_API_Init(void);
bool LED_API_SetLED(eLed_t led, bool state);

#endif // LED_API_H
