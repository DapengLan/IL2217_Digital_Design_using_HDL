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

-- DATE "09/21/2015 11:34:24"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE res_bus_data_type IS

TYPE SWA_2_0_type IS ARRAY (2 DOWNTO 0) OF std_logic;
TYPE SWA_2_0_3_0_type IS ARRAY (3 DOWNTO 0) OF SWA_2_0_type;
SUBTYPE SWA_type IS SWA_2_0_3_0_type;

TYPE SWB_2_0_type IS ARRAY (2 DOWNTO 0) OF std_logic;
TYPE SWB_2_0_3_0_type IS ARRAY (3 DOWNTO 0) OF SWB_2_0_type;
SUBTYPE SWB_type IS SWB_2_0_3_0_type;

TYPE LEDR_2_0_type IS ARRAY (2 DOWNTO 0) OF std_logic;
TYPE LEDR_2_0_3_0_type IS ARRAY (3 DOWNTO 0) OF LEDR_2_0_type;
SUBTYPE LEDR_type IS LEDR_2_0_3_0_type;

END res_bus_data_type;

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY WORK;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.RES_BUS_DATA_TYPE.ALL;

ENTITY 	res_bus IS
    PORT (
	SWA : IN SWA_type;
	SWB : IN SWB_type;
	LEDR : OUT LEDR_type;
	clk : IN std_logic;
	clear : IN std_logic
	);
END res_bus;

-- Design Ports Information
-- SWA[0][2]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA[1][2]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA[2][2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA[3][2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0][0]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0][1]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0][2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1][0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1][1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1][2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2][0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2][1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2][2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3][0]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3][1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3][2]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB[0][2]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA[0][1]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB[0][0]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA[0][0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB[0][1]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB[1][2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA[1][1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB[1][0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA[1][0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB[1][1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB[2][2]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA[2][1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB[2][0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA[2][0]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB[2][1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB[3][2]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA[3][1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB[3][0]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA[3][0]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB[3][1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF res_bus IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SWA : SWA_type;
SIGNAL ww_SWB : SWB_type;
SIGNAL ww_LEDR : LEDR_type;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL \clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SWA[0][2]~input_o\ : std_logic;
SIGNAL \SWA[1][2]~input_o\ : std_logic;
SIGNAL \SWA[2][2]~input_o\ : std_logic;
SIGNAL \SWA[3][2]~input_o\ : std_logic;
SIGNAL \LEDR[0][0]~output_o\ : std_logic;
SIGNAL \LEDR[0][1]~output_o\ : std_logic;
SIGNAL \LEDR[0][2]~output_o\ : std_logic;
SIGNAL \LEDR[1][0]~output_o\ : std_logic;
SIGNAL \LEDR[1][1]~output_o\ : std_logic;
SIGNAL \LEDR[1][2]~output_o\ : std_logic;
SIGNAL \LEDR[2][0]~output_o\ : std_logic;
SIGNAL \LEDR[2][1]~output_o\ : std_logic;
SIGNAL \LEDR[2][2]~output_o\ : std_logic;
SIGNAL \LEDR[3][0]~output_o\ : std_logic;
SIGNAL \LEDR[3][1]~output_o\ : std_logic;
SIGNAL \LEDR[3][2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \SWA[0][0]~input_o\ : std_logic;
SIGNAL \R1|Q[0][0]~0_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \R1|Q[0][0]~q\ : std_logic;
SIGNAL \SWB[0][2]~input_o\ : std_logic;
SIGNAL \R2|Q[0][2]~q\ : std_logic;
SIGNAL \SWA[0][1]~input_o\ : std_logic;
SIGNAL \R1|Q[0][1]~q\ : std_logic;
SIGNAL \SWB[0][0]~input_o\ : std_logic;
SIGNAL \R2|Q[0][0]~0_combout\ : std_logic;
SIGNAL \R2|Q[0][0]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \SWB[0][1]~input_o\ : std_logic;
SIGNAL \R2|Q[0][1]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \SWB[1][0]~input_o\ : std_logic;
SIGNAL \R2|Q[1][0]~1_combout\ : std_logic;
SIGNAL \R2|Q[1][0]~q\ : std_logic;
SIGNAL \SWA[1][0]~input_o\ : std_logic;
SIGNAL \R1|Q[1][0]~1_combout\ : std_logic;
SIGNAL \R1|Q[1][0]~q\ : std_logic;
SIGNAL \SWA[1][1]~input_o\ : std_logic;
SIGNAL \R1|Q[1][1]~q\ : std_logic;
SIGNAL \SWB[1][2]~input_o\ : std_logic;
SIGNAL \R2|Q[1][2]~feeder_combout\ : std_logic;
SIGNAL \R2|Q[1][2]~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \SWB[1][1]~input_o\ : std_logic;
SIGNAL \R2|Q[1][1]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \SWB[2][0]~input_o\ : std_logic;
SIGNAL \R2|Q[2][0]~2_combout\ : std_logic;
SIGNAL \R2|Q[2][0]~q\ : std_logic;
SIGNAL \SWB[2][2]~input_o\ : std_logic;
SIGNAL \R2|Q[2][2]~feeder_combout\ : std_logic;
SIGNAL \R2|Q[2][2]~q\ : std_logic;
SIGNAL \SWA[2][1]~input_o\ : std_logic;
SIGNAL \R1|Q[2][1]~q\ : std_logic;
SIGNAL \SWA[2][0]~input_o\ : std_logic;
SIGNAL \R1|Q[2][0]~2_combout\ : std_logic;
SIGNAL \R1|Q[2][0]~q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \SWB[2][1]~input_o\ : std_logic;
SIGNAL \R2|Q[2][1]~q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \SWA[3][0]~input_o\ : std_logic;
SIGNAL \R1|Q[3][0]~3_combout\ : std_logic;
SIGNAL \R1|Q[3][0]~q\ : std_logic;
SIGNAL \SWB[3][2]~input_o\ : std_logic;
SIGNAL \R2|Q[3][2]~q\ : std_logic;
SIGNAL \SWA[3][1]~input_o\ : std_logic;
SIGNAL \R1|Q[3][1]~q\ : std_logic;
SIGNAL \SWB[3][0]~input_o\ : std_logic;
SIGNAL \R2|Q[3][0]~3_combout\ : std_logic;
SIGNAL \R2|Q[3][0]~q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \SWB[3][1]~input_o\ : std_logic;
SIGNAL \R2|Q[3][1]~q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_clear~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_SWA <= SWA;
ww_SWB <= SWB;
LEDR <= ww_LEDR;
ww_clk <= clk;
ww_clear <= clear;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clear~inputclkctrl_outclk\ <= NOT \clear~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y5_N16
\LEDR[0][0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0][0]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\LEDR[0][1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0][1]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\LEDR[0][2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0][2]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDR[1][0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[1][0]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\LEDR[1][1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[1][1]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\LEDR[1][2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1][2]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\LEDR[2][0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2][0]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\LEDR[2][1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2][1]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\LEDR[2][2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2][2]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LEDR[3][0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[3][0]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\LEDR[3][1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[3][1]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\LEDR[3][2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3][2]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y9_N15
\SWA[0][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA(0)(0),
	o => \SWA[0][0]~input_o\);

-- Location: LCCOMB_X1_Y8_N30
\R1|Q[0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1|Q[0][0]~0_combout\ = !\SWA[0][0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWA[0][0]~input_o\,
	combout => \R1|Q[0][0]~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: CLKCTRL_G4
\clear~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clear~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clear~inputclkctrl_outclk\);

-- Location: FF_X1_Y8_N31
\R1|Q[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \R1|Q[0][0]~0_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q[0][0]~q\);

-- Location: IOIBUF_X0_Y7_N8
\SWB[0][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB(0)(2),
	o => \SWB[0][2]~input_o\);

-- Location: FF_X1_Y8_N17
\R2|Q[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SWB[0][2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q[0][2]~q\);

-- Location: IOIBUF_X0_Y10_N22
\SWA[0][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA(0)(1),
	o => \SWA[0][1]~input_o\);

-- Location: FF_X1_Y8_N27
\R1|Q[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SWA[0][1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q[0][1]~q\);

-- Location: IOIBUF_X0_Y8_N22
\SWB[0][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB(0)(0),
	o => \SWB[0][0]~input_o\);

-- Location: LCCOMB_X1_Y8_N12
\R2|Q[0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R2|Q[0][0]~0_combout\ = !\SWB[0][0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWB[0][0]~input_o\,
	combout => \R2|Q[0][0]~0_combout\);

-- Location: FF_X1_Y8_N13
\R2|Q[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \R2|Q[0][0]~0_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q[0][0]~q\);

-- Location: LCCOMB_X1_Y8_N26
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\R1|Q[0][0]~q\ & (((\R2|Q[0][2]~q\ & !\R1|Q[0][1]~q\)) # (!\R2|Q[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1|Q[0][0]~q\,
	datab => \R2|Q[0][2]~q\,
	datac => \R1|Q[0][1]~q\,
	datad => \R2|Q[0][0]~q\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X0_Y10_N15
\SWB[0][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB(0)(1),
	o => \SWB[0][1]~input_o\);

-- Location: FF_X1_Y8_N25
\R2|Q[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SWB[0][1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q[0][1]~q\);

-- Location: LCCOMB_X1_Y8_N24
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\R1|Q[0][1]~q\ & ((\R2|Q[0][1]~q\) # ((\R1|Q[0][0]~q\ & \R2|Q[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1|Q[0][0]~q\,
	datab => \R2|Q[0][2]~q\,
	datac => \R2|Q[0][1]~q\,
	datad => \R1|Q[0][1]~q\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X65_Y73_N15
\SWB[1][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB(1)(0),
	o => \SWB[1][0]~input_o\);

-- Location: LCCOMB_X65_Y72_N12
\R2|Q[1][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \R2|Q[1][0]~1_combout\ = !\SWB[1][0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWB[1][0]~input_o\,
	combout => \R2|Q[1][0]~1_combout\);

-- Location: FF_X65_Y72_N13
\R2|Q[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \R2|Q[1][0]~1_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q[1][0]~q\);

-- Location: IOIBUF_X65_Y73_N8
\SWA[1][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA(1)(0),
	o => \SWA[1][0]~input_o\);

-- Location: LCCOMB_X65_Y72_N14
\R1|Q[1][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1|Q[1][0]~1_combout\ = !\SWA[1][0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SWA[1][0]~input_o\,
	combout => \R1|Q[1][0]~1_combout\);

-- Location: FF_X65_Y72_N15
\R1|Q[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \R1|Q[1][0]~1_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q[1][0]~q\);

-- Location: IOIBUF_X62_Y73_N15
\SWA[1][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA(1)(1),
	o => \SWA[1][1]~input_o\);

-- Location: FF_X65_Y72_N11
\R1|Q[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SWA[1][1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q[1][1]~q\);

-- Location: IOIBUF_X65_Y73_N22
\SWB[1][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB(1)(2),
	o => \SWB[1][2]~input_o\);

-- Location: LCCOMB_X65_Y72_N24
\R2|Q[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R2|Q[1][2]~feeder_combout\ = \SWB[1][2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWB[1][2]~input_o\,
	combout => \R2|Q[1][2]~feeder_combout\);

-- Location: FF_X65_Y72_N25
\R2|Q[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \R2|Q[1][2]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q[1][2]~q\);

-- Location: LCCOMB_X65_Y72_N10
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\R1|Q[1][0]~q\ & (((!\R1|Q[1][1]~q\ & \R2|Q[1][2]~q\)) # (!\R2|Q[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R2|Q[1][0]~q\,
	datab => \R1|Q[1][0]~q\,
	datac => \R1|Q[1][1]~q\,
	datad => \R2|Q[1][2]~q\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X62_Y73_N22
\SWB[1][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB(1)(1),
	o => \SWB[1][1]~input_o\);

-- Location: FF_X65_Y72_N9
\R2|Q[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SWB[1][1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q[1][1]~q\);

-- Location: LCCOMB_X65_Y72_N8
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\R1|Q[1][1]~q\ & ((\R2|Q[1][1]~q\) # ((\R1|Q[1][0]~q\ & \R2|Q[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1|Q[1][1]~q\,
	datab => \R1|Q[1][0]~q\,
	datac => \R2|Q[1][1]~q\,
	datad => \R2|Q[1][2]~q\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X0_Y69_N8
\SWB[2][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB(2)(0),
	o => \SWB[2][0]~input_o\);

-- Location: LCCOMB_X1_Y68_N12
\R2|Q[2][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \R2|Q[2][0]~2_combout\ = !\SWB[2][0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWB[2][0]~input_o\,
	combout => \R2|Q[2][0]~2_combout\);

-- Location: FF_X1_Y68_N13
\R2|Q[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \R2|Q[2][0]~2_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q[2][0]~q\);

-- Location: IOIBUF_X0_Y68_N8
\SWB[2][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB(2)(2),
	o => \SWB[2][2]~input_o\);

-- Location: LCCOMB_X1_Y68_N24
\R2|Q[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R2|Q[2][2]~feeder_combout\ = \SWB[2][2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWB[2][2]~input_o\,
	combout => \R2|Q[2][2]~feeder_combout\);

-- Location: FF_X1_Y68_N25
\R2|Q[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \R2|Q[2][2]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q[2][2]~q\);

-- Location: IOIBUF_X0_Y68_N1
\SWA[2][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA(2)(1),
	o => \SWA[2][1]~input_o\);

-- Location: FF_X1_Y68_N27
\R1|Q[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SWA[2][1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q[2][1]~q\);

-- Location: IOIBUF_X0_Y67_N15
\SWA[2][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA(2)(0),
	o => \SWA[2][0]~input_o\);

-- Location: LCCOMB_X1_Y68_N6
\R1|Q[2][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1|Q[2][0]~2_combout\ = !\SWA[2][0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SWA[2][0]~input_o\,
	combout => \R1|Q[2][0]~2_combout\);

-- Location: FF_X1_Y68_N7
\R1|Q[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \R1|Q[2][0]~2_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q[2][0]~q\);

-- Location: LCCOMB_X1_Y68_N26
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\R1|Q[2][0]~q\ & (((\R2|Q[2][2]~q\ & !\R1|Q[2][1]~q\)) # (!\R2|Q[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R2|Q[2][0]~q\,
	datab => \R2|Q[2][2]~q\,
	datac => \R1|Q[2][1]~q\,
	datad => \R1|Q[2][0]~q\,
	combout => \Mux11~0_combout\);

-- Location: IOIBUF_X0_Y68_N15
\SWB[2][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB(2)(1),
	o => \SWB[2][1]~input_o\);

-- Location: FF_X1_Y68_N17
\R2|Q[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SWB[2][1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q[2][1]~q\);

-- Location: LCCOMB_X1_Y68_N16
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\R1|Q[2][1]~q\ & ((\R2|Q[2][1]~q\) # ((\R2|Q[2][2]~q\ & \R1|Q[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1|Q[2][1]~q\,
	datab => \R2|Q[2][2]~q\,
	datac => \R2|Q[2][1]~q\,
	datad => \R1|Q[2][0]~q\,
	combout => \Mux10~0_combout\);

-- Location: IOIBUF_X0_Y27_N22
\SWA[3][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA(3)(0),
	o => \SWA[3][0]~input_o\);

-- Location: LCCOMB_X1_Y27_N30
\R1|Q[3][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1|Q[3][0]~3_combout\ = !\SWA[3][0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWA[3][0]~input_o\,
	combout => \R1|Q[3][0]~3_combout\);

-- Location: FF_X1_Y27_N31
\R1|Q[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \R1|Q[3][0]~3_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q[3][0]~q\);

-- Location: IOIBUF_X0_Y25_N15
\SWB[3][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB(3)(2),
	o => \SWB[3][2]~input_o\);

-- Location: FF_X1_Y27_N17
\R2|Q[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SWB[3][2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q[3][2]~q\);

-- Location: IOIBUF_X0_Y28_N22
\SWA[3][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA(3)(1),
	o => \SWA[3][1]~input_o\);

-- Location: FF_X1_Y27_N27
\R1|Q[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SWA[3][1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q[3][1]~q\);

-- Location: IOIBUF_X0_Y27_N15
\SWB[3][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB(3)(0),
	o => \SWB[3][0]~input_o\);

-- Location: LCCOMB_X1_Y27_N12
\R2|Q[3][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \R2|Q[3][0]~3_combout\ = !\SWB[3][0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWB[3][0]~input_o\,
	combout => \R2|Q[3][0]~3_combout\);

-- Location: FF_X1_Y27_N13
\R2|Q[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \R2|Q[3][0]~3_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q[3][0]~q\);

-- Location: LCCOMB_X1_Y27_N26
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\R1|Q[3][0]~q\ & (((\R2|Q[3][2]~q\ & !\R1|Q[3][1]~q\)) # (!\R2|Q[3][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1|Q[3][0]~q\,
	datab => \R2|Q[3][2]~q\,
	datac => \R1|Q[3][1]~q\,
	datad => \R2|Q[3][0]~q\,
	combout => \Mux15~0_combout\);

-- Location: IOIBUF_X0_Y28_N15
\SWB[3][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB(3)(1),
	o => \SWB[3][1]~input_o\);

-- Location: FF_X1_Y27_N25
\R2|Q[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SWB[3][1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q[3][1]~q\);

-- Location: LCCOMB_X1_Y27_N24
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\R1|Q[3][1]~q\ & ((\R2|Q[3][1]~q\) # ((\R1|Q[3][0]~q\ & \R2|Q[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1|Q[3][0]~q\,
	datab => \R2|Q[3][2]~q\,
	datac => \R2|Q[3][1]~q\,
	datad => \R1|Q[3][1]~q\,
	combout => \Mux14~0_combout\);

-- Location: IOIBUF_X115_Y12_N1
\SWA[0][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA(0)(2),
	o => \SWA[0][2]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\SWA[1][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA(1)(2),
	o => \SWA[1][2]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\SWA[2][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA(2)(2),
	o => \SWA[2][2]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\SWA[3][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA(3)(2),
	o => \SWA[3][2]~input_o\);

ww_LEDR(0)(0) <= \LEDR[0][0]~output_o\;

ww_LEDR(0)(1) <= \LEDR[0][1]~output_o\;

ww_LEDR(0)(2) <= \LEDR[0][2]~output_o\;

ww_LEDR(1)(0) <= \LEDR[1][0]~output_o\;

ww_LEDR(1)(1) <= \LEDR[1][1]~output_o\;

ww_LEDR(1)(2) <= \LEDR[1][2]~output_o\;

ww_LEDR(2)(0) <= \LEDR[2][0]~output_o\;

ww_LEDR(2)(1) <= \LEDR[2][1]~output_o\;

ww_LEDR(2)(2) <= \LEDR[2][2]~output_o\;

ww_LEDR(3)(0) <= \LEDR[3][0]~output_o\;

ww_LEDR(3)(1) <= \LEDR[3][1]~output_o\;

ww_LEDR(3)(2) <= \LEDR[3][2]~output_o\;
END structure;


