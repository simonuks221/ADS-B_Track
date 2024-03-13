#ifndef GPS_APP_H
#define GPS_APP_H

#include <stdbool.h>

typedef struct sCoordinates {
    float latitude;
    float longitude;
    float altitude;
} sCoordinates_t;

bool GPS_APP_Init(void);


#endif // GPS_APP_H
