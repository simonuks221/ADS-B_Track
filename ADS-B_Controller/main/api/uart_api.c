#include "driver/uart.h"
#include "esp_log.h"

#include "uart_api.h"
#include "gpio_api.h"

static const char *LOG_TAG = "UART";

static void UART_API_Event_Handler(void *pvParameters);

typedef struct sUartDesc {
    uart_port_t port;
    uint32_t baud_rate;
    gpio_num_t rx_pin;
    gpio_num_t tx_pin;
    uint32_t rx_fifo_len;
    uint32_t tx_fifo_len;
    uint32_t rx_event_queue_size;
} sUartDesc_t;

typedef struct sUartDelimiterDesc {
    char delimiter;
    void (*delimiter_callback)(uint8_t *buffer, size_t len);

} sUartDelimiterDesc_t;

static const sUartDesc_t uart_lut[eUartLast] = {
    [eUartNextion] = {UART_NUM_1, 115200, NEXTION_RX_PIN, NEXTION_TX_PIN, 1024, 0, 0},
    [eUartGps] = {UART_NUM_2, 4800, GPS_RX_PIN, GPS_TX_PIN, 1024, 0, 20},
    //[eUartDebug] = {UART_NUM_0, 115200, GPS_RX_PIN, GPS_TX_PIN, 1024, 0, true}
};

/* Saves dalimiter to use for UART event queue */
static sUartDelimiterDesc_t uart_delimiter_lut[eUartLast] = { //TODO: add delimiter length
    [eUartNextion] = {' ', NULL},
    [eUartGps] = {' ', NULL},
    //[eUartDebug] = {' ', NULL}
};

static QueueHandle_t uart_queue_handlers[eUartLast] = {
    [eUartNextion] = NULL,
    [eUartGps] = NULL,
    //[eUartDebug] = NULL
};



bool UART_API_Init(void) {
    for(eUart_t uart = eUartFirst; uart < eUartLast; uart++) {
        const uart_config_t uart_config = {
            .baud_rate = uart_lut[uart].baud_rate,
            .data_bits = UART_DATA_8_BITS,
            .parity = UART_PARITY_DISABLE,
            .stop_bits = UART_STOP_BITS_1,
            .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
            .source_clk = UART_SCLK_DEFAULT,
        };
        /* Create new event queue handler if needed */
        /* Event queue is used for bytes receiving and delimiter searching */
        QueueHandle_t *new_queue_handle = uart_lut[uart].rx_event_queue_size > 0 ? &uart_queue_handlers[uart] : NULL;
        if(uart_driver_install(uart_lut[uart].port, uart_lut[uart].rx_fifo_len, uart_lut[uart].tx_fifo_len, uart_lut[uart].rx_event_queue_size, new_queue_handle, 0) != ESP_OK) {
            return false;
        }
        /* Setup parameters */
        if(uart_param_config(uart_lut[uart].port, &uart_config) != ESP_OK) {
            return false;
        }
        /* Setup pins */
        if(uart_set_pin(uart_lut[uart].port, uart_lut[uart].tx_pin, uart_lut[uart].rx_pin, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE) != ESP_OK) {
            return false;
        }
    }
    return true;
}

/* Register callback for uart delimiter found event */
bool UART_API_RegisterDelimiter(eUart_t uart, char delimiter, void (*callback)(uint8_t *, size_t) ) {
    if((uart_delimiter_lut[uart].delimiter_callback != NULL) || (uart >= eUartLast) || (callback == NULL)) {
        return false;
    }
    if(uart_enable_pattern_det_baud_intr(uart_lut[uart].port, delimiter, 1, 0xFFFF, 0, 0) != ESP_OK) {
        return false;
    }
    uart_delimiter_lut[uart].delimiter_callback = callback;
    uart_delimiter_lut[uart].delimiter = delimiter;

    /* Create task for handling uart events */
    static BaseType_t event_handler_task = pdFALSE;  //TODO: check if enum can't be on stack
    event_handler_task = xTaskCreate(UART_API_Event_Handler, "UART_API_Event_Handler", 4098, (void *)&uart, 12, NULL);
    if(event_handler_task != pdTRUE) { //TODO: save task handle
        return false;
    }
    return true;
}

static void UART_API_HandleEvent(eUart_t uart, uart_event_t *event) {
    size_t buffered_size;
    static uint8_t rx_buffer[1024] = {0}; //TODO: bad allocating this in function
    ESP_LOGI(LOG_TAG, "uart[%d] event: %u", uart_lut[uart].port, event->type);
    switch (event->type) {
        case UART_DATA:
            ESP_LOGI(LOG_TAG, "[UART DATA]: %d", event->size);
            uart_read_bytes(uart_lut[uart].port, rx_buffer, event->size, portMAX_DELAY);
            ESP_LOGI(LOG_TAG, "[DATA EVT]:");
            ESP_LOGI(LOG_TAG, "%s", (char *)rx_buffer);
            break;
        case UART_FIFO_OVF:
            //ESP_LOGI(LOG_TAG, "hw fifo overflow");
            uart_flush_input(uart_lut[uart].port); //TODO: hardcoded
            xQueueReset(uart_queue_handlers[uart]);
            break;
        case UART_BUFFER_FULL:
            //ESP_LOGI(LOG_TAG, "ring buffer full");
            uart_flush_input(uart_lut[uart].port); //TODO: hardcoded
            xQueueReset(uart_queue_handlers[uart]);
            break;
        case UART_BREAK:
            break;
        case UART_PARITY_ERR:
            break;
        case UART_FRAME_ERR:
            break;
        case UART_PATTERN_DET:
            uart_get_buffered_data_len(uart_lut[uart].port, &buffered_size);
            int pos = uart_pattern_pop_pos(uart_lut[uart].port);
            ESP_LOGI(LOG_TAG, "[UART PATTERN DETECTED] pos: %d, buffered size: %d", pos, buffered_size);

            if (pos == -1) {
                uart_flush_input(uart_lut[uart].port);
            } else {
                uart_read_bytes(uart_lut[uart].port, rx_buffer, pos + 1, 100 / portTICK_PERIOD_MS); /* +1 - for including the delimiter TODO: should be procedural */
                ESP_LOGI(LOG_TAG,"%s", (char *)rx_buffer);
                //TODO: remove the include and handler
                if(uart_delimiter_lut[uart].delimiter_callback == NULL) { //TODO: hardcoded
                    break;
                }
                (*uart_delimiter_lut[uart].delimiter_callback)(rx_buffer, pos);
            }
            break;
        default:
            //ESP_LOGI(LOG_TAG, "uart event type: %d", event.type);
            break;
    }
}

/* Handle events for queue */
static void UART_API_Event_Handler(void *pvParameters) {
    uart_event_t event;

    if(pvParameters == NULL) {
        ESP_LOGE(LOG_TAG, "Invalid UART queue handler");
        return;
    }
    eUart_t current_uart = *((eUart_t *)pvParameters);
    while(true) {
        /* Waiting for uart event */
        if (xQueueReceive(uart_queue_handlers[current_uart], (void *)&event, (TickType_t)portMAX_DELAY)) {
            UART_API_HandleEvent(current_uart, &event);
        }
    }
    vTaskDelete(NULL);
}

uint32_t UART_API_Send(eUart_t uart, uint8_t *buffer, uint32_t len) {
    if((uart >= eUartLast) || (buffer == NULL) || (len == 0)) {
        return 0;
    }
    uint32_t sent_bytes = uart_write_bytes(uart_lut[uart].port, buffer, len);
    return sent_bytes;
}