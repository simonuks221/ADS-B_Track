#include <stdint.h>
#include <string.h>

#define ARRAY_SIZE(x) (sizeof(x) / sizeof(x[0]))

typedef struct sString {
    char *content;
    size_t length;
} sString_t;

typedef struct sADSBPacket {
    uint8_t data[10];
    uint32_t timestamp_ms;
    uint64_t timestamp_ns;
} sADSBPacket_t;