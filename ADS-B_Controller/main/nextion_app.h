#ifndef NEXTION_APP_H
#define NEXTION_APP_H

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

bool Nextion_APP_Init(void);
bool Nextion_APP_SendCmd(eNextionCmd_t cmd, ...);

#endif // NEXTION_APP_H
