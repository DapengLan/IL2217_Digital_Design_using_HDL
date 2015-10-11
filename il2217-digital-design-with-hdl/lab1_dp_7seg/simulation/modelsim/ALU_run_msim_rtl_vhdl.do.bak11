transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/home/parallels/workspace/digital_vhdl/il2217-digital-design-using-hdl/lab1_dp_7seg/add_1.vhd}
vcom -2008 -work work {/home/parallels/workspace/digital_vhdl/il2217-digital-design-using-hdl/lab1_dp_7seg/addsub.vhd}
vcom -2008 -work work {/home/parallels/workspace/digital_vhdl/il2217-digital-design-using-hdl/lab1_dp_7seg/alu.vhd}

vcom -2008 -work work {/home/parallels/workspace/digital_vhdl/il2217-digital-design-using-hdl/lab1_dp_7seg/tb_ALU.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  alu

add wave *
view structure
view signals
run -all
