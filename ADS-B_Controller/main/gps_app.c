#include <stdint.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "esp_log.h"

#include "nextion_api.h"
#include "gps_app.h"
#include "gpio_api.h"
#include "uart_api.h"
#include "timer_api.h"

#define GPS_IDENTIFIER_LENGTH 6

static const char *LOG_TAG = "GPS";

static sCoordinates_t good_coordinates = {
    .latitude = 0,
    .longitude = 0,
    .altitude = 0
};

typedef void (*GpsMessageHandler)(uint8_t*, size_t);
typedef struct sGpsMessageDesc {
    char *identifier;
    uint8_t identifier_len;
    GpsMessageHandler handler;
} sGpsMessageDesc_t;

static void GGA_Handler(uint8_t *message, size_t len);

static sGpsMessageDesc_t gps_message_desc[] = {
    {"$GPGGA", 6, &GGA_Handler},
    {"$GPGSA", 6, NULL},
    {"$GPGSV", 6, NULL},
    {"$GPRMC", 6, NULL}
};

static inline void HandleGpsMessage(uint8_t *message, size_t len) {
    if((message == NULL) || (len <= GPS_IDENTIFIER_LENGTH)) {
        return;
    }
    for(uint8_t i = 0; i < sizeof(gps_message_desc)/sizeof(gps_message_desc[0]); i++){
        if(strncmp((char *)message, gps_message_desc[i].identifier, gps_message_desc[i].identifier_len) != 0) {
            continue;
        }
        /* Found message */
        if(gps_message_desc[i].handler == NULL) {
            return;
        }
        gps_message_desc[i].handler((message + gps_message_desc[i].identifier_len), len);
        return;
    }
    ESP_LOGE(LOG_TAG, "Failed finding handler for message:");
    ESP_LOGE(LOG_TAG, "%s", message);
}

static bool GPS_APP_SetGoodCoordinates(float new_latitude, float new_longitude, float new_altitude) {
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

static bool GPS_APP_SetGoodTime(char utc_time_string[10]) {
    sDate_t utc_time;
    /* Parsing of time string into decimals */
    /* Doesn't use sscanf for speed */
    utc_time.hours = (utc_time_string[0] - '0') * 10 + (utc_time_string[1] - '0');
    utc_time.minutes = (utc_time_string[2] - '0') * 10 + (utc_time_string[3] - '0');
    utc_time.seconds = (utc_time_string[4] - '0') * 10 + (utc_time_string[5] - '0');
    utc_time.seconds_fraction = (utc_time_string[7] - '0') * 100 + (utc_time_string[8] - '0') * 10 + (utc_time_string[9] - '0');
    Timer_API_SetRtc(utc_time);
    return true;
}

const sCoordinates_t *GPS_APP_GetCoordinates(void) {
    return &good_coordinates;
}

bool GPS_APP_Init(void) {
    return UART_API_RegisterDelimiter(eUartDebug, '\n', HandleGpsMessage); //TODO: change from debug
}

static void GGA_Handler(uint8_t *message, size_t len) {
    if(message == NULL) {
        return;
    }
    char utc_time_string[10];
    float latitude, longitude, altitude;
    char ns_indicator, ew_indicator;

    int8_t scanned_items = sscanf((char *)message, ",%10s,%f,%c,%f,%c,%*u,%*u,%*f,%f,%*c,%*f,%*c,,%*s", utc_time_string, &latitude,
                                                               &ns_indicator, &longitude, &ew_indicator, &altitude);
    if(scanned_items != 6) {
        ESP_LOGI(LOG_TAG, "Invalid GPGGA message");
        return;
    }
    GPS_APP_SetGoodCoordinates(latitude, longitude, altitude); //TODO: implement time
    GPS_APP_SetGoodTime(utc_time_string);

    ESP_LOGI(LOG_TAG, "Lat:%f, long:%f", latitude, longitude);
    return;
}