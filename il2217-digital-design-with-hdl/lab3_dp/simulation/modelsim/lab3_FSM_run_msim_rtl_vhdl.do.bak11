transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/parallels/workspace/digital_vhdl/il2217-digital-design-using-hdl/lab3_dp/counter_sig.vhd}
vcom -93 -work work {/home/parallels/workspace/digital_vhdl/il2217-digital-design-using-hdl/lab3_dp/divider.vhd}
vcom -93 -work work {/home/parallels/workspace/digital_vhdl/il2217-digital-design-using-hdl/lab3_dp/top_alarm.vhd}
vcom -93 -work work {/home/parallels/workspace/digital_vhdl/il2217-digital-design-using-hdl/lab3_dp/counter_sig_10.vhd}
vcom -93 -work work {/home/parallels/workspace/digital_vhdl/il2217-digital-design-using-hdl/lab3_dp/bcd2_7seg.vhd}

vcom -93 -work work {/home/parallels/workspace/digital_vhdl/il2217-digital-design-using-hdl/lab3_dp/tb_counter_sig.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  couter_sig1

add wave *
view structure
view signals
run -all
