transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/il2206/Documents/vhdl_lc/il2217-digital-design-using-hdl/lab2_dp/DLatch2_bit.vhd}

vcom -93 -work work {/home/il2206/Documents/vhdl_lc/il2217-digital-design-using-hdl/lab2_dp/tb_opc5.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" opc5_pack.vhd

add wave *
view structure
view signals
run -all
