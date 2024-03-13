#include "driver/gpio.h"
#include "esp_log.h"
#include "led_api.h"

static const char *LOG_TAG = "LED";

//GPIO_NUM_4

static const gpio_num_t led_desc[eLedLast] = {
    [eLedOne] = {GPIO_NUM_20},
    [eLedTwo] = {GPIO_NUM_21},
    [eLedThree] = {GPIO_NUM_26},
};

bool LED_API_SetLED(eLed_t led, bool state) {
    if(led >= eLedLast){
        return false;
    }
    ESP_LOGI(LOG_TAG, "Turning LED %u %s!",led, state ? "ON" : "OFF");
    return gpio_set_level(led_desc[led], (uint32_t)state) == ESP_OK;
}

bool LED_API_Init(void) {

    for(eLed_t led = eLedFirst; led < eLedLast; led++) {
        gpio_set_direction(led_desc[led], GPIO_MODE_OUTPUT);
        gpio_reset_pin(led_desc[led]);
    }
    return true;
}