#ifndef COMMON_H
#define COMMON_H

#include <stdint.h>
#include <string.h>

/* 56 bits = 7 bytes */
#define ADSB_PACKET_LEN_BYTES 7
/* Define timestamp register sizes */
#define ADSB_TIMESTAMP_SECONDS_BITS 17
#define ADSB_TIMESTAMP_SECONDS_BYTES 3
#define ADSB_TIMESTAMP_IMPULSES_BITS 28
#define ADSB_TIMESTAMP_IMPULSES_BYTES 5
#define ADSB_TIMESTAMP_LEN_BYTES 6

#define ARRAY_SIZE(x) (sizeof(x) / sizeof(x[0]))

#define SET_FLAG(src, flag) ((src) |= (flag))
#define GET_FLAG(src, flag) (((src) & (flag)) != 0)
#define CLEAR_FLAG(src, flag) ((src) &= ~(flag))

typedef struct sString {
    char *content;
    size_t length;
} sString_t;

typedef struct sADSBPacket {
    uint8_t data[ADSB_PACKET_LEN_BYTES];
    uint32_t timestamp_ns;
    uint32_t timestamp_s;
} sADSBPacket_t;

typedef union uADSBtimestamp{
    uint8_t buffer[ADSB_TIMESTAMP_LEN_BYTES];
    struct __attribute__((__packed__)){
        unsigned int s : ADSB_TIMESTAMP_SECONDS_BITS;
        unsigned int impulses : ADSB_TIMESTAMP_IMPULSES_BITS;
        unsigned int padding : 3;
    } data;
} uADSBtimestamp_t;

bool HexToString(const uint8_t *buffer, size_t length, char *out);

#endif // COMMON_H