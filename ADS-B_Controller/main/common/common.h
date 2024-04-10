#ifndef COMMON_H
#define COMMON_H

#include <stdint.h>
#include <string.h>

#define ADSB_PACKET_LEN_BYTES 1

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
    uint32_t timestamp_ms;
    uint64_t timestamp_ns;
} sADSBPacket_t;

bool HexToString(const uint8_t *buffer, size_t length, char *out);

#endif // COMMON_H