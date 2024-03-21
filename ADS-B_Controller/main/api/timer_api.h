#ifndef TIMER_API_H
#define TIMER_API_H

#include <stdbool.h>

typedef struct sDate {
    uint8_t hours;
    uint8_t minutes;
    uint8_t seconds;
    uint16_t seconds_fraction; /* 1/100 of a second */
} sDate_t;

typedef enum eTim {
    eTimFirst = 0,
    eTimRTC = eTimFirst,
    eTimPeriodicData,
    eTimLast,
} eTim_t;

bool Timer_API_Init(void);

uint32_t Timer_API_GetRtcMs(void);
sDate_t Timer_API_GetRtcTime(void);
void Timer_API_SetRtc(sDate_t new_date);
void Timer_API_SyncRtc(void);

#endif // TIMER_API_H
