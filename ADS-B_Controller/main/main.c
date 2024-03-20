#include <stdio.h>
#include <stdbool.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_log.h"

#include "nextion_api.h"
#include "gps_app.h"
#include "connection_app.h"
#include "fpga_app.h"
#include "sd_api.h"
#include "gpio_api.h"
#include "timer_api.h"
#include "api/uart_api.h"

#include "common.h"

const static char * LOG_TAG = "MAIN";

typedef bool (*APP_FUNC)(void);

typedef struct sApp {
    char *name;
    APP_FUNC init;
    APP_FUNC run;
} sApp_t;

sApp_t app_lut[] = {
    {"GPIO", GPIO_API_Init, NULL},
    {"TIM", Timer_API_Init, NULL},
    {"UART", UART_API_Init, NULL},
    {"NEXTION", Nextion_API_Init, NULL},
    {"SD", SD_API_Init, NULL},
    {"GPS", GPS_APP_Init, NULL},
    {"FPGA", FPGA_APP_Init, NULL},
    {"CONNECTION", Connection_APP_Init, Connection_APP_Run}
};

void app_main(void) {
    /* Initialise all applications */
    ESP_LOGI(LOG_TAG, "Start init");
    for(uint8_t i = 0; i < ARRAY_SIZE(app_lut); i++) {
        if(app_lut[i].init() == false) {
            ESP_LOGE(LOG_TAG, "FAILED init task %s", app_lut[i].name);
            return;
        }
        ESP_LOGI(LOG_TAG, "SUCCESS init %s", app_lut[i].name);
    }
    ESP_LOGI(LOG_TAG, "Init finished");
    /* Start main task loop */

    while(true) {
        for(uint8_t i = 0; i < ARRAY_SIZE(app_lut); i++) {
            if(app_lut[i].run == NULL) {
                continue;
            }
            app_lut[i].run();
        }
        vTaskDelay(1); /* Needed for watchdog */
    }
}