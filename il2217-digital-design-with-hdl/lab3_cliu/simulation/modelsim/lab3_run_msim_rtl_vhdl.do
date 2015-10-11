transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/cliu/workspace/Lab3/tb_clock_dev.vhd}
vcom -93 -work work {/home/cliu/workspace/Lab3/clock_dev.vhd}
vcom -93 -work work {/home/cliu/workspace/Lab3/tb_counter_var.vhd}
vcom -93 -work work {/home/cliu/workspace/Lab3/counter_var.vhd}
vcom -93 -work work {/home/cliu/workspace/Lab3/tb_counter_sig2.vhd}
vcom -93 -work work {/home/cliu/workspace/Lab3/counter_sig.vhd}
vcom -93 -work work {/home/cliu/workspace/Lab3/tb_counter_sig.vhd}
vcom -93 -work work {/home/cliu/workspace/Lab3/counter_en.vhd}
vcom -93 -work work {/home/cliu/workspace/Lab3/tb_counter_en.vhd}
vcom -93 -work work {/home/cliu/workspace/Lab3/clock_ctrl.vhd}
vcom -93 -work work {/home/cliu/workspace/Lab3/tb_alarm.vhd}
vcom -93 -work work {/home/cliu/workspace/Lab3/alarm.vhd}
vcom -93 -work work {/home/cliu/workspace/Lab3/counter_sig2.vhd}

vcom -93 -work work {/home/cliu/workspace/Lab3/tb_alarm.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  clock_ctrl

add wave *
view structure
view signals
run -all
