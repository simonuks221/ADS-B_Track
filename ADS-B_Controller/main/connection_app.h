#ifndef CONNECTION_APP_H
#define CONNECTION_APP_H

#include <stdbool.h>

bool Connection_APP_Init(void);
bool Connection_APP_Run(void);
void Connection_SetFlags(uint32_t new_flags) ;

#endif // CONNECTION_APP_H
