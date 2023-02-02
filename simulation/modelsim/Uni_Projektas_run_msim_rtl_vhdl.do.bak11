transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/corr_package.vhd}
vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/wizard_ram.vhd}
vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/Clock_divider.vhd}
vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/big_ram_wizard.vhd}
vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/ADC_ram_shifter.vhd}
vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/UART_Controller.vhd}
vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/UART_TX.vhd}
vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/UART_FIFO_wizard.vhd}
vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/corr_func_rom_1.vhd}
vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/ADC_Manager.vhd}
vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/Correlation_function.vhd}
vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/Uni_Projektas.vhd}
vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/Correlation_gate.vhd}

vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/Testbenchas.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Testbenchas

add wave *
view structure
view signals
run 30 us
