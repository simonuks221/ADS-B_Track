#include <string.h>
#include "esp_wifi.h"
#include <sys/socket.h>
#include <netdb.h>
#include <arpa/inet.h>
#include "esp_netif.h"
#include "esp_eap_client.h"
#include "esp_event.h"
#include "esp_log.h"
#include "nvs_flash.h"
#include "connection_app.h"

#define WIFI_SSID "137Festival"
#define WIFI_ID "example@ktu.edu"
#define WIFI_PASS "Festival137"
#define WIFI_USERNAME "ESP-S3"

#define SERVER_IP "66.249.69.140"
#define SERVER_PORT 80

static const char *payload = "Message from ESP32 ";

static const char *LOG_TAG = "CONN";

static void Connection_APP_Socket(void) {
    int addr_family = 0;
    int ip_protocol = 0;

    struct sockaddr_in dest_addr;
        inet_pton(AF_INET, SERVER_IP, &dest_addr.sin_addr);
        dest_addr.sin_family = AF_INET;
        dest_addr.sin_port = htons(SERVER_PORT);
        addr_family = AF_INET;
        ip_protocol = IPPROTO_IP;

    int sock =  socket(addr_family, SOCK_STREAM, ip_protocol);
    if (sock < 0) {
        ESP_LOGE(LOG_TAG, "Unable to create socket: errno %d", errno);
        return;
    }
    ESP_LOGI(LOG_TAG, "Socket created, connecting to %s:%d", SERVER_IP, SERVER_PORT);

    int err = connect(sock, (struct sockaddr *)&dest_addr, sizeof(dest_addr));
    if (err != 0) {
        ESP_LOGE(LOG_TAG, "Socket unable to connect: errno %d", errno);
        return;
    }
    ESP_LOGI(LOG_TAG, "Successfully connected");

    err = send(sock, payload, strlen(payload), 0);
    if (err < 0) {
        ESP_LOGE(LOG_TAG, "Error occurred during sending: errno %d", errno);
        return;
    }

    /*
    int len = recv(sock, rx_buffer, sizeof(rx_buffer) - 1, 0);
            // Error occurred during receiving
            if (len < 0) {
                ESP_LOGE(TAG, "recv failed: errno %d", errno);
                break;
            }
            // Data received
            else {
                rx_buffer[len] = 0; // Null-terminate whatever we received and treat like a string
                ESP_LOGI(TAG, "Received %d bytes from %s:", len, host_ip);
                ESP_LOGI(TAG, "%s", rx_buffer);
            }

    */

    if (sock != -1) {
        ESP_LOGE(LOG_TAG, "Shutting down socket and restarting...");
        shutdown(sock, 0);
        close(sock);
    }
}

/* esp netif object representing the WIFI station */
static esp_netif_t *sta_netif = NULL;

static void event_handler(void* arg, esp_event_base_t event_base,
                                int32_t event_id, void* event_data) {
    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        esp_wifi_connect();
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        esp_wifi_connect();

    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {

    }
}

bool Connection_APP_Init(void) {
    /* Init flash beforehand */
    if(nvs_flash_init() != ESP_OK) {
        return false;
    }
    /* Init TCP/IP and WiFi stack */
    if(esp_netif_init() != ESP_OK){
        return false;
    }
    if(esp_event_loop_create_default() != ESP_OK) {
        return false;
    }
    sta_netif = esp_netif_create_default_wifi_sta();
    if(sta_netif == NULL) {
        return false;
    }
    /* Setup WiFi config */
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    esp_wifi_init(&cfg);
    esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL);
    esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &event_handler, NULL);
    esp_wifi_set_storage(WIFI_STORAGE_RAM);
    wifi_config_t wifi_config = {
        .sta = {
            .ssid = WIFI_SSID,
            .password = WIFI_PASS,
            .threshold.authmode = WIFI_AUTH_WEP,
            .sae_pwe_h2e = WPA3_SAE_PWE_HASH_TO_ELEMENT,
            .sae_h2e_identifier = "",
        },
    };
    esp_wifi_set_mode(WIFI_MODE_STA);
    esp_wifi_set_config(WIFI_IF_STA, &wifi_config);

    //esp_eap_client_set_identity((uint8_t *)WIFI_ID, strlen(WIFI_ID));
    //esp_eap_client_set_username((uint8_t *)WIFI_USERNAME, strlen(WIFI_USERNAME));
   // esp_eap_client_set_password((uint8_t *)WIFI_PASS, strlen(WIFI_PASS));
    ////esp_eap_client_set_pac_file(pac_file_pac_start, pac_file_bytes - 1) ;
   // esp_eap_fast_config eap_fast_config = {
   //     .fast_provisioning = 2,
    //    .fast_max_pac_list_len = 0,
   //     .fast_pac_format_binary = false
    //};
    //esp_eap_client_set_fast_params(eap_fast_config);
    //esp_wifi_sta_enterprise_enable();
    esp_wifi_set_max_tx_power(-1);
    //esp_wifi_start();
    esp_wifi_set_max_tx_power(-1);


    return true;
}