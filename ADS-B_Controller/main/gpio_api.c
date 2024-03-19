#include "esp_log.h"
#include "esp_attr.h"

#include "gpio_api.h"
#include "common.h"

typedef struct sGpioDesc {
    gpio_num_t num;
    gpio_mode_t mode;
    bool pull_up; //TODO: could merge into one enum
    bool pull_down;
    gpio_int_type_t interrupt;
    bool init_level; /* Starting voltage level */
} sGpioDesc_t;

#define GPIO(_enum, _gpio, _mode, _up, _down, _int, _lvl) [_enum] = {.num = _gpio, .mode = _mode, .pull_up = _up, .pull_down = _down, .interrupt = _int, .init_level = _lvl}

static const char *LOG_TAG = "GPIO";

static const sGpioDesc_t gpio_lut[eGpioLast] = {
    GPIO(eGpioFpgaInt, GPIO_NUM_34, GPIO_MODE_INPUT, false, false, GPIO_INTR_POSEDGE, false),
    GPIO(eGpioPPS, GPIO_NUM_35, GPIO_MODE_INPUT, false, false, GPIO_INTR_POSEDGE, false),
    GPIO(eGpioFpgaCS, GPIO_NUM_36, GPIO_MODE_OUTPUT_OD, false, false, GPIO_INTR_DISABLE, true),
    GPIO(eGpioLEDOne, GPIO_NUM_37, GPIO_MODE_OUTPUT, false, false, GPIO_INTR_DISABLE, false),
    GPIO(eGpioLEDTwo, GPIO_NUM_38, GPIO_MODE_OUTPUT, false, false, GPIO_INTR_DISABLE, false),
    GPIO(eGpioLEDThree, GPIO_NUM_39, GPIO_MODE_OUTPUT, false, false, GPIO_INTR_DISABLE, false),
};

static void IRAM_ATTR gpio_isr_handler(void* arg) {
    if((uint32_t)arg >= GPIO_NUM_MAX) {
        return;
    }
    gpio_num_t gpio_num = (gpio_num_t) arg;
}

bool GPIO_API_Init(void) {
    /* Setup gpio pins with/without external interrupts */
    gpio_install_isr_service(0);
    for(eGpio_t gpio = eGpioFirst; gpio < eGpioLast; gpio++) {
        gpio_config_t new_config = {
            .pin_bit_mask = (0x1llu << gpio_lut[gpio].num),
            .pull_up_en = gpio_lut[gpio].pull_up ? GPIO_PULLUP_ENABLE : GPIO_PULLUP_DISABLE,
            .pull_down_en = gpio_lut[gpio].pull_down ? GPIO_PULLDOWN_ENABLE : GPIO_PULLDOWN_DISABLE,
            .mode = gpio_lut[gpio].mode,
            .intr_type = gpio_lut[gpio].interrupt
        };
        if(gpio_config(&new_config) != ESP_OK) {
            ESP_LOGE(LOG_TAG, "Failed config pin %u\n", gpio);
            return false;
        }
        /* Setup output level */
        if(gpio_lut[gpio].mode == GPIO_MODE_OUTPUT) {
            gpio_set_level(gpio_lut[gpio].num, gpio_lut[gpio].init_level);
        }
        /* Setup external interrupt */
        if(gpio_lut[gpio].interrupt != GPIO_INTR_DISABLE) {
            gpio_isr_handler_add(gpio_lut[gpio].num, gpio_isr_handler, (void *)&gpio_lut[gpio].num);
        }
    }
    return true;
}

bool GPIO_API_Set(eGpio_t gpio, bool state) {
    if(gpio >= eGpioLast) {
        return false;
    }
    return (gpio_set_level(gpio_lut[gpio].num, (uint32_t)state) == ESP_OK);
}