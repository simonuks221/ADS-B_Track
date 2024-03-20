#ifndef NEXTION_API_H
#define NEXTION_API_H

#include <stdbool.h>

typedef enum eNextionCmd {
    eNextionCmdFirst = 0,
    eNextionCmdWifiOk = eNextionCmdFirst,
    eNextionCmdWifiError,
    eNextionCmdGpsOk,
    eNextionCmdGpsError,
    eNextionCmdRegressionOk,
    eNextionCmdRegressionError,
    eNextionCmdPOk,
    eNextionCmdStart,
    eNextionCmdInfo,
    eNextionCmdLast
} eNextionCmd_t;

bool Nextion_API_Init(void);
bool Nextion_API_SendCmd(eNextionCmd_t cmd, ...);

#endif // NEXTION_API_H
