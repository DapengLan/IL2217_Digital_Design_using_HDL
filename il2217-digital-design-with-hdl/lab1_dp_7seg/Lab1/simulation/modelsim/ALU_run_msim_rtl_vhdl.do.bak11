transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/home/il2206/Documents/workspace/VHDL/lab1/add_1.vhd}
vcom -2008 -work work {/home/il2206/Documents/workspace/VHDL/lab1/addsub.vhd}
vcom -2008 -work work {/home/il2206/Documents/workspace/VHDL/lab1/alu.vhd}

vcom -2008 -work work {/home/il2206/Documents/workspace/VHDL/lab1/tb_ALU.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" alu

add wave *
view structure
view signals
run -all
