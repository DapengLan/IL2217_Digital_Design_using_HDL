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

-- DATE "09/29/2015 21:53:41"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	SWTO : IN std_logic_vector(17 DOWNTO 0);
	LEDRTO : BUFFER std_logic_vector(8 DOWNTO 0);
	LEDRTO_temp : BUFFER std_logic_vector(7 DOWNTO 0);
	HEXTO0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEXTO1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEXTO2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEXTO3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEXTO4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEXTO5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEXTO6 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- LEDRTO[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO[1]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO[2]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO[4]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO[5]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO[6]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO[7]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO[8]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO_temp[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO_temp[1]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO_temp[2]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO_temp[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO_temp[4]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO_temp[5]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO_temp[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDRTO_temp[7]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO0[0]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO0[1]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO0[2]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO0[3]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO0[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO0[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO0[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO1[0]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO1[1]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO1[2]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO1[3]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO1[4]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO1[5]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO1[6]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO2[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO2[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO2[2]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO2[3]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO2[4]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO2[5]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO2[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO3[0]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO3[1]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO3[2]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO3[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO3[4]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO3[5]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO3[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO4[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO4[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO4[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO4[3]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO4[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO4[5]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO4[6]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO5[0]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO5[1]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO5[2]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO5[3]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO5[4]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO5[5]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO5[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO6[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO6[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO6[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO6[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO6[4]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO6[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXTO6[6]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[17]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[16]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[0]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[8]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[9]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[1]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[2]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[10]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[11]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[3]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[4]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[12]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[13]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[6]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[14]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[15]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWTO[7]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SWTO : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDRTO : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDRTO_temp : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEXTO0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEXTO1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEXTO2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEXTO3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEXTO4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEXTO5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEXTO6 : std_logic_vector(6 DOWNTO 0);
SIGNAL \LEDRTO[0]~output_o\ : std_logic;
SIGNAL \LEDRTO[1]~output_o\ : std_logic;
SIGNAL \LEDRTO[2]~output_o\ : std_logic;
SIGNAL \LEDRTO[3]~output_o\ : std_logic;
SIGNAL \LEDRTO[4]~output_o\ : std_logic;
SIGNAL \LEDRTO[5]~output_o\ : std_logic;
SIGNAL \LEDRTO[6]~output_o\ : std_logic;
SIGNAL \LEDRTO[7]~output_o\ : std_logic;
SIGNAL \LEDRTO[8]~output_o\ : std_logic;
SIGNAL \LEDRTO_temp[0]~output_o\ : std_logic;
SIGNAL \LEDRTO_temp[1]~output_o\ : std_logic;
SIGNAL \LEDRTO_temp[2]~output_o\ : std_logic;
SIGNAL \LEDRTO_temp[3]~output_o\ : std_logic;
SIGNAL \LEDRTO_temp[4]~output_o\ : std_logic;
SIGNAL \LEDRTO_temp[5]~output_o\ : std_logic;
SIGNAL \LEDRTO_temp[6]~output_o\ : std_logic;
SIGNAL \LEDRTO_temp[7]~output_o\ : std_logic;
SIGNAL \HEXTO0[0]~output_o\ : std_logic;
SIGNAL \HEXTO0[1]~output_o\ : std_logic;
SIGNAL \HEXTO0[2]~output_o\ : std_logic;
SIGNAL \HEXTO0[3]~output_o\ : std_logic;
SIGNAL \HEXTO0[4]~output_o\ : std_logic;
SIGNAL \HEXTO0[5]~output_o\ : std_logic;
SIGNAL \HEXTO0[6]~output_o\ : std_logic;
SIGNAL \HEXTO1[0]~output_o\ : std_logic;
SIGNAL \HEXTO1[1]~output_o\ : std_logic;
SIGNAL \HEXTO1[2]~output_o\ : std_logic;
SIGNAL \HEXTO1[3]~output_o\ : std_logic;
SIGNAL \HEXTO1[4]~output_o\ : std_logic;
SIGNAL \HEXTO1[5]~output_o\ : std_logic;
SIGNAL \HEXTO1[6]~output_o\ : std_logic;
SIGNAL \HEXTO2[0]~output_o\ : std_logic;
SIGNAL \HEXTO2[1]~output_o\ : std_logic;
SIGNAL \HEXTO2[2]~output_o\ : std_logic;
SIGNAL \HEXTO2[3]~output_o\ : std_logic;
SIGNAL \HEXTO2[4]~output_o\ : std_logic;
SIGNAL \HEXTO2[5]~output_o\ : std_logic;
SIGNAL \HEXTO2[6]~output_o\ : std_logic;
SIGNAL \HEXTO3[0]~output_o\ : std_logic;
SIGNAL \HEXTO3[1]~output_o\ : std_logic;
SIGNAL \HEXTO3[2]~output_o\ : std_logic;
SIGNAL \HEXTO3[3]~output_o\ : std_logic;
SIGNAL \HEXTO3[4]~output_o\ : std_logic;
SIGNAL \HEXTO3[5]~output_o\ : std_logic;
SIGNAL \HEXTO3[6]~output_o\ : std_logic;
SIGNAL \HEXTO4[0]~output_o\ : std_logic;
SIGNAL \HEXTO4[1]~output_o\ : std_logic;
SIGNAL \HEXTO4[2]~output_o\ : std_logic;
SIGNAL \HEXTO4[3]~output_o\ : std_logic;
SIGNAL \HEXTO4[4]~output_o\ : std_logic;
SIGNAL \HEXTO4[5]~output_o\ : std_logic;
SIGNAL \HEXTO4[6]~output_o\ : std_logic;
SIGNAL \HEXTO5[0]~output_o\ : std_logic;
SIGNAL \HEXTO5[1]~output_o\ : std_logic;
SIGNAL \HEXTO5[2]~output_o\ : std_logic;
SIGNAL \HEXTO5[3]~output_o\ : std_logic;
SIGNAL \HEXTO5[4]~output_o\ : std_logic;
SIGNAL \HEXTO5[5]~output_o\ : std_logic;
SIGNAL \HEXTO5[6]~output_o\ : std_logic;
SIGNAL \HEXTO6[0]~output_o\ : std_logic;
SIGNAL \HEXTO6[1]~output_o\ : std_logic;
SIGNAL \HEXTO6[2]~output_o\ : std_logic;
SIGNAL \HEXTO6[3]~output_o\ : std_logic;
SIGNAL \HEXTO6[4]~output_o\ : std_logic;
SIGNAL \HEXTO6[5]~output_o\ : std_logic;
SIGNAL \HEXTO6[6]~output_o\ : std_logic;
SIGNAL \SWTO[8]~input_o\ : std_logic;
SIGNAL \SWTO[17]~input_o\ : std_logic;
SIGNAL \SWTO[16]~input_o\ : std_logic;
SIGNAL \SWTO[0]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \SWTO[9]~input_o\ : std_logic;
SIGNAL \SWTO[1]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \SWTO[2]~input_o\ : std_logic;
SIGNAL \SWTO[10]~input_o\ : std_logic;
SIGNAL \T2|G0:1:U0|cout~0_combout\ : std_logic;
SIGNAL \T1|G0:1:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \SWTO[3]~input_o\ : std_logic;
SIGNAL \Mux5~10_combout\ : std_logic;
SIGNAL \T2|G0:2:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \SWTO[11]~input_o\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \SWTO[4]~input_o\ : std_logic;
SIGNAL \T2|G0:3:U0|cout~0_combout\ : std_logic;
SIGNAL \T1|G0:3:U0|cout~0_combout\ : std_logic;
SIGNAL \T1|G0:3:U0|cout~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \SWTO[12]~input_o\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \SWTO[13]~input_o\ : std_logic;
SIGNAL \T2|G0:4:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \SWTO[5]~input_o\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \T1|G0:5:U0|cout~0_combout\ : std_logic;
SIGNAL \T1|G0:5:U0|cout~1_combout\ : std_logic;
SIGNAL \T2|G0:5:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \SWTO[6]~input_o\ : std_logic;
SIGNAL \SWTO[14]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux1~10_combout\ : std_logic;
SIGNAL \T2|G0:6:U0|cout~0_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \SWTO[15]~input_o\ : std_logic;
SIGNAL \SWTO[7]~input_o\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \T1|G0:7:U0|cout~0_combout\ : std_logic;
SIGNAL \T1|G0:7:U0|cout~1_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
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
SIGNAL \W3|Mux6~0_combout\ : std_logic;
SIGNAL \W3|Mux5~0_combout\ : std_logic;
SIGNAL \W3|Mux4~0_combout\ : std_logic;
SIGNAL \W3|Mux3~0_combout\ : std_logic;
SIGNAL \W3|Mux2~0_combout\ : std_logic;
SIGNAL \W3|Mux1~0_combout\ : std_logic;
SIGNAL \W3|Mux0~0_combout\ : std_logic;
SIGNAL \W4|Mux6~0_combout\ : std_logic;
SIGNAL \W4|Mux5~0_combout\ : std_logic;
SIGNAL \W4|Mux4~0_combout\ : std_logic;
SIGNAL \W4|Mux3~0_combout\ : std_logic;
SIGNAL \W4|Mux2~0_combout\ : std_logic;
SIGNAL \W4|Mux1~0_combout\ : std_logic;
SIGNAL \W4|Mux0~0_combout\ : std_logic;
SIGNAL \W5|Mux6~0_combout\ : std_logic;
SIGNAL \W5|Mux5~0_combout\ : std_logic;
SIGNAL \W5|Mux4~0_combout\ : std_logic;
SIGNAL \W5|Mux3~0_combout\ : std_logic;
SIGNAL \W5|Mux2~0_combout\ : std_logic;
SIGNAL \W5|Mux1~0_combout\ : std_logic;
SIGNAL \W5|Mux0~0_combout\ : std_logic;
SIGNAL \W6|Mux6~0_combout\ : std_logic;
SIGNAL \W6|Mux5~0_combout\ : std_logic;
SIGNAL \W6|Mux4~0_combout\ : std_logic;
SIGNAL \W6|Mux3~0_combout\ : std_logic;
SIGNAL \W6|Mux2~0_combout\ : std_logic;
SIGNAL \W6|Mux1~0_combout\ : std_logic;
SIGNAL \W6|Mux0~0_combout\ : std_logic;
SIGNAL \W7|Mux1~0_combout\ : std_logic;
SIGNAL \W7|Mux1~1_combout\ : std_logic;
SIGNAL \W7|Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_SWTO[17]~input_o\ : std_logic;
SIGNAL \W6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \W5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \W4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \W3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \W2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \W1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_SWTO <= SWTO;
LEDRTO <= ww_LEDRTO;
LEDRTO_temp <= ww_LEDRTO_temp;
HEXTO0 <= ww_HEXTO0;
HEXTO1 <= ww_HEXTO1;
HEXTO2 <= ww_HEXTO2;
HEXTO3 <= ww_HEXTO3;
HEXTO4 <= ww_HEXTO4;
HEXTO5 <= ww_HEXTO5;
HEXTO6 <= ww_HEXTO6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SWTO[17]~input_o\ <= NOT \SWTO[17]~input_o\;
\W6|ALT_INV_Mux0~0_combout\ <= NOT \W6|Mux0~0_combout\;
\W5|ALT_INV_Mux0~0_combout\ <= NOT \W5|Mux0~0_combout\;
\W4|ALT_INV_Mux0~0_combout\ <= NOT \W4|Mux0~0_combout\;
\W3|ALT_INV_Mux0~0_combout\ <= NOT \W3|Mux0~0_combout\;
\W2|ALT_INV_Mux0~0_combout\ <= NOT \W2|Mux0~0_combout\;
\W1|ALT_INV_Mux0~0_combout\ <= NOT \W1|Mux0~0_combout\;

-- Location: IOOBUF_X56_Y0_N9
\LEDRTO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \LEDRTO[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\LEDRTO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \LEDRTO[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\LEDRTO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \LEDRTO[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\LEDRTO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~9_combout\,
	devoe => ww_devoe,
	o => \LEDRTO[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\LEDRTO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \LEDRTO[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\LEDRTO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~9_combout\,
	devoe => ww_devoe,
	o => \LEDRTO[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\LEDRTO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \LEDRTO[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\LEDRTO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~9_combout\,
	devoe => ww_devoe,
	o => \LEDRTO[7]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\LEDRTO[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \LEDRTO[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\LEDRTO_temp[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \LEDRTO_temp[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\LEDRTO_temp[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \LEDRTO_temp[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\LEDRTO_temp[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \LEDRTO_temp[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\LEDRTO_temp[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~9_combout\,
	devoe => ww_devoe,
	o => \LEDRTO_temp[3]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\LEDRTO_temp[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \LEDRTO_temp[4]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\LEDRTO_temp[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~9_combout\,
	devoe => ww_devoe,
	o => \LEDRTO_temp[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\LEDRTO_temp[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \LEDRTO_temp[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\LEDRTO_temp[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~9_combout\,
	devoe => ww_devoe,
	o => \LEDRTO_temp[7]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\HEXTO0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO0[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\HEXTO0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO0[1]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\HEXTO0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO0[2]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\HEXTO0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO0[3]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\HEXTO0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO0[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\HEXTO0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO0[5]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\HEXTO0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO0[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\HEXTO1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO1[0]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEXTO1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO1[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\HEXTO1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO1[2]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEXTO1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO1[3]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEXTO1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO1[4]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\HEXTO1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO1[5]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEXTO1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO1[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\HEXTO2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO2[0]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\HEXTO2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO2[1]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\HEXTO2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO2[2]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\HEXTO2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO2[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\HEXTO2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO2[4]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\HEXTO2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO2[5]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\HEXTO2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO2[6]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\HEXTO3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\HEXTO3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO3[1]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\HEXTO3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO3[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEXTO3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO3[3]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\HEXTO3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO3[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEXTO3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO3[5]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEXTO3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO3[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEXTO4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO4[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEXTO4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO4[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\HEXTO4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO4[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEXTO4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO4[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEXTO4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO4[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\HEXTO4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO4[5]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\HEXTO4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO4[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEXTO5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W6|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO5[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEXTO5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO5[1]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEXTO5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO5[2]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEXTO5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO5[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEXTO5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEXTO5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO5[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEXTO5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W6|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO5[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\HEXTO6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO6[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\HEXTO6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEXTO6[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\HEXTO6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W7|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \HEXTO6[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\HEXTO6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEXTO6[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\HEXTO6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SWTO[16]~input_o\,
	devoe => ww_devoe,
	o => \HEXTO6[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\HEXTO6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W7|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \HEXTO6[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\HEXTO6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SWTO[17]~input_o\,
	devoe => ww_devoe,
	o => \HEXTO6[6]~output_o\);

-- Location: IOIBUF_X29_Y0_N22
\SWTO[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(8),
	o => \SWTO[8]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\SWTO[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(17),
	o => \SWTO[17]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\SWTO[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(16),
	o => \SWTO[16]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\SWTO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(0),
	o => \SWTO[0]~input_o\);

-- Location: LCCOMB_X45_Y1_N8
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\SWTO[8]~input_o\ & (!\SWTO[0]~input_o\ & ((!\SWTO[16]~input_o\) # (!\SWTO[17]~input_o\)))) # (!\SWTO[8]~input_o\ & ((\SWTO[17]~input_o\ & ((!\SWTO[0]~input_o\) # (!\SWTO[16]~input_o\))) # (!\SWTO[17]~input_o\ & 
-- ((\SWTO[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[8]~input_o\,
	datab => \SWTO[17]~input_o\,
	datac => \SWTO[16]~input_o\,
	datad => \SWTO[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: IOIBUF_X40_Y0_N22
\SWTO[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(9),
	o => \SWTO[9]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\SWTO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(1),
	o => \SWTO[1]~input_o\);

-- Location: LCCOMB_X45_Y1_N18
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\SWTO[17]~input_o\ & (((\SWTO[16]~input_o\)))) # (!\SWTO[17]~input_o\ & (\SWTO[8]~input_o\ & (\SWTO[16]~input_o\ $ (\SWTO[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[8]~input_o\,
	datab => \SWTO[17]~input_o\,
	datac => \SWTO[16]~input_o\,
	datad => \SWTO[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X45_Y1_N4
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\SWTO[9]~input_o\ & ((\SWTO[1]~input_o\ & (\Mux7~0_combout\ & !\SWTO[17]~input_o\)) # (!\SWTO[1]~input_o\ & (!\Mux7~0_combout\)))) # (!\SWTO[9]~input_o\ & ((\SWTO[1]~input_o\ & (!\Mux7~0_combout\)) # (!\SWTO[1]~input_o\ & 
-- ((\Mux7~0_combout\) # (\SWTO[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[9]~input_o\,
	datab => \SWTO[1]~input_o\,
	datac => \Mux7~0_combout\,
	datad => \SWTO[17]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: IOIBUF_X29_Y0_N15
\SWTO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(2),
	o => \SWTO[2]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\SWTO[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(10),
	o => \SWTO[10]~input_o\);

-- Location: LCCOMB_X45_Y1_N6
\T2|G0:1:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T2|G0:1:U0|cout~0_combout\ = (\SWTO[9]~input_o\ & (\SWTO[1]~input_o\ & ((\SWTO[0]~input_o\) # (!\SWTO[8]~input_o\)))) # (!\SWTO[9]~input_o\ & ((\SWTO[1]~input_o\) # ((\SWTO[0]~input_o\) # (!\SWTO[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[9]~input_o\,
	datab => \SWTO[1]~input_o\,
	datac => \SWTO[8]~input_o\,
	datad => \SWTO[0]~input_o\,
	combout => \T2|G0:1:U0|cout~0_combout\);

-- Location: LCCOMB_X45_Y1_N16
\T1|G0:1:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T1|G0:1:U0|cout~0_combout\ = (\SWTO[9]~input_o\ & ((\SWTO[1]~input_o\) # ((\SWTO[8]~input_o\ & \SWTO[0]~input_o\)))) # (!\SWTO[9]~input_o\ & (\SWTO[1]~input_o\ & (\SWTO[8]~input_o\ & \SWTO[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[9]~input_o\,
	datab => \SWTO[1]~input_o\,
	datac => \SWTO[8]~input_o\,
	datad => \SWTO[0]~input_o\,
	combout => \T1|G0:1:U0|cout~0_combout\);

-- Location: LCCOMB_X45_Y1_N10
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\SWTO[16]~input_o\ & (((\SWTO[17]~input_o\)) # (!\T2|G0:1:U0|cout~0_combout\))) # (!\SWTO[16]~input_o\ & (((\T1|G0:1:U0|cout~0_combout\ & !\SWTO[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2|G0:1:U0|cout~0_combout\,
	datab => \T1|G0:1:U0|cout~0_combout\,
	datac => \SWTO[16]~input_o\,
	datad => \SWTO[17]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X45_Y1_N20
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\SWTO[2]~input_o\ & ((\SWTO[10]~input_o\ & (!\SWTO[17]~input_o\ & \Mux6~0_combout\)) # (!\SWTO[10]~input_o\ & ((!\Mux6~0_combout\))))) # (!\SWTO[2]~input_o\ & ((\SWTO[10]~input_o\ & ((!\Mux6~0_combout\))) # (!\SWTO[10]~input_o\ & 
-- ((\SWTO[17]~input_o\) # (\Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[2]~input_o\,
	datab => \SWTO[17]~input_o\,
	datac => \SWTO[10]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X52_Y0_N22
\SWTO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(3),
	o => \SWTO[3]~input_o\);

-- Location: LCCOMB_X45_Y1_N14
\Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~10_combout\ = (\SWTO[2]~input_o\ & ((\SWTO[10]~input_o\) # (\T1|G0:1:U0|cout~0_combout\))) # (!\SWTO[2]~input_o\ & (\SWTO[10]~input_o\ & \T1|G0:1:U0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[2]~input_o\,
	datac => \SWTO[10]~input_o\,
	datad => \T1|G0:1:U0|cout~0_combout\,
	combout => \Mux5~10_combout\);

-- Location: LCCOMB_X45_Y1_N30
\T2|G0:2:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T2|G0:2:U0|cout~0_combout\ = (\SWTO[2]~input_o\ & ((\T2|G0:1:U0|cout~0_combout\) # (!\SWTO[10]~input_o\))) # (!\SWTO[2]~input_o\ & (!\SWTO[10]~input_o\ & \T2|G0:1:U0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[2]~input_o\,
	datac => \SWTO[10]~input_o\,
	datad => \T2|G0:1:U0|cout~0_combout\,
	combout => \T2|G0:2:U0|cout~0_combout\);

-- Location: LCCOMB_X53_Y1_N8
\Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\SWTO[17]~input_o\ & (((\SWTO[16]~input_o\)))) # (!\SWTO[17]~input_o\ & ((\SWTO[16]~input_o\ & ((!\T2|G0:2:U0|cout~0_combout\))) # (!\SWTO[16]~input_o\ & (\Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~10_combout\,
	datab => \T2|G0:2:U0|cout~0_combout\,
	datac => \SWTO[17]~input_o\,
	datad => \SWTO[16]~input_o\,
	combout => \Mux5~8_combout\);

-- Location: IOIBUF_X49_Y0_N8
\SWTO[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(11),
	o => \SWTO[11]~input_o\);

-- Location: LCCOMB_X53_Y1_N10
\Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\SWTO[3]~input_o\ & ((\Mux5~8_combout\ & (!\SWTO[17]~input_o\ & \SWTO[11]~input_o\)) # (!\Mux5~8_combout\ & ((!\SWTO[11]~input_o\))))) # (!\SWTO[3]~input_o\ & ((\Mux5~8_combout\ & ((!\SWTO[11]~input_o\))) # (!\Mux5~8_combout\ & 
-- ((\SWTO[17]~input_o\) # (\SWTO[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[3]~input_o\,
	datab => \Mux5~8_combout\,
	datac => \SWTO[17]~input_o\,
	datad => \SWTO[11]~input_o\,
	combout => \Mux5~9_combout\);

-- Location: IOIBUF_X89_Y0_N1
\SWTO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(4),
	o => \SWTO[4]~input_o\);

-- Location: LCCOMB_X47_Y1_N24
\T2|G0:3:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T2|G0:3:U0|cout~0_combout\ = (\SWTO[11]~input_o\ & (\T2|G0:2:U0|cout~0_combout\ & \SWTO[3]~input_o\)) # (!\SWTO[11]~input_o\ & ((\T2|G0:2:U0|cout~0_combout\) # (\SWTO[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SWTO[11]~input_o\,
	datac => \T2|G0:2:U0|cout~0_combout\,
	datad => \SWTO[3]~input_o\,
	combout => \T2|G0:3:U0|cout~0_combout\);

-- Location: LCCOMB_X42_Y1_N6
\T1|G0:3:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T1|G0:3:U0|cout~0_combout\ = (\SWTO[2]~input_o\ & ((\T1|G0:1:U0|cout~0_combout\) # (\SWTO[10]~input_o\))) # (!\SWTO[2]~input_o\ & (\T1|G0:1:U0|cout~0_combout\ & \SWTO[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[2]~input_o\,
	datab => \T1|G0:1:U0|cout~0_combout\,
	datac => \SWTO[10]~input_o\,
	combout => \T1|G0:3:U0|cout~0_combout\);

-- Location: LCCOMB_X42_Y1_N16
\T1|G0:3:U0|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \T1|G0:3:U0|cout~1_combout\ = (\T1|G0:3:U0|cout~0_combout\ & ((\SWTO[3]~input_o\) # (\SWTO[11]~input_o\))) # (!\T1|G0:3:U0|cout~0_combout\ & (\SWTO[3]~input_o\ & \SWTO[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T1|G0:3:U0|cout~0_combout\,
	datac => \SWTO[3]~input_o\,
	datad => \SWTO[11]~input_o\,
	combout => \T1|G0:3:U0|cout~1_combout\);

-- Location: LCCOMB_X83_Y1_N0
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\SWTO[17]~input_o\ & (((\SWTO[16]~input_o\)))) # (!\SWTO[17]~input_o\ & ((\SWTO[16]~input_o\ & (!\T2|G0:3:U0|cout~0_combout\)) # (!\SWTO[16]~input_o\ & ((\T1|G0:3:U0|cout~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2|G0:3:U0|cout~0_combout\,
	datab => \SWTO[17]~input_o\,
	datac => \T1|G0:3:U0|cout~1_combout\,
	datad => \SWTO[16]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X115_Y26_N22
\SWTO[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(12),
	o => \SWTO[12]~input_o\);

-- Location: LCCOMB_X83_Y1_N18
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\SWTO[4]~input_o\ & ((\Mux4~0_combout\ & (!\SWTO[17]~input_o\ & \SWTO[12]~input_o\)) # (!\Mux4~0_combout\ & ((!\SWTO[12]~input_o\))))) # (!\SWTO[4]~input_o\ & ((\Mux4~0_combout\ & ((!\SWTO[12]~input_o\))) # (!\Mux4~0_combout\ & 
-- ((\SWTO[17]~input_o\) # (\SWTO[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[4]~input_o\,
	datab => \Mux4~0_combout\,
	datac => \SWTO[17]~input_o\,
	datad => \SWTO[12]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X115_Y25_N15
\SWTO[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(13),
	o => \SWTO[13]~input_o\);

-- Location: LCCOMB_X83_Y1_N4
\T2|G0:4:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T2|G0:4:U0|cout~0_combout\ = (\T2|G0:3:U0|cout~0_combout\ & ((\SWTO[4]~input_o\) # (!\SWTO[12]~input_o\))) # (!\T2|G0:3:U0|cout~0_combout\ & (\SWTO[4]~input_o\ & !\SWTO[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2|G0:3:U0|cout~0_combout\,
	datac => \SWTO[4]~input_o\,
	datad => \SWTO[12]~input_o\,
	combout => \T2|G0:4:U0|cout~0_combout\);

-- Location: LCCOMB_X83_Y1_N2
\Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\SWTO[4]~input_o\ & ((\T1|G0:3:U0|cout~1_combout\) # (\SWTO[12]~input_o\))) # (!\SWTO[4]~input_o\ & (\T1|G0:3:U0|cout~1_combout\ & \SWTO[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[4]~input_o\,
	datac => \T1|G0:3:U0|cout~1_combout\,
	datad => \SWTO[12]~input_o\,
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X83_Y1_N14
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\SWTO[16]~input_o\ & (((\SWTO[17]~input_o\)) # (!\T2|G0:4:U0|cout~0_combout\))) # (!\SWTO[16]~input_o\ & (((!\SWTO[17]~input_o\ & \Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[16]~input_o\,
	datab => \T2|G0:4:U0|cout~0_combout\,
	datac => \SWTO[17]~input_o\,
	datad => \Mux3~10_combout\,
	combout => \Mux3~8_combout\);

-- Location: IOIBUF_X89_Y0_N15
\SWTO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(5),
	o => \SWTO[5]~input_o\);

-- Location: LCCOMB_X83_Y1_N24
\Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\SWTO[13]~input_o\ & ((\Mux3~8_combout\ & (!\SWTO[17]~input_o\ & \SWTO[5]~input_o\)) # (!\Mux3~8_combout\ & ((!\SWTO[5]~input_o\))))) # (!\SWTO[13]~input_o\ & ((\Mux3~8_combout\ & ((!\SWTO[5]~input_o\))) # (!\Mux3~8_combout\ & 
-- ((\SWTO[17]~input_o\) # (\SWTO[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[13]~input_o\,
	datab => \SWTO[17]~input_o\,
	datac => \Mux3~8_combout\,
	datad => \SWTO[5]~input_o\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X83_Y1_N20
\T1|G0:5:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T1|G0:5:U0|cout~0_combout\ = (\SWTO[4]~input_o\ & ((\T1|G0:3:U0|cout~1_combout\) # (\SWTO[12]~input_o\))) # (!\SWTO[4]~input_o\ & (\T1|G0:3:U0|cout~1_combout\ & \SWTO[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[4]~input_o\,
	datac => \T1|G0:3:U0|cout~1_combout\,
	datad => \SWTO[12]~input_o\,
	combout => \T1|G0:5:U0|cout~0_combout\);

-- Location: LCCOMB_X83_Y1_N30
\T1|G0:5:U0|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \T1|G0:5:U0|cout~1_combout\ = (\SWTO[13]~input_o\ & ((\T1|G0:5:U0|cout~0_combout\) # (\SWTO[5]~input_o\))) # (!\SWTO[13]~input_o\ & (\T1|G0:5:U0|cout~0_combout\ & \SWTO[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[13]~input_o\,
	datab => \T1|G0:5:U0|cout~0_combout\,
	datad => \SWTO[5]~input_o\,
	combout => \T1|G0:5:U0|cout~1_combout\);

-- Location: LCCOMB_X83_Y1_N10
\T2|G0:5:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T2|G0:5:U0|cout~0_combout\ = (\SWTO[13]~input_o\ & (\T2|G0:4:U0|cout~0_combout\ & \SWTO[5]~input_o\)) # (!\SWTO[13]~input_o\ & ((\T2|G0:4:U0|cout~0_combout\) # (\SWTO[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[13]~input_o\,
	datab => \T2|G0:4:U0|cout~0_combout\,
	datad => \SWTO[5]~input_o\,
	combout => \T2|G0:5:U0|cout~0_combout\);

-- Location: LCCOMB_X82_Y1_N16
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\SWTO[16]~input_o\ & (((\SWTO[17]~input_o\) # (!\T2|G0:5:U0|cout~0_combout\)))) # (!\SWTO[16]~input_o\ & (\T1|G0:5:U0|cout~1_combout\ & (!\SWTO[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T1|G0:5:U0|cout~1_combout\,
	datab => \SWTO[16]~input_o\,
	datac => \SWTO[17]~input_o\,
	datad => \T2|G0:5:U0|cout~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X83_Y0_N1
\SWTO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(6),
	o => \SWTO[6]~input_o\);

-- Location: IOIBUF_X115_Y27_N1
\SWTO[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(14),
	o => \SWTO[14]~input_o\);

-- Location: LCCOMB_X82_Y1_N26
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((\SWTO[6]~input_o\ & (!\SWTO[17]~input_o\ & \SWTO[14]~input_o\)) # (!\SWTO[6]~input_o\ & ((!\SWTO[14]~input_o\))))) # (!\Mux2~0_combout\ & ((\SWTO[6]~input_o\ & ((!\SWTO[14]~input_o\))) # (!\SWTO[6]~input_o\ & 
-- ((\SWTO[17]~input_o\) # (\SWTO[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \SWTO[6]~input_o\,
	datac => \SWTO[17]~input_o\,
	datad => \SWTO[14]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X82_Y1_N22
\Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~10_combout\ = (\SWTO[6]~input_o\ & ((\T1|G0:5:U0|cout~1_combout\) # (\SWTO[14]~input_o\))) # (!\SWTO[6]~input_o\ & (\T1|G0:5:U0|cout~1_combout\ & \SWTO[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SWTO[6]~input_o\,
	datac => \T1|G0:5:U0|cout~1_combout\,
	datad => \SWTO[14]~input_o\,
	combout => \Mux1~10_combout\);

-- Location: LCCOMB_X82_Y1_N28
\T2|G0:6:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T2|G0:6:U0|cout~0_combout\ = (\SWTO[6]~input_o\ & ((\T2|G0:5:U0|cout~0_combout\) # (!\SWTO[14]~input_o\))) # (!\SWTO[6]~input_o\ & (\T2|G0:5:U0|cout~0_combout\ & !\SWTO[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SWTO[6]~input_o\,
	datac => \T2|G0:5:U0|cout~0_combout\,
	datad => \SWTO[14]~input_o\,
	combout => \T2|G0:6:U0|cout~0_combout\);

-- Location: LCCOMB_X82_Y1_N6
\Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\SWTO[17]~input_o\ & (((\SWTO[16]~input_o\)))) # (!\SWTO[17]~input_o\ & ((\SWTO[16]~input_o\ & ((!\T2|G0:6:U0|cout~0_combout\))) # (!\SWTO[16]~input_o\ & (\Mux1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~10_combout\,
	datab => \SWTO[17]~input_o\,
	datac => \SWTO[16]~input_o\,
	datad => \T2|G0:6:U0|cout~0_combout\,
	combout => \Mux1~8_combout\);

-- Location: IOIBUF_X115_Y24_N8
\SWTO[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(15),
	o => \SWTO[15]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\SWTO[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWTO(7),
	o => \SWTO[7]~input_o\);

-- Location: LCCOMB_X82_Y1_N24
\Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\Mux1~8_combout\ & ((\SWTO[15]~input_o\ & (!\SWTO[17]~input_o\ & \SWTO[7]~input_o\)) # (!\SWTO[15]~input_o\ & ((!\SWTO[7]~input_o\))))) # (!\Mux1~8_combout\ & ((\SWTO[15]~input_o\ & ((!\SWTO[7]~input_o\))) # (!\SWTO[15]~input_o\ & 
-- ((\SWTO[17]~input_o\) # (\SWTO[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~8_combout\,
	datab => \SWTO[17]~input_o\,
	datac => \SWTO[15]~input_o\,
	datad => \SWTO[7]~input_o\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X82_Y1_N10
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\SWTO[16]~input_o\ & ((\SWTO[7]~input_o\ & ((\T2|G0:6:U0|cout~0_combout\) # (!\SWTO[15]~input_o\))) # (!\SWTO[7]~input_o\ & (!\SWTO[15]~input_o\ & \T2|G0:6:U0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[7]~input_o\,
	datab => \SWTO[16]~input_o\,
	datac => \SWTO[15]~input_o\,
	datad => \T2|G0:6:U0|cout~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X82_Y1_N0
\T1|G0:7:U0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \T1|G0:7:U0|cout~0_combout\ = (\SWTO[6]~input_o\ & ((\T1|G0:5:U0|cout~1_combout\) # (\SWTO[14]~input_o\))) # (!\SWTO[6]~input_o\ & (\T1|G0:5:U0|cout~1_combout\ & \SWTO[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SWTO[6]~input_o\,
	datac => \T1|G0:5:U0|cout~1_combout\,
	datad => \SWTO[14]~input_o\,
	combout => \T1|G0:7:U0|cout~0_combout\);

-- Location: LCCOMB_X82_Y1_N2
\T1|G0:7:U0|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \T1|G0:7:U0|cout~1_combout\ = (\T1|G0:7:U0|cout~0_combout\ & ((\SWTO[15]~input_o\) # (\SWTO[7]~input_o\))) # (!\T1|G0:7:U0|cout~0_combout\ & (\SWTO[15]~input_o\ & \SWTO[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T1|G0:7:U0|cout~0_combout\,
	datac => \SWTO[15]~input_o\,
	datad => \SWTO[7]~input_o\,
	combout => \T1|G0:7:U0|cout~1_combout\);

-- Location: LCCOMB_X82_Y1_N4
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\SWTO[17]~input_o\ & ((\Mux0~0_combout\) # ((!\SWTO[16]~input_o\ & \T1|G0:7:U0|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \SWTO[17]~input_o\,
	datac => \SWTO[16]~input_o\,
	datad => \T1|G0:7:U0|cout~1_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X45_Y1_N24
\W1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux6~0_combout\ = (\SWTO[2]~input_o\ & ((\SWTO[3]~input_o\ & (!\SWTO[1]~input_o\ & \SWTO[0]~input_o\)) # (!\SWTO[3]~input_o\ & ((!\SWTO[0]~input_o\))))) # (!\SWTO[2]~input_o\ & (\SWTO[0]~input_o\ & (\SWTO[1]~input_o\ $ (!\SWTO[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[2]~input_o\,
	datab => \SWTO[1]~input_o\,
	datac => \SWTO[3]~input_o\,
	datad => \SWTO[0]~input_o\,
	combout => \W1|Mux6~0_combout\);

-- Location: LCCOMB_X45_Y1_N26
\W1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux5~0_combout\ = (\SWTO[1]~input_o\ & ((\SWTO[0]~input_o\ & ((\SWTO[3]~input_o\))) # (!\SWTO[0]~input_o\ & (\SWTO[2]~input_o\)))) # (!\SWTO[1]~input_o\ & (\SWTO[2]~input_o\ & (\SWTO[3]~input_o\ $ (\SWTO[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[2]~input_o\,
	datab => \SWTO[1]~input_o\,
	datac => \SWTO[3]~input_o\,
	datad => \SWTO[0]~input_o\,
	combout => \W1|Mux5~0_combout\);

-- Location: LCCOMB_X45_Y1_N28
\W1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux4~0_combout\ = (\SWTO[2]~input_o\ & (\SWTO[3]~input_o\ & ((\SWTO[1]~input_o\) # (!\SWTO[0]~input_o\)))) # (!\SWTO[2]~input_o\ & (\SWTO[1]~input_o\ & (!\SWTO[3]~input_o\ & !\SWTO[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[2]~input_o\,
	datab => \SWTO[1]~input_o\,
	datac => \SWTO[3]~input_o\,
	datad => \SWTO[0]~input_o\,
	combout => \W1|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y1_N22
\W1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux3~0_combout\ = (\SWTO[0]~input_o\ & (\SWTO[2]~input_o\ $ ((!\SWTO[1]~input_o\)))) # (!\SWTO[0]~input_o\ & ((\SWTO[2]~input_o\ & (!\SWTO[1]~input_o\ & !\SWTO[3]~input_o\)) # (!\SWTO[2]~input_o\ & (\SWTO[1]~input_o\ & \SWTO[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[2]~input_o\,
	datab => \SWTO[1]~input_o\,
	datac => \SWTO[3]~input_o\,
	datad => \SWTO[0]~input_o\,
	combout => \W1|Mux3~0_combout\);

-- Location: LCCOMB_X45_Y1_N0
\W1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux2~0_combout\ = (\SWTO[1]~input_o\ & (((!\SWTO[3]~input_o\ & \SWTO[0]~input_o\)))) # (!\SWTO[1]~input_o\ & ((\SWTO[2]~input_o\ & (!\SWTO[3]~input_o\)) # (!\SWTO[2]~input_o\ & ((\SWTO[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[2]~input_o\,
	datab => \SWTO[1]~input_o\,
	datac => \SWTO[3]~input_o\,
	datad => \SWTO[0]~input_o\,
	combout => \W1|Mux2~0_combout\);

-- Location: LCCOMB_X45_Y1_N2
\W1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux1~0_combout\ = (\SWTO[2]~input_o\ & (\SWTO[0]~input_o\ & (\SWTO[1]~input_o\ $ (\SWTO[3]~input_o\)))) # (!\SWTO[2]~input_o\ & (!\SWTO[3]~input_o\ & ((\SWTO[1]~input_o\) # (\SWTO[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[2]~input_o\,
	datab => \SWTO[1]~input_o\,
	datac => \SWTO[3]~input_o\,
	datad => \SWTO[0]~input_o\,
	combout => \W1|Mux1~0_combout\);

-- Location: LCCOMB_X45_Y1_N12
\W1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W1|Mux0~0_combout\ = (\SWTO[0]~input_o\ & ((\SWTO[3]~input_o\) # (\SWTO[2]~input_o\ $ (\SWTO[1]~input_o\)))) # (!\SWTO[0]~input_o\ & ((\SWTO[1]~input_o\) # (\SWTO[2]~input_o\ $ (\SWTO[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[2]~input_o\,
	datab => \SWTO[1]~input_o\,
	datac => \SWTO[3]~input_o\,
	datad => \SWTO[0]~input_o\,
	combout => \W1|Mux0~0_combout\);

-- Location: LCCOMB_X83_Y1_N12
\W2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux6~0_combout\ = (\SWTO[7]~input_o\ & (\SWTO[4]~input_o\ & (\SWTO[6]~input_o\ $ (\SWTO[5]~input_o\)))) # (!\SWTO[7]~input_o\ & ((\SWTO[6]~input_o\ & (!\SWTO[4]~input_o\)) # (!\SWTO[6]~input_o\ & (\SWTO[4]~input_o\ & !\SWTO[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[7]~input_o\,
	datab => \SWTO[6]~input_o\,
	datac => \SWTO[4]~input_o\,
	datad => \SWTO[5]~input_o\,
	combout => \W2|Mux6~0_combout\);

-- Location: LCCOMB_X83_Y1_N6
\W2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux5~0_combout\ = (\SWTO[7]~input_o\ & ((\SWTO[4]~input_o\ & ((\SWTO[5]~input_o\))) # (!\SWTO[4]~input_o\ & (\SWTO[6]~input_o\)))) # (!\SWTO[7]~input_o\ & (\SWTO[6]~input_o\ & (\SWTO[4]~input_o\ $ (\SWTO[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[7]~input_o\,
	datab => \SWTO[6]~input_o\,
	datac => \SWTO[4]~input_o\,
	datad => \SWTO[5]~input_o\,
	combout => \W2|Mux5~0_combout\);

-- Location: LCCOMB_X83_Y1_N16
\W2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux4~0_combout\ = (\SWTO[7]~input_o\ & (\SWTO[6]~input_o\ & ((\SWTO[5]~input_o\) # (!\SWTO[4]~input_o\)))) # (!\SWTO[7]~input_o\ & (!\SWTO[6]~input_o\ & (!\SWTO[4]~input_o\ & \SWTO[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[7]~input_o\,
	datab => \SWTO[6]~input_o\,
	datac => \SWTO[4]~input_o\,
	datad => \SWTO[5]~input_o\,
	combout => \W2|Mux4~0_combout\);

-- Location: LCCOMB_X83_Y1_N26
\W2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux3~0_combout\ = (\SWTO[4]~input_o\ & ((\SWTO[6]~input_o\ $ (!\SWTO[5]~input_o\)))) # (!\SWTO[4]~input_o\ & ((\SWTO[7]~input_o\ & (!\SWTO[6]~input_o\ & \SWTO[5]~input_o\)) # (!\SWTO[7]~input_o\ & (\SWTO[6]~input_o\ & !\SWTO[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[7]~input_o\,
	datab => \SWTO[6]~input_o\,
	datac => \SWTO[4]~input_o\,
	datad => \SWTO[5]~input_o\,
	combout => \W2|Mux3~0_combout\);

-- Location: LCCOMB_X83_Y1_N28
\W2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux2~0_combout\ = (\SWTO[5]~input_o\ & (!\SWTO[7]~input_o\ & ((\SWTO[4]~input_o\)))) # (!\SWTO[5]~input_o\ & ((\SWTO[6]~input_o\ & (!\SWTO[7]~input_o\)) # (!\SWTO[6]~input_o\ & ((\SWTO[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[7]~input_o\,
	datab => \SWTO[6]~input_o\,
	datac => \SWTO[4]~input_o\,
	datad => \SWTO[5]~input_o\,
	combout => \W2|Mux2~0_combout\);

-- Location: LCCOMB_X83_Y1_N22
\W2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux1~0_combout\ = (\SWTO[6]~input_o\ & (\SWTO[4]~input_o\ & (\SWTO[7]~input_o\ $ (\SWTO[5]~input_o\)))) # (!\SWTO[6]~input_o\ & (!\SWTO[7]~input_o\ & ((\SWTO[4]~input_o\) # (\SWTO[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[7]~input_o\,
	datab => \SWTO[6]~input_o\,
	datac => \SWTO[4]~input_o\,
	datad => \SWTO[5]~input_o\,
	combout => \W2|Mux1~0_combout\);

-- Location: LCCOMB_X83_Y1_N8
\W2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W2|Mux0~0_combout\ = (\SWTO[4]~input_o\ & ((\SWTO[7]~input_o\) # (\SWTO[6]~input_o\ $ (\SWTO[5]~input_o\)))) # (!\SWTO[4]~input_o\ & ((\SWTO[5]~input_o\) # (\SWTO[7]~input_o\ $ (\SWTO[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[7]~input_o\,
	datab => \SWTO[6]~input_o\,
	datac => \SWTO[4]~input_o\,
	datad => \SWTO[5]~input_o\,
	combout => \W2|Mux0~0_combout\);

-- Location: LCCOMB_X42_Y1_N0
\W3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W3|Mux6~0_combout\ = (\SWTO[8]~input_o\ & ((\SWTO[10]~input_o\ & (!\SWTO[9]~input_o\ & \SWTO[11]~input_o\)) # (!\SWTO[10]~input_o\ & (\SWTO[9]~input_o\ $ (!\SWTO[11]~input_o\))))) # (!\SWTO[8]~input_o\ & (\SWTO[10]~input_o\ & ((!\SWTO[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[8]~input_o\,
	datab => \SWTO[10]~input_o\,
	datac => \SWTO[9]~input_o\,
	datad => \SWTO[11]~input_o\,
	combout => \W3|Mux6~0_combout\);

-- Location: LCCOMB_X42_Y1_N18
\W3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W3|Mux5~0_combout\ = (\SWTO[9]~input_o\ & ((\SWTO[8]~input_o\ & ((\SWTO[11]~input_o\))) # (!\SWTO[8]~input_o\ & (\SWTO[10]~input_o\)))) # (!\SWTO[9]~input_o\ & (\SWTO[10]~input_o\ & (\SWTO[8]~input_o\ $ (\SWTO[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[8]~input_o\,
	datab => \SWTO[10]~input_o\,
	datac => \SWTO[9]~input_o\,
	datad => \SWTO[11]~input_o\,
	combout => \W3|Mux5~0_combout\);

-- Location: LCCOMB_X42_Y1_N20
\W3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W3|Mux4~0_combout\ = (\SWTO[10]~input_o\ & (\SWTO[11]~input_o\ & ((\SWTO[9]~input_o\) # (!\SWTO[8]~input_o\)))) # (!\SWTO[10]~input_o\ & (!\SWTO[8]~input_o\ & (\SWTO[9]~input_o\ & !\SWTO[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[8]~input_o\,
	datab => \SWTO[10]~input_o\,
	datac => \SWTO[9]~input_o\,
	datad => \SWTO[11]~input_o\,
	combout => \W3|Mux4~0_combout\);

-- Location: LCCOMB_X42_Y1_N22
\W3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W3|Mux3~0_combout\ = (\SWTO[8]~input_o\ & (\SWTO[10]~input_o\ $ ((!\SWTO[9]~input_o\)))) # (!\SWTO[8]~input_o\ & ((\SWTO[10]~input_o\ & (!\SWTO[9]~input_o\ & !\SWTO[11]~input_o\)) # (!\SWTO[10]~input_o\ & (\SWTO[9]~input_o\ & \SWTO[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[8]~input_o\,
	datab => \SWTO[10]~input_o\,
	datac => \SWTO[9]~input_o\,
	datad => \SWTO[11]~input_o\,
	combout => \W3|Mux3~0_combout\);

-- Location: LCCOMB_X42_Y1_N24
\W3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W3|Mux2~0_combout\ = (\SWTO[9]~input_o\ & (\SWTO[8]~input_o\ & ((!\SWTO[11]~input_o\)))) # (!\SWTO[9]~input_o\ & ((\SWTO[10]~input_o\ & ((!\SWTO[11]~input_o\))) # (!\SWTO[10]~input_o\ & (\SWTO[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[8]~input_o\,
	datab => \SWTO[10]~input_o\,
	datac => \SWTO[9]~input_o\,
	datad => \SWTO[11]~input_o\,
	combout => \W3|Mux2~0_combout\);

-- Location: LCCOMB_X42_Y1_N10
\W3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W3|Mux1~0_combout\ = (\SWTO[8]~input_o\ & (\SWTO[11]~input_o\ $ (((\SWTO[9]~input_o\) # (!\SWTO[10]~input_o\))))) # (!\SWTO[8]~input_o\ & (!\SWTO[10]~input_o\ & (\SWTO[9]~input_o\ & !\SWTO[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[8]~input_o\,
	datab => \SWTO[10]~input_o\,
	datac => \SWTO[9]~input_o\,
	datad => \SWTO[11]~input_o\,
	combout => \W3|Mux1~0_combout\);

-- Location: LCCOMB_X42_Y1_N12
\W3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W3|Mux0~0_combout\ = (\SWTO[8]~input_o\ & ((\SWTO[11]~input_o\) # (\SWTO[10]~input_o\ $ (\SWTO[9]~input_o\)))) # (!\SWTO[8]~input_o\ & ((\SWTO[9]~input_o\) # (\SWTO[10]~input_o\ $ (\SWTO[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[8]~input_o\,
	datab => \SWTO[10]~input_o\,
	datac => \SWTO[9]~input_o\,
	datad => \SWTO[11]~input_o\,
	combout => \W3|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y29_N0
\W4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W4|Mux6~0_combout\ = (\SWTO[12]~input_o\ & ((\SWTO[13]~input_o\ & (\SWTO[15]~input_o\ & !\SWTO[14]~input_o\)) # (!\SWTO[13]~input_o\ & (\SWTO[15]~input_o\ $ (!\SWTO[14]~input_o\))))) # (!\SWTO[12]~input_o\ & (((!\SWTO[15]~input_o\ & 
-- \SWTO[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[12]~input_o\,
	datab => \SWTO[13]~input_o\,
	datac => \SWTO[15]~input_o\,
	datad => \SWTO[14]~input_o\,
	combout => \W4|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y29_N2
\W4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W4|Mux5~0_combout\ = (\SWTO[13]~input_o\ & ((\SWTO[12]~input_o\ & (\SWTO[15]~input_o\)) # (!\SWTO[12]~input_o\ & ((\SWTO[14]~input_o\))))) # (!\SWTO[13]~input_o\ & (\SWTO[14]~input_o\ & (\SWTO[12]~input_o\ $ (\SWTO[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[12]~input_o\,
	datab => \SWTO[13]~input_o\,
	datac => \SWTO[15]~input_o\,
	datad => \SWTO[14]~input_o\,
	combout => \W4|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y29_N12
\W4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W4|Mux4~0_combout\ = (\SWTO[15]~input_o\ & (\SWTO[14]~input_o\ & ((\SWTO[13]~input_o\) # (!\SWTO[12]~input_o\)))) # (!\SWTO[15]~input_o\ & (!\SWTO[12]~input_o\ & (\SWTO[13]~input_o\ & !\SWTO[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[12]~input_o\,
	datab => \SWTO[13]~input_o\,
	datac => \SWTO[15]~input_o\,
	datad => \SWTO[14]~input_o\,
	combout => \W4|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y29_N22
\W4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W4|Mux3~0_combout\ = (\SWTO[12]~input_o\ & (\SWTO[13]~input_o\ $ (((!\SWTO[14]~input_o\))))) # (!\SWTO[12]~input_o\ & ((\SWTO[13]~input_o\ & (\SWTO[15]~input_o\ & !\SWTO[14]~input_o\)) # (!\SWTO[13]~input_o\ & (!\SWTO[15]~input_o\ & 
-- \SWTO[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[12]~input_o\,
	datab => \SWTO[13]~input_o\,
	datac => \SWTO[15]~input_o\,
	datad => \SWTO[14]~input_o\,
	combout => \W4|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y29_N24
\W4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W4|Mux2~0_combout\ = (\SWTO[13]~input_o\ & (\SWTO[12]~input_o\ & (!\SWTO[15]~input_o\))) # (!\SWTO[13]~input_o\ & ((\SWTO[14]~input_o\ & ((!\SWTO[15]~input_o\))) # (!\SWTO[14]~input_o\ & (\SWTO[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[12]~input_o\,
	datab => \SWTO[13]~input_o\,
	datac => \SWTO[15]~input_o\,
	datad => \SWTO[14]~input_o\,
	combout => \W4|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y29_N10
\W4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W4|Mux1~0_combout\ = (\SWTO[12]~input_o\ & (\SWTO[15]~input_o\ $ (((\SWTO[13]~input_o\) # (!\SWTO[14]~input_o\))))) # (!\SWTO[12]~input_o\ & (\SWTO[13]~input_o\ & (!\SWTO[15]~input_o\ & !\SWTO[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[12]~input_o\,
	datab => \SWTO[13]~input_o\,
	datac => \SWTO[15]~input_o\,
	datad => \SWTO[14]~input_o\,
	combout => \W4|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y29_N4
\W4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W4|Mux0~0_combout\ = (\SWTO[12]~input_o\ & ((\SWTO[15]~input_o\) # (\SWTO[13]~input_o\ $ (\SWTO[14]~input_o\)))) # (!\SWTO[12]~input_o\ & ((\SWTO[13]~input_o\) # (\SWTO[15]~input_o\ $ (\SWTO[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWTO[12]~input_o\,
	datab => \SWTO[13]~input_o\,
	datac => \SWTO[15]~input_o\,
	datad => \SWTO[14]~input_o\,
	combout => \W4|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y1_N24
\W5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W5|Mux6~0_combout\ = (\Mux5~9_combout\ & (\Mux8~0_combout\ & (\Mux7~1_combout\ $ (\Mux6~1_combout\)))) # (!\Mux5~9_combout\ & ((\Mux8~0_combout\ & (!\Mux7~1_combout\ & !\Mux6~1_combout\)) # (!\Mux8~0_combout\ & ((\Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux5~9_combout\,
	datac => \Mux8~0_combout\,
	datad => \Mux6~1_combout\,
	combout => \W5|Mux6~0_combout\);

-- Location: LCCOMB_X62_Y1_N10
\W5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W5|Mux5~0_combout\ = (\Mux7~1_combout\ & ((\Mux8~0_combout\ & (\Mux5~9_combout\)) # (!\Mux8~0_combout\ & ((\Mux6~1_combout\))))) # (!\Mux7~1_combout\ & (\Mux6~1_combout\ & (\Mux5~9_combout\ $ (\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux5~9_combout\,
	datac => \Mux8~0_combout\,
	datad => \Mux6~1_combout\,
	combout => \W5|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y1_N24
\W5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W5|Mux4~0_combout\ = (\Mux6~1_combout\ & (\Mux5~9_combout\ & ((\Mux7~1_combout\) # (!\Mux8~0_combout\)))) # (!\Mux6~1_combout\ & (!\Mux8~0_combout\ & (\Mux7~1_combout\ & !\Mux5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux8~0_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux5~9_combout\,
	combout => \W5|Mux4~0_combout\);

-- Location: LCCOMB_X62_Y1_N28
\W5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W5|Mux3~0_combout\ = (\Mux8~0_combout\ & (\Mux7~1_combout\ $ (((!\Mux6~1_combout\))))) # (!\Mux8~0_combout\ & ((\Mux7~1_combout\ & (\Mux5~9_combout\ & !\Mux6~1_combout\)) # (!\Mux7~1_combout\ & (!\Mux5~9_combout\ & \Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux5~9_combout\,
	datac => \Mux8~0_combout\,
	datad => \Mux6~1_combout\,
	combout => \W5|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y1_N30
\W5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W5|Mux2~0_combout\ = (\Mux7~1_combout\ & (!\Mux5~9_combout\ & (\Mux8~0_combout\))) # (!\Mux7~1_combout\ & ((\Mux6~1_combout\ & (!\Mux5~9_combout\)) # (!\Mux6~1_combout\ & ((\Mux8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux5~9_combout\,
	datac => \Mux8~0_combout\,
	datad => \Mux6~1_combout\,
	combout => \W5|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y1_N18
\W5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W5|Mux1~0_combout\ = (\Mux6~1_combout\ & (\Mux8~0_combout\ & (\Mux7~1_combout\ $ (\Mux5~9_combout\)))) # (!\Mux6~1_combout\ & (!\Mux5~9_combout\ & ((\Mux8~0_combout\) # (\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux8~0_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux5~9_combout\,
	combout => \W5|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y1_N16
\W5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W5|Mux0~0_combout\ = (\Mux8~0_combout\ & ((\Mux5~9_combout\) # (\Mux7~1_combout\ $ (\Mux6~1_combout\)))) # (!\Mux8~0_combout\ & ((\Mux7~1_combout\) # (\Mux5~9_combout\ $ (\Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux5~9_combout\,
	datac => \Mux8~0_combout\,
	datad => \Mux6~1_combout\,
	combout => \W5|Mux0~0_combout\);

-- Location: LCCOMB_X74_Y1_N16
\W6|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W6|Mux6~0_combout\ = (\Mux2~1_combout\ & ((\Mux1~9_combout\ & (\Mux4~1_combout\ & !\Mux3~9_combout\)) # (!\Mux1~9_combout\ & (!\Mux4~1_combout\)))) # (!\Mux2~1_combout\ & (\Mux4~1_combout\ & (\Mux1~9_combout\ $ (!\Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~9_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux3~9_combout\,
	combout => \W6|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y1_N26
\W6|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W6|Mux5~0_combout\ = (\Mux1~9_combout\ & ((\Mux4~1_combout\ & ((\Mux3~9_combout\))) # (!\Mux4~1_combout\ & (\Mux2~1_combout\)))) # (!\Mux1~9_combout\ & (\Mux2~1_combout\ & (\Mux4~1_combout\ $ (\Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~9_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux3~9_combout\,
	combout => \W6|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y1_N28
\W6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W6|Mux4~0_combout\ = (\Mux2~1_combout\ & (\Mux1~9_combout\ & ((\Mux3~9_combout\) # (!\Mux4~1_combout\)))) # (!\Mux2~1_combout\ & (!\Mux1~9_combout\ & (!\Mux4~1_combout\ & \Mux3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~9_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux3~9_combout\,
	combout => \W6|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y1_N22
\W6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W6|Mux3~0_combout\ = (\Mux4~1_combout\ & (\Mux2~1_combout\ $ (((!\Mux3~9_combout\))))) # (!\Mux4~1_combout\ & ((\Mux2~1_combout\ & (!\Mux1~9_combout\ & !\Mux3~9_combout\)) # (!\Mux2~1_combout\ & (\Mux1~9_combout\ & \Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~9_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux3~9_combout\,
	combout => \W6|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y1_N24
\W6|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W6|Mux2~0_combout\ = (\Mux3~9_combout\ & (((!\Mux1~9_combout\ & \Mux4~1_combout\)))) # (!\Mux3~9_combout\ & ((\Mux2~1_combout\ & (!\Mux1~9_combout\)) # (!\Mux2~1_combout\ & ((\Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~9_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux3~9_combout\,
	combout => \W6|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y1_N18
\W6|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W6|Mux1~0_combout\ = (\Mux2~1_combout\ & (\Mux4~1_combout\ & (\Mux1~9_combout\ $ (\Mux3~9_combout\)))) # (!\Mux2~1_combout\ & (!\Mux1~9_combout\ & ((\Mux4~1_combout\) # (\Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~9_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux3~9_combout\,
	combout => \W6|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y1_N4
\W6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W6|Mux0~0_combout\ = (\Mux4~1_combout\ & ((\Mux1~9_combout\) # (\Mux2~1_combout\ $ (\Mux3~9_combout\)))) # (!\Mux4~1_combout\ & ((\Mux3~9_combout\) # (\Mux2~1_combout\ $ (\Mux1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~9_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux3~9_combout\,
	combout => \W6|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y1_N4
\W7|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W7|Mux1~0_combout\ = (!\SWTO[17]~input_o\ & \SWTO[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SWTO[17]~input_o\,
	datad => \SWTO[16]~input_o\,
	combout => \W7|Mux1~0_combout\);

-- Location: LCCOMB_X53_Y1_N30
\W7|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \W7|Mux1~1_combout\ = (\SWTO[17]~input_o\ & !\SWTO[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SWTO[17]~input_o\,
	datad => \SWTO[16]~input_o\,
	combout => \W7|Mux1~1_combout\);

-- Location: LCCOMB_X53_Y1_N24
\W7|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \W7|Mux1~2_combout\ = (\SWTO[17]~input_o\) # (\SWTO[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SWTO[17]~input_o\,
	datad => \SWTO[16]~input_o\,
	combout => \W7|Mux1~2_combout\);

ww_LEDRTO(0) <= \LEDRTO[0]~output_o\;

ww_LEDRTO(1) <= \LEDRTO[1]~output_o\;

ww_LEDRTO(2) <= \LEDRTO[2]~output_o\;

ww_LEDRTO(3) <= \LEDRTO[3]~output_o\;

ww_LEDRTO(4) <= \LEDRTO[4]~output_o\;

ww_LEDRTO(5) <= \LEDRTO[5]~output_o\;

ww_LEDRTO(6) <= \LEDRTO[6]~output_o\;

ww_LEDRTO(7) <= \LEDRTO[7]~output_o\;

ww_LEDRTO(8) <= \LEDRTO[8]~output_o\;

ww_LEDRTO_temp(0) <= \LEDRTO_temp[0]~output_o\;

ww_LEDRTO_temp(1) <= \LEDRTO_temp[1]~output_o\;

ww_LEDRTO_temp(2) <= \LEDRTO_temp[2]~output_o\;

ww_LEDRTO_temp(3) <= \LEDRTO_temp[3]~output_o\;

ww_LEDRTO_temp(4) <= \LEDRTO_temp[4]~output_o\;

ww_LEDRTO_temp(5) <= \LEDRTO_temp[5]~output_o\;

ww_LEDRTO_temp(6) <= \LEDRTO_temp[6]~output_o\;

ww_LEDRTO_temp(7) <= \LEDRTO_temp[7]~output_o\;

ww_HEXTO0(0) <= \HEXTO0[0]~output_o\;

ww_HEXTO0(1) <= \HEXTO0[1]~output_o\;

ww_HEXTO0(2) <= \HEXTO0[2]~output_o\;

ww_HEXTO0(3) <= \HEXTO0[3]~output_o\;

ww_HEXTO0(4) <= \HEXTO0[4]~output_o\;

ww_HEXTO0(5) <= \HEXTO0[5]~output_o\;

ww_HEXTO0(6) <= \HEXTO0[6]~output_o\;

ww_HEXTO1(0) <= \HEXTO1[0]~output_o\;

ww_HEXTO1(1) <= \HEXTO1[1]~output_o\;

ww_HEXTO1(2) <= \HEXTO1[2]~output_o\;

ww_HEXTO1(3) <= \HEXTO1[3]~output_o\;

ww_HEXTO1(4) <= \HEXTO1[4]~output_o\;

ww_HEXTO1(5) <= \HEXTO1[5]~output_o\;

ww_HEXTO1(6) <= \HEXTO1[6]~output_o\;

ww_HEXTO2(0) <= \HEXTO2[0]~output_o\;

ww_HEXTO2(1) <= \HEXTO2[1]~output_o\;

ww_HEXTO2(2) <= \HEXTO2[2]~output_o\;

ww_HEXTO2(3) <= \HEXTO2[3]~output_o\;

ww_HEXTO2(4) <= \HEXTO2[4]~output_o\;

ww_HEXTO2(5) <= \HEXTO2[5]~output_o\;

ww_HEXTO2(6) <= \HEXTO2[6]~output_o\;

ww_HEXTO3(0) <= \HEXTO3[0]~output_o\;

ww_HEXTO3(1) <= \HEXTO3[1]~output_o\;

ww_HEXTO3(2) <= \HEXTO3[2]~output_o\;

ww_HEXTO3(3) <= \HEXTO3[3]~output_o\;

ww_HEXTO3(4) <= \HEXTO3[4]~output_o\;

ww_HEXTO3(5) <= \HEXTO3[5]~output_o\;

ww_HEXTO3(6) <= \HEXTO3[6]~output_o\;

ww_HEXTO4(0) <= \HEXTO4[0]~output_o\;

ww_HEXTO4(1) <= \HEXTO4[1]~output_o\;

ww_HEXTO4(2) <= \HEXTO4[2]~output_o\;

ww_HEXTO4(3) <= \HEXTO4[3]~output_o\;

ww_HEXTO4(4) <= \HEXTO4[4]~output_o\;

ww_HEXTO4(5) <= \HEXTO4[5]~output_o\;

ww_HEXTO4(6) <= \HEXTO4[6]~output_o\;

ww_HEXTO5(0) <= \HEXTO5[0]~output_o\;

ww_HEXTO5(1) <= \HEXTO5[1]~output_o\;

ww_HEXTO5(2) <= \HEXTO5[2]~output_o\;

ww_HEXTO5(3) <= \HEXTO5[3]~output_o\;

ww_HEXTO5(4) <= \HEXTO5[4]~output_o\;

ww_HEXTO5(5) <= \HEXTO5[5]~output_o\;

ww_HEXTO5(6) <= \HEXTO5[6]~output_o\;

ww_HEXTO6(0) <= \HEXTO6[0]~output_o\;

ww_HEXTO6(1) <= \HEXTO6[1]~output_o\;

ww_HEXTO6(2) <= \HEXTO6[2]~output_o\;

ww_HEXTO6(3) <= \HEXTO6[3]~output_o\;

ww_HEXTO6(4) <= \HEXTO6[4]~output_o\;

ww_HEXTO6(5) <= \HEXTO6[5]~output_o\;

ww_HEXTO6(6) <= \HEXTO6[6]~output_o\;
END structure;


