#include "esp_timer.h"
#include "esp_log.h"
#include "esp_sleep.h"
#include "sdkconfig.h"

#include "timer_api.h"

static const char *LOG_TAG = "TIM";

static void periodic_timer_callback(void* arg);

bool Timer_API_Init(void) {
    //ESP_LOGI(LOG_TAG, "Log");
    const esp_timer_create_args_t periodic_timer_args = {
        .callback = &periodic_timer_callback,
        /* name is optional, but may help identify the timer when debugging */
        .name = "periodic"
    };

    esp_timer_handle_t periodic_timer;
    if(esp_timer_create(&periodic_timer_args, &periodic_timer) != ESP_OK) {
        ESP_LOGE(LOG_TAG, "Failed creating periodic timer");
    }
    esp_timer_start_periodic(periodic_timer, 1000000);

    //esp_timer_stop(periodic_timer);
    //esp_timer_delete(periodic_timer);

    return true;
}

static void periodic_timer_callback(void* arg) {
    ESP_LOGI(LOG_TAG, "Periodic timer called");
}