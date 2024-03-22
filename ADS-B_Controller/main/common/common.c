#include <stdbool.h>
#include <stdio.h>
#include "common.h"

/* Turns hex array to hex string */
/* OUTPUT BUFFER MUST BE PREALLOCATED AR LEAST 2 * length */
bool HexToString(const uint8_t *buffer, size_t length, char *out) {
    if((buffer == NULL) || (length == 0) || (out == NULL)) {
        return false;
    }
    for (size_t i = 0; i < length; i++) {
        sprintf(out + i * 2, "%02X", buffer[i]);
    }
    return true;
}