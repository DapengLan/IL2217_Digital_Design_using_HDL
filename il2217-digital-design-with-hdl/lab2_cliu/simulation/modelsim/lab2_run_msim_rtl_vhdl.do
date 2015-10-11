transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/cliu/workspace/lab2/opc_pkg.vhd}
vcom -93 -work work {/home/cliu/workspace/lab2/res_bus.vhd}
vcom -93 -work work {/home/cliu/workspace/lab2/DReg.vhd}

vcom -93 -work work {/home/cliu/workspace/lab2/tb_bus.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  res_bus

add wave *
view structure
view signals
run -all
