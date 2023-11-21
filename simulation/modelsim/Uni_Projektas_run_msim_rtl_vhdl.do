transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/SPI_Controller.vhd}
vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/SPI_TX.vhd}
vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/wizard_spi_fifo.vhd}

vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/SPI_Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  SPI_Testbench

add wave *
view structure
view signals
run 200 us
