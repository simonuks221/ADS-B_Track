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
#include "lwip/sockets.h"
#include "lwip/netdb.h"
#include "ping/ping_sock.h"
#include "connection_app.h"

#define WIFI_SSID "137Festival"
#define WIFI_ID "example@ktu.edu"
#define WIFI_PASS "Festival137"
#define WIFI_USERNAME "ESP-S3"

#define FLAGS_WIFI_CONNECTED BIT0
#define FLAGS_WIFI_FAIL BIT1

#define SERVER_IP "192.168.137.1"
#define SERVER_PORT 626

static const char *payload = "Message from ESP32 ";

static const char *LOG_TAG = "CONN";

static uint32_t flags = 0;

static void Connection_SendSocket(void) {
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
    shutdown(sock, 0);
    close(sock);
}

/* esp netif object representing the WIFI station */
static esp_netif_t *sta_netif = NULL;

static void event_handler(void* arg, esp_event_base_t event_base,
                                int32_t event_id, void* event_data) {
    if(event_base == WIFI_EVENT) {
        switch(event_id) {
            case WIFI_EVENT_STA_START: {
                esp_wifi_connect();

            } break;
            case WIFI_EVENT_STA_DISCONNECTED: {
                //https://github.com/nopnop2002/esp-idf-ping/blob/master/main/main.c#L51
                esp_wifi_connect();
            } break;
        }
    } else if (event_base == IP_EVENT) {
        if(event_id == IP_EVENT_STA_GOT_IP) {
            //ip_event_got_ip_t* event = (ip_event_got_ip_t*) event_data;
            flags |= FLAGS_WIFI_CONNECTED;
        }
    }
}

static void test_on_ping_success(esp_ping_handle_t hdl, void *args)
{
    uint8_t ttl;
    uint16_t seqno;
    uint32_t elapsed_time, recv_len;
    ip_addr_t target_addr;
    esp_ping_get_profile(hdl, ESP_PING_PROF_SEQNO, &seqno, sizeof(seqno));
    esp_ping_get_profile(hdl, ESP_PING_PROF_TTL, &ttl, sizeof(ttl));
    esp_ping_get_profile(hdl, ESP_PING_PROF_IPADDR, &target_addr, sizeof(target_addr));
    esp_ping_get_profile(hdl, ESP_PING_PROF_SIZE, &recv_len, sizeof(recv_len));
    esp_ping_get_profile(hdl, ESP_PING_PROF_TIMEGAP, &elapsed_time, sizeof(elapsed_time));
    printf("%lu bytes from %s icmp_seq=%d ttl=%d time=%lu ms\n",
           recv_len, inet_ntoa(target_addr.u_addr.ip4), seqno, ttl, elapsed_time);
}

static void test_on_ping_timeout(esp_ping_handle_t hdl, void *args)
{
    uint16_t seqno;
    ip_addr_t target_addr;
    esp_ping_get_profile(hdl, ESP_PING_PROF_SEQNO, &seqno, sizeof(seqno));
    esp_ping_get_profile(hdl, ESP_PING_PROF_IPADDR, &target_addr, sizeof(target_addr));
    printf("From %s icmp_seq=%d timeout\n", inet_ntoa(target_addr.u_addr.ip4), seqno);
}

static void test_on_ping_end(esp_ping_handle_t hdl, void *args)
{
    uint32_t transmitted;
    uint32_t received;
    uint32_t total_time_ms;

    esp_ping_get_profile(hdl, ESP_PING_PROF_REQUEST, &transmitted, sizeof(transmitted));
    esp_ping_get_profile(hdl, ESP_PING_PROF_REPLY, &received, sizeof(received));
    esp_ping_get_profile(hdl, ESP_PING_PROF_DURATION, &total_time_ms, sizeof(total_time_ms));
    printf("%lu packets transmitted, %lu received, time %lums\n", transmitted, received, total_time_ms);
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
    ESP_LOGI(LOG_TAG, "WIFI INIT");
    esp_wifi_init(&cfg);
    ESP_LOGI(LOG_TAG, "WIFI INIT'ed");
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
    esp_wifi_set_max_tx_power(10);
    ESP_LOGI(LOG_TAG, "STARTING WIFI");
    esp_wifi_start();
    ESP_LOGI(LOG_TAG, "WIFI STARTED");
    esp_wifi_set_max_tx_power(10);
    return true;
}

void Connection_Ping(void) {
    ESP_LOGI(LOG_TAG, "PINGING INIT");
    ip_addr_t target_addr;
    struct addrinfo hint;
    struct addrinfo *res = NULL;
    memset(&hint, 0, sizeof(hint));
    memset(&target_addr, 0, sizeof(target_addr));
    getaddrinfo("www.espressif.com", NULL, &hint, &res);
    struct in_addr addr4 = ((struct sockaddr_in *) (res->ai_addr))->sin_addr;
    inet_addr_to_ip4addr(ip_2_ip4(&target_addr), &addr4);
    freeaddrinfo(res);

    esp_ping_config_t ping_config = ESP_PING_DEFAULT_CONFIG();
    ping_config.target_addr = target_addr;          // target IP address
    ping_config.count = ESP_PING_COUNT_INFINITE;    // ping in infinite mode, esp_ping_stop can stop it


    esp_ping_callbacks_t cbs;
    cbs.on_ping_success = test_on_ping_success;
    cbs.on_ping_timeout = test_on_ping_timeout;
    cbs.on_ping_end = test_on_ping_end;
    cbs.cb_args = "foo";  // arguments that feeds to all callback functions, can be NULL

    esp_ping_handle_t ping;
    ESP_LOGI(LOG_TAG, "PINGING SESSION");
    esp_ping_new_session(&ping_config, &cbs, &ping);
    ESP_LOGI(LOG_TAG, "PINGING START");
    esp_ping_start(ping);
}

bool Connection_APP_Run(void) {
    if (flags & FLAGS_WIFI_CONNECTED) {
		ESP_LOGI(LOG_TAG, "connected to aP");
        /* Ping */
        ESP_LOGI(LOG_TAG, "wifi_init_sta finished.");
        if(false) {
            Connection_Ping();
        }
        if(true) {
            Connection_SendSocket();
        }
	}
    if (flags & FLAGS_WIFI_FAIL) {
		ESP_LOGE(LOG_TAG, "Failed to connect");
		return true;
	}

    return true;
}