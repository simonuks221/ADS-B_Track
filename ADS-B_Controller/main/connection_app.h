#ifndef CONNECTION_APP_H
#define CONNECTION_APP_H

#include <stdbool.h>

bool Connection_APP_Init(void);
bool Connection_APP_Run(void);
bool Connection_APP_SendMessageRegister(float latitude, float longitude, float altitude, uint32_t timestamp_ms);

#endif // CONNECTION_APP_H
