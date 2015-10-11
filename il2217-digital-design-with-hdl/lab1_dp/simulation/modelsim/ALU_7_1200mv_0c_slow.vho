-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "09/29/2015 21:58:29"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	alu IS
    PORT (
	a : IN STD.STANDARD.bit_vector(7 DOWNTO 0);
	b : IN STD.STANDARD.bit_vector(7 DOWNTO 0);
	ctrl : IN STD.STANDARD.bit_vector(1 DOWNTO 0);
	q : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	cout : OUT STD.STANDARD.bit
	);
END alu;

-- Design Ports Information
-- q[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \ctrl[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \ctrl[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \T1|G0:1:U0|cout~0_combout\ : std_logic;
SIGNAL \T2|G0:1:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \T2|G0:2:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \T1|G0:3:U0|cout~0_combout\ : std_logic;
SIGNAL \T1|G0:3:U0|cout~1_combout\ : std_logic;
SIGNAL \T2|G0:3:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \T2|G0:4:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \T1|G0:5:U0|cout~0_combout\ : std_logic;
SIGNAL \T1|G0:5:U0|cout~1_combout\ : std_logic;
SIGNAL \T2|G0:5:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \T2|G0:6:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \T1|G0:7:U0|cout~0_combout\ : std_logic;
SIGNAL \T1|G0:7:U0|cout~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;

BEGIN

ww_a <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(a);
ww_b <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(b);
ww_ctrl <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(ctrl);
q <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_q);
cout <= IEEE.STD_LOGIC_1164.TO_BIT(ww_cout);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y61_N23
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~9_combout\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~9_combout\,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~9_combout\,
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOIBUF_X0_Y55_N22
\ctrl[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl(1),
	o => \ctrl[1]~input_o\);

-- Location: IOIBUF_X0_Y57_N22
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\ctrl[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl(0),
	o => \ctrl[0]~input_o\);

-- Location: IOIBUF_X0_Y57_N15
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X1_Y57_N16
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\ctrl[1]~input_o\ & ((\a[0]~input_o\ & (!\ctrl[0]~input_o\ & !\b[0]~input_o\)) # (!\a[0]~input_o\ & ((!\b[0]~input_o\) # (!\ctrl[0]~input_o\))))) # (!\ctrl[1]~input_o\ & (\a[0]~input_o\ $ (((\b[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \ctrl[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X0_Y58_N15
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X1_Y57_N2
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\ctrl[1]~input_o\ & (((\ctrl[0]~input_o\)))) # (!\ctrl[1]~input_o\ & (\b[0]~input_o\ & (\a[0]~input_o\ $ (\ctrl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \ctrl[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y57_N12
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\ctrl[1]~input_o\ & ((\b[1]~input_o\ & (!\a[1]~input_o\ & !\Mux6~0_combout\)) # (!\b[1]~input_o\ & ((!\Mux6~0_combout\) # (!\a[1]~input_o\))))) # (!\ctrl[1]~input_o\ & (\b[1]~input_o\ $ (\a[1]~input_o\ $ (\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[1]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X0_Y55_N8
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X1_Y57_N8
\T1|G0:1:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T1|G0:1:U0|cout~0_combout\ = (\a[1]~input_o\ & ((\b[1]~input_o\) # ((\b[0]~input_o\ & \a[0]~input_o\)))) # (!\a[1]~input_o\ & (\b[0]~input_o\ & (\a[0]~input_o\ & \b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \b[1]~input_o\,
	combout => \T1|G0:1:U0|cout~0_combout\);

-- Location: LCCOMB_X1_Y57_N30
\T2|G0:1:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T2|G0:1:U0|cout~0_combout\ = (\a[1]~input_o\ & (((\a[0]~input_o\) # (!\b[1]~input_o\)) # (!\b[0]~input_o\))) # (!\a[1]~input_o\ & (!\b[1]~input_o\ & ((\a[0]~input_o\) # (!\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \b[1]~input_o\,
	combout => \T2|G0:1:U0|cout~0_combout\);

-- Location: LCCOMB_X1_Y57_N18
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\ctrl[1]~input_o\ & (((\ctrl[0]~input_o\)))) # (!\ctrl[1]~input_o\ & ((\ctrl[0]~input_o\ & ((!\T2|G0:1:U0|cout~0_combout\))) # (!\ctrl[0]~input_o\ & (\T1|G0:1:U0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl[1]~input_o\,
	datab => \T1|G0:1:U0|cout~0_combout\,
	datac => \T2|G0:1:U0|cout~0_combout\,
	datad => \ctrl[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y57_N20
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\ctrl[1]~input_o\ & ((\b[2]~input_o\ & (!\a[2]~input_o\ & !\Mux5~0_combout\)) # (!\b[2]~input_o\ & ((!\Mux5~0_combout\) # (!\a[2]~input_o\))))) # (!\ctrl[1]~input_o\ & (\b[2]~input_o\ $ (\a[2]~input_o\ $ (\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl[1]~input_o\,
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X0_Y60_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X1_Y57_N14
\T2|G0:2:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T2|G0:2:U0|cout~0_combout\ = (\T2|G0:1:U0|cout~0_combout\ & ((\a[2]~input_o\) # (!\b[2]~input_o\))) # (!\T2|G0:1:U0|cout~0_combout\ & (!\b[2]~input_o\ & \a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2|G0:1:U0|cout~0_combout\,
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	combout => \T2|G0:2:U0|cout~0_combout\);

-- Location: LCCOMB_X1_Y57_N24
\Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (\a[2]~input_o\ & ((\T1|G0:1:U0|cout~0_combout\) # (\b[2]~input_o\))) # (!\a[2]~input_o\ & (\T1|G0:1:U0|cout~0_combout\ & \b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \T1|G0:1:U0|cout~0_combout\,
	datad => \b[2]~input_o\,
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X1_Y57_N0
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\ctrl[1]~input_o\ & (((\ctrl[0]~input_o\)))) # (!\ctrl[1]~input_o\ & ((\ctrl[0]~input_o\ & (!\T2|G0:2:U0|cout~0_combout\)) # (!\ctrl[0]~input_o\ & ((\Mux4~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl[1]~input_o\,
	datab => \T2|G0:2:U0|cout~0_combout\,
	datac => \ctrl[0]~input_o\,
	datad => \Mux4~10_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X1_Y57_N26
\Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\b[3]~input_o\ & ((\a[3]~input_o\ & (!\ctrl[1]~input_o\ & \Mux4~8_combout\)) # (!\a[3]~input_o\ & ((!\Mux4~8_combout\))))) # (!\b[3]~input_o\ & ((\a[3]~input_o\ & ((!\Mux4~8_combout\))) # (!\a[3]~input_o\ & ((\ctrl[1]~input_o\) # 
-- (\Mux4~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datac => \ctrl[1]~input_o\,
	datad => \Mux4~8_combout\,
	combout => \Mux4~9_combout\);

-- Location: IOIBUF_X0_Y52_N15
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X1_Y57_N10
\T1|G0:3:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T1|G0:3:U0|cout~0_combout\ = (\a[2]~input_o\ & ((\T1|G0:1:U0|cout~0_combout\) # (\b[2]~input_o\))) # (!\a[2]~input_o\ & (\T1|G0:1:U0|cout~0_combout\ & \b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \T1|G0:1:U0|cout~0_combout\,
	datad => \b[2]~input_o\,
	combout => \T1|G0:3:U0|cout~0_combout\);

-- Location: LCCOMB_X1_Y57_N28
\T1|G0:3:U0|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \T1|G0:3:U0|cout~1_combout\ = (\b[3]~input_o\ & ((\a[3]~input_o\) # (\T1|G0:3:U0|cout~0_combout\))) # (!\b[3]~input_o\ & (\a[3]~input_o\ & \T1|G0:3:U0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datad => \T1|G0:3:U0|cout~0_combout\,
	combout => \T1|G0:3:U0|cout~1_combout\);

-- Location: LCCOMB_X1_Y57_N4
\T2|G0:3:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T2|G0:3:U0|cout~0_combout\ = (\b[3]~input_o\ & (\a[3]~input_o\ & \T2|G0:2:U0|cout~0_combout\)) # (!\b[3]~input_o\ & ((\a[3]~input_o\) # (\T2|G0:2:U0|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datac => \T2|G0:2:U0|cout~0_combout\,
	combout => \T2|G0:3:U0|cout~0_combout\);

-- Location: LCCOMB_X1_Y57_N22
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ctrl[1]~input_o\ & (((\ctrl[0]~input_o\)))) # (!\ctrl[1]~input_o\ & ((\ctrl[0]~input_o\ & ((!\T2|G0:3:U0|cout~0_combout\))) # (!\ctrl[0]~input_o\ & (\T1|G0:3:U0|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl[1]~input_o\,
	datab => \T1|G0:3:U0|cout~1_combout\,
	datac => \ctrl[0]~input_o\,
	datad => \T2|G0:3:U0|cout~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y55_N16
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\a[4]~input_o\ & ((\b[4]~input_o\ & (!\ctrl[1]~input_o\ & \Mux3~0_combout\)) # (!\b[4]~input_o\ & ((!\Mux3~0_combout\))))) # (!\a[4]~input_o\ & ((\b[4]~input_o\ & ((!\Mux3~0_combout\))) # (!\b[4]~input_o\ & ((\ctrl[1]~input_o\) # 
-- (\Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \ctrl[1]~input_o\,
	datac => \b[4]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X0_Y50_N22
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X1_Y55_N26
\T2|G0:4:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T2|G0:4:U0|cout~0_combout\ = (\a[4]~input_o\ & ((\T2|G0:3:U0|cout~0_combout\) # (!\b[4]~input_o\))) # (!\a[4]~input_o\ & (!\b[4]~input_o\ & \T2|G0:3:U0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datac => \b[4]~input_o\,
	datad => \T2|G0:3:U0|cout~0_combout\,
	combout => \T2|G0:4:U0|cout~0_combout\);

-- Location: LCCOMB_X1_Y50_N20
\Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\a[4]~input_o\ & ((\b[4]~input_o\) # (\T1|G0:3:U0|cout~1_combout\))) # (!\a[4]~input_o\ & (\b[4]~input_o\ & \T1|G0:3:U0|cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[4]~input_o\,
	datac => \b[4]~input_o\,
	datad => \T1|G0:3:U0|cout~1_combout\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X1_Y50_N16
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\ctrl[1]~input_o\ & (((\ctrl[0]~input_o\)))) # (!\ctrl[1]~input_o\ & ((\ctrl[0]~input_o\ & (!\T2|G0:4:U0|cout~0_combout\)) # (!\ctrl[0]~input_o\ & ((\Mux2~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2|G0:4:U0|cout~0_combout\,
	datab => \ctrl[1]~input_o\,
	datac => \ctrl[0]~input_o\,
	datad => \Mux2~10_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X1_Y50_N18
\Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\b[5]~input_o\ & ((\a[5]~input_o\ & (!\ctrl[1]~input_o\ & \Mux2~8_combout\)) # (!\a[5]~input_o\ & ((!\Mux2~8_combout\))))) # (!\b[5]~input_o\ & ((\a[5]~input_o\ & ((!\Mux2~8_combout\))) # (!\a[5]~input_o\ & ((\ctrl[1]~input_o\) # 
-- (\Mux2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \ctrl[1]~input_o\,
	datac => \a[5]~input_o\,
	datad => \Mux2~8_combout\,
	combout => \Mux2~9_combout\);

-- Location: IOIBUF_X0_Y48_N1
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X1_Y50_N28
\T1|G0:5:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T1|G0:5:U0|cout~0_combout\ = (\a[4]~input_o\ & ((\b[4]~input_o\) # (\T1|G0:3:U0|cout~1_combout\))) # (!\a[4]~input_o\ & (\b[4]~input_o\ & \T1|G0:3:U0|cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[4]~input_o\,
	datac => \b[4]~input_o\,
	datad => \T1|G0:3:U0|cout~1_combout\,
	combout => \T1|G0:5:U0|cout~0_combout\);

-- Location: LCCOMB_X1_Y50_N6
\T1|G0:5:U0|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \T1|G0:5:U0|cout~1_combout\ = (\b[5]~input_o\ & ((\a[5]~input_o\) # (\T1|G0:5:U0|cout~0_combout\))) # (!\b[5]~input_o\ & (\a[5]~input_o\ & \T1|G0:5:U0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datac => \a[5]~input_o\,
	datad => \T1|G0:5:U0|cout~0_combout\,
	combout => \T1|G0:5:U0|cout~1_combout\);

-- Location: LCCOMB_X1_Y50_N12
\T2|G0:5:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T2|G0:5:U0|cout~0_combout\ = (\a[5]~input_o\ & ((\T2|G0:4:U0|cout~0_combout\) # (!\b[5]~input_o\))) # (!\a[5]~input_o\ & (\T2|G0:4:U0|cout~0_combout\ & !\b[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datac => \T2|G0:4:U0|cout~0_combout\,
	datad => \b[5]~input_o\,
	combout => \T2|G0:5:U0|cout~0_combout\);

-- Location: LCCOMB_X1_Y50_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ctrl[1]~input_o\ & (((\ctrl[0]~input_o\)))) # (!\ctrl[1]~input_o\ & ((\ctrl[0]~input_o\ & ((!\T2|G0:5:U0|cout~0_combout\))) # (!\ctrl[0]~input_o\ & (\T1|G0:5:U0|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T1|G0:5:U0|cout~1_combout\,
	datab => \ctrl[1]~input_o\,
	datac => \ctrl[0]~input_o\,
	datad => \T2|G0:5:U0|cout~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y50_N0
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\b[6]~input_o\ & ((\a[6]~input_o\ & (\Mux1~0_combout\ & !\ctrl[1]~input_o\)) # (!\a[6]~input_o\ & (!\Mux1~0_combout\)))) # (!\b[6]~input_o\ & ((\a[6]~input_o\ & (!\Mux1~0_combout\)) # (!\a[6]~input_o\ & ((\Mux1~0_combout\) # 
-- (\ctrl[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \a[6]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \ctrl[1]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X0_Y49_N8
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X1_Y50_N22
\Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (\a[6]~input_o\ & ((\b[6]~input_o\) # (\T1|G0:5:U0|cout~1_combout\))) # (!\a[6]~input_o\ & (\b[6]~input_o\ & \T1|G0:5:U0|cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[6]~input_o\,
	datac => \b[6]~input_o\,
	datad => \T1|G0:5:U0|cout~1_combout\,
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X1_Y50_N2
\T2|G0:6:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T2|G0:6:U0|cout~0_combout\ = (\a[6]~input_o\ & ((\T2|G0:5:U0|cout~0_combout\) # (!\b[6]~input_o\))) # (!\a[6]~input_o\ & (!\b[6]~input_o\ & \T2|G0:5:U0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[6]~input_o\,
	datac => \b[6]~input_o\,
	datad => \T2|G0:5:U0|cout~0_combout\,
	combout => \T2|G0:6:U0|cout~0_combout\);

-- Location: LCCOMB_X1_Y50_N4
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\ctrl[1]~input_o\ & (((\ctrl[0]~input_o\)))) # (!\ctrl[1]~input_o\ & ((\ctrl[0]~input_o\ & ((!\T2|G0:6:U0|cout~0_combout\))) # (!\ctrl[0]~input_o\ & (\Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~10_combout\,
	datab => \ctrl[1]~input_o\,
	datac => \ctrl[0]~input_o\,
	datad => \T2|G0:6:U0|cout~0_combout\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X1_Y50_N30
\Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\b[7]~input_o\ & ((\a[7]~input_o\ & (\Mux0~8_combout\ & !\ctrl[1]~input_o\)) # (!\a[7]~input_o\ & (!\Mux0~8_combout\)))) # (!\b[7]~input_o\ & ((\a[7]~input_o\ & (!\Mux0~8_combout\)) # (!\a[7]~input_o\ & ((\Mux0~8_combout\) # 
-- (\ctrl[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \a[7]~input_o\,
	datac => \Mux0~8_combout\,
	datad => \ctrl[1]~input_o\,
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X1_Y50_N8
\T1|G0:7:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T1|G0:7:U0|cout~0_combout\ = (\a[6]~input_o\ & ((\b[6]~input_o\) # (\T1|G0:5:U0|cout~1_combout\))) # (!\a[6]~input_o\ & (\b[6]~input_o\ & \T1|G0:5:U0|cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[6]~input_o\,
	datac => \b[6]~input_o\,
	datad => \T1|G0:5:U0|cout~1_combout\,
	combout => \T1|G0:7:U0|cout~0_combout\);

-- Location: LCCOMB_X1_Y50_N26
\T1|G0:7:U0|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \T1|G0:7:U0|cout~1_combout\ = (\b[7]~input_o\ & ((\a[7]~input_o\) # (\T1|G0:7:U0|cout~0_combout\))) # (!\b[7]~input_o\ & (\a[7]~input_o\ & \T1|G0:7:U0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \a[7]~input_o\,
	datac => \T1|G0:7:U0|cout~0_combout\,
	combout => \T1|G0:7:U0|cout~1_combout\);

-- Location: LCCOMB_X1_Y50_N24
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\b[7]~input_o\ & (\a[7]~input_o\ & \T2|G0:6:U0|cout~0_combout\)) # (!\b[7]~input_o\ & ((\a[7]~input_o\) # (\T2|G0:6:U0|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \a[7]~input_o\,
	datad => \T2|G0:6:U0|cout~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X1_Y50_N10
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (!\ctrl[1]~input_o\ & ((\ctrl[0]~input_o\ & ((\Mux8~0_combout\))) # (!\ctrl[0]~input_o\ & (\T1|G0:7:U0|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T1|G0:7:U0|cout~1_combout\,
	datab => \ctrl[1]~input_o\,
	datac => \ctrl[0]~input_o\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_cout <= \cout~output_o\;
END structure;


