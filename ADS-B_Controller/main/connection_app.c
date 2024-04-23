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
#include "common/common.h"
#include "c_buff.h"

/* WiFi connection settings */
#define WIFI_SSID "137Festival"
#define WIFI_ID "example@ktu.edu"
#define WIFI_PASS "Festival137"
#define WIFI_USERNAME "ESP-S3"

/* Unique device ID */
#define THIS_DEVICE_ID 0

#define SERVER_IP "192.168.137.1"
#define SERVER_PORT 80

#define MESSAGE_CBUF_CAPACITY 30
#define TX_MESSAGE_MAX_LENGTH 200
#define RX_MESSAGE_MAX_LENGTH 50

/* Messages that can be sent from devide via WIFI */
typedef enum eMessage {
    eMessageFirst = 0,
    eMessageRegister = eMessageFirst, /* Registers location and time for database of device */
    eMessageNewPacket, /* Sends captured ADS-B packet with timestamp */
    eMessageLast
} eMessage_t;

typedef struct sMessage {
    eMessage_t type;
    void *content;
    //TODO: add IP?
} sMessage_t;

typedef struct sMessageRegister {
    float latitude;
    float longitude;
    float altitude;
    uint32_t timestamp_ms;
}sMessageRegister_t;

typedef struct sMessagePacket {
    uint8_t packet[10]; //TODO: maybe just pointer idk
    uint32_t timestamp_ms;
}sMessagePacket_t;

/* Format of messages to be sent via WiFi */
static const char *messages_format[eMessageLast] = {
    [eMessageRegister] = "GET /insert_data.php?data=0,%hhu,%.5f,%.5f,%.5f,%llu\r\n",
    [eMessageNewPacket] = "GET /insert_data.php?data=1,%hhu,\"%s\",%llu\r\n"
};

/* Circular buffer of messages to send */
static struct CBuff *messages_cbuffer;

//TODO: conenction FSM

static const char *LOG_TAG = "CONN";

/* COONECTION APP flags */
#define FLAGS_CONNECTED BIT0
#define FLAGS_MESSAGE_AVAILABLE BIT1

static uint32_t connection_flags = 0;

static void Connection_SendSocket(void) {
    /* Get new message from circular buffer */
    sMessage_t new_message;
    if(!CBuff_Pop(messages_cbuffer, (void *)&new_message)) {
        ESP_LOGE(LOG_TAG, "Failed cbuff pop");
        return;
    }
    if(new_message.content == NULL) {
        ESP_LOGE(LOG_TAG, "Invalid message content");
        return;
    }
    if(new_message.type >= eMessageLast) {
        ESP_LOGE(LOG_TAG, "Invalid message type");
        free(new_message.content);
        return;
    }

    /* Create socket */
    struct sockaddr_in dest_addr;
    inet_pton(AF_INET, SERVER_IP, &dest_addr.sin_addr);
    dest_addr.sin_family = AF_INET;
    dest_addr.sin_port = htons(SERVER_PORT);
    int  addr_family = AF_INET;
    int ip_protocol = IPPROTO_IP;

    int sock = socket(addr_family, SOCK_STREAM, ip_protocol);
    if (sock < 0) {
        ESP_LOGE(LOG_TAG, "Unable to create socket: errno %d", errno);
        return;
    }

    /* Create message for socket */
    char message_buffer[TX_MESSAGE_MAX_LENGTH] = {0};
    uint32_t message_buffer_length = 0;
    switch(new_message.type) {
        case eMessageRegister: {
            sMessageRegister_t *arguments = (sMessageRegister_t *)new_message.content;
            message_buffer_length =
                snprintf(message_buffer, TX_MESSAGE_MAX_LENGTH, messages_format[eMessageRegister],
                        THIS_DEVICE_ID, arguments->latitude, arguments->longitude, arguments->altitude, arguments->timestamp_ms);
        } break;
        case eMessageNewPacket: {
            sMessagePacket_t *arguments = (sMessagePacket_t *)new_message.content;
            char packet_data_string[ADSB_PACKET_LEN_BYTES*2] = {0}; //TODO: remove hardcode
            if(!HexToString(arguments->packet, ADSB_PACKET_LEN_BYTES, packet_data_string)) {
                ESP_LOGE(LOG_TAG, "Failed making hex string");
                break;
            }
            message_buffer_length =
                snprintf(message_buffer, TX_MESSAGE_MAX_LENGTH, messages_format[eMessageNewPacket],
                        THIS_DEVICE_ID, packet_data_string, arguments->packet, arguments->timestamp_ms);
        } break;
        default: {

        } break;
    }

    /* Free allocated message arguments */
    free(new_message.content);
    if(message_buffer_length == 0) {
        return;
    }

    /* Connect to socket */
    ESP_LOGI(LOG_TAG, "Socket created, connecting to %s:%d", SERVER_IP, SERVER_PORT);
    if (connect(sock, (struct sockaddr *)&dest_addr, sizeof(dest_addr)) != 0) {
        ESP_LOGE(LOG_TAG, "Socket unable to connect: errno %d", errno);
        return;
    }
    ESP_LOGI(LOG_TAG, "Successfully connected");

    /* Send using socket */
    ESP_LOGI(LOG_TAG, "Sending:%s", message_buffer);
    int32_t sent_bytes = send(sock, message_buffer, message_buffer_length, 0);
    if (sent_bytes <= 0) {
        ESP_LOGE(LOG_TAG, "Error occurred during sending: errno %d", errno);
        return;
    }

    /* Receive from socket */
    uint8_t socket_rx_buffer[RX_MESSAGE_MAX_LENGTH] = {0};
    int rx_len = recv(sock, socket_rx_buffer, sizeof(socket_rx_buffer) - 1, 0);
    if (rx_len < 0) {
        ESP_LOGE(LOG_TAG, "recv failed: errno %d\n", errno);
    } else {
        socket_rx_buffer[rx_len] = 0; /* Null terminate */
        ESP_LOGI(LOG_TAG, "Received %d bytes\n", rx_len);
        ESP_LOGI(LOG_TAG, "%s", socket_rx_buffer);
    }

    /* Check if received SUCCESS confirmation */
    if(strncmp("Success", (char *)socket_rx_buffer, sizeof("Success"))) {
        ESP_LOGI(LOG_TAG, "RX SUCESS");
    }

    /* Close socket */
    ESP_LOGI(LOG_TAG, "Socket end\n");
    shutdown(sock, 0);
    close(sock);
}

/* Esp netif object representing the WIFI station */
static esp_netif_t *sta_netif = NULL;

static void event_handler(void* arg, esp_event_base_t event_base,
                                int32_t event_id, void* event_data) {
    if(event_base == WIFI_EVENT) {
        switch(event_id) {
            case WIFI_EVENT_STA_START: {
                esp_wifi_connect();
            } break;
            case WIFI_EVENT_STA_DISCONNECTED: {
                CLEAR_FLAG(connection_flags, FLAGS_CONNECTED);
                //https://github.com/nopnop2002/esp-idf-ping/blob/master/main/main.c#L51
                esp_wifi_connect();
            } break;
        }
    } else if (event_base == IP_EVENT) {
        if(event_id == IP_EVENT_STA_GOT_IP) {
            //ip_event_got_ip_t* event = (ip_event_got_ip_t*) event_data;
            SET_FLAG(connection_flags, FLAGS_CONNECTED);
        }
    }
}

static void test_on_ping_success(esp_ping_handle_t hdl, void *args) {
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

static void test_on_ping_timeout(esp_ping_handle_t hdl, void *args) {
    uint16_t seqno;
    ip_addr_t target_addr;
    esp_ping_get_profile(hdl, ESP_PING_PROF_SEQNO, &seqno, sizeof(seqno));
    esp_ping_get_profile(hdl, ESP_PING_PROF_IPADDR, &target_addr, sizeof(target_addr));
    printf("From %s icmp_seq=%d timeout\n", inet_ntoa(target_addr.u_addr.ip4), seqno);
}

static void test_on_ping_end(esp_ping_handle_t hdl, void *args) {
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

    /* Init circular buffer */
    messages_cbuffer = CBuff_Create(MESSAGE_CBUF_CAPACITY, sizeof(sMessage_t));
    if(messages_cbuffer == NULL) {
        ESP_LOGE(LOG_TAG, "Failed creating c_buff");
        return false;
    }
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

    esp_ping_handle_t ping;
    ESP_LOGI(LOG_TAG, "PINGING SESSION");
    esp_ping_new_session(&ping_config, &cbs, &ping);
    ESP_LOGI(LOG_TAG, "PINGING START");
    esp_ping_start(ping);
}

bool Connection_APP_Run(void) {
    if(GET_FLAG(connection_flags, FLAGS_CONNECTED) && GET_FLAG(connection_flags, FLAGS_MESSAGE_AVAILABLE)) {
        Connection_SendSocket(); //TODO: send only when connected to wifi
        if(CBuff_GetLength(messages_cbuffer) == 0) {
            CLEAR_FLAG(connection_flags, FLAGS_MESSAGE_AVAILABLE);
        }
    }
    return true;
}

bool Connection_APP_SendMessageRegister(float latitude, float longitude, float altitude, uint32_t timestamp_ms) {
    sMessageRegister_t *message_content = malloc(sizeof(sMessageRegister_t));
    if(message_content == NULL) {
        return false;
    }
    message_content->latitude = latitude;
    message_content->longitude = longitude;
    message_content->altitude = altitude;
    message_content->timestamp_ms = timestamp_ms;
    sMessage_t new_message = {.type = eMessageRegister, .content = message_content};
    if(!CBuff_Push(messages_cbuffer, &new_message)) {
        ESP_LOGE(LOG_TAG, "Failed push message");
        free(message_content);
        return false;
    }
    SET_FLAG(connection_flags, FLAGS_MESSAGE_AVAILABLE);
    return true;
}

bool Connection_APP_SendMessagePacket(sADSBPacket_t packet) {
    sMessagePacket_t *message_content = malloc(sizeof(sMessagePacket_t));
    if(message_content == NULL) {
        return false;
    }
    memcpy(message_content->packet, packet.data, ADSB_PACKET_LEN_BYTES);
    message_content->timestamp_ms = packet.timestamp_ms; //TODO: add ns

    sMessage_t new_message = {.type = eMessageNewPacket, .content = message_content};
    if(!CBuff_Push(messages_cbuffer, &new_message)) {
        ESP_LOGE(LOG_TAG, "Failed push message");
        free(message_content);
        return false;
    }
    SET_FLAG(connection_flags, FLAGS_MESSAGE_AVAILABLE);
    return true;
}

bool Connection_APP_IsConnected(void) {
    return GET_FLAG(connection_flags, FLAGS_CONNECTED);
}
