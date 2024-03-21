#include "esp_timer.h"
#include "esp_log.h"
#include "esp_sleep.h"
#include "sdkconfig.h"

#include "timer_api.h"

static const char *LOG_TAG = "TIM";

typedef struct sTimDesc {
    uint32_t period_us;
    char  *name;
    void (*callback)(void* arg);
} sTimDesc_t;

static void RTC_callback(void* arg);
static void PeriodicData_Callback(void* arg);
static uint32_t rtc_timer_ms = 0;

static sTimDesc_t timers[eTimLast] = {
    [eTimRTC] = {1000, "RTC", RTC_callback},
    [eTimPeriodicData] = {1000000, "Periodic", PeriodicData_Callback}
};

bool Timer_API_Init(void) {
    for(eTim_t tim = eTimFirst; tim < eTimLast; tim++) {
        esp_timer_create_args_t periodic_timer_args = {
            .callback = timers[tim].callback,
            .name =  timers[tim].name
        };
        esp_timer_handle_t periodic_timer; //TODO: take outside
        if(esp_timer_create(&periodic_timer_args, &periodic_timer) != ESP_OK) {
            ESP_LOGE(LOG_TAG, "Failed creating periodic timer");
        }
        esp_timer_start_periodic(periodic_timer, timers[tim].period_us);
    }
    //TODO: stopping timers
    //esp_timer_stop(periodic_timer);
    //esp_timer_delete(periodic_timer);
    return true;
}

/* 1ms RTC calbback to increment timer value */
static void RTC_callback(void* arg) {
    rtc_timer_ms++;
}

/* Periodic 1s callback for time printout */
static void PeriodicData_Callback(void* arg) {
    sDate_t curr_time = Timer_API_GetRtcTime();
    ESP_LOGI(LOG_TAG, "Curr time: %hhu:%hhu:%hhu.%hu", curr_time.hours, curr_time.minutes, curr_time.seconds, curr_time.seconds_fraction);
}

/* Get RTC time in miliseconds */
uint32_t Timer_API_GetRtcMs(void) {
    return rtc_timer_ms;
}

/* Gets RTC time in date format */
sDate_t Timer_API_GetRtcTime(void) {
    sDate_t rtc_time;
    uint32_t total_seconds = rtc_timer_ms / 1000;
    rtc_time.hours =  total_seconds / 3600;
    rtc_time.minutes = ( total_seconds % 3600) / 60;
    rtc_time.seconds =  total_seconds % 60;
    rtc_time.seconds_fraction = (rtc_timer_ms % 1000) / 10;
    return rtc_time;
}

/* Sets RTC time from date */
void Timer_API_SetRtc(sDate_t new_date) {
    rtc_timer_ms = (new_date.hours * 3600 + new_date.minutes * 60 + new_date.seconds)
                    * 1000 + new_date.seconds_fraction * 1000;
}

/* Syncs time with PPS 1s IRQ */
void Timer_API_SyncRtc(void) {
    /* Round ms value to nearest 1000 */
    rtc_timer_ms = (rtc_timer_ms + 500) / 1000 * 1000;
}
