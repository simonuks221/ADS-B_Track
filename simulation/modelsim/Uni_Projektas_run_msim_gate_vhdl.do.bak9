transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Uni_Projektas.vho}

vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/Testbenchas.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /ADC_Manager=Uni_Projektas_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  Testbenchas

add wave *
view structure
view signals
run 30 us
