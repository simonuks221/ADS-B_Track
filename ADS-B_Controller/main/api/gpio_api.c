#include "esp_log.h"
#include "esp_attr.h"

#include "gpio_api.h"
#include "common.h"
#include "timer_api.h"
#include "../fpga_app.h"

typedef struct sGpioDesc {
    gpio_num_t num;
    gpio_mode_t mode;
    bool pull_up; //TODO: could merge into one enum
    bool pull_down;
    gpio_int_type_t interrupt;
    bool init_level; /* Starting voltage level */
} sGpioDesc_t;

#define GPIO(_enum, _gpio, _mode, _up, _down, _lvl) [_enum] = {.num = _gpio, .mode = _mode, .pull_up = _up, .pull_down = _down, .interrupt = GPIO_INTR_DISABLE, .init_level = _lvl}
#define EXTI(_enum, _gpio, _up, _down, _int)  [_enum] = {.num = _gpio, .mode = GPIO_MODE_INPUT, .pull_up = _up, .pull_down = _down, .interrupt = _int, .init_level = false}

static const char *LOG_TAG = "GPIO";

static const sGpioDesc_t gpio_lut[eGpioLast] = {
    EXTI(eGpioFpgaInt, FPGA_DATA_IRQ_PIN, false, false, GPIO_INTR_POSEDGE),
    EXTI(eGpioPPS, GPS_PPS_PIN, false, false, GPIO_INTR_POSEDGE),
    GPIO(eGpioFpgaCS, FPGA_CS_PIN, GPIO_MODE_OUTPUT_OD, false, false, true),
    GPIO(eGpioLEDOne, LED_0_PIN, GPIO_MODE_OUTPUT, false, false, false),
    GPIO(eGpioLEDTwo, LED_1_PIN, GPIO_MODE_OUTPUT, false, false, false),
    GPIO(eGpioLEDThree, LED_2_PIN, GPIO_MODE_OUTPUT, false, false, false),
};

static void IRAM_ATTR gpio_isr_handler(void* arg) {
    gpio_num_t *gpio_num = (gpio_num_t *) arg;
    if(*gpio_num >= GPIO_NUM_MAX) {
        return;
    }

    //TODO: make nicer (add all into callbacks) and test
    if(*gpio_num == gpio_lut[eGpioPPS].num) {
        /* Got PPS */
        Timer_API_SyncRtc();
    } else if (*gpio_num == gpio_lut[eGpioFpgaInt].num) {
        /* Got FPGA interrupt */
        FPGA_APP_DataIrq();
    }
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