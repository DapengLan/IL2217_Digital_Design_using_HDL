-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 10.0 Build 218 06/27/2010 SJ Full Version"

-- DATE "09/13/2015 23:40:44"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	ctrl : IN std_logic_vector(1 DOWNTO 0);
	q : OUT std_logic_vector(7 DOWNTO 0);
	cout : OUT std_logic
	);
END alu;

-- Design Ports Information
-- q[0]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[1]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[2]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[3]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[4]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[5]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[6]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[7]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cout	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl[1]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[0]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ctrl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \T1|G0:4:U0|cout~1_combout\ : std_logic;
SIGNAL \T1|G0:5:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \T1|G0:6:U0|cout~10_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \T2|G0:1:U0|cout~0_combout\ : std_logic;
SIGNAL \T1|G0:1:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \T2|G0:2:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \T1|G0:3:U0|cout~0_combout\ : std_logic;
SIGNAL \T1|G0:3:U0|cout~1_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \T2|G0:4:U0|cout~0_combout\ : std_logic;
SIGNAL \T1|G0:4:U0|cout~0_combout\ : std_logic;
SIGNAL \T2|G0:4:U0|cout~1_combout\ : std_logic;
SIGNAL \T2|G0:4:U0|cout~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \T2|G0:5:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \T1|G0:6:U0|cout~9_combout\ : std_logic;
SIGNAL \T1|G0:6:U0|cout~8_combout\ : std_logic;
SIGNAL \T1|G0:7:U0|cout~0_combout\ : std_logic;
SIGNAL \T2|G0:6:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ctrl~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_ctrl <= ctrl;
q <= ww_q;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X8_Y4_N8
\T1|G0:4:U0|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \T1|G0:4:U0|cout~1_combout\ = (\a~combout\(4) & ((\T1|G0:3:U0|cout~1_combout\) # (\b~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datac => \T1|G0:3:U0|cout~1_combout\,
	datad => \b~combout\(4),
	combout => \T1|G0:4:U0|cout~1_combout\);

-- Location: LCCOMB_X14_Y4_N18
\T1|G0:5:U0|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \T1|G0:5:U0|cout~0_combout\ = (\b~combout\(5) & ((\T1|G0:4:U0|cout~1_combout\) # ((\T1|G0:4:U0|cout~0_combout\) # (\a~combout\(5))))) # (!\b~combout\(5) & (\a~combout\(5) & ((\T1|G0:4:U0|cout~1_combout\) # (\T1|G0:4:U0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T1|G0:4:U0|cout~1_combout\,
	datab => \T1|G0:4:U0|cout~0_combout\,
	datac => \b~combout\(5),
	datad => \a~combout\(5),
	combout => \T1|G0:5:U0|cout~0_combout\);

-- Location: LCCOMB_X14_Y4_N4
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ctrl~combout\(0) & ((\T2|G0:5:U0|cout~0_combout\))) # (!\ctrl~combout\(0) & (\T1|G0:5:U0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T1|G0:5:U0|cout~0_combout\,
	datac => \T2|G0:5:U0|cout~0_combout\,
	datad => \ctrl~combout\(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X8_Y4_N6
\T1|G0:6:U0|cout~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \T1|G0:6:U0|cout~10_combout\ = (\a~combout\(4) & ((\T1|G0:3:U0|cout~1_combout\) # (\b~combout\(4)))) # (!\a~combout\(4) & (\T1|G0:3:U0|cout~1_combout\ & \b~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datac => \T1|G0:3:U0|cout~1_combout\,
	datad => \b~combout\(4),
	combout => \T1|G0:6:U0|cout~10_combout\);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ctrl(1),
	combout => \ctrl~combout\(1));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ctrl(0),
	combout => \ctrl~combout\(0));

-- Location: LCCOMB_X5_Y4_N0
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\b~combout\(0) & (!\a~combout\(0) & ((!\ctrl~combout\(0)) # (!\ctrl~combout\(1))))) # (!\b~combout\(0) & ((\a~combout\(0) & ((!\ctrl~combout\(0)) # (!\ctrl~combout\(1)))) # (!\a~combout\(0) & (\ctrl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datac => \ctrl~combout\(1),
	datad => \ctrl~combout\(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X5_Y4_N26
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\ctrl~combout\(1) & (((\ctrl~combout\(0))))) # (!\ctrl~combout\(1) & (\b~combout\(0) & (\a~combout\(0) $ (\ctrl~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datac => \ctrl~combout\(1),
	datad => \ctrl~combout\(0),
	combout => \Mux6~0_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X5_Y4_N4
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\ctrl~combout\(1) & ((\Mux6~0_combout\ & (!\b~combout\(1) & !\a~combout\(1))) # (!\Mux6~0_combout\ & ((!\a~combout\(1)) # (!\b~combout\(1)))))) # (!\ctrl~combout\(1) & (\Mux6~0_combout\ $ (\b~combout\(1) $ (\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl~combout\(1),
	datab => \Mux6~0_combout\,
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X5_Y4_N22
\T2|G0:1:U0|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \T2|G0:1:U0|cout~0_combout\ = (\b~combout\(1) & (\a~combout\(1) & ((\a~combout\(0)) # (!\b~combout\(0))))) # (!\b~combout\(1) & ((\a~combout\(0)) # ((\a~combout\(1)) # (!\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \T2|G0:1:U0|cout~0_combout\);

-- Location: LCCOMB_X5_Y4_N8
\T1|G0:1:U0|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \T1|G0:1:U0|cout~0_combout\ = (\b~combout\(1) & ((\a~combout\(1)) # ((\a~combout\(0) & \b~combout\(0))))) # (!\b~combout\(1) & (\a~combout\(0) & (\b~combout\(0) & \a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \T1|G0:1:U0|cout~0_combout\);

-- Location: LCCOMB_X5_Y4_N18
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\ctrl~combout\(1) & (((\ctrl~combout\(0))))) # (!\ctrl~combout\(1) & ((\ctrl~combout\(0) & (!\T2|G0:1:U0|cout~0_combout\)) # (!\ctrl~combout\(0) & ((\T1|G0:1:U0|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl~combout\(1),
	datab => \T2|G0:1:U0|cout~0_combout\,
	datac => \T1|G0:1:U0|cout~0_combout\,
	datad => \ctrl~combout\(0),
	combout => \Mux5~0_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X5_Y4_N20
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\ctrl~combout\(1) & ((\Mux5~0_combout\ & (!\a~combout\(2) & !\b~combout\(2))) # (!\Mux5~0_combout\ & ((!\b~combout\(2)) # (!\a~combout\(2)))))) # (!\ctrl~combout\(1) & (\Mux5~0_combout\ $ (\a~combout\(2) $ (\b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl~combout\(1),
	datab => \Mux5~0_combout\,
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \Mux5~1_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X5_Y4_N2
\Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (\a~combout\(2) & ((\T1|G0:1:U0|cout~0_combout\) # (\b~combout\(2)))) # (!\a~combout\(2) & (\T1|G0:1:U0|cout~0_combout\ & \b~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(2),
	datac => \T1|G0:1:U0|cout~0_combout\,
	datad => \b~combout\(2),
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X5_Y4_N30
\T2|G0:2:U0|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \T2|G0:2:U0|cout~0_combout\ = (\T2|G0:1:U0|cout~0_combout\ & ((\a~combout\(2)) # (!\b~combout\(2)))) # (!\T2|G0:1:U0|cout~0_combout\ & (\a~combout\(2) & !\b~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T2|G0:1:U0|cout~0_combout\,
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \T2|G0:2:U0|cout~0_combout\);

-- Location: LCCOMB_X5_Y4_N24
\Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\ctrl~combout\(0) & (((\ctrl~combout\(1)) # (!\T2|G0:2:U0|cout~0_combout\)))) # (!\ctrl~combout\(0) & (\Mux4~10_combout\ & (!\ctrl~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl~combout\(0),
	datab => \Mux4~10_combout\,
	datac => \ctrl~combout\(1),
	datad => \T2|G0:2:U0|cout~0_combout\,
	combout => \Mux4~8_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X5_Y4_N10
\Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\b~combout\(3) & ((\Mux4~8_combout\ & (!\ctrl~combout\(1) & \a~combout\(3))) # (!\Mux4~8_combout\ & ((!\a~combout\(3)))))) # (!\b~combout\(3) & ((\Mux4~8_combout\ & ((!\a~combout\(3)))) # (!\Mux4~8_combout\ & ((\ctrl~combout\(1)) # 
-- (\a~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \ctrl~combout\(1),
	datac => \Mux4~8_combout\,
	datad => \a~combout\(3),
	combout => \Mux4~9_combout\);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCCOMB_X5_Y4_N28
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\b~combout\(3) & (\T2|G0:2:U0|cout~0_combout\ & \a~combout\(3))) # (!\b~combout\(3) & ((\T2|G0:2:U0|cout~0_combout\) # (\a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \T2|G0:2:U0|cout~0_combout\,
	datad => \a~combout\(3),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X5_Y4_N12
\T1|G0:3:U0|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \T1|G0:3:U0|cout~0_combout\ = (\a~combout\(2) & ((\T1|G0:1:U0|cout~0_combout\) # (\b~combout\(2)))) # (!\a~combout\(2) & (\T1|G0:1:U0|cout~0_combout\ & \b~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(2),
	datac => \T1|G0:1:U0|cout~0_combout\,
	datad => \b~combout\(2),
	combout => \T1|G0:3:U0|cout~0_combout\);

-- Location: LCCOMB_X5_Y4_N14
\T1|G0:3:U0|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \T1|G0:3:U0|cout~1_combout\ = (\b~combout\(3) & ((\T1|G0:3:U0|cout~0_combout\) # (\a~combout\(3)))) # (!\b~combout\(3) & (\T1|G0:3:U0|cout~0_combout\ & \a~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \T1|G0:3:U0|cout~0_combout\,
	datad => \a~combout\(3),
	combout => \T1|G0:3:U0|cout~1_combout\);

-- Location: LCCOMB_X5_Y4_N6
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\ctrl~combout\(1) & (((\ctrl~combout\(0))))) # (!\ctrl~combout\(1) & ((\ctrl~combout\(0) & (!\Mux3~0_combout\)) # (!\ctrl~combout\(0) & ((\T1|G0:3:U0|cout~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl~combout\(1),
	datab => \Mux3~0_combout\,
	datac => \T1|G0:3:U0|cout~1_combout\,
	datad => \ctrl~combout\(0),
	combout => \Mux3~1_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LCCOMB_X8_Y4_N0
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\a~combout\(4) & ((\Mux3~1_combout\ & (!\ctrl~combout\(1) & \b~combout\(4))) # (!\Mux3~1_combout\ & ((!\b~combout\(4)))))) # (!\a~combout\(4) & ((\Mux3~1_combout\ & ((!\b~combout\(4)))) # (!\Mux3~1_combout\ & ((\ctrl~combout\(1)) # 
-- (\b~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \Mux3~1_combout\,
	datac => \ctrl~combout\(1),
	datad => \b~combout\(4),
	combout => \Mux3~2_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LCCOMB_X8_Y4_N18
\T2|G0:4:U0|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \T2|G0:4:U0|cout~0_combout\ = (\a~combout\(4) & !\b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datad => \b~combout\(4),
	combout => \T2|G0:4:U0|cout~0_combout\);

-- Location: LCCOMB_X8_Y4_N22
\T1|G0:4:U0|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \T1|G0:4:U0|cout~0_combout\ = (\T1|G0:3:U0|cout~1_combout\ & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T1|G0:3:U0|cout~1_combout\,
	datad => \b~combout\(4),
	combout => \T1|G0:4:U0|cout~0_combout\);

-- Location: LCCOMB_X8_Y4_N4
\T2|G0:4:U0|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \T2|G0:4:U0|cout~1_combout\ = (\a~combout\(4)) # (!\b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datad => \b~combout\(4),
	combout => \T2|G0:4:U0|cout~1_combout\);

-- Location: LCCOMB_X5_Y4_N16
\T2|G0:4:U0|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \T2|G0:4:U0|cout~2_combout\ = (\T2|G0:4:U0|cout~1_combout\ & ((\b~combout\(3) & (\T2|G0:2:U0|cout~0_combout\ & \a~combout\(3))) # (!\b~combout\(3) & ((\T2|G0:2:U0|cout~0_combout\) # (\a~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \T2|G0:2:U0|cout~0_combout\,
	datac => \T2|G0:4:U0|cout~1_combout\,
	datad => \a~combout\(3),
	combout => \T2|G0:4:U0|cout~2_combout\);

-- Location: LCCOMB_X14_Y4_N16
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ctrl~combout\(0) & (((\T2|G0:4:U0|cout~2_combout\)))) # (!\ctrl~combout\(0) & ((\T1|G0:4:U0|cout~1_combout\) # ((\T1|G0:4:U0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T1|G0:4:U0|cout~1_combout\,
	datab => \T1|G0:4:U0|cout~0_combout\,
	datac => \T2|G0:4:U0|cout~2_combout\,
	datad => \ctrl~combout\(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X8_Y4_N2
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\ctrl~combout\(1) & (((\ctrl~combout\(0))))) # (!\ctrl~combout\(1) & ((\Mux2~0_combout\ & ((!\ctrl~combout\(0)))) # (!\Mux2~0_combout\ & (!\T2|G0:4:U0|cout~0_combout\ & \ctrl~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl~combout\(1),
	datab => \T2|G0:4:U0|cout~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \ctrl~combout\(0),
	combout => \Mux2~1_combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LCCOMB_X8_Y4_N28
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\b~combout\(5) & ((\Mux2~1_combout\ & (!\ctrl~combout\(1) & \a~combout\(5))) # (!\Mux2~1_combout\ & ((!\a~combout\(5)))))) # (!\b~combout\(5) & ((\Mux2~1_combout\ & ((!\a~combout\(5)))) # (!\Mux2~1_combout\ & ((\ctrl~combout\(1)) # 
-- (\a~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(5),
	datab => \Mux2~1_combout\,
	datac => \ctrl~combout\(1),
	datad => \a~combout\(5),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X14_Y4_N26
\T2|G0:5:U0|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \T2|G0:5:U0|cout~0_combout\ = (\b~combout\(5) & (\a~combout\(5) & ((\T2|G0:4:U0|cout~0_combout\) # (\T2|G0:4:U0|cout~2_combout\)))) # (!\b~combout\(5) & ((\T2|G0:4:U0|cout~0_combout\) # ((\T2|G0:4:U0|cout~2_combout\) # (\a~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2|G0:4:U0|cout~0_combout\,
	datab => \T2|G0:4:U0|cout~2_combout\,
	datac => \b~combout\(5),
	datad => \a~combout\(5),
	combout => \T2|G0:5:U0|cout~0_combout\);

-- Location: LCCOMB_X14_Y4_N6
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\ctrl~combout\(1) & (((\ctrl~combout\(0))))) # (!\ctrl~combout\(1) & ((\ctrl~combout\(0) & ((!\T2|G0:5:U0|cout~0_combout\))) # (!\ctrl~combout\(0) & (\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \ctrl~combout\(1),
	datac => \T2|G0:5:U0|cout~0_combout\,
	datad => \ctrl~combout\(0),
	combout => \Mux1~1_combout\);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LCCOMB_X14_Y4_N0
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\ & ((\b~combout\(6) & (!\ctrl~combout\(1) & \a~combout\(6))) # (!\b~combout\(6) & ((!\a~combout\(6)))))) # (!\Mux1~1_combout\ & ((\b~combout\(6) & ((!\a~combout\(6)))) # (!\b~combout\(6) & ((\ctrl~combout\(1)) # 
-- (\a~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \ctrl~combout\(1),
	datac => \b~combout\(6),
	datad => \a~combout\(6),
	combout => \Mux1~2_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LCCOMB_X14_Y4_N30
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((\a~combout\(6)) # (\ctrl~combout\(0) $ (\b~combout\(6))))) # (!\Mux0~0_combout\ & (\a~combout\(6) & (\ctrl~combout\(0) $ (\b~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \ctrl~combout\(0),
	datac => \b~combout\(6),
	datad => \a~combout\(6),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X14_Y4_N8
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = \b~combout\(7) $ (((\Mux0~1_combout\ & !\ctrl~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(7),
	datac => \Mux0~1_combout\,
	datad => \ctrl~combout\(1),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X14_Y4_N10
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\a~combout\(7) & ((\Mux0~2_combout\ & (!\ctrl~combout\(1) & \ctrl~combout\(0))) # (!\Mux0~2_combout\ & ((!\ctrl~combout\(0)))))) # (!\a~combout\(7) & ((\Mux0~2_combout\ & ((!\ctrl~combout\(0)))) # (!\Mux0~2_combout\ & 
-- ((\ctrl~combout\(1)) # (\ctrl~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \ctrl~combout\(1),
	datac => \Mux0~2_combout\,
	datad => \ctrl~combout\(0),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X14_Y4_N28
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\b~combout\(5) & ((\T1|G0:4:U0|cout~1_combout\) # ((\T1|G0:4:U0|cout~0_combout\) # (\a~combout\(5))))) # (!\b~combout\(5) & (\a~combout\(5) & ((\T1|G0:4:U0|cout~1_combout\) # (\T1|G0:4:U0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T1|G0:4:U0|cout~1_combout\,
	datab => \T1|G0:4:U0|cout~0_combout\,
	datac => \b~combout\(5),
	datad => \a~combout\(5),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X14_Y4_N2
\T1|G0:6:U0|cout~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \T1|G0:6:U0|cout~9_combout\ = (\a~combout\(6) & ((\Mux1~0_combout\) # (\b~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~0_combout\,
	datac => \b~combout\(6),
	datad => \a~combout\(6),
	combout => \T1|G0:6:U0|cout~9_combout\);

-- Location: LCCOMB_X14_Y4_N24
\T1|G0:6:U0|cout~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \T1|G0:6:U0|cout~8_combout\ = (\b~combout\(6) & ((\T1|G0:6:U0|cout~10_combout\ & ((\b~combout\(5)) # (\a~combout\(5)))) # (!\T1|G0:6:U0|cout~10_combout\ & (\b~combout\(5) & \a~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T1|G0:6:U0|cout~10_combout\,
	datab => \b~combout\(6),
	datac => \b~combout\(5),
	datad => \a~combout\(5),
	combout => \T1|G0:6:U0|cout~8_combout\);

-- Location: LCCOMB_X14_Y4_N12
\T1|G0:7:U0|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \T1|G0:7:U0|cout~0_combout\ = (\a~combout\(7) & ((\T1|G0:6:U0|cout~9_combout\) # ((\T1|G0:6:U0|cout~8_combout\) # (\b~combout\(7))))) # (!\a~combout\(7) & (\b~combout\(7) & ((\T1|G0:6:U0|cout~9_combout\) # (\T1|G0:6:U0|cout~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \T1|G0:6:U0|cout~9_combout\,
	datac => \T1|G0:6:U0|cout~8_combout\,
	datad => \b~combout\(7),
	combout => \T1|G0:7:U0|cout~0_combout\);

-- Location: LCCOMB_X14_Y4_N20
\T2|G0:6:U0|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \T2|G0:6:U0|cout~0_combout\ = (\T2|G0:5:U0|cout~0_combout\ & ((\a~combout\(6)) # (!\b~combout\(6)))) # (!\T2|G0:5:U0|cout~0_combout\ & (!\b~combout\(6) & \a~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T2|G0:5:U0|cout~0_combout\,
	datac => \b~combout\(6),
	datad => \a~combout\(6),
	combout => \T2|G0:6:U0|cout~0_combout\);

-- Location: LCCOMB_X14_Y4_N14
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\a~combout\(7) & ((\T2|G0:6:U0|cout~0_combout\) # (!\b~combout\(7)))) # (!\a~combout\(7) & (\T2|G0:6:U0|cout~0_combout\ & !\b~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datac => \T2|G0:6:U0|cout~0_combout\,
	datad => \b~combout\(7),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X14_Y4_N22
\Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (!\ctrl~combout\(1) & ((\ctrl~combout\(0) & ((\Mux8~0_combout\))) # (!\ctrl~combout\(0) & (\T1|G0:7:U0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T1|G0:7:U0|cout~0_combout\,
	datab => \ctrl~combout\(1),
	datac => \Mux8~0_combout\,
	datad => \ctrl~combout\(0),
	combout => \Mux8~1_combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(0));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(1));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(2));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(3));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(4));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(5));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(6));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(7));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cout~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cout);
END structure;


