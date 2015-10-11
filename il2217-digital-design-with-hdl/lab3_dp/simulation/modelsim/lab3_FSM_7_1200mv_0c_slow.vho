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

-- DATE "10/02/2015 08:42:47"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_alarm IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top_alarm;

-- Design Ports Information
-- LEDR	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_alarm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK1|temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK1|Add0~0_combout\ : std_logic;
SIGNAL \CLK1|Add0~1\ : std_logic;
SIGNAL \CLK1|Add0~2_combout\ : std_logic;
SIGNAL \CLK1|Add0~3\ : std_logic;
SIGNAL \CLK1|Add0~4_combout\ : std_logic;
SIGNAL \CLK1|Add0~5\ : std_logic;
SIGNAL \CLK1|Add0~6_combout\ : std_logic;
SIGNAL \CLK1|Add0~7\ : std_logic;
SIGNAL \CLK1|Add0~8_combout\ : std_logic;
SIGNAL \CLK1|Add0~9\ : std_logic;
SIGNAL \CLK1|Add0~10_combout\ : std_logic;
SIGNAL \CLK1|Add0~11\ : std_logic;
SIGNAL \CLK1|Add0~12_combout\ : std_logic;
SIGNAL \CLK1|Add0~13\ : std_logic;
SIGNAL \CLK1|Add0~14_combout\ : std_logic;
SIGNAL \CLK1|count~6_combout\ : std_logic;
SIGNAL \CLK1|Add0~15\ : std_logic;
SIGNAL \CLK1|Add0~16_combout\ : std_logic;
SIGNAL \CLK1|Add0~17\ : std_logic;
SIGNAL \CLK1|Add0~18_combout\ : std_logic;
SIGNAL \CLK1|Add0~19\ : std_logic;
SIGNAL \CLK1|Add0~20_combout\ : std_logic;
SIGNAL \CLK1|count~5_combout\ : std_logic;
SIGNAL \CLK1|Add0~21\ : std_logic;
SIGNAL \CLK1|Add0~22_combout\ : std_logic;
SIGNAL \CLK1|Add0~23\ : std_logic;
SIGNAL \CLK1|Add0~24_combout\ : std_logic;
SIGNAL \CLK1|Add0~25\ : std_logic;
SIGNAL \CLK1|Add0~26_combout\ : std_logic;
SIGNAL \CLK1|Add0~27\ : std_logic;
SIGNAL \CLK1|Add0~28_combout\ : std_logic;
SIGNAL \CLK1|Add0~29\ : std_logic;
SIGNAL \CLK1|Add0~30_combout\ : std_logic;
SIGNAL \CLK1|count~4_combout\ : std_logic;
SIGNAL \CLK1|Add0~31\ : std_logic;
SIGNAL \CLK1|Add0~32_combout\ : std_logic;
SIGNAL \CLK1|Add0~33\ : std_logic;
SIGNAL \CLK1|Add0~34_combout\ : std_logic;
SIGNAL \CLK1|count~3_combout\ : std_logic;
SIGNAL \CLK1|Add0~35\ : std_logic;
SIGNAL \CLK1|Add0~36_combout\ : std_logic;
SIGNAL \CLK1|count~2_combout\ : std_logic;
SIGNAL \CLK1|Add0~37\ : std_logic;
SIGNAL \CLK1|Add0~38_combout\ : std_logic;
SIGNAL \CLK1|count~1_combout\ : std_logic;
SIGNAL \CLK1|Add0~39\ : std_logic;
SIGNAL \CLK1|Add0~40_combout\ : std_logic;
SIGNAL \CLK1|count~0_combout\ : std_logic;
SIGNAL \CLK1|Add0~41\ : std_logic;
SIGNAL \CLK1|Add0~42_combout\ : std_logic;
SIGNAL \CLK1|Add0~43\ : std_logic;
SIGNAL \CLK1|Add0~44_combout\ : std_logic;
SIGNAL \CLK1|Add0~45\ : std_logic;
SIGNAL \CLK1|Add0~46_combout\ : std_logic;
SIGNAL \CLK1|Add0~47\ : std_logic;
SIGNAL \CLK1|Add0~48_combout\ : std_logic;
SIGNAL \CLK1|Add0~49\ : std_logic;
SIGNAL \CLK1|Add0~50_combout\ : std_logic;
SIGNAL \CLK1|Add0~51\ : std_logic;
SIGNAL \CLK1|Add0~52_combout\ : std_logic;
SIGNAL \CLK1|Add0~53\ : std_logic;
SIGNAL \CLK1|Add0~54_combout\ : std_logic;
SIGNAL \CLK1|Add0~55\ : std_logic;
SIGNAL \CLK1|Add0~56_combout\ : std_logic;
SIGNAL \CLK1|Add0~57\ : std_logic;
SIGNAL \CLK1|Add0~58_combout\ : std_logic;
SIGNAL \CLK1|Add0~59\ : std_logic;
SIGNAL \CLK1|Add0~60_combout\ : std_logic;
SIGNAL \CLK1|Add0~61\ : std_logic;
SIGNAL \CLK1|Add0~62_combout\ : std_logic;
SIGNAL \CLK1|Equal0~0_combout\ : std_logic;
SIGNAL \CLK1|Equal0~6_combout\ : std_logic;
SIGNAL \CLK1|Equal0~1_combout\ : std_logic;
SIGNAL \CLK1|Equal0~2_combout\ : std_logic;
SIGNAL \CLK1|Equal0~3_combout\ : std_logic;
SIGNAL \CLK1|Equal0~4_combout\ : std_logic;
SIGNAL \CLK1|Equal0~5_combout\ : std_logic;
SIGNAL \CLK1|Equal0~7_combout\ : std_logic;
SIGNAL \CLK1|Equal0~8_combout\ : std_logic;
SIGNAL \CLK1|Equal0~9_combout\ : std_logic;
SIGNAL \CLK1|Equal0~10_combout\ : std_logic;
SIGNAL \CLK1|temp~0_combout\ : std_logic;
SIGNAL \CLK1|temp~feeder_combout\ : std_logic;
SIGNAL \CLK1|temp~q\ : std_logic;
SIGNAL \CLK1|temp~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \COUNT1|COUNT[0]~13_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \COUNT1|COUNT[1]~4_cout\ : std_logic;
SIGNAL \COUNT1|COUNT[1]~5_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \COUNT1|COUNT[3]~7_combout\ : std_logic;
SIGNAL \COUNT1|COUNT[3]~8_combout\ : std_logic;
SIGNAL \COUNT1|COUNT[1]~6\ : std_logic;
SIGNAL \COUNT1|COUNT[2]~9_combout\ : std_logic;
SIGNAL \COUNT1|COUNT[2]~10\ : std_logic;
SIGNAL \COUNT1|COUNT[3]~11_combout\ : std_logic;
SIGNAL \SW[0]~_wirecell_combout\ : std_logic;
SIGNAL \W1|Mux6~0_combout\ : std_logic;
SIGNAL \W1|Mux5~0_combout\ : std_logic;
SIGNAL \W1|Mux4~0_combout\ : std_logic;
SIGNAL \W1|Mux3~0_combout\ : std_logic;
SIGNAL \W1|Mux2~0_combout\ : std_logic;
SIGNAL \W1|Mux1~0_combout\ : std_logic;
SIGNAL \W1|Mux0~0_combout\ : std_logic;
SIGNAL \COUNT2|COUNT[0]~3_combout\ : std_logic;
SIGNAL \COUNT2|COUNT[1]~5_cout\ : std_logic;
SIGNAL \COUNT2|COUNT[1]~6_combout\ : std_logic;
SIGNAL \COUNT2|COUNT[1]~7\ : std_logic;
SIGNAL \COUNT2|COUNT[2]~10_combout\ : std_logic;
SIGNAL \COUNT2|COUNT[2]~11\ : std_logic;
SIGNAL \COUNT2|COUNT[3]~12_combout\ : std_logic;
SIGNAL \COUNT2|COUNT[0]~8_combout\ : std_logic;
SIGNAL \COUNT2|COUNT[0]~9_combout\ : std_logic;
SIGNAL \W2|Mux6~0_combout\ : std_logic;
SIGNAL \W2|Mux5~0_combout\ : std_logic;
SIGNAL \W2|Mux4~0_combout\ : std_logic;
SIGNAL \W2|Mux3~0_combout\ : std_logic;
SIGNAL \W2|Mux2~0_combout\ : std_logic;
SIGNAL \W2|Mux1~0_combout\ : std_logic;
SIGNAL \W2|Mux0~0_combout\ : std_logic;
SIGNAL \CLK1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \COUNT2|COUNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \COUNT1|COUNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \W2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \W1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\CLK1|temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK1|temp~q\);
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\W2|ALT_INV_Mux0~0_combout\ <= NOT \W2|Mux0~0_combout\;
\W1|ALT_INV_Mux0~0_combout\ <= NOT \W1|Mux0~0_combout\;

-- Location: IOOBUF_X115_Y55_N23
\LEDR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK1|temp~q\,
	devoe => ww_devoe,
	o => \LEDR~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: FF_X87_Y55_N29
\CLK1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(30));

-- Location: LCCOMB_X87_Y56_N0
\CLK1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~0_combout\ = \CLK1|count\(0) $ (VCC)
-- \CLK1|Add0~1\ = CARRY(\CLK1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(0),
	datad => VCC,
	combout => \CLK1|Add0~0_combout\,
	cout => \CLK1|Add0~1\);

-- Location: FF_X87_Y56_N1
\CLK1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(0));

-- Location: LCCOMB_X87_Y56_N2
\CLK1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~2_combout\ = (\CLK1|count\(1) & (!\CLK1|Add0~1\)) # (!\CLK1|count\(1) & ((\CLK1|Add0~1\) # (GND)))
-- \CLK1|Add0~3\ = CARRY((!\CLK1|Add0~1\) # (!\CLK1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(1),
	datad => VCC,
	cin => \CLK1|Add0~1\,
	combout => \CLK1|Add0~2_combout\,
	cout => \CLK1|Add0~3\);

-- Location: FF_X87_Y56_N3
\CLK1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(1));

-- Location: LCCOMB_X87_Y56_N4
\CLK1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~4_combout\ = (\CLK1|count\(2) & (\CLK1|Add0~3\ $ (GND))) # (!\CLK1|count\(2) & (!\CLK1|Add0~3\ & VCC))
-- \CLK1|Add0~5\ = CARRY((\CLK1|count\(2) & !\CLK1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(2),
	datad => VCC,
	cin => \CLK1|Add0~3\,
	combout => \CLK1|Add0~4_combout\,
	cout => \CLK1|Add0~5\);

-- Location: FF_X87_Y56_N5
\CLK1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(2));

-- Location: LCCOMB_X87_Y56_N6
\CLK1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~6_combout\ = (\CLK1|count\(3) & (!\CLK1|Add0~5\)) # (!\CLK1|count\(3) & ((\CLK1|Add0~5\) # (GND)))
-- \CLK1|Add0~7\ = CARRY((!\CLK1|Add0~5\) # (!\CLK1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|count\(3),
	datad => VCC,
	cin => \CLK1|Add0~5\,
	combout => \CLK1|Add0~6_combout\,
	cout => \CLK1|Add0~7\);

-- Location: FF_X87_Y56_N7
\CLK1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(3));

-- Location: LCCOMB_X87_Y56_N8
\CLK1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~8_combout\ = (\CLK1|count\(4) & (\CLK1|Add0~7\ $ (GND))) # (!\CLK1|count\(4) & (!\CLK1|Add0~7\ & VCC))
-- \CLK1|Add0~9\ = CARRY((\CLK1|count\(4) & !\CLK1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(4),
	datad => VCC,
	cin => \CLK1|Add0~7\,
	combout => \CLK1|Add0~8_combout\,
	cout => \CLK1|Add0~9\);

-- Location: FF_X87_Y56_N9
\CLK1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(4));

-- Location: LCCOMB_X87_Y56_N10
\CLK1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~10_combout\ = (\CLK1|count\(5) & (!\CLK1|Add0~9\)) # (!\CLK1|count\(5) & ((\CLK1|Add0~9\) # (GND)))
-- \CLK1|Add0~11\ = CARRY((!\CLK1|Add0~9\) # (!\CLK1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|count\(5),
	datad => VCC,
	cin => \CLK1|Add0~9\,
	combout => \CLK1|Add0~10_combout\,
	cout => \CLK1|Add0~11\);

-- Location: FF_X87_Y56_N11
\CLK1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(5));

-- Location: LCCOMB_X87_Y56_N12
\CLK1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~12_combout\ = (\CLK1|count\(6) & (\CLK1|Add0~11\ $ (GND))) # (!\CLK1|count\(6) & (!\CLK1|Add0~11\ & VCC))
-- \CLK1|Add0~13\ = CARRY((\CLK1|count\(6) & !\CLK1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|count\(6),
	datad => VCC,
	cin => \CLK1|Add0~11\,
	combout => \CLK1|Add0~12_combout\,
	cout => \CLK1|Add0~13\);

-- Location: FF_X87_Y56_N13
\CLK1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(6));

-- Location: LCCOMB_X87_Y56_N14
\CLK1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~14_combout\ = (\CLK1|count\(7) & (!\CLK1|Add0~13\)) # (!\CLK1|count\(7) & ((\CLK1|Add0~13\) # (GND)))
-- \CLK1|Add0~15\ = CARRY((!\CLK1|Add0~13\) # (!\CLK1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(7),
	datad => VCC,
	cin => \CLK1|Add0~13\,
	combout => \CLK1|Add0~14_combout\,
	cout => \CLK1|Add0~15\);

-- Location: LCCOMB_X88_Y55_N24
\CLK1|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|count~6_combout\ = (!\CLK1|Equal0~10_combout\ & \CLK1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK1|Equal0~10_combout\,
	datad => \CLK1|Add0~14_combout\,
	combout => \CLK1|count~6_combout\);

-- Location: FF_X88_Y55_N25
\CLK1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(7));

-- Location: LCCOMB_X87_Y56_N16
\CLK1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~16_combout\ = (\CLK1|count\(8) & (\CLK1|Add0~15\ $ (GND))) # (!\CLK1|count\(8) & (!\CLK1|Add0~15\ & VCC))
-- \CLK1|Add0~17\ = CARRY((\CLK1|count\(8) & !\CLK1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(8),
	datad => VCC,
	cin => \CLK1|Add0~15\,
	combout => \CLK1|Add0~16_combout\,
	cout => \CLK1|Add0~17\);

-- Location: FF_X87_Y56_N17
\CLK1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(8));

-- Location: LCCOMB_X87_Y56_N18
\CLK1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~18_combout\ = (\CLK1|count\(9) & (!\CLK1|Add0~17\)) # (!\CLK1|count\(9) & ((\CLK1|Add0~17\) # (GND)))
-- \CLK1|Add0~19\ = CARRY((!\CLK1|Add0~17\) # (!\CLK1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(9),
	datad => VCC,
	cin => \CLK1|Add0~17\,
	combout => \CLK1|Add0~18_combout\,
	cout => \CLK1|Add0~19\);

-- Location: FF_X87_Y56_N19
\CLK1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(9));

-- Location: LCCOMB_X87_Y56_N20
\CLK1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~20_combout\ = (\CLK1|count\(10) & (\CLK1|Add0~19\ $ (GND))) # (!\CLK1|count\(10) & (!\CLK1|Add0~19\ & VCC))
-- \CLK1|Add0~21\ = CARRY((\CLK1|count\(10) & !\CLK1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(10),
	datad => VCC,
	cin => \CLK1|Add0~19\,
	combout => \CLK1|Add0~20_combout\,
	cout => \CLK1|Add0~21\);

-- Location: LCCOMB_X88_Y55_N6
\CLK1|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|count~5_combout\ = (!\CLK1|Equal0~10_combout\ & \CLK1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK1|Equal0~10_combout\,
	datad => \CLK1|Add0~20_combout\,
	combout => \CLK1|count~5_combout\);

-- Location: FF_X88_Y55_N7
\CLK1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(10));

-- Location: LCCOMB_X87_Y56_N22
\CLK1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~22_combout\ = (\CLK1|count\(11) & (!\CLK1|Add0~21\)) # (!\CLK1|count\(11) & ((\CLK1|Add0~21\) # (GND)))
-- \CLK1|Add0~23\ = CARRY((!\CLK1|Add0~21\) # (!\CLK1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|count\(11),
	datad => VCC,
	cin => \CLK1|Add0~21\,
	combout => \CLK1|Add0~22_combout\,
	cout => \CLK1|Add0~23\);

-- Location: FF_X87_Y56_N23
\CLK1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(11));

-- Location: LCCOMB_X87_Y56_N24
\CLK1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~24_combout\ = (\CLK1|count\(12) & (\CLK1|Add0~23\ $ (GND))) # (!\CLK1|count\(12) & (!\CLK1|Add0~23\ & VCC))
-- \CLK1|Add0~25\ = CARRY((\CLK1|count\(12) & !\CLK1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(12),
	datad => VCC,
	cin => \CLK1|Add0~23\,
	combout => \CLK1|Add0~24_combout\,
	cout => \CLK1|Add0~25\);

-- Location: FF_X87_Y56_N25
\CLK1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(12));

-- Location: LCCOMB_X87_Y56_N26
\CLK1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~26_combout\ = (\CLK1|count\(13) & (!\CLK1|Add0~25\)) # (!\CLK1|count\(13) & ((\CLK1|Add0~25\) # (GND)))
-- \CLK1|Add0~27\ = CARRY((!\CLK1|Add0~25\) # (!\CLK1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|count\(13),
	datad => VCC,
	cin => \CLK1|Add0~25\,
	combout => \CLK1|Add0~26_combout\,
	cout => \CLK1|Add0~27\);

-- Location: FF_X87_Y56_N27
\CLK1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(13));

-- Location: LCCOMB_X87_Y56_N28
\CLK1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~28_combout\ = (\CLK1|count\(14) & (\CLK1|Add0~27\ $ (GND))) # (!\CLK1|count\(14) & (!\CLK1|Add0~27\ & VCC))
-- \CLK1|Add0~29\ = CARRY((\CLK1|count\(14) & !\CLK1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(14),
	datad => VCC,
	cin => \CLK1|Add0~27\,
	combout => \CLK1|Add0~28_combout\,
	cout => \CLK1|Add0~29\);

-- Location: FF_X87_Y56_N29
\CLK1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(14));

-- Location: LCCOMB_X87_Y56_N30
\CLK1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~30_combout\ = (\CLK1|count\(15) & (!\CLK1|Add0~29\)) # (!\CLK1|count\(15) & ((\CLK1|Add0~29\) # (GND)))
-- \CLK1|Add0~31\ = CARRY((!\CLK1|Add0~29\) # (!\CLK1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|count\(15),
	datad => VCC,
	cin => \CLK1|Add0~29\,
	combout => \CLK1|Add0~30_combout\,
	cout => \CLK1|Add0~31\);

-- Location: LCCOMB_X88_Y55_N12
\CLK1|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|count~4_combout\ = (\CLK1|Add0~30_combout\ & !\CLK1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|Add0~30_combout\,
	datac => \CLK1|Equal0~10_combout\,
	combout => \CLK1|count~4_combout\);

-- Location: FF_X88_Y55_N13
\CLK1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(15));

-- Location: LCCOMB_X87_Y55_N0
\CLK1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~32_combout\ = (\CLK1|count\(16) & (\CLK1|Add0~31\ $ (GND))) # (!\CLK1|count\(16) & (!\CLK1|Add0~31\ & VCC))
-- \CLK1|Add0~33\ = CARRY((\CLK1|count\(16) & !\CLK1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(16),
	datad => VCC,
	cin => \CLK1|Add0~31\,
	combout => \CLK1|Add0~32_combout\,
	cout => \CLK1|Add0~33\);

-- Location: FF_X87_Y55_N1
\CLK1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(16));

-- Location: LCCOMB_X87_Y55_N2
\CLK1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~34_combout\ = (\CLK1|count\(17) & (!\CLK1|Add0~33\)) # (!\CLK1|count\(17) & ((\CLK1|Add0~33\) # (GND)))
-- \CLK1|Add0~35\ = CARRY((!\CLK1|Add0~33\) # (!\CLK1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(17),
	datad => VCC,
	cin => \CLK1|Add0~33\,
	combout => \CLK1|Add0~34_combout\,
	cout => \CLK1|Add0~35\);

-- Location: LCCOMB_X88_Y55_N22
\CLK1|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|count~3_combout\ = (\CLK1|Add0~34_combout\ & !\CLK1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Add0~34_combout\,
	datac => \CLK1|Equal0~10_combout\,
	combout => \CLK1|count~3_combout\);

-- Location: FF_X88_Y55_N23
\CLK1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(17));

-- Location: LCCOMB_X87_Y55_N4
\CLK1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~36_combout\ = (\CLK1|count\(18) & (\CLK1|Add0~35\ $ (GND))) # (!\CLK1|count\(18) & (!\CLK1|Add0~35\ & VCC))
-- \CLK1|Add0~37\ = CARRY((\CLK1|count\(18) & !\CLK1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|count\(18),
	datad => VCC,
	cin => \CLK1|Add0~35\,
	combout => \CLK1|Add0~36_combout\,
	cout => \CLK1|Add0~37\);

-- Location: LCCOMB_X88_Y55_N4
\CLK1|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|count~2_combout\ = (\CLK1|Add0~36_combout\ & !\CLK1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|Add0~36_combout\,
	datac => \CLK1|Equal0~10_combout\,
	combout => \CLK1|count~2_combout\);

-- Location: FF_X88_Y55_N5
\CLK1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(18));

-- Location: LCCOMB_X87_Y55_N6
\CLK1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~38_combout\ = (\CLK1|count\(19) & (!\CLK1|Add0~37\)) # (!\CLK1|count\(19) & ((\CLK1|Add0~37\) # (GND)))
-- \CLK1|Add0~39\ = CARRY((!\CLK1|Add0~37\) # (!\CLK1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|count\(19),
	datad => VCC,
	cin => \CLK1|Add0~37\,
	combout => \CLK1|Add0~38_combout\,
	cout => \CLK1|Add0~39\);

-- Location: LCCOMB_X88_Y55_N2
\CLK1|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|count~1_combout\ = (!\CLK1|Equal0~10_combout\ & \CLK1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK1|Equal0~10_combout\,
	datad => \CLK1|Add0~38_combout\,
	combout => \CLK1|count~1_combout\);

-- Location: FF_X88_Y55_N3
\CLK1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(19));

-- Location: LCCOMB_X87_Y55_N8
\CLK1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~40_combout\ = (\CLK1|count\(20) & (\CLK1|Add0~39\ $ (GND))) # (!\CLK1|count\(20) & (!\CLK1|Add0~39\ & VCC))
-- \CLK1|Add0~41\ = CARRY((\CLK1|count\(20) & !\CLK1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(20),
	datad => VCC,
	cin => \CLK1|Add0~39\,
	combout => \CLK1|Add0~40_combout\,
	cout => \CLK1|Add0~41\);

-- Location: LCCOMB_X88_Y55_N28
\CLK1|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|count~0_combout\ = (!\CLK1|Equal0~10_combout\ & \CLK1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK1|Equal0~10_combout\,
	datad => \CLK1|Add0~40_combout\,
	combout => \CLK1|count~0_combout\);

-- Location: FF_X88_Y55_N29
\CLK1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(20));

-- Location: LCCOMB_X87_Y55_N10
\CLK1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~42_combout\ = (\CLK1|count\(21) & (!\CLK1|Add0~41\)) # (!\CLK1|count\(21) & ((\CLK1|Add0~41\) # (GND)))
-- \CLK1|Add0~43\ = CARRY((!\CLK1|Add0~41\) # (!\CLK1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|count\(21),
	datad => VCC,
	cin => \CLK1|Add0~41\,
	combout => \CLK1|Add0~42_combout\,
	cout => \CLK1|Add0~43\);

-- Location: FF_X87_Y55_N11
\CLK1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(21));

-- Location: LCCOMB_X87_Y55_N12
\CLK1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~44_combout\ = (\CLK1|count\(22) & (\CLK1|Add0~43\ $ (GND))) # (!\CLK1|count\(22) & (!\CLK1|Add0~43\ & VCC))
-- \CLK1|Add0~45\ = CARRY((\CLK1|count\(22) & !\CLK1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|count\(22),
	datad => VCC,
	cin => \CLK1|Add0~43\,
	combout => \CLK1|Add0~44_combout\,
	cout => \CLK1|Add0~45\);

-- Location: FF_X87_Y55_N13
\CLK1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(22));

-- Location: LCCOMB_X87_Y55_N14
\CLK1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~46_combout\ = (\CLK1|count\(23) & (!\CLK1|Add0~45\)) # (!\CLK1|count\(23) & ((\CLK1|Add0~45\) # (GND)))
-- \CLK1|Add0~47\ = CARRY((!\CLK1|Add0~45\) # (!\CLK1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(23),
	datad => VCC,
	cin => \CLK1|Add0~45\,
	combout => \CLK1|Add0~46_combout\,
	cout => \CLK1|Add0~47\);

-- Location: FF_X87_Y55_N15
\CLK1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(23));

-- Location: LCCOMB_X87_Y55_N16
\CLK1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~48_combout\ = (\CLK1|count\(24) & (\CLK1|Add0~47\ $ (GND))) # (!\CLK1|count\(24) & (!\CLK1|Add0~47\ & VCC))
-- \CLK1|Add0~49\ = CARRY((\CLK1|count\(24) & !\CLK1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(24),
	datad => VCC,
	cin => \CLK1|Add0~47\,
	combout => \CLK1|Add0~48_combout\,
	cout => \CLK1|Add0~49\);

-- Location: FF_X87_Y55_N17
\CLK1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(24));

-- Location: LCCOMB_X87_Y55_N18
\CLK1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~50_combout\ = (\CLK1|count\(25) & (!\CLK1|Add0~49\)) # (!\CLK1|count\(25) & ((\CLK1|Add0~49\) # (GND)))
-- \CLK1|Add0~51\ = CARRY((!\CLK1|Add0~49\) # (!\CLK1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(25),
	datad => VCC,
	cin => \CLK1|Add0~49\,
	combout => \CLK1|Add0~50_combout\,
	cout => \CLK1|Add0~51\);

-- Location: FF_X87_Y55_N19
\CLK1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(25));

-- Location: LCCOMB_X87_Y55_N20
\CLK1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~52_combout\ = (\CLK1|count\(26) & (\CLK1|Add0~51\ $ (GND))) # (!\CLK1|count\(26) & (!\CLK1|Add0~51\ & VCC))
-- \CLK1|Add0~53\ = CARRY((\CLK1|count\(26) & !\CLK1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(26),
	datad => VCC,
	cin => \CLK1|Add0~51\,
	combout => \CLK1|Add0~52_combout\,
	cout => \CLK1|Add0~53\);

-- Location: FF_X87_Y55_N21
\CLK1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(26));

-- Location: LCCOMB_X87_Y55_N22
\CLK1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~54_combout\ = (\CLK1|count\(27) & (!\CLK1|Add0~53\)) # (!\CLK1|count\(27) & ((\CLK1|Add0~53\) # (GND)))
-- \CLK1|Add0~55\ = CARRY((!\CLK1|Add0~53\) # (!\CLK1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|count\(27),
	datad => VCC,
	cin => \CLK1|Add0~53\,
	combout => \CLK1|Add0~54_combout\,
	cout => \CLK1|Add0~55\);

-- Location: FF_X87_Y55_N23
\CLK1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(27));

-- Location: LCCOMB_X87_Y55_N24
\CLK1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~56_combout\ = (\CLK1|count\(28) & (\CLK1|Add0~55\ $ (GND))) # (!\CLK1|count\(28) & (!\CLK1|Add0~55\ & VCC))
-- \CLK1|Add0~57\ = CARRY((\CLK1|count\(28) & !\CLK1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(28),
	datad => VCC,
	cin => \CLK1|Add0~55\,
	combout => \CLK1|Add0~56_combout\,
	cout => \CLK1|Add0~57\);

-- Location: FF_X87_Y55_N25
\CLK1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(28));

-- Location: LCCOMB_X87_Y55_N26
\CLK1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~58_combout\ = (\CLK1|count\(29) & (!\CLK1|Add0~57\)) # (!\CLK1|count\(29) & ((\CLK1|Add0~57\) # (GND)))
-- \CLK1|Add0~59\ = CARRY((!\CLK1|Add0~57\) # (!\CLK1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|count\(29),
	datad => VCC,
	cin => \CLK1|Add0~57\,
	combout => \CLK1|Add0~58_combout\,
	cout => \CLK1|Add0~59\);

-- Location: FF_X87_Y55_N27
\CLK1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(29));

-- Location: LCCOMB_X87_Y55_N28
\CLK1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~60_combout\ = (\CLK1|count\(30) & (\CLK1|Add0~59\ $ (GND))) # (!\CLK1|count\(30) & (!\CLK1|Add0~59\ & VCC))
-- \CLK1|Add0~61\ = CARRY((\CLK1|count\(30) & !\CLK1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|count\(30),
	datad => VCC,
	cin => \CLK1|Add0~59\,
	combout => \CLK1|Add0~60_combout\,
	cout => \CLK1|Add0~61\);

-- Location: FF_X87_Y55_N31
\CLK1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|count\(31));

-- Location: LCCOMB_X87_Y55_N30
\CLK1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~62_combout\ = \CLK1|count\(31) $ (\CLK1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|count\(31),
	cin => \CLK1|Add0~61\,
	combout => \CLK1|Add0~62_combout\);

-- Location: LCCOMB_X88_Y55_N26
\CLK1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~0_combout\ = (\CLK1|Add0~40_combout\ & (!\CLK1|Add0~44_combout\ & (!\CLK1|Add0~42_combout\ & !\CLK1|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Add0~40_combout\,
	datab => \CLK1|Add0~44_combout\,
	datac => \CLK1|Add0~42_combout\,
	datad => \CLK1|Add0~46_combout\,
	combout => \CLK1|Equal0~0_combout\);

-- Location: LCCOMB_X88_Y55_N30
\CLK1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~6_combout\ = (!\CLK1|Add0~32_combout\ & (\CLK1|Add0~34_combout\ & (\CLK1|Add0~36_combout\ & \CLK1|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Add0~32_combout\,
	datab => \CLK1|Add0~34_combout\,
	datac => \CLK1|Add0~36_combout\,
	datad => \CLK1|Add0~38_combout\,
	combout => \CLK1|Equal0~6_combout\);

-- Location: LCCOMB_X88_Y56_N28
\CLK1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~1_combout\ = (!\CLK1|Add0~0_combout\ & (!\CLK1|Add0~6_combout\ & (!\CLK1|Add0~4_combout\ & !\CLK1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Add0~0_combout\,
	datab => \CLK1|Add0~6_combout\,
	datac => \CLK1|Add0~4_combout\,
	datad => \CLK1|Add0~2_combout\,
	combout => \CLK1|Equal0~1_combout\);

-- Location: LCCOMB_X88_Y56_N26
\CLK1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~2_combout\ = (!\CLK1|Add0~12_combout\ & (!\CLK1|Add0~8_combout\ & (!\CLK1|Add0~10_combout\ & \CLK1|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Add0~12_combout\,
	datab => \CLK1|Add0~8_combout\,
	datac => \CLK1|Add0~10_combout\,
	datad => \CLK1|Add0~14_combout\,
	combout => \CLK1|Equal0~2_combout\);

-- Location: LCCOMB_X88_Y55_N8
\CLK1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~3_combout\ = (\CLK1|Add0~20_combout\ & (!\CLK1|Add0~16_combout\ & (!\CLK1|Add0~18_combout\ & !\CLK1|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Add0~20_combout\,
	datab => \CLK1|Add0~16_combout\,
	datac => \CLK1|Add0~18_combout\,
	datad => \CLK1|Add0~22_combout\,
	combout => \CLK1|Equal0~3_combout\);

-- Location: LCCOMB_X88_Y55_N18
\CLK1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~4_combout\ = (!\CLK1|Add0~24_combout\ & (\CLK1|Add0~30_combout\ & (!\CLK1|Add0~28_combout\ & !\CLK1|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Add0~24_combout\,
	datab => \CLK1|Add0~30_combout\,
	datac => \CLK1|Add0~28_combout\,
	datad => \CLK1|Add0~26_combout\,
	combout => \CLK1|Equal0~4_combout\);

-- Location: LCCOMB_X88_Y55_N0
\CLK1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~5_combout\ = (\CLK1|Equal0~1_combout\ & (\CLK1|Equal0~2_combout\ & (\CLK1|Equal0~3_combout\ & \CLK1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Equal0~1_combout\,
	datab => \CLK1|Equal0~2_combout\,
	datac => \CLK1|Equal0~3_combout\,
	datad => \CLK1|Equal0~4_combout\,
	combout => \CLK1|Equal0~5_combout\);

-- Location: LCCOMB_X88_Y55_N16
\CLK1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~7_combout\ = (!\CLK1|Add0~48_combout\ & (!\CLK1|Add0~50_combout\ & (\CLK1|Equal0~6_combout\ & \CLK1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Add0~48_combout\,
	datab => \CLK1|Add0~50_combout\,
	datac => \CLK1|Equal0~6_combout\,
	datad => \CLK1|Equal0~5_combout\,
	combout => \CLK1|Equal0~7_combout\);

-- Location: LCCOMB_X88_Y55_N10
\CLK1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~8_combout\ = (!\CLK1|Add0~52_combout\ & (!\CLK1|Add0~54_combout\ & (\CLK1|Equal0~0_combout\ & \CLK1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Add0~52_combout\,
	datab => \CLK1|Add0~54_combout\,
	datac => \CLK1|Equal0~0_combout\,
	datad => \CLK1|Equal0~7_combout\,
	combout => \CLK1|Equal0~8_combout\);

-- Location: LCCOMB_X88_Y55_N20
\CLK1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~9_combout\ = (!\CLK1|Add0~56_combout\ & \CLK1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|Add0~56_combout\,
	datad => \CLK1|Equal0~8_combout\,
	combout => \CLK1|Equal0~9_combout\);

-- Location: LCCOMB_X88_Y55_N14
\CLK1|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~10_combout\ = (!\CLK1|Add0~60_combout\ & (!\CLK1|Add0~62_combout\ & (!\CLK1|Add0~58_combout\ & \CLK1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Add0~60_combout\,
	datab => \CLK1|Add0~62_combout\,
	datac => \CLK1|Add0~58_combout\,
	datad => \CLK1|Equal0~9_combout\,
	combout => \CLK1|Equal0~10_combout\);

-- Location: LCCOMB_X89_Y55_N18
\CLK1|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|temp~0_combout\ = \CLK1|temp~q\ $ (\CLK1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK1|temp~q\,
	datad => \CLK1|Equal0~10_combout\,
	combout => \CLK1|temp~0_combout\);

-- Location: LCCOMB_X89_Y55_N24
\CLK1|temp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|temp~feeder_combout\ = \CLK1|temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK1|temp~0_combout\,
	combout => \CLK1|temp~feeder_combout\);

-- Location: FF_X89_Y55_N25
\CLK1|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK1|temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|temp~q\);

-- Location: CLKCTRL_G7
\CLK1|temp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK1|temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK1|temp~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X113_Y36_N4
\COUNT1|COUNT[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT1|COUNT[0]~13_combout\ = !\COUNT1|COUNT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNT1|COUNT\(0),
	combout => \COUNT1|COUNT[0]~13_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X113_Y36_N5
\COUNT1|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|temp~clkctrl_outclk\,
	d => \COUNT1|COUNT[0]~13_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT1|COUNT\(0));

-- Location: LCCOMB_X113_Y36_N18
\COUNT1|COUNT[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT1|COUNT[1]~4_cout\ = CARRY(\COUNT1|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNT1|COUNT\(0),
	datad => VCC,
	cout => \COUNT1|COUNT[1]~4_cout\);

-- Location: LCCOMB_X113_Y36_N20
\COUNT1|COUNT[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT1|COUNT[1]~5_combout\ = (\SW[0]~input_o\ & ((\COUNT1|COUNT\(1) & (!\COUNT1|COUNT[1]~4_cout\)) # (!\COUNT1|COUNT\(1) & ((\COUNT1|COUNT[1]~4_cout\) # (GND))))) # (!\SW[0]~input_o\ & ((\COUNT1|COUNT\(1) & (\COUNT1|COUNT[1]~4_cout\ & VCC)) # 
-- (!\COUNT1|COUNT\(1) & (!\COUNT1|COUNT[1]~4_cout\))))
-- \COUNT1|COUNT[1]~6\ = CARRY((\SW[0]~input_o\ & ((!\COUNT1|COUNT[1]~4_cout\) # (!\COUNT1|COUNT\(1)))) # (!\SW[0]~input_o\ & (!\COUNT1|COUNT\(1) & !\COUNT1|COUNT[1]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \COUNT1|COUNT\(1),
	datad => VCC,
	cin => \COUNT1|COUNT[1]~4_cout\,
	combout => \COUNT1|COUNT[1]~5_combout\,
	cout => \COUNT1|COUNT[1]~6\);

-- Location: LCCOMB_X113_Y36_N28
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X113_Y36_N16
\COUNT1|COUNT[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT1|COUNT[3]~7_combout\ = (\SW[0]~input_o\ & (\COUNT1|COUNT\(0) & \COUNT1|COUNT\(3))) # (!\SW[0]~input_o\ & (!\COUNT1|COUNT\(0) & !\COUNT1|COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \COUNT1|COUNT\(0),
	datad => \COUNT1|COUNT\(3),
	combout => \COUNT1|COUNT[3]~7_combout\);

-- Location: LCCOMB_X113_Y36_N6
\COUNT1|COUNT[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT1|COUNT[3]~8_combout\ = (!\COUNT1|COUNT\(1) & (!\COUNT1|COUNT\(2) & \COUNT1|COUNT[3]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNT1|COUNT\(1),
	datac => \COUNT1|COUNT\(2),
	datad => \COUNT1|COUNT[3]~7_combout\,
	combout => \COUNT1|COUNT[3]~8_combout\);

-- Location: FF_X113_Y36_N21
\COUNT1|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|temp~clkctrl_outclk\,
	d => \COUNT1|COUNT[1]~5_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => \COUNT1|COUNT[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT1|COUNT\(1));

-- Location: LCCOMB_X113_Y36_N22
\COUNT1|COUNT[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT1|COUNT[2]~9_combout\ = ((\COUNT1|COUNT\(2) $ (\SW[0]~input_o\ $ (\COUNT1|COUNT[1]~6\)))) # (GND)
-- \COUNT1|COUNT[2]~10\ = CARRY((\COUNT1|COUNT\(2) & ((!\COUNT1|COUNT[1]~6\) # (!\SW[0]~input_o\))) # (!\COUNT1|COUNT\(2) & (!\SW[0]~input_o\ & !\COUNT1|COUNT[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT1|COUNT\(2),
	datab => \SW[0]~input_o\,
	datad => VCC,
	cin => \COUNT1|COUNT[1]~6\,
	combout => \COUNT1|COUNT[2]~9_combout\,
	cout => \COUNT1|COUNT[2]~10\);

-- Location: FF_X113_Y36_N23
\COUNT1|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|temp~clkctrl_outclk\,
	d => \COUNT1|COUNT[2]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => \COUNT1|COUNT[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT1|COUNT\(2));

-- Location: LCCOMB_X113_Y36_N24
\COUNT1|COUNT[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT1|COUNT[3]~11_combout\ = \SW[0]~input_o\ $ (\COUNT1|COUNT[2]~10\ $ (!\COUNT1|COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \COUNT1|COUNT\(3),
	cin => \COUNT1|COUNT[2]~10\,
	combout => \COUNT1|COUNT[3]~11_combout\);

-- Location: LCCOMB_X113_Y36_N26
\SW[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW[0]~_wirecell_combout\ = !\SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	combout => \SW[0]~_wirecell_combout\);

-- Location: FF_X113_Y36_N25
\COUNT1|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|temp~clkctrl_outclk\,
	d => \COUNT1|COUNT[3]~11_combout\,
	asdata => \SW[0]~_wirecell_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => \COUNT1|COUNT[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT1|COUNT\(3));

-- Location: LCCOMB_X113_Y36_N2
\W1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux6~0_combout\ = (\COUNT1|COUNT\(3) & (\COUNT1|COUNT\(0) & (\COUNT1|COUNT\(2) $ (\COUNT1|COUNT\(1))))) # (!\COUNT1|COUNT\(3) & ((\COUNT1|COUNT\(0) & (!\COUNT1|COUNT\(2) & !\COUNT1|COUNT\(1))) # (!\COUNT1|COUNT\(0) & (\COUNT1|COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT1|COUNT\(3),
	datab => \COUNT1|COUNT\(0),
	datac => \COUNT1|COUNT\(2),
	datad => \COUNT1|COUNT\(1),
	combout => \W1|Mux6~0_combout\);

-- Location: LCCOMB_X113_Y36_N8
\W1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux5~0_combout\ = (\COUNT1|COUNT\(3) & ((\COUNT1|COUNT\(0) & ((\COUNT1|COUNT\(1)))) # (!\COUNT1|COUNT\(0) & (\COUNT1|COUNT\(2))))) # (!\COUNT1|COUNT\(3) & (\COUNT1|COUNT\(2) & (\COUNT1|COUNT\(0) $ (\COUNT1|COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT1|COUNT\(3),
	datab => \COUNT1|COUNT\(0),
	datac => \COUNT1|COUNT\(2),
	datad => \COUNT1|COUNT\(1),
	combout => \W1|Mux5~0_combout\);

-- Location: LCCOMB_X113_Y36_N30
\W1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux4~0_combout\ = (\COUNT1|COUNT\(3) & (\COUNT1|COUNT\(2) & ((\COUNT1|COUNT\(1)) # (!\COUNT1|COUNT\(0))))) # (!\COUNT1|COUNT\(3) & (!\COUNT1|COUNT\(0) & (!\COUNT1|COUNT\(2) & \COUNT1|COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT1|COUNT\(3),
	datab => \COUNT1|COUNT\(0),
	datac => \COUNT1|COUNT\(2),
	datad => \COUNT1|COUNT\(1),
	combout => \W1|Mux4~0_combout\);

-- Location: LCCOMB_X113_Y36_N0
\W1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux3~0_combout\ = (\COUNT1|COUNT\(0) & ((\COUNT1|COUNT\(2) $ (!\COUNT1|COUNT\(1))))) # (!\COUNT1|COUNT\(0) & ((\COUNT1|COUNT\(3) & (!\COUNT1|COUNT\(2) & \COUNT1|COUNT\(1))) # (!\COUNT1|COUNT\(3) & (\COUNT1|COUNT\(2) & !\COUNT1|COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT1|COUNT\(3),
	datab => \COUNT1|COUNT\(0),
	datac => \COUNT1|COUNT\(2),
	datad => \COUNT1|COUNT\(1),
	combout => \W1|Mux3~0_combout\);

-- Location: LCCOMB_X113_Y36_N14
\W1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux2~0_combout\ = (\COUNT1|COUNT\(1) & (!\COUNT1|COUNT\(3) & (\COUNT1|COUNT\(0)))) # (!\COUNT1|COUNT\(1) & ((\COUNT1|COUNT\(2) & (!\COUNT1|COUNT\(3))) # (!\COUNT1|COUNT\(2) & ((\COUNT1|COUNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT1|COUNT\(3),
	datab => \COUNT1|COUNT\(0),
	datac => \COUNT1|COUNT\(2),
	datad => \COUNT1|COUNT\(1),
	combout => \W1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y36_N8
\W1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux1~0_combout\ = (\COUNT1|COUNT\(0) & (\COUNT1|COUNT\(3) $ (((\COUNT1|COUNT\(1)) # (!\COUNT1|COUNT\(2)))))) # (!\COUNT1|COUNT\(0) & (!\COUNT1|COUNT\(2) & (!\COUNT1|COUNT\(3) & \COUNT1|COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT1|COUNT\(0),
	datab => \COUNT1|COUNT\(2),
	datac => \COUNT1|COUNT\(3),
	datad => \COUNT1|COUNT\(1),
	combout => \W1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y36_N30
\W1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux0~0_combout\ = (\COUNT1|COUNT\(0) & ((\COUNT1|COUNT\(3)) # (\COUNT1|COUNT\(2) $ (\COUNT1|COUNT\(1))))) # (!\COUNT1|COUNT\(0) & ((\COUNT1|COUNT\(1)) # (\COUNT1|COUNT\(2) $ (\COUNT1|COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT1|COUNT\(0),
	datab => \COUNT1|COUNT\(2),
	datac => \COUNT1|COUNT\(3),
	datad => \COUNT1|COUNT\(1),
	combout => \W1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y36_N4
\COUNT2|COUNT[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT2|COUNT[0]~3_combout\ = \COUNT2|COUNT\(0) $ (((\COUNT1|COUNT[3]~7_combout\ & (!\COUNT1|COUNT\(1) & !\COUNT1|COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT1|COUNT[3]~7_combout\,
	datab => \COUNT1|COUNT\(1),
	datac => \COUNT2|COUNT\(0),
	datad => \COUNT1|COUNT\(2),
	combout => \COUNT2|COUNT[0]~3_combout\);

-- Location: FF_X114_Y36_N5
\COUNT2|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|temp~clkctrl_outclk\,
	d => \COUNT2|COUNT[0]~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT2|COUNT\(0));

-- Location: LCCOMB_X114_Y36_N12
\COUNT2|COUNT[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT2|COUNT[1]~5_cout\ = CARRY(\COUNT2|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNT2|COUNT\(0),
	datad => VCC,
	cout => \COUNT2|COUNT[1]~5_cout\);

-- Location: LCCOMB_X114_Y36_N14
\COUNT2|COUNT[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT2|COUNT[1]~6_combout\ = (\SW[0]~input_o\ & ((\COUNT2|COUNT\(1) & (!\COUNT2|COUNT[1]~5_cout\)) # (!\COUNT2|COUNT\(1) & ((\COUNT2|COUNT[1]~5_cout\) # (GND))))) # (!\SW[0]~input_o\ & ((\COUNT2|COUNT\(1) & (\COUNT2|COUNT[1]~5_cout\ & VCC)) # 
-- (!\COUNT2|COUNT\(1) & (!\COUNT2|COUNT[1]~5_cout\))))
-- \COUNT2|COUNT[1]~7\ = CARRY((\SW[0]~input_o\ & ((!\COUNT2|COUNT[1]~5_cout\) # (!\COUNT2|COUNT\(1)))) # (!\SW[0]~input_o\ & (!\COUNT2|COUNT\(1) & !\COUNT2|COUNT[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \COUNT2|COUNT\(1),
	datad => VCC,
	cin => \COUNT2|COUNT[1]~5_cout\,
	combout => \COUNT2|COUNT[1]~6_combout\,
	cout => \COUNT2|COUNT[1]~7\);

-- Location: LCCOMB_X114_Y36_N16
\COUNT2|COUNT[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT2|COUNT[2]~10_combout\ = ((\SW[0]~input_o\ $ (\COUNT2|COUNT\(2) $ (\COUNT2|COUNT[1]~7\)))) # (GND)
-- \COUNT2|COUNT[2]~11\ = CARRY((\SW[0]~input_o\ & (\COUNT2|COUNT\(2) & !\COUNT2|COUNT[1]~7\)) # (!\SW[0]~input_o\ & ((\COUNT2|COUNT\(2)) # (!\COUNT2|COUNT[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \COUNT2|COUNT\(2),
	datad => VCC,
	cin => \COUNT2|COUNT[1]~7\,
	combout => \COUNT2|COUNT[2]~10_combout\,
	cout => \COUNT2|COUNT[2]~11\);

-- Location: FF_X114_Y36_N17
\COUNT2|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|temp~clkctrl_outclk\,
	d => \COUNT2|COUNT[2]~10_combout\,
	asdata => \SW[0]~_wirecell_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => \COUNT2|COUNT[0]~9_combout\,
	ena => \COUNT1|COUNT[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT2|COUNT\(2));

-- Location: LCCOMB_X114_Y36_N18
\COUNT2|COUNT[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT2|COUNT[3]~12_combout\ = \SW[0]~input_o\ $ (\COUNT2|COUNT[2]~11\ $ (!\COUNT2|COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \COUNT2|COUNT\(3),
	cin => \COUNT2|COUNT[2]~11\,
	combout => \COUNT2|COUNT[3]~12_combout\);

-- Location: FF_X114_Y36_N19
\COUNT2|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|temp~clkctrl_outclk\,
	d => \COUNT2|COUNT[3]~12_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => \COUNT2|COUNT[0]~9_combout\,
	ena => \COUNT1|COUNT[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT2|COUNT\(3));

-- Location: LCCOMB_X114_Y36_N0
\COUNT2|COUNT[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT2|COUNT[0]~8_combout\ = (\COUNT2|COUNT\(1)) # ((\SW[0]~input_o\ & ((!\COUNT2|COUNT\(2)) # (!\COUNT2|COUNT\(0)))) # (!\SW[0]~input_o\ & ((\COUNT2|COUNT\(0)) # (\COUNT2|COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \COUNT2|COUNT\(0),
	datac => \COUNT2|COUNT\(1),
	datad => \COUNT2|COUNT\(2),
	combout => \COUNT2|COUNT[0]~8_combout\);

-- Location: LCCOMB_X114_Y36_N2
\COUNT2|COUNT[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT2|COUNT[0]~9_combout\ = (!\COUNT2|COUNT\(3) & !\COUNT2|COUNT[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNT2|COUNT\(3),
	datad => \COUNT2|COUNT[0]~8_combout\,
	combout => \COUNT2|COUNT[0]~9_combout\);

-- Location: FF_X114_Y36_N15
\COUNT2|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|temp~clkctrl_outclk\,
	d => \COUNT2|COUNT[1]~6_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => \COUNT2|COUNT[0]~9_combout\,
	ena => \COUNT1|COUNT[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT2|COUNT\(1));

-- Location: LCCOMB_X114_Y36_N22
\W2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux6~0_combout\ = (\COUNT2|COUNT\(0) & ((\COUNT2|COUNT\(1) & (!\COUNT2|COUNT\(2) & \COUNT2|COUNT\(3))) # (!\COUNT2|COUNT\(1) & (\COUNT2|COUNT\(2) $ (!\COUNT2|COUNT\(3)))))) # (!\COUNT2|COUNT\(0) & (((\COUNT2|COUNT\(2) & !\COUNT2|COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT2|COUNT\(1),
	datab => \COUNT2|COUNT\(0),
	datac => \COUNT2|COUNT\(2),
	datad => \COUNT2|COUNT\(3),
	combout => \W2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y36_N24
\W2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux5~0_combout\ = (\COUNT2|COUNT\(1) & ((\COUNT2|COUNT\(0) & ((\COUNT2|COUNT\(3)))) # (!\COUNT2|COUNT\(0) & (\COUNT2|COUNT\(2))))) # (!\COUNT2|COUNT\(1) & (\COUNT2|COUNT\(2) & (\COUNT2|COUNT\(0) $ (\COUNT2|COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT2|COUNT\(1),
	datab => \COUNT2|COUNT\(0),
	datac => \COUNT2|COUNT\(2),
	datad => \COUNT2|COUNT\(3),
	combout => \W2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y36_N10
\W2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux4~0_combout\ = (\COUNT2|COUNT\(2) & (\COUNT2|COUNT\(3) & ((\COUNT2|COUNT\(1)) # (!\COUNT2|COUNT\(0))))) # (!\COUNT2|COUNT\(2) & (\COUNT2|COUNT\(1) & (!\COUNT2|COUNT\(0) & !\COUNT2|COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT2|COUNT\(1),
	datab => \COUNT2|COUNT\(0),
	datac => \COUNT2|COUNT\(2),
	datad => \COUNT2|COUNT\(3),
	combout => \W2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y36_N28
\W2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux3~0_combout\ = (\COUNT2|COUNT\(0) & (\COUNT2|COUNT\(1) $ ((!\COUNT2|COUNT\(2))))) # (!\COUNT2|COUNT\(0) & ((\COUNT2|COUNT\(1) & (!\COUNT2|COUNT\(2) & \COUNT2|COUNT\(3))) # (!\COUNT2|COUNT\(1) & (\COUNT2|COUNT\(2) & !\COUNT2|COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT2|COUNT\(1),
	datab => \COUNT2|COUNT\(0),
	datac => \COUNT2|COUNT\(2),
	datad => \COUNT2|COUNT\(3),
	combout => \W2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y36_N26
\W2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux2~0_combout\ = (\COUNT2|COUNT\(1) & (\COUNT2|COUNT\(0) & ((!\COUNT2|COUNT\(3))))) # (!\COUNT2|COUNT\(1) & ((\COUNT2|COUNT\(2) & ((!\COUNT2|COUNT\(3)))) # (!\COUNT2|COUNT\(2) & (\COUNT2|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT2|COUNT\(1),
	datab => \COUNT2|COUNT\(0),
	datac => \COUNT2|COUNT\(2),
	datad => \COUNT2|COUNT\(3),
	combout => \W2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y36_N20
\W2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux1~0_combout\ = (\COUNT2|COUNT\(1) & (!\COUNT2|COUNT\(3) & ((\COUNT2|COUNT\(0)) # (!\COUNT2|COUNT\(2))))) # (!\COUNT2|COUNT\(1) & (\COUNT2|COUNT\(0) & (\COUNT2|COUNT\(2) $ (!\COUNT2|COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT2|COUNT\(1),
	datab => \COUNT2|COUNT\(0),
	datac => \COUNT2|COUNT\(2),
	datad => \COUNT2|COUNT\(3),
	combout => \W2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y36_N6
\W2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux0~0_combout\ = (\COUNT2|COUNT\(0) & ((\COUNT2|COUNT\(3)) # (\COUNT2|COUNT\(1) $ (\COUNT2|COUNT\(2))))) # (!\COUNT2|COUNT\(0) & ((\COUNT2|COUNT\(1)) # (\COUNT2|COUNT\(2) $ (\COUNT2|COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT2|COUNT\(1),
	datab => \COUNT2|COUNT\(0),
	datac => \COUNT2|COUNT\(2),
	datad => \COUNT2|COUNT\(3),
	combout => \W2|Mux0~0_combout\);

ww_LEDR <= \LEDR~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;
END structure;


