transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Uni_Projektas.vho}

vcom -93 -work work {C:/Users/simon/Desktop/UNI/VHDL/Uni_Projektas/simulation/modelsim/UNI_Projektas.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=Uni_Projektas_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  UNI_Projektas

add wave *
view structure
view signals
run 30 us
