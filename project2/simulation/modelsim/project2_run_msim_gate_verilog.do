transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {project2.vo}

vlog -vlog01compat -work work +incdir+C:/Users/apple1/Desktop/project2 {C:/Users/apple1/Desktop/project2/mov_tb.v}

vsim -t 1ps -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  mov_tb

add wave *
view structure
view signals
run -all
