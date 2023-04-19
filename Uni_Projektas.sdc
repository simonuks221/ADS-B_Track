create_clock -name CLK -period 20.000 [get_ports {CLK}]
create_clock -name ADC_DCLKA -period 20.000 [get_ports {ADC_DCLKA}]
create_clock -name ADC_CLK -period 20.000 [get_ports {ADC_CLK}]
create_clock -name UART_CLK -period 8680.5 [get_nets {UART_Controller_1|uart_clk_divider|clock_out}]
