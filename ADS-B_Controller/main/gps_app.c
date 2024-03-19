#include <stdint.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "driver/uart.h"
#include "esp_log.h"
#include "nextion_api.h"
#include "gps_app.h"
#include "gpio_api.h"


#define TX_BUF_LEN 75
#define TX_FIFO_LEN 0
#define RX_FIFO_LEN 1024
#define GPS_IDENTIFIER_LENGTH 6

static const char *LOG_TAG = "GPS";

static sCoordinates_t good_coordinates = {
    .latitude = 0,
    .longitude = 0,
    .altitude = 0
};

typedef bool (*GpsMessageHandler)(char*, size_t);
typedef struct sGpsMessageDesc {
    char *identifier;
    uint8_t identifier_len;
    GpsMessageHandler handler;
} sGpsMessageDesc_t;

static bool GGA_Handler(char *message, size_t len);

static sGpsMessageDesc_t gps_message_desc[] = {
    {"$GPGGA", 6, &GGA_Handler},
    {"$GPGSA", 6, NULL},
    {"$GPGSV", 6, NULL},
    {"$GPRMC", 6, NULL}
};

static inline bool HandleGpsMessage(char *message, size_t len) {
    if((message == NULL) || (len <= GPS_IDENTIFIER_LENGTH)) {
        return false;
    }
    for(uint8_t i = 0; i < sizeof(gps_message_desc)/sizeof(gps_message_desc[0]); i++){
        if(strncmp(message, gps_message_desc[i].identifier, gps_message_desc[i].identifier_len) != 0) {
            continue;
        }
        /* Found message */
        if(gps_message_desc[i].handler == NULL) {
            return false;
        }
        gps_message_desc[i].handler((message + gps_message_desc[i].identifier_len), len);
    }
    ESP_LOGE(LOG_TAG, "Failed finding handler for message:");
    ESP_LOGE(LOG_TAG, "%s", message);
    return false;
}

static inline bool GPS_APP_SetGoodCoordinates(float new_latitude, float new_longitude, float new_altitude) {
    /* Check if coordinates are new */
    if((new_latitude == good_coordinates.latitude) || (new_longitude == good_coordinates.longitude) ||
        (new_altitude == good_coordinates.altitude)) {
            return true;
    }
    /* New coordinates, notify nextion and other */
    good_coordinates.latitude = new_latitude;
    good_coordinates.longitude = new_longitude;
    good_coordinates.altitude = new_altitude;
    Nextion_API_SendCmd(eNextionCmdStart, new_latitude, new_longitude, 0); //TODO: implement time
    return true;
}

const sCoordinates_t *GPS_APP_GetCoordinates(void) {
    return &good_coordinates;
}

static QueueHandle_t uart0_queue;

static void uart_event_task(void *pvParameters) {
    uart_event_t event;
    size_t buffered_size;
    static uint8_t rx_buffer[TX_BUF_LEN] = {0};
    while(true) {
        //Waiting for UART event.
        if (xQueueReceive(uart0_queue, (void *)&event, (TickType_t)portMAX_DELAY)) {
            ESP_LOGI(LOG_TAG, "uart[%d] event:", UART_NUM_0);
            switch (event.type) {
                case UART_DATA:
                    //ESP_LOGI(LOG_TAG, "[UART DATA]: %d", event.size);
                    //uart_read_bytes(UART_NUM_0, rx_buffer, event.size, portMAX_DELAY);
                    //ESP_LOGI(LOG_TAG, "[DATA EVT]:");
                    //ESP_LOGI(LOG_TAG, "%s", (char *)rx_buffer);
                    break;
                case UART_FIFO_OVF:
                    //ESP_LOGI(LOG_TAG, "hw fifo overflow");
                    uart_flush_input(UART_NUM_0);
                    xQueueReset(uart0_queue);
                    break;
                case UART_BUFFER_FULL:
                    //ESP_LOGI(LOG_TAG, "ring buffer full");
                    uart_flush_input(UART_NUM_0);
                    xQueueReset(uart0_queue);
                    break;
                case UART_BREAK:
                    break;
                case UART_PARITY_ERR:
                    break;
                case UART_FRAME_ERR:
                    break;
                case UART_PATTERN_DET:
                    uart_get_buffered_data_len(UART_NUM_0, &buffered_size);
                    int pos = uart_pattern_pop_pos(UART_NUM_0);
                    ESP_LOGI(LOG_TAG, "[UART PATTERN DETECTED] pos: %d, buffered size: %d", pos, buffered_size);

                    if (pos == -1) {
                        uart_flush_input(UART_NUM_0);
                    } else {
                        uart_read_bytes(UART_NUM_0, rx_buffer, pos, 100 / portTICK_PERIOD_MS);
                        ESP_LOGI(LOG_TAG,"%s", rx_buffer);
                        HandleGpsMessage((char *)rx_buffer, pos);
                    }
                    break;
                default:
                    //ESP_LOGI(LOG_TAG, "uart event type: %d", event.type);
                    break;
            }
        }
    }
    vTaskDelete(NULL);
}

bool GPS_APP_Init(void) {
    /* Setup UART settings */
    const uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_DEFAULT,
    };
    if(uart_driver_install(UART_NUM_2, RX_FIFO_LEN, TX_FIFO_LEN, 0, NULL, 0) != ESP_OK) {
        return false;
    }
    if(uart_param_config(UART_NUM_2, &uart_config) != ESP_OK) {
        return false;
    }
    if(uart_set_pin(UART_NUM_2, GPS_TX_PIN, GPS_RX_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE) != ESP_OK) {
        return false;
    }

    /* ------------------DEBUG ONLY --------------------*/
    /* Setup UART settings */
    const uart_config_t new_uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_DEFAULT,
    };
    if(uart_driver_install(UART_NUM_0, 1024, 0, 20, &uart0_queue, 0) != ESP_OK) {
        return false;
    }
    if(uart_param_config(UART_NUM_0, &new_uart_config) != ESP_OK) {
        return false;
    }
    if(uart_set_pin(UART_NUM_0, GPS_TX_PIN, GPS_RX_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE) != ESP_OK) {
        return false;
    }
    uart_enable_pattern_det_baud_intr(UART_NUM_0, '\n', 1, 0xFFFF, 0, 0);
    xTaskCreate(uart_event_task, "uart_event_task", 4098, NULL, 12, NULL);
    return true;
}

static bool GGA_Handler(char *message, size_t len) {
    if(message == NULL) {
        return false;
    }
    float utc_time, latitude, longitude, altitude;
    char ns_indicator, ew_indicator;

    int8_t scanned_items = sscanf(message, ",%f,%f,%c,%f,%c,%*u,%*u,%*f,%f,%*c,%*f,%*c,,%*s", &utc_time, &latitude,
                                                               &ns_indicator, &longitude, &ew_indicator, &altitude);
    if(scanned_items != 6) {
        ESP_LOGI(LOG_TAG, "Invalid GPGGA message");
        return false;
    }
    GPS_APP_SetGoodCoordinates(latitude, longitude, altitude); //TODO: implement time

    ESP_LOGI(LOG_TAG, "Lat:%f, long:%f", latitude, longitude);
    return true;
}