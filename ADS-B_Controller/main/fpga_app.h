#ifndef FPGA_APP_H
#define FPGA_APP_H

#include <stdbool.h>

bool FPGA_APP_Init(void);
bool FPGA_APP_Run(void);

void FPGA_APP_UpdateRtc(uint32_t seconds);
void FPGA_APP_DataIrq(void);

#endif // FPGA_APP_H
