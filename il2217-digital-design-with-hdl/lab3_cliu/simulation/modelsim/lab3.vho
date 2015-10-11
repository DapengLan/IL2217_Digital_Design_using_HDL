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

-- DATE "09/25/2015 02:40:52"

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

ENTITY 	alarm IS
    PORT (
	UP : IN std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	reseta : OUT std_logic;
	resetb : OUT std_logic;
	ref : OUT std_logic;
	out0 : OUT std_logic_vector(3 DOWNTO 0);
	out1 : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END alarm;

-- Design Ports Information
-- reseta	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetb	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ref	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out0[0]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out0[1]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out0[2]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out0[3]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[1]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[2]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[3]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UP	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alarm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_UP : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_reseta : std_logic;
SIGNAL ww_resetb : std_logic;
SIGNAL ww_ref : std_logic;
SIGNAL ww_out0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|OUT1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reseta~output_o\ : std_logic;
SIGNAL \resetb~output_o\ : std_logic;
SIGNAL \ref~output_o\ : std_logic;
SIGNAL \out0[0]~output_o\ : std_logic;
SIGNAL \out0[1]~output_o\ : std_logic;
SIGNAL \out0[2]~output_o\ : std_logic;
SIGNAL \out0[3]~output_o\ : std_logic;
SIGNAL \out1[0]~output_o\ : std_logic;
SIGNAL \out1[1]~output_o\ : std_logic;
SIGNAL \out1[2]~output_o\ : std_logic;
SIGNAL \out1[3]~output_o\ : std_logic;
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|temp~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \UP~input_o\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|COUNT~15_combout\ : std_logic;
SIGNAL \U1|Add0~35\ : std_logic;
SIGNAL \U1|Add0~36_combout\ : std_logic;
SIGNAL \U1|COUNT~1_combout\ : std_logic;
SIGNAL \U1|Add0~37\ : std_logic;
SIGNAL \U1|Add0~38_combout\ : std_logic;
SIGNAL \U1|COUNT~0_combout\ : std_logic;
SIGNAL \U1|Add0~39\ : std_logic;
SIGNAL \U1|Add0~40_combout\ : std_logic;
SIGNAL \U1|COUNT~13_combout\ : std_logic;
SIGNAL \U1|Add0~41\ : std_logic;
SIGNAL \U1|Add0~42_combout\ : std_logic;
SIGNAL \U1|COUNT~14_combout\ : std_logic;
SIGNAL \U1|Add0~43\ : std_logic;
SIGNAL \U1|Add0~44_combout\ : std_logic;
SIGNAL \U1|COUNT~16_combout\ : std_logic;
SIGNAL \U1|Add0~45\ : std_logic;
SIGNAL \U1|Add0~46_combout\ : std_logic;
SIGNAL \U1|Add0~47\ : std_logic;
SIGNAL \U1|Add0~48_combout\ : std_logic;
SIGNAL \U1|process_0~6_combout\ : std_logic;
SIGNAL \U1|process_0~7_combout\ : std_logic;
SIGNAL \U1|process_0~5_combout\ : std_logic;
SIGNAL \U1|process_0~8_combout\ : std_logic;
SIGNAL \U1|process_0~9_combout\ : std_logic;
SIGNAL \U1|process_0~0_combout\ : std_logic;
SIGNAL \U1|process_0~1_combout\ : std_logic;
SIGNAL \U1|process_0~2_combout\ : std_logic;
SIGNAL \U1|process_0~3_combout\ : std_logic;
SIGNAL \U1|process_0~4_combout\ : std_logic;
SIGNAL \U1|process_0~10_combout\ : std_logic;
SIGNAL \U1|COUNT~12_combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|COUNT~11_combout\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|COUNT~10_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|COUNT~9_combout\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|COUNT~8_combout\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|COUNT~7_combout\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|Add0~19\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U1|Add0~21\ : std_logic;
SIGNAL \U1|Add0~22_combout\ : std_logic;
SIGNAL \U1|COUNT~6_combout\ : std_logic;
SIGNAL \U1|Add0~23\ : std_logic;
SIGNAL \U1|Add0~24_combout\ : std_logic;
SIGNAL \U1|COUNT~5_combout\ : std_logic;
SIGNAL \U1|Add0~25\ : std_logic;
SIGNAL \U1|Add0~26_combout\ : std_logic;
SIGNAL \U1|COUNT~4_combout\ : std_logic;
SIGNAL \U1|Add0~27\ : std_logic;
SIGNAL \U1|Add0~28_combout\ : std_logic;
SIGNAL \U1|COUNT~3_combout\ : std_logic;
SIGNAL \U1|Add0~29\ : std_logic;
SIGNAL \U1|Add0~30_combout\ : std_logic;
SIGNAL \U1|Add0~31\ : std_logic;
SIGNAL \U1|Add0~32_combout\ : std_logic;
SIGNAL \U1|COUNT~2_combout\ : std_logic;
SIGNAL \U1|Add0~33\ : std_logic;
SIGNAL \U1|Add0~34_combout\ : std_logic;
SIGNAL \U1|process_0~11_combout\ : std_logic;
SIGNAL \U1|process_0~12_combout\ : std_logic;
SIGNAL \U1|process_0~13_combout\ : std_logic;
SIGNAL \U1|process_0~14_combout\ : std_logic;
SIGNAL \U1|temp~q\ : std_logic;
SIGNAL \U1|OUT1~0_combout\ : std_logic;
SIGNAL \U1|OUT1~q\ : std_logic;
SIGNAL \U1|OUT1~clkctrl_outclk\ : std_logic;
SIGNAL \E0|COUNT[0]~8_combout\ : std_logic;
SIGNAL \E0|Add0~0_combout\ : std_logic;
SIGNAL \E0|Add0~1_combout\ : std_logic;
SIGNAL \E0|Add0~2_combout\ : std_logic;
SIGNAL \E0|COUNT~5_combout\ : std_logic;
SIGNAL \E0|COUNT~6_combout\ : std_logic;
SIGNAL \E0|COUNT~7_combout\ : std_logic;
SIGNAL \E0|process_0~0_combout\ : std_logic;
SIGNAL \E0|COUNT~4_combout\ : std_logic;
SIGNAL \E0|process_0~1_combout\ : std_logic;
SIGNAL \E0|process_0~2_combout\ : std_logic;
SIGNAL \E0|OUT1~q\ : std_logic;
SIGNAL \E1|COUNT~0_combout\ : std_logic;
SIGNAL \E1|Add0~1_cout\ : std_logic;
SIGNAL \E1|Add0~2_combout\ : std_logic;
SIGNAL \E1|Add0~4_combout\ : std_logic;
SIGNAL \E1|Add0~3\ : std_logic;
SIGNAL \E1|Add0~5_combout\ : std_logic;
SIGNAL \E1|Add0~9_combout\ : std_logic;
SIGNAL \E1|process_0~2_combout\ : std_logic;
SIGNAL \E1|COUNT~2_combout\ : std_logic;
SIGNAL \E1|Add0~6\ : std_logic;
SIGNAL \E1|Add0~7_combout\ : std_logic;
SIGNAL \E1|Add0~10_combout\ : std_logic;
SIGNAL \E1|COUNT~3_combout\ : std_logic;
SIGNAL \E1|process_0~0_combout\ : std_logic;
SIGNAL \E1|process_0~1_combout\ : std_logic;
SIGNAL \E1|COUNT~1_combout\ : std_logic;
SIGNAL \W1|Mux6~0_combout\ : std_logic;
SIGNAL \W1|Mux5~0_combout\ : std_logic;
SIGNAL \W1|Mux4~0_combout\ : std_logic;
SIGNAL \W1|Mux3~0_combout\ : std_logic;
SIGNAL \W1|Mux2~0_combout\ : std_logic;
SIGNAL \W1|Mux1~0_combout\ : std_logic;
SIGNAL \W1|Mux0~0_combout\ : std_logic;
SIGNAL \W2|Mux6~0_combout\ : std_logic;
SIGNAL \W2|Mux5~0_combout\ : std_logic;
SIGNAL \W2|Mux4~0_combout\ : std_logic;
SIGNAL \W2|Mux3~0_combout\ : std_logic;
SIGNAL \W2|Mux2~0_combout\ : std_logic;
SIGNAL \W2|Mux1~0_combout\ : std_logic;
SIGNAL \W2|Mux0~0_combout\ : std_logic;
SIGNAL \U1|COUNT\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \E1|COUNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \E0|COUNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \W2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \W1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_UP <= UP;
ww_CLK <= CLK;
ww_RESET <= RESET;
reseta <= ww_reseta;
resetb <= ww_resetb;
ref <= ww_ref;
out0 <= ww_out0;
out1 <= ww_out1;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\U1|OUT1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|OUT1~q\);
\W2|ALT_INV_Mux0~0_combout\ <= NOT \W2|Mux0~0_combout\;
\W1|ALT_INV_Mux0~0_combout\ <= NOT \W1|Mux0~0_combout\;

-- Location: IOOBUF_X54_Y0_N2
\reseta~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \reseta~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\resetb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \resetb~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\ref~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|OUT1~q\,
	devoe => ww_devoe,
	o => \ref~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\out0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E0|COUNT\(0),
	devoe => ww_devoe,
	o => \out0[0]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\out0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E0|COUNT\(1),
	devoe => ww_devoe,
	o => \out0[1]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\out0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E0|COUNT\(2),
	devoe => ww_devoe,
	o => \out0[2]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\out0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E0|COUNT\(3),
	devoe => ww_devoe,
	o => \out0[3]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\out1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E1|COUNT\(0),
	devoe => ww_devoe,
	o => \out1[0]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\out1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E1|COUNT\(1),
	devoe => ww_devoe,
	o => \out1[1]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\out1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E1|COUNT\(2),
	devoe => ww_devoe,
	o => \out1[2]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\out1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E1|COUNT\(3),
	devoe => ww_devoe,
	o => \out1[3]~output_o\);

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
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X56_Y65_N28
\U1|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~0_combout\ = !\U1|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|temp~q\,
	combout => \U1|temp~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\UP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UP,
	o => \UP~input_o\);

-- Location: FF_X55_Y64_N11
\U1|COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~34_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(17));

-- Location: LCCOMB_X55_Y65_N8
\U1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|COUNT\(0) $ (VCC)
-- \U1|Add0~1\ = CARRY(\U1|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|COUNT\(0),
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: LCCOMB_X56_Y64_N30
\U1|COUNT~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~15_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & ((!\UP~input_o\))) # (!\U1|process_0~10_combout\ & (\U1|Add0~44_combout\)))) # (!\U1|process_0~13_combout\ & (\U1|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~44_combout\,
	datab => \UP~input_o\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~15_combout\);

-- Location: FF_X56_Y64_N31
\U1|COUNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~15_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(22));

-- Location: LCCOMB_X55_Y64_N10
\U1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~34_combout\ = (\UP~input_o\ & ((\U1|COUNT\(17) & (!\U1|Add0~33\)) # (!\U1|COUNT\(17) & ((\U1|Add0~33\) # (GND))))) # (!\UP~input_o\ & ((\U1|COUNT\(17) & (\U1|Add0~33\ & VCC)) # (!\U1|COUNT\(17) & (!\U1|Add0~33\))))
-- \U1|Add0~35\ = CARRY((\UP~input_o\ & ((!\U1|Add0~33\) # (!\U1|COUNT\(17)))) # (!\UP~input_o\ & (!\U1|COUNT\(17) & !\U1|Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|COUNT\(17),
	datad => VCC,
	cin => \U1|Add0~33\,
	combout => \U1|Add0~34_combout\,
	cout => \U1|Add0~35\);

-- Location: LCCOMB_X55_Y64_N12
\U1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~36_combout\ = ((\UP~input_o\ $ (\U1|COUNT\(18) $ (\U1|Add0~35\)))) # (GND)
-- \U1|Add0~37\ = CARRY((\UP~input_o\ & (\U1|COUNT\(18) & !\U1|Add0~35\)) # (!\UP~input_o\ & ((\U1|COUNT\(18)) # (!\U1|Add0~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|COUNT\(18),
	datad => VCC,
	cin => \U1|Add0~35\,
	combout => \U1|Add0~36_combout\,
	cout => \U1|Add0~37\);

-- Location: LCCOMB_X56_Y64_N14
\U1|COUNT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~1_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & ((!\UP~input_o\))) # (!\U1|process_0~10_combout\ & (\U1|Add0~36_combout\)))) # (!\U1|process_0~13_combout\ & (\U1|Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~36_combout\,
	datab => \UP~input_o\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~1_combout\);

-- Location: FF_X56_Y64_N15
\U1|COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(18));

-- Location: LCCOMB_X55_Y64_N14
\U1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~38_combout\ = (\UP~input_o\ & ((\U1|COUNT\(19) & (!\U1|Add0~37\)) # (!\U1|COUNT\(19) & ((\U1|Add0~37\) # (GND))))) # (!\UP~input_o\ & ((\U1|COUNT\(19) & (\U1|Add0~37\ & VCC)) # (!\U1|COUNT\(19) & (!\U1|Add0~37\))))
-- \U1|Add0~39\ = CARRY((\UP~input_o\ & ((!\U1|Add0~37\) # (!\U1|COUNT\(19)))) # (!\UP~input_o\ & (!\U1|COUNT\(19) & !\U1|Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|COUNT\(19),
	datad => VCC,
	cin => \U1|Add0~37\,
	combout => \U1|Add0~38_combout\,
	cout => \U1|Add0~39\);

-- Location: LCCOMB_X56_Y64_N12
\U1|COUNT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~0_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & ((!\UP~input_o\))) # (!\U1|process_0~10_combout\ & (\U1|Add0~38_combout\)))) # (!\U1|process_0~13_combout\ & (\U1|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~38_combout\,
	datab => \UP~input_o\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~0_combout\);

-- Location: FF_X56_Y64_N13
\U1|COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(19));

-- Location: LCCOMB_X55_Y64_N16
\U1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~40_combout\ = ((\UP~input_o\ $ (\U1|COUNT\(20) $ (\U1|Add0~39\)))) # (GND)
-- \U1|Add0~41\ = CARRY((\UP~input_o\ & (\U1|COUNT\(20) & !\U1|Add0~39\)) # (!\UP~input_o\ & ((\U1|COUNT\(20)) # (!\U1|Add0~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|COUNT\(20),
	datad => VCC,
	cin => \U1|Add0~39\,
	combout => \U1|Add0~40_combout\,
	cout => \U1|Add0~41\);

-- Location: LCCOMB_X56_Y64_N22
\U1|COUNT~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~13_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & ((!\UP~input_o\))) # (!\U1|process_0~10_combout\ & (\U1|Add0~40_combout\)))) # (!\U1|process_0~13_combout\ & (\U1|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~40_combout\,
	datab => \UP~input_o\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~13_combout\);

-- Location: FF_X56_Y64_N23
\U1|COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~13_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(20));

-- Location: LCCOMB_X55_Y64_N18
\U1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~42_combout\ = (\UP~input_o\ & ((\U1|COUNT\(21) & (!\U1|Add0~41\)) # (!\U1|COUNT\(21) & ((\U1|Add0~41\) # (GND))))) # (!\UP~input_o\ & ((\U1|COUNT\(21) & (\U1|Add0~41\ & VCC)) # (!\U1|COUNT\(21) & (!\U1|Add0~41\))))
-- \U1|Add0~43\ = CARRY((\UP~input_o\ & ((!\U1|Add0~41\) # (!\U1|COUNT\(21)))) # (!\UP~input_o\ & (!\U1|COUNT\(21) & !\U1|Add0~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|COUNT\(21),
	datad => VCC,
	cin => \U1|Add0~41\,
	combout => \U1|Add0~42_combout\,
	cout => \U1|Add0~43\);

-- Location: LCCOMB_X56_Y64_N16
\U1|COUNT~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~14_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & (!\UP~input_o\)) # (!\U1|process_0~10_combout\ & ((\U1|Add0~42_combout\))))) # (!\U1|process_0~13_combout\ & (((\U1|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|Add0~42_combout\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~14_combout\);

-- Location: FF_X56_Y64_N17
\U1|COUNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~14_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(21));

-- Location: LCCOMB_X55_Y64_N20
\U1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~44_combout\ = ((\U1|COUNT\(22) $ (\UP~input_o\ $ (\U1|Add0~43\)))) # (GND)
-- \U1|Add0~45\ = CARRY((\U1|COUNT\(22) & ((!\U1|Add0~43\) # (!\UP~input_o\))) # (!\U1|COUNT\(22) & (!\UP~input_o\ & !\U1|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|COUNT\(22),
	datab => \UP~input_o\,
	datad => VCC,
	cin => \U1|Add0~43\,
	combout => \U1|Add0~44_combout\,
	cout => \U1|Add0~45\);

-- Location: LCCOMB_X56_Y64_N28
\U1|COUNT~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~16_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & (!\UP~input_o\)) # (!\U1|process_0~10_combout\ & ((\U1|Add0~48_combout\))))) # (!\U1|process_0~13_combout\ & (((\U1|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|Add0~48_combout\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~16_combout\);

-- Location: FF_X56_Y64_N29
\U1|COUNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~16_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(24));

-- Location: LCCOMB_X55_Y64_N22
\U1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~46_combout\ = (\U1|COUNT\(23) & ((\UP~input_o\ & (!\U1|Add0~45\)) # (!\UP~input_o\ & (\U1|Add0~45\ & VCC)))) # (!\U1|COUNT\(23) & ((\UP~input_o\ & ((\U1|Add0~45\) # (GND))) # (!\UP~input_o\ & (!\U1|Add0~45\))))
-- \U1|Add0~47\ = CARRY((\U1|COUNT\(23) & (\UP~input_o\ & !\U1|Add0~45\)) # (!\U1|COUNT\(23) & ((\UP~input_o\) # (!\U1|Add0~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|COUNT\(23),
	datab => \UP~input_o\,
	datad => VCC,
	cin => \U1|Add0~45\,
	combout => \U1|Add0~46_combout\,
	cout => \U1|Add0~47\);

-- Location: FF_X55_Y64_N23
\U1|COUNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~46_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(23));

-- Location: LCCOMB_X55_Y64_N24
\U1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~48_combout\ = \UP~input_o\ $ (\U1|Add0~47\ $ (\U1|COUNT\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datad => \U1|COUNT\(24),
	cin => \U1|Add0~47\,
	combout => \U1|Add0~48_combout\);

-- Location: LCCOMB_X56_Y64_N26
\U1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~6_combout\ = (!\U1|Add0~6_combout\ & (!\U1|Add0~8_combout\ & (!\U1|Add0~10_combout\ & !\U1|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~6_combout\,
	datab => \U1|Add0~8_combout\,
	datac => \U1|Add0~10_combout\,
	datad => \U1|Add0~22_combout\,
	combout => \U1|process_0~6_combout\);

-- Location: LCCOMB_X55_Y64_N28
\U1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~7_combout\ = (!\U1|Add0~24_combout\ & (!\U1|Add0~28_combout\ & (!\U1|Add0~32_combout\ & !\U1|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~24_combout\,
	datab => \U1|Add0~28_combout\,
	datac => \U1|Add0~32_combout\,
	datad => \U1|Add0~26_combout\,
	combout => \U1|process_0~7_combout\);

-- Location: LCCOMB_X55_Y65_N6
\U1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~5_combout\ = (!\U1|Add0~4_combout\ & (!\UP~input_o\ & (!\U1|Add0~0_combout\ & !\U1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~4_combout\,
	datab => \UP~input_o\,
	datac => \U1|Add0~0_combout\,
	datad => \U1|Add0~2_combout\,
	combout => \U1|process_0~5_combout\);

-- Location: LCCOMB_X55_Y64_N30
\U1|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~8_combout\ = (!\U1|Add0~36_combout\ & (!\U1|Add0~40_combout\ & (!\U1|Add0~38_combout\ & !\U1|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~36_combout\,
	datab => \U1|Add0~40_combout\,
	datac => \U1|Add0~38_combout\,
	datad => \U1|Add0~42_combout\,
	combout => \U1|process_0~8_combout\);

-- Location: LCCOMB_X56_Y64_N8
\U1|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~9_combout\ = (\U1|process_0~6_combout\ & (\U1|process_0~7_combout\ & (\U1|process_0~5_combout\ & \U1|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~6_combout\,
	datab => \U1|process_0~7_combout\,
	datac => \U1|process_0~5_combout\,
	datad => \U1|process_0~8_combout\,
	combout => \U1|process_0~9_combout\);

-- Location: LCCOMB_X55_Y65_N4
\U1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~0_combout\ = (\U1|Add0~4_combout\ & (\UP~input_o\ & (\U1|Add0~0_combout\ & \U1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~4_combout\,
	datab => \UP~input_o\,
	datac => \U1|Add0~0_combout\,
	datad => \U1|Add0~2_combout\,
	combout => \U1|process_0~0_combout\);

-- Location: LCCOMB_X56_Y64_N2
\U1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~1_combout\ = (\U1|Add0~6_combout\ & (\U1|Add0~8_combout\ & (\U1|Add0~10_combout\ & \U1|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~6_combout\,
	datab => \U1|Add0~8_combout\,
	datac => \U1|Add0~10_combout\,
	datad => \U1|Add0~22_combout\,
	combout => \U1|process_0~1_combout\);

-- Location: LCCOMB_X56_Y64_N20
\U1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~2_combout\ = (\U1|Add0~24_combout\ & (\U1|process_0~0_combout\ & (\U1|Add0~26_combout\ & \U1|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~24_combout\,
	datab => \U1|process_0~0_combout\,
	datac => \U1|Add0~26_combout\,
	datad => \U1|process_0~1_combout\,
	combout => \U1|process_0~2_combout\);

-- Location: LCCOMB_X56_Y64_N10
\U1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~3_combout\ = (\U1|Add0~36_combout\ & (\U1|Add0~32_combout\ & (\U1|Add0~28_combout\ & \U1|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~36_combout\,
	datab => \U1|Add0~32_combout\,
	datac => \U1|Add0~28_combout\,
	datad => \U1|process_0~2_combout\,
	combout => \U1|process_0~3_combout\);

-- Location: LCCOMB_X56_Y64_N24
\U1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~4_combout\ = (\U1|Add0~38_combout\ & (\U1|Add0~42_combout\ & (\U1|Add0~40_combout\ & \U1|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~38_combout\,
	datab => \U1|Add0~42_combout\,
	datac => \U1|Add0~40_combout\,
	datad => \U1|process_0~3_combout\,
	combout => \U1|process_0~4_combout\);

-- Location: LCCOMB_X56_Y64_N6
\U1|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~10_combout\ = (\U1|Add0~44_combout\ & (\U1|Add0~48_combout\ & ((\U1|process_0~4_combout\)))) # (!\U1|Add0~44_combout\ & (!\U1|Add0~48_combout\ & (\U1|process_0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~44_combout\,
	datab => \U1|Add0~48_combout\,
	datac => \U1|process_0~9_combout\,
	datad => \U1|process_0~4_combout\,
	combout => \U1|process_0~10_combout\);

-- Location: LCCOMB_X55_Y65_N2
\U1|COUNT~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~12_combout\ = (\U1|process_0~10_combout\ & ((\U1|process_0~13_combout\ & (!\UP~input_o\)) # (!\U1|process_0~13_combout\ & ((\U1|Add0~0_combout\))))) # (!\U1|process_0~10_combout\ & (((\U1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|Add0~0_combout\,
	datac => \U1|process_0~10_combout\,
	datad => \U1|process_0~13_combout\,
	combout => \U1|COUNT~12_combout\);

-- Location: FF_X55_Y65_N3
\U1|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~12_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(0));

-- Location: LCCOMB_X55_Y65_N10
\U1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\UP~input_o\ & ((\U1|COUNT\(1) & (!\U1|Add0~1\)) # (!\U1|COUNT\(1) & ((\U1|Add0~1\) # (GND))))) # (!\UP~input_o\ & ((\U1|COUNT\(1) & (\U1|Add0~1\ & VCC)) # (!\U1|COUNT\(1) & (!\U1|Add0~1\))))
-- \U1|Add0~3\ = CARRY((\UP~input_o\ & ((!\U1|Add0~1\) # (!\U1|COUNT\(1)))) # (!\UP~input_o\ & (!\U1|COUNT\(1) & !\U1|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|COUNT\(1),
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: LCCOMB_X55_Y65_N0
\U1|COUNT~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~11_combout\ = (\U1|process_0~10_combout\ & ((\U1|process_0~13_combout\ & ((!\UP~input_o\))) # (!\U1|process_0~13_combout\ & (\U1|Add0~2_combout\)))) # (!\U1|process_0~10_combout\ & (\U1|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~2_combout\,
	datab => \UP~input_o\,
	datac => \U1|process_0~10_combout\,
	datad => \U1|process_0~13_combout\,
	combout => \U1|COUNT~11_combout\);

-- Location: FF_X55_Y65_N1
\U1|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~11_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(1));

-- Location: LCCOMB_X55_Y65_N12
\U1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = ((\UP~input_o\ $ (\U1|COUNT\(2) $ (\U1|Add0~3\)))) # (GND)
-- \U1|Add0~5\ = CARRY((\UP~input_o\ & (\U1|COUNT\(2) & !\U1|Add0~3\)) # (!\UP~input_o\ & ((\U1|COUNT\(2)) # (!\U1|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|COUNT\(2),
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: LCCOMB_X56_Y65_N8
\U1|COUNT~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~10_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & (!\UP~input_o\)) # (!\U1|process_0~10_combout\ & ((\U1|Add0~4_combout\))))) # (!\U1|process_0~13_combout\ & (((\U1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|Add0~4_combout\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~10_combout\);

-- Location: FF_X56_Y65_N9
\U1|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~10_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(2));

-- Location: LCCOMB_X55_Y65_N14
\U1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\UP~input_o\ & ((\U1|COUNT\(3) & (!\U1|Add0~5\)) # (!\U1|COUNT\(3) & ((\U1|Add0~5\) # (GND))))) # (!\UP~input_o\ & ((\U1|COUNT\(3) & (\U1|Add0~5\ & VCC)) # (!\U1|COUNT\(3) & (!\U1|Add0~5\))))
-- \U1|Add0~7\ = CARRY((\UP~input_o\ & ((!\U1|Add0~5\) # (!\U1|COUNT\(3)))) # (!\UP~input_o\ & (!\U1|COUNT\(3) & !\U1|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|COUNT\(3),
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: LCCOMB_X56_Y65_N26
\U1|COUNT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~9_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & (!\UP~input_o\)) # (!\U1|process_0~10_combout\ & ((\U1|Add0~6_combout\))))) # (!\U1|process_0~13_combout\ & (((\U1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|Add0~6_combout\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~9_combout\);

-- Location: FF_X56_Y65_N27
\U1|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~9_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(3));

-- Location: LCCOMB_X55_Y65_N16
\U1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = ((\U1|COUNT\(4) $ (\UP~input_o\ $ (\U1|Add0~7\)))) # (GND)
-- \U1|Add0~9\ = CARRY((\U1|COUNT\(4) & ((!\U1|Add0~7\) # (!\UP~input_o\))) # (!\U1|COUNT\(4) & (!\UP~input_o\ & !\U1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|COUNT\(4),
	datab => \UP~input_o\,
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: LCCOMB_X56_Y64_N0
\U1|COUNT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~8_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & (!\UP~input_o\)) # (!\U1|process_0~10_combout\ & ((\U1|Add0~8_combout\))))) # (!\U1|process_0~13_combout\ & (((\U1|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|Add0~8_combout\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~8_combout\);

-- Location: FF_X56_Y64_N1
\U1|COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~8_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(4));

-- Location: LCCOMB_X55_Y65_N18
\U1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\UP~input_o\ & ((\U1|COUNT\(5) & (!\U1|Add0~9\)) # (!\U1|COUNT\(5) & ((\U1|Add0~9\) # (GND))))) # (!\UP~input_o\ & ((\U1|COUNT\(5) & (\U1|Add0~9\ & VCC)) # (!\U1|COUNT\(5) & (!\U1|Add0~9\))))
-- \U1|Add0~11\ = CARRY((\UP~input_o\ & ((!\U1|Add0~9\) # (!\U1|COUNT\(5)))) # (!\UP~input_o\ & (!\U1|COUNT\(5) & !\U1|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|COUNT\(5),
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: LCCOMB_X56_Y65_N18
\U1|COUNT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~7_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & (!\UP~input_o\)) # (!\U1|process_0~10_combout\ & ((\U1|Add0~10_combout\))))) # (!\U1|process_0~13_combout\ & (((\U1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|Add0~10_combout\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~7_combout\);

-- Location: FF_X56_Y65_N19
\U1|COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~7_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(5));

-- Location: LCCOMB_X55_Y65_N20
\U1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = ((\UP~input_o\ $ (\U1|COUNT\(6) $ (\U1|Add0~11\)))) # (GND)
-- \U1|Add0~13\ = CARRY((\UP~input_o\ & (\U1|COUNT\(6) & !\U1|Add0~11\)) # (!\UP~input_o\ & ((\U1|COUNT\(6)) # (!\U1|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|COUNT\(6),
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: FF_X55_Y65_N21
\U1|COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~12_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(6));

-- Location: LCCOMB_X55_Y65_N22
\U1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|COUNT\(7) & ((\UP~input_o\ & (!\U1|Add0~13\)) # (!\UP~input_o\ & (\U1|Add0~13\ & VCC)))) # (!\U1|COUNT\(7) & ((\UP~input_o\ & ((\U1|Add0~13\) # (GND))) # (!\UP~input_o\ & (!\U1|Add0~13\))))
-- \U1|Add0~15\ = CARRY((\U1|COUNT\(7) & (\UP~input_o\ & !\U1|Add0~13\)) # (!\U1|COUNT\(7) & ((\UP~input_o\) # (!\U1|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|COUNT\(7),
	datab => \UP~input_o\,
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: FF_X55_Y65_N23
\U1|COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~14_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(7));

-- Location: LCCOMB_X55_Y65_N24
\U1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = ((\UP~input_o\ $ (\U1|COUNT\(8) $ (\U1|Add0~15\)))) # (GND)
-- \U1|Add0~17\ = CARRY((\UP~input_o\ & (\U1|COUNT\(8) & !\U1|Add0~15\)) # (!\UP~input_o\ & ((\U1|COUNT\(8)) # (!\U1|Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|COUNT\(8),
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: FF_X55_Y65_N25
\U1|COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~16_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(8));

-- Location: LCCOMB_X55_Y65_N26
\U1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = (\U1|COUNT\(9) & ((\UP~input_o\ & (!\U1|Add0~17\)) # (!\UP~input_o\ & (\U1|Add0~17\ & VCC)))) # (!\U1|COUNT\(9) & ((\UP~input_o\ & ((\U1|Add0~17\) # (GND))) # (!\UP~input_o\ & (!\U1|Add0~17\))))
-- \U1|Add0~19\ = CARRY((\U1|COUNT\(9) & (\UP~input_o\ & !\U1|Add0~17\)) # (!\U1|COUNT\(9) & ((\UP~input_o\) # (!\U1|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|COUNT\(9),
	datab => \UP~input_o\,
	datad => VCC,
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\,
	cout => \U1|Add0~19\);

-- Location: FF_X55_Y65_N27
\U1|COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~18_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(9));

-- Location: LCCOMB_X55_Y65_N28
\U1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~20_combout\ = ((\UP~input_o\ $ (\U1|COUNT\(10) $ (\U1|Add0~19\)))) # (GND)
-- \U1|Add0~21\ = CARRY((\UP~input_o\ & (\U1|COUNT\(10) & !\U1|Add0~19\)) # (!\UP~input_o\ & ((\U1|COUNT\(10)) # (!\U1|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|COUNT\(10),
	datad => VCC,
	cin => \U1|Add0~19\,
	combout => \U1|Add0~20_combout\,
	cout => \U1|Add0~21\);

-- Location: FF_X55_Y65_N29
\U1|COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~20_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(10));

-- Location: LCCOMB_X55_Y65_N30
\U1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~22_combout\ = (\UP~input_o\ & ((\U1|COUNT\(11) & (!\U1|Add0~21\)) # (!\U1|COUNT\(11) & ((\U1|Add0~21\) # (GND))))) # (!\UP~input_o\ & ((\U1|COUNT\(11) & (\U1|Add0~21\ & VCC)) # (!\U1|COUNT\(11) & (!\U1|Add0~21\))))
-- \U1|Add0~23\ = CARRY((\UP~input_o\ & ((!\U1|Add0~21\) # (!\U1|COUNT\(11)))) # (!\UP~input_o\ & (!\U1|COUNT\(11) & !\U1|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|COUNT\(11),
	datad => VCC,
	cin => \U1|Add0~21\,
	combout => \U1|Add0~22_combout\,
	cout => \U1|Add0~23\);

-- Location: LCCOMB_X56_Y65_N22
\U1|COUNT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~6_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & (!\UP~input_o\)) # (!\U1|process_0~10_combout\ & ((\U1|Add0~22_combout\))))) # (!\U1|process_0~13_combout\ & (((\U1|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|Add0~22_combout\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~6_combout\);

-- Location: FF_X56_Y65_N23
\U1|COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(11));

-- Location: LCCOMB_X55_Y64_N0
\U1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~24_combout\ = ((\UP~input_o\ $ (\U1|COUNT\(12) $ (\U1|Add0~23\)))) # (GND)
-- \U1|Add0~25\ = CARRY((\UP~input_o\ & (\U1|COUNT\(12) & !\U1|Add0~23\)) # (!\UP~input_o\ & ((\U1|COUNT\(12)) # (!\U1|Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|COUNT\(12),
	datad => VCC,
	cin => \U1|Add0~23\,
	combout => \U1|Add0~24_combout\,
	cout => \U1|Add0~25\);

-- Location: LCCOMB_X56_Y64_N18
\U1|COUNT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~5_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & ((!\UP~input_o\))) # (!\U1|process_0~10_combout\ & (\U1|Add0~24_combout\)))) # (!\U1|process_0~13_combout\ & (\U1|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~24_combout\,
	datab => \UP~input_o\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~5_combout\);

-- Location: FF_X56_Y64_N19
\U1|COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~5_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(12));

-- Location: LCCOMB_X55_Y64_N2
\U1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~26_combout\ = (\U1|COUNT\(13) & ((\UP~input_o\ & (!\U1|Add0~25\)) # (!\UP~input_o\ & (\U1|Add0~25\ & VCC)))) # (!\U1|COUNT\(13) & ((\UP~input_o\ & ((\U1|Add0~25\) # (GND))) # (!\UP~input_o\ & (!\U1|Add0~25\))))
-- \U1|Add0~27\ = CARRY((\U1|COUNT\(13) & (\UP~input_o\ & !\U1|Add0~25\)) # (!\U1|COUNT\(13) & ((\UP~input_o\) # (!\U1|Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|COUNT\(13),
	datab => \UP~input_o\,
	datad => VCC,
	cin => \U1|Add0~25\,
	combout => \U1|Add0~26_combout\,
	cout => \U1|Add0~27\);

-- Location: LCCOMB_X56_Y64_N4
\U1|COUNT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~4_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & (!\UP~input_o\)) # (!\U1|process_0~10_combout\ & ((\U1|Add0~26_combout\))))) # (!\U1|process_0~13_combout\ & (((\U1|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|Add0~26_combout\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~4_combout\);

-- Location: FF_X56_Y64_N5
\U1|COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(13));

-- Location: LCCOMB_X55_Y64_N4
\U1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~28_combout\ = ((\U1|COUNT\(14) $ (\UP~input_o\ $ (\U1|Add0~27\)))) # (GND)
-- \U1|Add0~29\ = CARRY((\U1|COUNT\(14) & ((!\U1|Add0~27\) # (!\UP~input_o\))) # (!\U1|COUNT\(14) & (!\UP~input_o\ & !\U1|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|COUNT\(14),
	datab => \UP~input_o\,
	datad => VCC,
	cin => \U1|Add0~27\,
	combout => \U1|Add0~28_combout\,
	cout => \U1|Add0~29\);

-- Location: LCCOMB_X56_Y65_N10
\U1|COUNT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~3_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & (!\UP~input_o\)) # (!\U1|process_0~10_combout\ & ((\U1|Add0~28_combout\))))) # (!\U1|process_0~13_combout\ & (((\U1|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|Add0~28_combout\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~3_combout\);

-- Location: FF_X56_Y65_N11
\U1|COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(14));

-- Location: LCCOMB_X55_Y64_N6
\U1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~30_combout\ = (\U1|COUNT\(15) & ((\UP~input_o\ & (!\U1|Add0~29\)) # (!\UP~input_o\ & (\U1|Add0~29\ & VCC)))) # (!\U1|COUNT\(15) & ((\UP~input_o\ & ((\U1|Add0~29\) # (GND))) # (!\UP~input_o\ & (!\U1|Add0~29\))))
-- \U1|Add0~31\ = CARRY((\U1|COUNT\(15) & (\UP~input_o\ & !\U1|Add0~29\)) # (!\U1|COUNT\(15) & ((\UP~input_o\) # (!\U1|Add0~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|COUNT\(15),
	datab => \UP~input_o\,
	datad => VCC,
	cin => \U1|Add0~29\,
	combout => \U1|Add0~30_combout\,
	cout => \U1|Add0~31\);

-- Location: FF_X55_Y64_N7
\U1|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|Add0~30_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(15));

-- Location: LCCOMB_X55_Y64_N8
\U1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~32_combout\ = ((\U1|COUNT\(16) $ (\UP~input_o\ $ (\U1|Add0~31\)))) # (GND)
-- \U1|Add0~33\ = CARRY((\U1|COUNT\(16) & ((!\U1|Add0~31\) # (!\UP~input_o\))) # (!\U1|COUNT\(16) & (!\UP~input_o\ & !\U1|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|COUNT\(16),
	datab => \UP~input_o\,
	datad => VCC,
	cin => \U1|Add0~31\,
	combout => \U1|Add0~32_combout\,
	cout => \U1|Add0~33\);

-- Location: LCCOMB_X55_Y64_N26
\U1|COUNT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|COUNT~2_combout\ = (\U1|process_0~13_combout\ & ((\U1|process_0~10_combout\ & (!\UP~input_o\)) # (!\U1|process_0~10_combout\ & ((\U1|Add0~32_combout\))))) # (!\U1|process_0~13_combout\ & (((\U1|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \U1|Add0~32_combout\,
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|COUNT~2_combout\);

-- Location: FF_X55_Y64_N27
\U1|COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|COUNT~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(16));

-- Location: LCCOMB_X56_Y65_N24
\U1|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~11_combout\ = (!\U1|Add0~16_combout\ & (!\U1|Add0~14_combout\ & (!\U1|Add0~18_combout\ & !\U1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~16_combout\,
	datab => \U1|Add0~14_combout\,
	datac => \U1|Add0~18_combout\,
	datad => \U1|Add0~12_combout\,
	combout => \U1|process_0~11_combout\);

-- Location: LCCOMB_X56_Y65_N20
\U1|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~12_combout\ = (!\U1|Add0~20_combout\ & !\U1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~20_combout\,
	datad => \U1|Add0~30_combout\,
	combout => \U1|process_0~12_combout\);

-- Location: LCCOMB_X56_Y65_N30
\U1|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~13_combout\ = (!\U1|Add0~34_combout\ & (\U1|process_0~11_combout\ & (!\U1|Add0~46_combout\ & \U1|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~34_combout\,
	datab => \U1|process_0~11_combout\,
	datac => \U1|Add0~46_combout\,
	datad => \U1|process_0~12_combout\,
	combout => \U1|process_0~13_combout\);

-- Location: LCCOMB_X56_Y65_N12
\U1|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~14_combout\ = (\U1|process_0~13_combout\ & \U1|process_0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|process_0~13_combout\,
	datad => \U1|process_0~10_combout\,
	combout => \U1|process_0~14_combout\);

-- Location: FF_X56_Y65_N29
\U1|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|temp~0_combout\,
	clrn => \RESET~input_o\,
	ena => \U1|process_0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|temp~q\);

-- Location: LCCOMB_X56_Y65_N14
\U1|OUT1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|OUT1~0_combout\ = !\U1|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|temp~q\,
	combout => \U1|OUT1~0_combout\);

-- Location: FF_X56_Y65_N15
\U1|OUT1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|OUT1~0_combout\,
	clrn => \RESET~input_o\,
	ena => \U1|process_0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OUT1~q\);

-- Location: CLKCTRL_G10
\U1|OUT1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|OUT1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|OUT1~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y51_N16
\E0|COUNT[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \E0|COUNT[0]~8_combout\ = !\E0|COUNT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E0|COUNT\(0),
	combout => \E0|COUNT[0]~8_combout\);

-- Location: FF_X114_Y51_N17
\E0|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|OUT1~clkctrl_outclk\,
	d => \E0|COUNT[0]~8_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E0|COUNT\(0));

-- Location: LCCOMB_X114_Y51_N0
\E0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E0|Add0~0_combout\ = \E0|COUNT\(1) $ (\UP~input_o\ $ (\E0|COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E0|COUNT\(1),
	datac => \UP~input_o\,
	datad => \E0|COUNT\(0),
	combout => \E0|Add0~0_combout\);

-- Location: LCCOMB_X114_Y51_N4
\E0|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E0|Add0~1_combout\ = (\E0|COUNT\(1) & ((\E0|COUNT\(0)) # (!\UP~input_o\))) # (!\E0|COUNT\(1) & (!\UP~input_o\ & \E0|COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E0|COUNT\(1),
	datac => \UP~input_o\,
	datad => \E0|COUNT\(0),
	combout => \E0|Add0~1_combout\);

-- Location: LCCOMB_X114_Y51_N10
\E0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E0|Add0~2_combout\ = \E0|COUNT\(3) $ (((\UP~input_o\ & ((!\E0|COUNT\(2)) # (!\E0|Add0~1_combout\))) # (!\UP~input_o\ & ((\E0|Add0~1_combout\) # (\E0|COUNT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E0|COUNT\(3),
	datab => \UP~input_o\,
	datac => \E0|Add0~1_combout\,
	datad => \E0|COUNT\(2),
	combout => \E0|Add0~2_combout\);

-- Location: LCCOMB_X114_Y51_N30
\E0|COUNT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \E0|COUNT~5_combout\ = (!\E0|Add0~2_combout\ & (((\E0|Add0~0_combout\) # (!\UP~input_o\)) # (!\E0|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E0|Add0~2_combout\,
	datab => \E0|process_0~0_combout\,
	datac => \UP~input_o\,
	datad => \E0|Add0~0_combout\,
	combout => \E0|COUNT~5_combout\);

-- Location: FF_X114_Y51_N31
\E0|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|OUT1~clkctrl_outclk\,
	d => \E0|COUNT~5_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E0|COUNT\(3));

-- Location: LCCOMB_X114_Y51_N6
\E0|COUNT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \E0|COUNT~6_combout\ = (\UP~input_o\ & ((\E0|COUNT\(2) $ (!\E0|COUNT\(0))))) # (!\UP~input_o\ & ((\E0|COUNT\(2) & ((!\E0|COUNT\(0)))) # (!\E0|COUNT\(2) & ((\E0|COUNT\(0)) # (!\E0|COUNT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E0|COUNT\(3),
	datab => \UP~input_o\,
	datac => \E0|COUNT\(2),
	datad => \E0|COUNT\(0),
	combout => \E0|COUNT~6_combout\);

-- Location: LCCOMB_X114_Y51_N8
\E0|COUNT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \E0|COUNT~7_combout\ = (\E0|COUNT~6_combout\ & (\E0|COUNT\(2) & (\UP~input_o\ $ (\E0|COUNT\(1))))) # (!\E0|COUNT~6_combout\ & ((\E0|COUNT\(2)) # (\UP~input_o\ $ (!\E0|COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E0|COUNT~6_combout\,
	datab => \UP~input_o\,
	datac => \E0|COUNT\(2),
	datad => \E0|COUNT\(1),
	combout => \E0|COUNT~7_combout\);

-- Location: FF_X114_Y51_N9
\E0|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|OUT1~clkctrl_outclk\,
	d => \E0|COUNT~7_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E0|COUNT\(2));

-- Location: LCCOMB_X114_Y51_N14
\E0|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E0|process_0~0_combout\ = (\E0|COUNT\(2) & (\E0|COUNT\(1) & (\UP~input_o\ $ (!\E0|COUNT\(0))))) # (!\E0|COUNT\(2) & (!\E0|COUNT\(1) & (\UP~input_o\ $ (!\E0|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E0|COUNT\(2),
	datab => \E0|COUNT\(1),
	datac => \UP~input_o\,
	datad => \E0|COUNT\(0),
	combout => \E0|process_0~0_combout\);

-- Location: LCCOMB_X114_Y51_N18
\E0|COUNT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \E0|COUNT~4_combout\ = (!\E0|Add0~0_combout\ & ((\E0|Add0~2_combout\) # (!\E0|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E0|Add0~0_combout\,
	datac => \E0|process_0~0_combout\,
	datad => \E0|Add0~2_combout\,
	combout => \E0|COUNT~4_combout\);

-- Location: FF_X114_Y51_N19
\E0|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|OUT1~clkctrl_outclk\,
	d => \E0|COUNT~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E0|COUNT\(1));

-- Location: LCCOMB_X114_Y51_N20
\E0|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E0|process_0~1_combout\ = (!\E0|COUNT\(1) & ((\E0|COUNT\(3) & (\UP~input_o\ & !\E0|COUNT\(0))) # (!\E0|COUNT\(3) & (!\UP~input_o\ & \E0|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E0|COUNT\(3),
	datab => \E0|COUNT\(1),
	datac => \UP~input_o\,
	datad => \E0|COUNT\(0),
	combout => \E0|process_0~1_combout\);

-- Location: LCCOMB_X114_Y43_N2
\E0|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E0|process_0~2_combout\ = (\E0|process_0~1_combout\ & (\UP~input_o\ $ (\E0|Add0~1_combout\ $ (\E0|COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \E0|Add0~1_combout\,
	datac => \E0|COUNT\(2),
	datad => \E0|process_0~1_combout\,
	combout => \E0|process_0~2_combout\);

-- Location: FF_X114_Y43_N3
\E0|OUT1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|OUT1~clkctrl_outclk\,
	d => \E0|process_0~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E0|OUT1~q\);

-- Location: LCCOMB_X114_Y43_N28
\E1|COUNT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1|COUNT~0_combout\ = \E1|COUNT\(0) $ (\E0|OUT1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E1|COUNT\(0),
	datad => \E0|OUT1~q\,
	combout => \E1|COUNT~0_combout\);

-- Location: FF_X114_Y43_N29
\E1|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|OUT1~clkctrl_outclk\,
	d => \E1|COUNT~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E1|COUNT\(0));

-- Location: LCCOMB_X114_Y43_N12
\E1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1|Add0~1_cout\ = CARRY(\E1|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E1|COUNT\(0),
	datad => VCC,
	cout => \E1|Add0~1_cout\);

-- Location: LCCOMB_X114_Y43_N14
\E1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1|Add0~2_combout\ = (\E1|COUNT\(1) & ((\UP~input_o\ & (!\E1|Add0~1_cout\)) # (!\UP~input_o\ & (\E1|Add0~1_cout\ & VCC)))) # (!\E1|COUNT\(1) & ((\UP~input_o\ & ((\E1|Add0~1_cout\) # (GND))) # (!\UP~input_o\ & (!\E1|Add0~1_cout\))))
-- \E1|Add0~3\ = CARRY((\E1|COUNT\(1) & (\UP~input_o\ & !\E1|Add0~1_cout\)) # (!\E1|COUNT\(1) & ((\UP~input_o\) # (!\E1|Add0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E1|COUNT\(1),
	datab => \UP~input_o\,
	datad => VCC,
	cin => \E1|Add0~1_cout\,
	combout => \E1|Add0~2_combout\,
	cout => \E1|Add0~3\);

-- Location: LCCOMB_X114_Y43_N0
\E1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1|Add0~4_combout\ = (\E0|OUT1~q\ & ((\E1|Add0~2_combout\))) # (!\E0|OUT1~q\ & (\E1|COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1|COUNT\(1),
	datac => \E1|Add0~2_combout\,
	datad => \E0|OUT1~q\,
	combout => \E1|Add0~4_combout\);

-- Location: LCCOMB_X114_Y43_N16
\E1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1|Add0~5_combout\ = ((\UP~input_o\ $ (\E1|COUNT\(2) $ (\E1|Add0~3\)))) # (GND)
-- \E1|Add0~6\ = CARRY((\UP~input_o\ & (\E1|COUNT\(2) & !\E1|Add0~3\)) # (!\UP~input_o\ & ((\E1|COUNT\(2)) # (!\E1|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \E1|COUNT\(2),
	datad => VCC,
	cin => \E1|Add0~3\,
	combout => \E1|Add0~5_combout\,
	cout => \E1|Add0~6\);

-- Location: LCCOMB_X114_Y43_N8
\E1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1|Add0~9_combout\ = (\E0|OUT1~q\ & ((\E1|Add0~5_combout\))) # (!\E0|OUT1~q\ & (\E1|COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E0|OUT1~q\,
	datac => \E1|COUNT\(2),
	datad => \E1|Add0~5_combout\,
	combout => \E1|Add0~9_combout\);

-- Location: LCCOMB_X114_Y43_N10
\E1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1|process_0~2_combout\ = (\E1|Add0~4_combout\ & ((\E0|OUT1~q\ & ((\E1|Add0~5_combout\))) # (!\E0|OUT1~q\ & (\E1|COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1|COUNT\(2),
	datab => \E0|OUT1~q\,
	datac => \E1|Add0~5_combout\,
	datad => \E1|Add0~4_combout\,
	combout => \E1|process_0~2_combout\);

-- Location: LCCOMB_X114_Y43_N24
\E1|COUNT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1|COUNT~2_combout\ = (\E1|process_0~1_combout\ & ((\E1|process_0~2_combout\ & (!\UP~input_o\)) # (!\E1|process_0~2_combout\ & ((\E1|Add0~9_combout\))))) # (!\E1|process_0~1_combout\ & (((\E1|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \E1|Add0~9_combout\,
	datac => \E1|process_0~1_combout\,
	datad => \E1|process_0~2_combout\,
	combout => \E1|COUNT~2_combout\);

-- Location: FF_X114_Y43_N25
\E1|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|OUT1~clkctrl_outclk\,
	d => \E1|COUNT~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E1|COUNT\(2));

-- Location: LCCOMB_X114_Y43_N18
\E1|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1|Add0~7_combout\ = \E1|COUNT\(3) $ (\E1|Add0~6\ $ (!\UP~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E1|COUNT\(3),
	datad => \UP~input_o\,
	cin => \E1|Add0~6\,
	combout => \E1|Add0~7_combout\);

-- Location: LCCOMB_X114_Y43_N6
\E1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1|Add0~10_combout\ = (\E0|OUT1~q\ & ((\E1|Add0~7_combout\))) # (!\E0|OUT1~q\ & (\E1|COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E0|OUT1~q\,
	datac => \E1|COUNT\(3),
	datad => \E1|Add0~7_combout\,
	combout => \E1|Add0~10_combout\);

-- Location: LCCOMB_X114_Y43_N22
\E1|COUNT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1|COUNT~3_combout\ = (\E1|Add0~10_combout\ & ((!\E1|process_0~2_combout\) # (!\E1|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1|Add0~10_combout\,
	datac => \E1|process_0~1_combout\,
	datad => \E1|process_0~2_combout\,
	combout => \E1|COUNT~3_combout\);

-- Location: FF_X114_Y43_N23
\E1|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|OUT1~clkctrl_outclk\,
	d => \E1|COUNT~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E1|COUNT\(3));

-- Location: LCCOMB_X114_Y43_N26
\E1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1|process_0~0_combout\ = (\E0|OUT1~q\ & (\UP~input_o\ $ (((!\E1|COUNT\(0)))))) # (!\E0|OUT1~q\ & ((\UP~input_o\ & (!\E1|COUNT\(3) & !\E1|COUNT\(0))) # (!\UP~input_o\ & (\E1|COUNT\(3) & \E1|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \E0|OUT1~q\,
	datac => \E1|COUNT\(3),
	datad => \E1|COUNT\(0),
	combout => \E1|process_0~0_combout\);

-- Location: LCCOMB_X114_Y43_N4
\E1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1|process_0~1_combout\ = (\E1|process_0~0_combout\ & ((\UP~input_o\ $ (\E1|Add0~7_combout\)) # (!\E0|OUT1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP~input_o\,
	datab => \E0|OUT1~q\,
	datac => \E1|process_0~0_combout\,
	datad => \E1|Add0~7_combout\,
	combout => \E1|process_0~1_combout\);

-- Location: LCCOMB_X114_Y43_N30
\E1|COUNT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1|COUNT~1_combout\ = (\E1|Add0~4_combout\ & ((!\E1|process_0~2_combout\) # (!\E1|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E1|Add0~4_combout\,
	datac => \E1|process_0~1_combout\,
	datad => \E1|process_0~2_combout\,
	combout => \E1|COUNT~1_combout\);

-- Location: FF_X114_Y43_N31
\E1|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|OUT1~clkctrl_outclk\,
	d => \E1|COUNT~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E1|COUNT\(1));

-- Location: LCCOMB_X114_Y51_N24
\W1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux6~0_combout\ = (\E0|COUNT\(3) & (\E0|COUNT\(0) & (\E0|COUNT\(1) $ (\E0|COUNT\(2))))) # (!\E0|COUNT\(3) & (!\E0|COUNT\(1) & (\E0|COUNT\(2) $ (\E0|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E0|COUNT\(3),
	datab => \E0|COUNT\(1),
	datac => \E0|COUNT\(2),
	datad => \E0|COUNT\(0),
	combout => \W1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y51_N22
\W1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux5~0_combout\ = (\E0|COUNT\(3) & ((\E0|COUNT\(0) & (\E0|COUNT\(1))) # (!\E0|COUNT\(0) & ((\E0|COUNT\(2)))))) # (!\E0|COUNT\(3) & (\E0|COUNT\(2) & (\E0|COUNT\(1) $ (\E0|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E0|COUNT\(3),
	datab => \E0|COUNT\(1),
	datac => \E0|COUNT\(2),
	datad => \E0|COUNT\(0),
	combout => \W1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y51_N28
\W1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux4~0_combout\ = (\E0|COUNT\(3) & (\E0|COUNT\(2) & ((\E0|COUNT\(1)) # (!\E0|COUNT\(0))))) # (!\E0|COUNT\(3) & (\E0|COUNT\(1) & (!\E0|COUNT\(2) & !\E0|COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E0|COUNT\(3),
	datab => \E0|COUNT\(1),
	datac => \E0|COUNT\(2),
	datad => \E0|COUNT\(0),
	combout => \W1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y50_N20
\W1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux3~0_combout\ = (\E0|COUNT\(1) & ((\E0|COUNT\(2) & (\E0|COUNT\(0))) # (!\E0|COUNT\(2) & (!\E0|COUNT\(0) & \E0|COUNT\(3))))) # (!\E0|COUNT\(1) & (!\E0|COUNT\(3) & (\E0|COUNT\(2) $ (\E0|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E0|COUNT\(2),
	datab => \E0|COUNT\(1),
	datac => \E0|COUNT\(0),
	datad => \E0|COUNT\(3),
	combout => \W1|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y51_N26
\W1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux2~0_combout\ = (\E0|COUNT\(1) & (!\E0|COUNT\(3) & ((\E0|COUNT\(0))))) # (!\E0|COUNT\(1) & ((\E0|COUNT\(2) & (!\E0|COUNT\(3))) # (!\E0|COUNT\(2) & ((\E0|COUNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E0|COUNT\(3),
	datab => \E0|COUNT\(1),
	datac => \E0|COUNT\(2),
	datad => \E0|COUNT\(0),
	combout => \W1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y51_N12
\W1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux1~0_combout\ = (\E0|COUNT\(1) & (!\E0|COUNT\(3) & ((\E0|COUNT\(0)) # (!\E0|COUNT\(2))))) # (!\E0|COUNT\(1) & (\E0|COUNT\(0) & (\E0|COUNT\(3) $ (!\E0|COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E0|COUNT\(3),
	datab => \E0|COUNT\(1),
	datac => \E0|COUNT\(2),
	datad => \E0|COUNT\(0),
	combout => \W1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y51_N2
\W1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux0~0_combout\ = (\E0|COUNT\(0) & ((\E0|COUNT\(3)) # (\E0|COUNT\(1) $ (\E0|COUNT\(2))))) # (!\E0|COUNT\(0) & ((\E0|COUNT\(1)) # (\E0|COUNT\(3) $ (\E0|COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E0|COUNT\(3),
	datab => \E0|COUNT\(1),
	datac => \E0|COUNT\(2),
	datad => \E0|COUNT\(0),
	combout => \W1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y43_N20
\W2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux6~0_combout\ = (\E1|COUNT\(2) & (!\E1|COUNT\(1) & (\E1|COUNT\(3) $ (!\E1|COUNT\(0))))) # (!\E1|COUNT\(2) & (\E1|COUNT\(0) & (\E1|COUNT\(1) $ (!\E1|COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1|COUNT\(1),
	datab => \E1|COUNT\(2),
	datac => \E1|COUNT\(3),
	datad => \E1|COUNT\(0),
	combout => \W2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y30_N4
\W2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux5~0_combout\ = (\E1|COUNT\(1) & ((\E1|COUNT\(0) & ((\E1|COUNT\(3)))) # (!\E1|COUNT\(0) & (\E1|COUNT\(2))))) # (!\E1|COUNT\(1) & (\E1|COUNT\(2) & (\E1|COUNT\(0) $ (\E1|COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1|COUNT\(1),
	datab => \E1|COUNT\(2),
	datac => \E1|COUNT\(0),
	datad => \E1|COUNT\(3),
	combout => \W2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y30_N10
\W2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux4~0_combout\ = (\E1|COUNT\(2) & (\E1|COUNT\(3) & ((\E1|COUNT\(1)) # (!\E1|COUNT\(0))))) # (!\E1|COUNT\(2) & (\E1|COUNT\(1) & (!\E1|COUNT\(0) & !\E1|COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1|COUNT\(1),
	datab => \E1|COUNT\(2),
	datac => \E1|COUNT\(0),
	datad => \E1|COUNT\(3),
	combout => \W2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y30_N12
\W2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux3~0_combout\ = (\E1|COUNT\(1) & ((\E1|COUNT\(2) & (\E1|COUNT\(0))) # (!\E1|COUNT\(2) & (!\E1|COUNT\(0) & \E1|COUNT\(3))))) # (!\E1|COUNT\(1) & (!\E1|COUNT\(3) & (\E1|COUNT\(2) $ (\E1|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1|COUNT\(1),
	datab => \E1|COUNT\(2),
	datac => \E1|COUNT\(0),
	datad => \E1|COUNT\(3),
	combout => \W2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y30_N30
\W2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux2~0_combout\ = (\E1|COUNT\(1) & (((\E1|COUNT\(0) & !\E1|COUNT\(3))))) # (!\E1|COUNT\(1) & ((\E1|COUNT\(2) & ((!\E1|COUNT\(3)))) # (!\E1|COUNT\(2) & (\E1|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1|COUNT\(1),
	datab => \E1|COUNT\(2),
	datac => \E1|COUNT\(0),
	datad => \E1|COUNT\(3),
	combout => \W2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y30_N28
\W2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux1~0_combout\ = (\E1|COUNT\(1) & (!\E1|COUNT\(3) & ((\E1|COUNT\(0)) # (!\E1|COUNT\(2))))) # (!\E1|COUNT\(1) & (\E1|COUNT\(0) & (\E1|COUNT\(2) $ (!\E1|COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1|COUNT\(1),
	datab => \E1|COUNT\(2),
	datac => \E1|COUNT\(0),
	datad => \E1|COUNT\(3),
	combout => \W2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y30_N22
\W2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux0~0_combout\ = (\E1|COUNT\(0) & ((\E1|COUNT\(3)) # (\E1|COUNT\(1) $ (\E1|COUNT\(2))))) # (!\E1|COUNT\(0) & ((\E1|COUNT\(1)) # (\E1|COUNT\(2) $ (\E1|COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1|COUNT\(1),
	datab => \E1|COUNT\(2),
	datac => \E1|COUNT\(0),
	datad => \E1|COUNT\(3),
	combout => \W2|Mux0~0_combout\);

ww_reseta <= \reseta~output_o\;

ww_resetb <= \resetb~output_o\;

ww_ref <= \ref~output_o\;

ww_out0(0) <= \out0[0]~output_o\;

ww_out0(1) <= \out0[1]~output_o\;

ww_out0(2) <= \out0[2]~output_o\;

ww_out0(3) <= \out0[3]~output_o\;

ww_out1(0) <= \out1[0]~output_o\;

ww_out1(1) <= \out1[1]~output_o\;

ww_out1(2) <= \out1[2]~output_o\;

ww_out1(3) <= \out1[3]~output_o\;

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


