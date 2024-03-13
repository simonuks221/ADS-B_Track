#include <stdio.h>
#include <stdbool.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_log.h"
#include "driver/uart.h"
#include "driver/gpio.h"
#include "esp_log.h"

#include "nextion_api.h"
#include "gps_app.h"
#include "connection_app.h"
#include "fpga_app.h"
#include "sd_api.h"
#include "led_api.h"

const static char * LOG_TAG = "MAIN";

typedef bool (*APP_INIT_FUNC)(void);

typedef struct sApp {
    char *name;
    APP_INIT_FUNC init;
    APP_INIT_FUNC run; //Placeholder
}sApp_t;

sApp_t app_lut[] = {
    {"LED", LED_API_Init, NULL},
    {"NEXTION", Nextion_API_Init, NULL},
    {"SD", SD_API_Init, NULL},
    {"GPS", GPS_APP_Init, NULL},
    {"FPGA", FPGA_APP_Init, NULL},

    //"CONNECTION", Connection_APP_Init, NULL}
};

void app_main(void) {
    /* Initialise all applications */
    ESP_LOGI(LOG_TAG, "Start init");
    for(uint8_t i = 0; i < (sizeof(app_lut) / sizeof(app_lut[0])); i++) {
        if(app_lut[i].init() == false) {
            ESP_LOGE(LOG_TAG, "FAILED init task %s", app_lut[i].name);
            return;
        }
        ESP_LOGI(LOG_TAG, "SUCCESS init %s", app_lut[i].name);
    }
    ESP_LOGI(LOG_TAG, "Init finished");
    /* Start main task loop */

    while(true) {
        vTaskDelay(1000);
    }
}