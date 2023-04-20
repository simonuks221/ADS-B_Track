-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/20/2023 11:30:22"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MRAM_TEST IS
    PORT (
	CLK : IN std_logic;
	MRAM_EN : OUT std_logic;
	MRAM_OUTPUT_EN : OUT std_logic;
	MRAM_WRITE_EN : OUT std_logic;
	MRAM_UPPER_EN : OUT std_logic;
	MRAM_LOWER_EN : OUT std_logic;
	MRAM_A : OUT std_logic_vector(17 DOWNTO 0);
	MRAM_D : INOUT std_logic_vector(15 DOWNTO 0)
	);
END MRAM_TEST;

-- Design Ports Information
-- MRAM_D[0]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[1]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[2]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[3]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[4]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[5]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[6]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[7]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[8]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[9]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[10]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[11]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[12]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[13]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[14]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[15]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_EN	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_OUTPUT_EN	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_WRITE_EN	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_UPPER_EN	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_LOWER_EN	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[0]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[1]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[2]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[3]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[4]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[5]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[7]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[8]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[9]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[10]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[11]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[12]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[13]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[14]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[15]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[16]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_A[17]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MRAM_TEST IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_MRAM_EN : std_logic;
SIGNAL ww_MRAM_OUTPUT_EN : std_logic;
SIGNAL ww_MRAM_WRITE_EN : std_logic;
SIGNAL ww_MRAM_UPPER_EN : std_logic;
SIGNAL ww_MRAM_LOWER_EN : std_logic;
SIGNAL ww_MRAM_A : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter[4]~25_combout\ : std_logic;
SIGNAL \counter[14]~45_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal7~0_OTERM9\ : std_logic;
SIGNAL \Equal0~3_OTERM33\ : std_logic;
SIGNAL \Equal7~0_NEW_REG8_OTERM59\ : std_logic;
SIGNAL \Equal0~3_NEW_REG32_OTERM61\ : std_logic;
SIGNAL \got_data[3]~feeder_combout\ : std_logic;
SIGNAL \got_data[4]~feeder_combout\ : std_logic;
SIGNAL \got_data[5]~feeder_combout\ : std_logic;
SIGNAL \got_data[6]~feeder_combout\ : std_logic;
SIGNAL \got_data[7]~feeder_combout\ : std_logic;
SIGNAL \got_data[8]~feeder_combout\ : std_logic;
SIGNAL \got_data[9]~feeder_combout\ : std_logic;
SIGNAL \got_data[13]~feeder_combout\ : std_logic;
SIGNAL \got_data[15]~feeder_combout\ : std_logic;
SIGNAL \MRAM_D[0]~0\ : std_logic;
SIGNAL \MRAM_D[1]~1\ : std_logic;
SIGNAL \MRAM_D[2]~2\ : std_logic;
SIGNAL \MRAM_D[3]~3\ : std_logic;
SIGNAL \MRAM_D[4]~4\ : std_logic;
SIGNAL \MRAM_D[5]~5\ : std_logic;
SIGNAL \MRAM_D[6]~6\ : std_logic;
SIGNAL \MRAM_D[7]~7\ : std_logic;
SIGNAL \MRAM_D[8]~8\ : std_logic;
SIGNAL \MRAM_D[9]~9\ : std_logic;
SIGNAL \MRAM_D[10]~10\ : std_logic;
SIGNAL \MRAM_D[11]~11\ : std_logic;
SIGNAL \MRAM_D[12]~12\ : std_logic;
SIGNAL \MRAM_D[13]~13\ : std_logic;
SIGNAL \MRAM_D[14]~14\ : std_logic;
SIGNAL \MRAM_D[15]~15\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \counter[4]_OTERM43\ : std_logic;
SIGNAL \counter[1]~20\ : std_logic;
SIGNAL \counter[2]~22\ : std_logic;
SIGNAL \counter[3]~23_combout\ : std_logic;
SIGNAL \counter[3]~24\ : std_logic;
SIGNAL \counter[4]~26\ : std_logic;
SIGNAL \counter[5]~27_combout\ : std_logic;
SIGNAL \counter[5]_OTERM41\ : std_logic;
SIGNAL \counter[5]~28\ : std_logic;
SIGNAL \counter[6]~29_combout\ : std_logic;
SIGNAL \counter[6]~30\ : std_logic;
SIGNAL \counter[7]~31_combout\ : std_logic;
SIGNAL \counter[7]~32\ : std_logic;
SIGNAL \counter[8]~33_combout\ : std_logic;
SIGNAL \counter[2]~21_combout\ : std_logic;
SIGNAL \Equal0~2_RTM07_combout\ : std_logic;
SIGNAL \Equal0~2_OTERM5\ : std_logic;
SIGNAL \Equal11~3_combout\ : std_logic;
SIGNAL \counter[8]~34\ : std_logic;
SIGNAL \counter[9]~36\ : std_logic;
SIGNAL \counter[10]~37_combout\ : std_logic;
SIGNAL \counter[10]_OTERM37\ : std_logic;
SIGNAL \counter[10]~feeder_combout\ : std_logic;
SIGNAL \counter[10]~38\ : std_logic;
SIGNAL \counter[11]~39_combout\ : std_logic;
SIGNAL \counter[11]~40\ : std_logic;
SIGNAL \counter[12]~41_combout\ : std_logic;
SIGNAL \counter[12]_OTERM55\ : std_logic;
SIGNAL \counter[12]~42\ : std_logic;
SIGNAL \counter[13]~44\ : std_logic;
SIGNAL \counter[14]~46\ : std_logic;
SIGNAL \counter[15]~47_combout\ : std_logic;
SIGNAL \counter[15]~48\ : std_logic;
SIGNAL \counter[16]~49_combout\ : std_logic;
SIGNAL \counter[16]~50\ : std_logic;
SIGNAL \counter[17]~51_combout\ : std_logic;
SIGNAL \counter[9]~35_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \counter[17]~52\ : std_logic;
SIGNAL \counter[18]~53_combout\ : std_logic;
SIGNAL \counter[13]~43_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Equal11~2_combout\ : std_logic;
SIGNAL \Equal2~5_RTM053_combout\ : std_logic;
SIGNAL \Equal2~5_OTERM51\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \counter[0]~57_combout\ : std_logic;
SIGNAL \counter[1]_OTERM39\ : std_logic;
SIGNAL \Equal0~1_RTM015_combout\ : std_logic;
SIGNAL \counter[18]~54\ : std_logic;
SIGNAL \counter[19]~55_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~1_NEW_REG24_OTERM57\ : std_logic;
SIGNAL \Equal2~1_OTERM25\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~1_OTERM49\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \counter[1]~19_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~1_OTERM29\ : std_logic;
SIGNAL \Equal0~0_RTM019_combout\ : std_logic;
SIGNAL \Equal0~4_RTM023_combout\ : std_logic;
SIGNAL \Equal0~4_NEW_REG20_OTERM63\ : std_logic;
SIGNAL \Equal0~4_OTERM21\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal10~0_OTERM47\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~0_OTERM45\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal2~2_RTM03_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~3_OTERM31\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \WideOr7~5_combout\ : std_logic;
SIGNAL \WideOr9~combout\ : std_logic;
SIGNAL \MRAM_D[0]~en_regout\ : std_logic;
SIGNAL \MRAM_D[1]~en_regout\ : std_logic;
SIGNAL \MRAM_D[2]~en_regout\ : std_logic;
SIGNAL \MRAM_D[3]~en_regout\ : std_logic;
SIGNAL \MRAM_D[4]~en_regout\ : std_logic;
SIGNAL \MRAM_D[5]~en_regout\ : std_logic;
SIGNAL \MRAM_D[6]~en_regout\ : std_logic;
SIGNAL \MRAM_D[7]~en_regout\ : std_logic;
SIGNAL \MRAM_D[8]~en_regout\ : std_logic;
SIGNAL \MRAM_D[9]~en_regout\ : std_logic;
SIGNAL \MRAM_D[10]~en_regout\ : std_logic;
SIGNAL \MRAM_D[11]~en_regout\ : std_logic;
SIGNAL \MRAM_D[12]~en_regout\ : std_logic;
SIGNAL \MRAM_D[13]~en_regout\ : std_logic;
SIGNAL \MRAM_D[14]~en_regout\ : std_logic;
SIGNAL \MRAM_D[15]~en_regout\ : std_logic;
SIGNAL \Equal6~0_OTERM27\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \MRAM_EN~reg0_regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \MRAM_OUTPUT_EN~reg0_regout\ : std_logic;
SIGNAL \WideNor0~4_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \MRAM_WRITE_EN~reg0_regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \MRAM_LOWER_EN~reg0_regout\ : std_logic;
SIGNAL \WideOr7~4_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \MRAM_A[0]~reg0_regout\ : std_logic;
SIGNAL \WideOr7~combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \MRAM_A[1]~reg0_regout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \MRAM_A[2]~reg0_regout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \MRAM_A[3]~reg0_regout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \MRAM_A[4]~reg0_regout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \MRAM_A[5]~reg0_regout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \MRAM_A[6]~reg0_regout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \MRAM_A[7]~reg0_regout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \MRAM_A[8]~reg0_regout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \MRAM_A[9]~reg0_regout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \MRAM_A[10]~reg0_regout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \MRAM_A[11]~reg0_regout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \MRAM_A[12]~reg0_regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \MRAM_A[13]~reg0_regout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \MRAM_A[14]~reg0_regout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \MRAM_A[15]~reg0_regout\ : std_logic;
SIGNAL got_data : std_logic_vector(15 DOWNTO 0);
SIGNAL counter : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_MRAM_D[14]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[12]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[10]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[8]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[7]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[5]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[3]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[2]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[1]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[0]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_LOWER_EN~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_WRITE_EN~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_OUTPUT_EN~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_EN~reg0_regout\ : std_logic;

BEGIN

ww_CLK <= CLK;
MRAM_EN <= ww_MRAM_EN;
MRAM_OUTPUT_EN <= ww_MRAM_OUTPUT_EN;
MRAM_WRITE_EN <= ww_MRAM_WRITE_EN;
MRAM_UPPER_EN <= ww_MRAM_UPPER_EN;
MRAM_LOWER_EN <= ww_MRAM_LOWER_EN;
MRAM_A <= ww_MRAM_A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);
\ALT_INV_MRAM_D[14]~en_regout\ <= NOT \MRAM_D[14]~en_regout\;
\ALT_INV_MRAM_D[12]~en_regout\ <= NOT \MRAM_D[12]~en_regout\;
\ALT_INV_MRAM_D[10]~en_regout\ <= NOT \MRAM_D[10]~en_regout\;
\ALT_INV_MRAM_D[8]~en_regout\ <= NOT \MRAM_D[8]~en_regout\;
\ALT_INV_MRAM_D[7]~en_regout\ <= NOT \MRAM_D[7]~en_regout\;
\ALT_INV_MRAM_D[5]~en_regout\ <= NOT \MRAM_D[5]~en_regout\;
\ALT_INV_MRAM_D[3]~en_regout\ <= NOT \MRAM_D[3]~en_regout\;
\ALT_INV_MRAM_D[2]~en_regout\ <= NOT \MRAM_D[2]~en_regout\;
\ALT_INV_MRAM_D[1]~en_regout\ <= NOT \MRAM_D[1]~en_regout\;
\ALT_INV_MRAM_D[0]~en_regout\ <= NOT \MRAM_D[0]~en_regout\;
\ALT_INV_MRAM_LOWER_EN~reg0_regout\ <= NOT \MRAM_LOWER_EN~reg0_regout\;
\ALT_INV_MRAM_WRITE_EN~reg0_regout\ <= NOT \MRAM_WRITE_EN~reg0_regout\;
\ALT_INV_MRAM_OUTPUT_EN~reg0_regout\ <= NOT \MRAM_OUTPUT_EN~reg0_regout\;
\ALT_INV_MRAM_EN~reg0_regout\ <= NOT \MRAM_EN~reg0_regout\;

-- Location: LCFF_X21_Y7_N9
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[14]~45_combout\,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCFF_X21_Y7_N25
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[19]~55_combout\,
	sload => VCC,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCFF_X21_Y8_N17
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[2]~21_combout\,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X21_Y8_N20
\counter[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~25_combout\ = (counter(4) & (!\counter[3]~24\)) # (!counter(4) & ((\counter[3]~24\) # (GND)))
-- \counter[4]~26\ = CARRY((!\counter[3]~24\) # (!counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~24\,
	combout => \counter[4]~25_combout\,
	cout => \counter[4]~26\);

-- Location: LCCOMB_X21_Y7_N8
\counter[14]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[14]~45_combout\ = (counter(14) & (!\counter[13]~44\)) # (!counter(14) & ((\counter[13]~44\) # (GND)))
-- \counter[14]~46\ = CARRY((!\counter[13]~44\) # (!counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \counter[13]~44\,
	combout => \counter[14]~45_combout\,
	cout => \counter[14]~46\);

-- Location: LCCOMB_X21_Y10_N20
\WideNor0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = (!\Equal4~0_combout\ & (!\Equal0~6_combout\ & !\Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal8~0_combout\,
	combout => \WideNor0~3_combout\);

-- Location: LCFF_X21_Y10_N27
\got_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[0]~0\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(0));

-- Location: LCCOMB_X20_Y10_N0
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Equal2~3_OTERM31\ & (((got_data(0) & \Equal10~1_combout\)) # (!\Equal2~5_OTERM51\))) # (!\Equal2~3_OTERM31\ & (((got_data(0) & \Equal10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_OTERM31\,
	datab => \Equal2~5_OTERM51\,
	datac => got_data(0),
	datad => \Equal10~1_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCFF_X21_Y10_N15
\got_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[1]~1\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(1));

-- Location: LCFF_X22_Y10_N7
\got_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[2]~2\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(2));

-- Location: LCFF_X18_Y10_N19
\got_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[3]~feeder_combout\,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(3));

-- Location: LCFF_X18_Y10_N5
\got_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[4]~feeder_combout\,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(4));

-- Location: LCFF_X17_Y10_N11
\got_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[5]~feeder_combout\,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(5));

-- Location: LCFF_X18_Y11_N17
\got_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[6]~feeder_combout\,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(6));

-- Location: LCFF_X18_Y11_N5
\got_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[7]~feeder_combout\,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(7));

-- Location: LCFF_X17_Y10_N7
\got_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[8]~feeder_combout\,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(8));

-- Location: LCFF_X17_Y10_N21
\got_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[9]~feeder_combout\,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(9));

-- Location: LCFF_X21_Y10_N13
\got_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[10]~10\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(10));

-- Location: LCFF_X22_Y10_N13
\got_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[11]~11\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(11));

-- Location: LCFF_X21_Y10_N7
\got_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[12]~12\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(12));

-- Location: LCFF_X22_Y10_N11
\got_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[13]~feeder_combout\,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(13));

-- Location: LCFF_X17_Y10_N13
\got_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[15]~feeder_combout\,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(15));

-- Location: LCCOMB_X21_Y10_N6
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (counter(0) & \Equal2~3_OTERM31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => \Equal2~3_OTERM31\,
	combout => \Equal3~0_combout\);

-- Location: LCFF_X20_Y10_N11
\Equal7~0_NEW_REG8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal7~0_NEW_REG8_OTERM59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal7~0_OTERM9\);

-- Location: LCFF_X20_Y7_N7
\Equal0~3_NEW_REG32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal0~3_NEW_REG32_OTERM61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal0~3_OTERM33\);

-- Location: LCCOMB_X20_Y10_N10
\Equal7~0_NEW_REG8_NEW58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_NEW_REG8_OTERM59\ = (\Equal11~3_combout\ & ((\Equal7~0_combout\))) # (!\Equal11~3_combout\ & (\Equal7~0_OTERM9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datac => \Equal7~0_OTERM9\,
	datad => \Equal7~0_combout\,
	combout => \Equal7~0_NEW_REG8_OTERM59\);

-- Location: LCCOMB_X20_Y7_N6
\Equal0~3_NEW_REG32_NEW60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_NEW_REG32_OTERM61\ = (\Equal11~3_combout\ & ((\counter[8]~33_combout\) # ((\Equal0~2_RTM07_combout\)))) # (!\Equal11~3_combout\ & (((\Equal0~3_OTERM33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => \counter[8]~33_combout\,
	datac => \Equal0~3_OTERM33\,
	datad => \Equal0~2_RTM07_combout\,
	combout => \Equal0~3_NEW_REG32_OTERM61\);

-- Location: LCCOMB_X18_Y10_N18
\got_data[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[3]~feeder_combout\ = \MRAM_D[3]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[3]~3\,
	combout => \got_data[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y10_N4
\got_data[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[4]~feeder_combout\ = \MRAM_D[4]~4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[4]~4\,
	combout => \got_data[4]~feeder_combout\);

-- Location: LCCOMB_X17_Y10_N10
\got_data[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[5]~feeder_combout\ = \MRAM_D[5]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[5]~5\,
	combout => \got_data[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N16
\got_data[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[6]~feeder_combout\ = \MRAM_D[6]~6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[6]~6\,
	combout => \got_data[6]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N4
\got_data[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[7]~feeder_combout\ = \MRAM_D[7]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[7]~7\,
	combout => \got_data[7]~feeder_combout\);

-- Location: LCCOMB_X17_Y10_N6
\got_data[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[8]~feeder_combout\ = \MRAM_D[8]~8\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[8]~8\,
	combout => \got_data[8]~feeder_combout\);

-- Location: LCCOMB_X17_Y10_N20
\got_data[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[9]~feeder_combout\ = \MRAM_D[9]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[9]~9\,
	combout => \got_data[9]~feeder_combout\);

-- Location: LCCOMB_X22_Y10_N10
\got_data[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[13]~feeder_combout\ = \MRAM_D[13]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[13]~13\,
	combout => \got_data[13]~feeder_combout\);

-- Location: LCCOMB_X17_Y10_N12
\got_data[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[15]~feeder_combout\ = \MRAM_D[15]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[15]~15\,
	combout => \got_data[15]~feeder_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[0]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MRAM_D[0]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(0),
	combout => \MRAM_D[0]~0\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[1]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MRAM_D[1]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(1),
	combout => \MRAM_D[1]~1\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[2]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MRAM_D[2]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(2),
	combout => \MRAM_D[2]~2\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[3]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MRAM_D[3]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(3),
	combout => \MRAM_D[3]~3\);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[4]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => \MRAM_D[4]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(4),
	combout => \MRAM_D[4]~4\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[5]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MRAM_D[5]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(5),
	combout => \MRAM_D[5]~5\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[6]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => \MRAM_D[6]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(6),
	combout => \MRAM_D[6]~6\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[7]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MRAM_D[7]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(7),
	combout => \MRAM_D[7]~7\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[8]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MRAM_D[8]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(8),
	combout => \MRAM_D[8]~8\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[9]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => \MRAM_D[9]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(9),
	combout => \MRAM_D[9]~9\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[10]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MRAM_D[10]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(10),
	combout => \MRAM_D[10]~10\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[11]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => \MRAM_D[11]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(11),
	combout => \MRAM_D[11]~11\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[12]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MRAM_D[12]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(12),
	combout => \MRAM_D[12]~12\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[13]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => \MRAM_D[13]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(13),
	combout => \MRAM_D[13]~13\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[14]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MRAM_D[14]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(14),
	combout => \MRAM_D[14]~14\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_D[15]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => \MRAM_D[15]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(15),
	combout => \MRAM_D[15]~15\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
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
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G2
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y8_N8
\counter[4]_NEW42\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]_OTERM43\ = (\Equal11~3_combout\ & (\counter[4]~25_combout\)) # (!\Equal11~3_combout\ & ((counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[4]~25_combout\,
	datab => counter(4),
	datad => \Equal11~3_combout\,
	combout => \counter[4]_OTERM43\);

-- Location: LCFF_X21_Y8_N19
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[4]_OTERM43\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X21_Y8_N14
\counter[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~19_combout\ = (counter(1) & (counter(0) $ (VCC))) # (!counter(1) & (counter(0) & VCC))
-- \counter[1]~20\ = CARRY((counter(1) & counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datad => VCC,
	combout => \counter[1]~19_combout\,
	cout => \counter[1]~20\);

-- Location: LCCOMB_X21_Y8_N16
\counter[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~21_combout\ = (counter(2) & (!\counter[1]~20\)) # (!counter(2) & ((\counter[1]~20\) # (GND)))
-- \counter[2]~22\ = CARRY((!\counter[1]~20\) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~20\,
	combout => \counter[2]~21_combout\,
	cout => \counter[2]~22\);

-- Location: LCCOMB_X21_Y8_N18
\counter[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[3]~23_combout\ = (counter(3) & (\counter[2]~22\ $ (GND))) # (!counter(3) & (!\counter[2]~22\ & VCC))
-- \counter[3]~24\ = CARRY((counter(3) & !\counter[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~22\,
	combout => \counter[3]~23_combout\,
	cout => \counter[3]~24\);

-- Location: LCFF_X21_Y8_N1
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[3]~23_combout\,
	sload => VCC,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X21_Y8_N22
\counter[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~27_combout\ = (counter(5) & (\counter[4]~26\ $ (GND))) # (!counter(5) & (!\counter[4]~26\ & VCC))
-- \counter[5]~28\ = CARRY((counter(5) & !\counter[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~26\,
	combout => \counter[5]~27_combout\,
	cout => \counter[5]~28\);

-- Location: LCCOMB_X20_Y7_N26
\counter[5]_NEW40\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]_OTERM41\ = (\Equal11~3_combout\ & ((\counter[5]~27_combout\))) # (!\Equal11~3_combout\ & (counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datac => \Equal11~3_combout\,
	datad => \counter[5]~27_combout\,
	combout => \counter[5]_OTERM41\);

-- Location: LCFF_X20_Y7_N19
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[5]_OTERM41\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X21_Y8_N24
\counter[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~29_combout\ = (counter(6) & (!\counter[5]~28\)) # (!counter(6) & ((\counter[5]~28\) # (GND)))
-- \counter[6]~30\ = CARRY((!\counter[5]~28\) # (!counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~28\,
	combout => \counter[6]~29_combout\,
	cout => \counter[6]~30\);

-- Location: LCFF_X21_Y8_N3
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[6]~29_combout\,
	sload => VCC,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X21_Y8_N26
\counter[7]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[7]~31_combout\ = (counter(7) & (\counter[6]~30\ $ (GND))) # (!counter(7) & (!\counter[6]~30\ & VCC))
-- \counter[7]~32\ = CARRY((counter(7) & !\counter[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~30\,
	combout => \counter[7]~31_combout\,
	cout => \counter[7]~32\);

-- Location: LCFF_X21_Y8_N27
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[7]~31_combout\,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X21_Y8_N28
\counter[8]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[8]~33_combout\ = (counter(8) & (!\counter[7]~32\)) # (!counter(8) & ((\counter[7]~32\) # (GND)))
-- \counter[8]~34\ = CARRY((!\counter[7]~32\) # (!counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~32\,
	combout => \counter[8]~33_combout\,
	cout => \counter[8]~34\);

-- Location: LCFF_X21_Y8_N5
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[8]~33_combout\,
	sload => VCC,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCCOMB_X21_Y8_N0
\Equal0~2_RTM07\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_RTM07_combout\ = (\counter[4]~25_combout\) # ((\counter[7]~31_combout\) # ((\counter[3]~23_combout\) # (\counter[2]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[4]~25_combout\,
	datab => \counter[7]~31_combout\,
	datac => \counter[3]~23_combout\,
	datad => \counter[2]~21_combout\,
	combout => \Equal0~2_RTM07_combout\);

-- Location: LCFF_X21_Y8_N11
\Equal0~2_NEW_REG4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \Equal0~2_RTM07_combout\,
	sload => VCC,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal0~2_OTERM5\);

-- Location: LCCOMB_X21_Y8_N10
\Equal11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal11~3_combout\ = ((counter(8)) # ((\Equal0~2_OTERM5\) # (!\Equal11~2_combout\))) # (!\Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => counter(8),
	datac => \Equal0~2_OTERM5\,
	datad => \Equal11~2_combout\,
	combout => \Equal11~3_combout\);

-- Location: LCCOMB_X21_Y8_N30
\counter[9]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[9]~35_combout\ = (counter(9) & (\counter[8]~34\ $ (GND))) # (!counter(9) & (!\counter[8]~34\ & VCC))
-- \counter[9]~36\ = CARRY((counter(9) & !\counter[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \counter[8]~34\,
	combout => \counter[9]~35_combout\,
	cout => \counter[9]~36\);

-- Location: LCCOMB_X21_Y7_N0
\counter[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[10]~37_combout\ = (counter(10) & (!\counter[9]~36\)) # (!counter(10) & ((\counter[9]~36\) # (GND)))
-- \counter[10]~38\ = CARRY((!\counter[9]~36\) # (!counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~36\,
	combout => \counter[10]~37_combout\,
	cout => \counter[10]~38\);

-- Location: LCCOMB_X20_Y7_N18
\counter[10]_NEW36\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[10]_OTERM37\ = (\Equal11~3_combout\ & ((\counter[10]~37_combout\))) # (!\Equal11~3_combout\ & (counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => \counter[10]~37_combout\,
	datad => \Equal11~3_combout\,
	combout => \counter[10]_OTERM37\);

-- Location: LCCOMB_X20_Y7_N16
\counter[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[10]~feeder_combout\ = \counter[10]_OTERM37\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[10]_OTERM37\,
	combout => \counter[10]~feeder_combout\);

-- Location: LCFF_X20_Y7_N17
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X21_Y7_N2
\counter[11]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[11]~39_combout\ = (counter(11) & (\counter[10]~38\ $ (GND))) # (!counter(11) & (!\counter[10]~38\ & VCC))
-- \counter[11]~40\ = CARRY((counter(11) & !\counter[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~38\,
	combout => \counter[11]~39_combout\,
	cout => \counter[11]~40\);

-- Location: LCFF_X21_Y7_N3
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[11]~39_combout\,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X21_Y7_N4
\counter[12]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[12]~41_combout\ = (counter(12) & (!\counter[11]~40\)) # (!counter(12) & ((\counter[11]~40\) # (GND)))
-- \counter[12]~42\ = CARRY((!\counter[11]~40\) # (!counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~40\,
	combout => \counter[12]~41_combout\,
	cout => \counter[12]~42\);

-- Location: LCCOMB_X20_Y7_N8
\counter[12]_NEW54\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[12]_OTERM55\ = (\Equal11~3_combout\ & ((\counter[12]~41_combout\))) # (!\Equal11~3_combout\ & (counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal11~3_combout\,
	datac => counter(12),
	datad => \counter[12]~41_combout\,
	combout => \counter[12]_OTERM55\);

-- Location: LCFF_X20_Y7_N9
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[12]_OTERM55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCCOMB_X21_Y7_N6
\counter[13]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[13]~43_combout\ = (counter(13) & (\counter[12]~42\ $ (GND))) # (!counter(13) & (!\counter[12]~42\ & VCC))
-- \counter[13]~44\ = CARRY((counter(13) & !\counter[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~42\,
	combout => \counter[13]~43_combout\,
	cout => \counter[13]~44\);

-- Location: LCCOMB_X21_Y7_N10
\counter[15]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~47_combout\ = (counter(15) & (\counter[14]~46\ $ (GND))) # (!counter(15) & (!\counter[14]~46\ & VCC))
-- \counter[15]~48\ = CARRY((counter(15) & !\counter[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~46\,
	combout => \counter[15]~47_combout\,
	cout => \counter[15]~48\);

-- Location: LCFF_X21_Y7_N21
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[15]~47_combout\,
	sload => VCC,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X21_Y7_N12
\counter[16]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[16]~49_combout\ = (counter(16) & (!\counter[15]~48\)) # (!counter(16) & ((\counter[15]~48\) # (GND)))
-- \counter[16]~50\ = CARRY((!\counter[15]~48\) # (!counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \counter[15]~48\,
	combout => \counter[16]~49_combout\,
	cout => \counter[16]~50\);

-- Location: LCFF_X21_Y7_N31
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[16]~49_combout\,
	sload => VCC,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCCOMB_X21_Y7_N14
\counter[17]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[17]~51_combout\ = (counter(17) & (\counter[16]~50\ $ (GND))) # (!counter(17) & (!\counter[16]~50\ & VCC))
-- \counter[17]~52\ = CARRY((counter(17) & !\counter[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \counter[16]~50\,
	combout => \counter[17]~51_combout\,
	cout => \counter[17]~52\);

-- Location: LCFF_X21_Y7_N23
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[17]~51_combout\,
	sload => VCC,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCFF_X21_Y8_N9
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[9]~35_combout\,
	sload => VCC,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X21_Y7_N22
\Equal11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (counter(14) & (counter(16) & (counter(17) & counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datab => counter(16),
	datac => counter(17),
	datad => counter(9),
	combout => \Equal11~1_combout\);

-- Location: LCCOMB_X21_Y7_N16
\counter[18]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[18]~53_combout\ = (counter(18) & (!\counter[17]~52\)) # (!counter(18) & ((\counter[17]~52\) # (GND)))
-- \counter[18]~54\ = CARRY((!\counter[17]~52\) # (!counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \counter[17]~52\,
	combout => \counter[18]~53_combout\,
	cout => \counter[18]~54\);

-- Location: LCFF_X21_Y7_N29
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[18]~53_combout\,
	sload => VCC,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LCFF_X21_Y7_N27
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[13]~43_combout\,
	sload => VCC,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCCOMB_X21_Y7_N26
\Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (counter(6) & (!counter(11) & (!counter(13) & !counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(11),
	datac => counter(13),
	datad => counter(15),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X21_Y7_N28
\Equal11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal11~2_combout\ = (counter(19) & (\Equal11~1_combout\ & (counter(18) & \Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datab => \Equal11~1_combout\,
	datac => counter(18),
	datad => \Equal11~0_combout\,
	combout => \Equal11~2_combout\);

-- Location: LCCOMB_X20_Y7_N12
\Equal2~5_RTM053\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~5_RTM053_combout\ = (\counter[1]_OTERM39\) # (\counter[0]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[1]_OTERM39\,
	datad => \counter[0]~57_combout\,
	combout => \Equal2~5_RTM053_combout\);

-- Location: LCFF_X20_Y7_N13
\Equal2~5_NEW_REG50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal2~5_RTM053_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal2~5_OTERM51\);

-- Location: LCCOMB_X20_Y7_N22
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!counter(10) & (!counter(5) & (!counter(12) & !\Equal2~5_OTERM51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => counter(5),
	datac => counter(12),
	datad => \Equal2~5_OTERM51\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X20_Y10_N6
\counter[0]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~57_combout\ = (!counter(0) & ((\Equal0~3_OTERM33\) # ((!\Equal0~5_combout\) # (!\Equal11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_OTERM33\,
	datab => counter(0),
	datac => \Equal11~2_combout\,
	datad => \Equal0~5_combout\,
	combout => \counter[0]~57_combout\);

-- Location: LCFF_X20_Y10_N19
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[0]~57_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X20_Y8_N30
\counter[1]_NEW38\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]_OTERM39\ = counter(1) $ (((counter(0) & \Equal11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datac => counter(0),
	datad => \Equal11~3_combout\,
	combout => \counter[1]_OTERM39\);

-- Location: LCFF_X21_Y8_N7
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[1]_OTERM39\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X21_Y7_N30
\Equal0~1_RTM015\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_RTM015_combout\ = (\counter[14]~45_combout\) # ((\counter[17]~51_combout\) # ((\counter[16]~49_combout\) # (\counter[18]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[14]~45_combout\,
	datab => \counter[17]~51_combout\,
	datac => \counter[16]~49_combout\,
	datad => \counter[18]~53_combout\,
	combout => \Equal0~1_RTM015_combout\);

-- Location: LCCOMB_X21_Y7_N18
\counter[19]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[19]~55_combout\ = counter(19) $ (!\counter[18]~54\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	cin => \counter[18]~54\,
	combout => \counter[19]~55_combout\);

-- Location: LCCOMB_X21_Y8_N4
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\counter[7]~31_combout\ & (\counter[9]~35_combout\ & (\counter[8]~33_combout\ & !\counter[10]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[7]~31_combout\,
	datab => \counter[9]~35_combout\,
	datac => \counter[8]~33_combout\,
	datad => \counter[10]~37_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X21_Y7_N24
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\Equal0~0_RTM019_combout\ & (!\Equal0~1_RTM015_combout\ & (!\counter[19]~55_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_RTM019_combout\,
	datab => \Equal0~1_RTM015_combout\,
	datac => \counter[19]~55_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X20_Y10_N26
\Equal2~1_NEW_REG24_NEW56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_NEW_REG24_OTERM57\ = (\Equal11~3_combout\ & ((\Equal2~1_combout\))) # (!\Equal11~3_combout\ & (\Equal2~1_OTERM25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datac => \Equal2~1_OTERM25\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~1_NEW_REG24_OTERM57\);

-- Location: LCFF_X20_Y10_N27
\Equal2~1_NEW_REG24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal2~1_NEW_REG24_OTERM57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal2~1_OTERM25\);

-- Location: LCCOMB_X20_Y10_N20
\Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (!\counter[0]~57_combout\ & (\counter[4]_OTERM43\ & (\counter[5]_OTERM41\ & \counter[1]_OTERM39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~57_combout\,
	datab => \counter[4]_OTERM43\,
	datac => \counter[5]_OTERM41\,
	datad => \counter[1]_OTERM39\,
	combout => \Equal7~1_combout\);

-- Location: LCFF_X20_Y10_N21
\Equal7~1_NEW_REG48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal7~1_OTERM49\);

-- Location: LCCOMB_X20_Y10_N14
\Equal7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (\Equal7~0_OTERM9\ & (\Equal2~1_OTERM25\ & (\Equal7~1_OTERM49\ & counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_OTERM9\,
	datab => \Equal2~1_OTERM25\,
	datac => \Equal7~1_OTERM49\,
	datad => counter(12),
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X21_Y8_N12
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\counter[4]~25_combout\ & (\counter[2]~21_combout\ & (!\counter[1]~19_combout\ & \counter[5]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[4]~25_combout\,
	datab => \counter[2]~21_combout\,
	datac => \counter[1]~19_combout\,
	datad => \counter[5]~27_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X20_Y7_N0
\Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\counter[12]~41_combout\ & (\Equal6~0_combout\ & \Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[12]~41_combout\,
	datac => \Equal6~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal6~1_combout\);

-- Location: LCFF_X20_Y7_N1
\Equal6~1_NEW_REG28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal6~1_combout\,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal6~1_OTERM29\);

-- Location: LCCOMB_X21_Y7_N20
\Equal0~0_RTM019\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_RTM019_combout\ = (\counter[13]~43_combout\) # ((\counter[11]~39_combout\) # ((\counter[15]~47_combout\) # (\counter[6]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[13]~43_combout\,
	datab => \counter[11]~39_combout\,
	datac => \counter[15]~47_combout\,
	datad => \counter[6]~29_combout\,
	combout => \Equal0~0_RTM019_combout\);

-- Location: LCCOMB_X20_Y7_N10
\Equal0~4_RTM023\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_RTM023_combout\ = (\counter[19]~55_combout\) # ((\Equal0~0_RTM019_combout\) # ((\counter[9]~35_combout\) # (\Equal0~1_RTM015_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[19]~55_combout\,
	datab => \Equal0~0_RTM019_combout\,
	datac => \counter[9]~35_combout\,
	datad => \Equal0~1_RTM015_combout\,
	combout => \Equal0~4_RTM023_combout\);

-- Location: LCCOMB_X20_Y7_N28
\Equal0~4_NEW_REG20_NEW62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_NEW_REG20_OTERM63\ = (\Equal11~3_combout\ & ((\Equal0~4_RTM023_combout\))) # (!\Equal11~3_combout\ & (\Equal0~4_OTERM21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal11~3_combout\,
	datac => \Equal0~4_OTERM21\,
	datad => \Equal0~4_RTM023_combout\,
	combout => \Equal0~4_NEW_REG20_OTERM63\);

-- Location: LCFF_X20_Y7_N29
\Equal0~4_NEW_REG20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal0~4_NEW_REG20_OTERM63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal0~4_OTERM21\);

-- Location: LCCOMB_X20_Y10_N30
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!counter(8) & (!\Equal0~4_OTERM21\ & (!\Equal0~2_OTERM5\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => \Equal0~4_OTERM21\,
	datac => \Equal0~2_OTERM5\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X20_Y10_N12
\WideOr8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (!\Equal0~6_combout\ & (((counter(0)) # (!\Equal6~1_OTERM29\)) # (!counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => \Equal6~1_OTERM29\,
	datad => \Equal0~6_combout\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X19_Y10_N20
WideOr8 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = (!\Equal7~2_combout\ & (\WideOr8~0_combout\ & ((!counter(1)) # (!\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => counter(1),
	datac => \Equal7~2_combout\,
	datad => \WideOr8~0_combout\,
	combout => \WideOr8~combout\);

-- Location: LCCOMB_X20_Y7_N4
\Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (\counter[5]_OTERM41\ & (\counter[10]_OTERM37\ & (!\counter[1]_OTERM39\ & !\counter[0]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[5]_OTERM41\,
	datab => \counter[10]_OTERM37\,
	datac => \counter[1]_OTERM39\,
	datad => \counter[0]~57_combout\,
	combout => \Equal10~0_combout\);

-- Location: LCFF_X20_Y7_N5
\Equal10~0_NEW_REG46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal10~0_OTERM47\);

-- Location: LCCOMB_X20_Y7_N30
\Equal10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (!\Equal0~3_OTERM33\ & (\Equal10~0_OTERM47\ & (counter(12) & !\Equal0~4_OTERM21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_OTERM33\,
	datab => \Equal10~0_OTERM47\,
	datac => counter(12),
	datad => \Equal0~4_OTERM21\,
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X20_Y7_N14
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\counter[5]_OTERM41\ & (!\counter[10]_OTERM37\ & (\counter[1]_OTERM39\ & \counter[0]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[5]_OTERM41\,
	datab => \counter[10]_OTERM37\,
	datac => \counter[1]_OTERM39\,
	datad => \counter[0]~57_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCFF_X20_Y7_N15
\Equal1~0_NEW_REG44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal1~0_OTERM45\);

-- Location: LCCOMB_X20_Y7_N24
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\Equal0~3_OTERM33\ & (counter(12) & (\Equal1~0_OTERM45\ & !\Equal0~4_OTERM21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_OTERM33\,
	datab => counter(12),
	datac => \Equal1~0_OTERM45\,
	datad => \Equal0~4_OTERM21\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X21_Y10_N4
\WideOr9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (!\Equal1~1_combout\ & ((!counter(0)) # (!\Equal6~1_OTERM29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~1_OTERM29\,
	datac => \Equal1~1_combout\,
	datad => counter(0),
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X21_Y10_N14
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\Equal2~3_OTERM31\ & (counter(1) & !counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_OTERM31\,
	datab => counter(1),
	datad => counter(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X21_Y8_N2
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\counter[3]~23_combout\ & !\counter[2]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[3]~23_combout\,
	datad => \counter[2]~21_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X21_Y8_N6
\Equal2~2_RTM03\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_RTM03_combout\ = (\counter[4]~25_combout\) # (\counter[5]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[4]~25_combout\,
	datad => \counter[5]~27_combout\,
	combout => \Equal2~2_RTM03_combout\);

-- Location: LCCOMB_X20_Y7_N2
\Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\counter[12]~41_combout\ & (\Equal7~0_combout\ & (!\Equal2~2_RTM03_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[12]~41_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal2~2_RTM03_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCFF_X20_Y7_N3
\Equal2~3_NEW_REG30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal2~3_combout\,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal2~3_OTERM31\);

-- Location: LCCOMB_X21_Y10_N28
\WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (!\Equal2~3_OTERM31\) # (!counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => \Equal2~3_OTERM31\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X20_Y10_N16
\WideNor0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = (!\Equal7~2_combout\ & !\Equal10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~2_combout\,
	datad => \Equal10~1_combout\,
	combout => \WideNor0~1_combout\);

-- Location: LCCOMB_X21_Y10_N2
\WideNor0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = (\Equal2~4_combout\) # (((!\WideNor0~1_combout\) # (!\WideOr9~0_combout\)) # (!\WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \WideNor0~0_combout\,
	datac => \WideOr9~0_combout\,
	datad => \WideNor0~1_combout\,
	combout => \WideNor0~2_combout\);

-- Location: LCCOMB_X21_Y10_N8
\WideOr7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~5_combout\ = (!\Equal4~0_combout\ & ((\Equal8~0_combout\) # ((\Equal0~6_combout\) # (\WideNor0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \Equal0~6_combout\,
	datad => \WideNor0~2_combout\,
	combout => \WideOr7~5_combout\);

-- Location: LCCOMB_X19_Y10_N14
WideOr9 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr9~combout\ = (!\Equal2~4_combout\ & (!\Equal10~1_combout\ & (\WideOr9~0_combout\ & \WideOr7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal10~1_combout\,
	datac => \WideOr9~0_combout\,
	datad => \WideOr7~5_combout\,
	combout => \WideOr9~combout\);

-- Location: LCFF_X20_Y10_N29
\MRAM_D[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[0]~en_regout\);

-- Location: LCFF_X19_Y10_N21
\MRAM_D[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \WideOr8~combout\,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[1]~en_regout\);

-- Location: LCFF_X19_Y10_N23
\MRAM_D[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[2]~en_regout\);

-- Location: LCFF_X19_Y10_N31
\MRAM_D[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[3]~en_regout\);

-- Location: LCFF_X19_Y10_N9
\MRAM_D[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[4]~en_regout\);

-- Location: LCFF_X19_Y10_N27
\MRAM_D[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[5]~en_regout\);

-- Location: LCFF_X19_Y10_N25
\MRAM_D[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[6]~en_regout\);

-- Location: LCFF_X19_Y10_N7
\MRAM_D[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[7]~en_regout\);

-- Location: LCFF_X19_Y10_N11
\MRAM_D[8]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[8]~en_regout\);

-- Location: LCFF_X19_Y10_N1
\MRAM_D[9]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[9]~en_regout\);

-- Location: LCFF_X19_Y10_N19
\MRAM_D[10]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[10]~en_regout\);

-- Location: LCFF_X19_Y10_N13
\MRAM_D[11]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[11]~en_regout\);

-- Location: LCFF_X19_Y10_N5
\MRAM_D[12]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[12]~en_regout\);

-- Location: LCFF_X19_Y10_N17
\MRAM_D[13]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[13]~en_regout\);

-- Location: LCFF_X19_Y10_N29
\MRAM_D[14]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[14]~en_regout\);

-- Location: LCFF_X19_Y10_N3
\MRAM_D[15]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[15]~en_regout\);

-- Location: LCFF_X21_Y8_N13
\Equal6~0_NEW_REG26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal6~0_combout\,
	ena => \Equal11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal6~0_OTERM27\);

-- Location: LCCOMB_X20_Y10_N28
\Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (!counter(3) & counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => counter(0),
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X20_Y10_N2
\Equal6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (counter(12) & (\Equal2~1_OTERM25\ & (\Equal6~0_OTERM27\ & \Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => \Equal2~1_OTERM25\,
	datac => \Equal6~0_OTERM27\,
	datad => \Equal6~2_combout\,
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X20_Y7_N20
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Equal10~1_combout\) # ((\Equal2~3_OTERM31\ & (counter(1) $ (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \Equal2~3_OTERM31\,
	datac => counter(1),
	datad => counter(0),
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X20_Y10_N4
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Equal9~0_combout\) # ((\Equal6~3_combout\) # ((\Selector0~0_combout\) # (\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \Equal6~3_combout\,
	datac => \Selector0~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X21_Y10_N0
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\WideNor0~3_combout\ & ((\MRAM_EN~reg0_regout\) # ((!\Selector0~1_combout\ & \WideNor0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~3_combout\,
	datab => \Selector0~1_combout\,
	datac => \MRAM_EN~reg0_regout\,
	datad => \WideNor0~2_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCFF_X21_Y10_N1
\MRAM_EN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_EN~reg0_regout\);

-- Location: LCCOMB_X21_Y10_N26
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Equal2~3_OTERM31\ & ((counter(0)) # (!counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_OTERM31\,
	datab => counter(0),
	datad => counter(1),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X21_Y10_N24
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\Equal10~1_combout\ & (\WideOr9~0_combout\ & (!\Equal4~0_combout\ & !\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \WideOr9~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X22_Y10_N0
\Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\WideOr8~0_combout\ & ((\MRAM_OUTPUT_EN~reg0_regout\) # ((\Selector1~1_combout\ & \WideNor0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~0_combout\,
	datab => \Selector1~1_combout\,
	datac => \MRAM_OUTPUT_EN~reg0_regout\,
	datad => \WideNor0~2_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCFF_X22_Y10_N1
\MRAM_OUTPUT_EN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_OUTPUT_EN~reg0_regout\);

-- Location: LCCOMB_X21_Y10_N30
\WideNor0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~4_combout\ = (!\Equal7~2_combout\ & (\WideOr9~0_combout\ & (!\Equal10~1_combout\ & \WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datab => \WideOr9~0_combout\,
	datac => \Equal10~1_combout\,
	datad => \WideNor0~0_combout\,
	combout => \WideNor0~4_combout\);

-- Location: LCCOMB_X21_Y10_N12
\Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~3_OTERM31\ & (!counter(1) & !counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_OTERM31\,
	datab => counter(1),
	datad => counter(0),
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X21_Y10_N16
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\WideNor0~3_combout\ & ((\MRAM_WRITE_EN~reg0_regout\) # ((\WideNor0~4_combout\ & \Equal2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~3_combout\,
	datab => \WideNor0~4_combout\,
	datac => \MRAM_WRITE_EN~reg0_regout\,
	datad => \Equal2~4_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X21_Y10_N17
\MRAM_WRITE_EN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_WRITE_EN~reg0_regout\);

-- Location: LCCOMB_X20_Y10_N24
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Equal10~1_combout\) # ((\Equal1~1_combout\) # (\Equal6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal10~1_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal6~3_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X20_Y10_N18
\Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (\Equal6~1_OTERM29\ & (counter(0) & counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~1_OTERM29\,
	datac => counter(0),
	datad => counter(3),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X20_Y10_N22
\Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\Equal9~0_combout\) # ((\Equal2~3_OTERM31\ & counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_OTERM31\,
	datab => counter(0),
	datac => \Selector4~0_combout\,
	datad => \Equal9~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X21_Y10_N10
\Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\WideNor0~3_combout\ & ((\MRAM_LOWER_EN~reg0_regout\) # ((!\Selector4~1_combout\ & \WideNor0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~3_combout\,
	datab => \Selector4~1_combout\,
	datac => \MRAM_LOWER_EN~reg0_regout\,
	datad => \WideNor0~2_combout\,
	combout => \Selector4~2_combout\);

-- Location: LCFF_X21_Y10_N11
\MRAM_LOWER_EN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_LOWER_EN~reg0_regout\);

-- Location: LCCOMB_X21_Y10_N22
\WideOr7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~4_combout\ = (\Equal8~0_combout\) # (((counter(0) & \Equal2~3_OTERM31\)) # (!\WideOr9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => counter(0),
	datac => \WideOr9~0_combout\,
	datad => \Equal2~3_OTERM31\,
	combout => \WideOr7~4_combout\);

-- Location: LCCOMB_X21_Y10_N18
\Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\Selector20~0_combout\) # ((\MRAM_A[0]~reg0_regout\ & ((\WideOr7~4_combout\) # (!\WideOr7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~0_combout\,
	datab => \WideOr7~4_combout\,
	datac => \MRAM_A[0]~reg0_regout\,
	datad => \WideOr7~5_combout\,
	combout => \Selector20~1_combout\);

-- Location: LCFF_X21_Y10_N19
\MRAM_A[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[0]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N30
WideOr7 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~combout\ = (\Equal4~0_combout\) # ((\WideOr7~4_combout\) # ((\WideOr8~0_combout\ & !\WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \WideOr7~4_combout\,
	datac => \WideOr8~0_combout\,
	datad => \WideNor0~2_combout\,
	combout => \WideOr7~combout\);

-- Location: LCCOMB_X22_Y10_N2
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (got_data(1) & ((\Equal10~1_combout\) # ((\MRAM_A[1]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(1) & (((\MRAM_A[1]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(1),
	datab => \Equal10~1_combout\,
	datac => \MRAM_A[1]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector19~0_combout\);

-- Location: LCFF_X22_Y10_N3
\MRAM_A[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[1]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N26
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (got_data(2) & ((\Equal10~1_combout\) # ((\MRAM_A[2]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(2) & (((\MRAM_A[2]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(2),
	datab => \Equal10~1_combout\,
	datac => \MRAM_A[2]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector18~0_combout\);

-- Location: LCFF_X22_Y10_N27
\MRAM_A[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[2]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N4
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (got_data(3) & ((\Equal10~1_combout\) # ((\MRAM_A[3]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(3) & (((\MRAM_A[3]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(3),
	datab => \Equal10~1_combout\,
	datac => \MRAM_A[3]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector17~0_combout\);

-- Location: LCFF_X22_Y10_N5
\MRAM_A[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[3]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N24
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (got_data(4) & ((\Equal10~1_combout\) # ((\MRAM_A[4]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(4) & (((\MRAM_A[4]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(4),
	datab => \Equal10~1_combout\,
	datac => \MRAM_A[4]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector16~0_combout\);

-- Location: LCFF_X22_Y10_N25
\MRAM_A[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[4]~reg0_regout\);

-- Location: LCCOMB_X17_Y10_N26
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (got_data(5) & ((\Equal10~1_combout\) # ((\MRAM_A[5]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(5) & (((\MRAM_A[5]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(5),
	datab => \Equal10~1_combout\,
	datac => \MRAM_A[5]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector15~0_combout\);

-- Location: LCFF_X17_Y10_N27
\MRAM_A[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[5]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N28
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (got_data(6) & ((\Equal10~1_combout\) # ((\MRAM_A[6]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(6) & (((\MRAM_A[6]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(6),
	datab => \Equal10~1_combout\,
	datac => \MRAM_A[6]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector14~0_combout\);

-- Location: LCFF_X22_Y10_N29
\MRAM_A[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[6]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N20
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (got_data(7) & ((\Equal10~1_combout\) # ((\MRAM_A[7]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(7) & (((\MRAM_A[7]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(7),
	datab => \Equal10~1_combout\,
	datac => \MRAM_A[7]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector13~0_combout\);

-- Location: LCFF_X22_Y10_N21
\MRAM_A[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[7]~reg0_regout\);

-- Location: LCCOMB_X17_Y10_N18
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (got_data(8) & ((\Equal10~1_combout\) # ((\MRAM_A[8]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(8) & (((\MRAM_A[8]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(8),
	datab => \Equal10~1_combout\,
	datac => \MRAM_A[8]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector12~0_combout\);

-- Location: LCFF_X17_Y10_N19
\MRAM_A[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[8]~reg0_regout\);

-- Location: LCCOMB_X17_Y10_N0
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (got_data(9) & ((\Equal10~1_combout\) # ((\MRAM_A[9]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(9) & (((\MRAM_A[9]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(9),
	datab => \Equal10~1_combout\,
	datac => \MRAM_A[9]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X17_Y10_N1
\MRAM_A[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[9]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N16
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (got_data(10) & ((\Equal10~1_combout\) # ((\MRAM_A[10]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(10) & (((\MRAM_A[10]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(10),
	datab => \Equal10~1_combout\,
	datac => \MRAM_A[10]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector10~0_combout\);

-- Location: LCFF_X22_Y10_N17
\MRAM_A[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[10]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N18
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (got_data(11) & ((\Equal10~1_combout\) # ((\MRAM_A[11]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(11) & (((\MRAM_A[11]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(11),
	datab => \Equal10~1_combout\,
	datac => \MRAM_A[11]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X22_Y10_N19
\MRAM_A[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[11]~reg0_regout\);

-- Location: LCCOMB_X17_Y10_N2
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (got_data(12) & ((\Equal10~1_combout\) # ((\MRAM_A[12]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(12) & (((\MRAM_A[12]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(12),
	datab => \Equal10~1_combout\,
	datac => \MRAM_A[12]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector8~0_combout\);

-- Location: LCFF_X17_Y10_N3
\MRAM_A[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[12]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N22
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (got_data(13) & ((\Equal10~1_combout\) # ((\MRAM_A[13]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(13) & (((\MRAM_A[13]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(13),
	datab => \Equal10~1_combout\,
	datac => \MRAM_A[13]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X22_Y10_N23
\MRAM_A[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[13]~reg0_regout\);

-- Location: LCCOMB_X20_Y10_N8
\Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!counter(0) & (\Equal6~1_OTERM29\ & counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datac => \Equal6~1_OTERM29\,
	datad => counter(3),
	combout => \Equal8~0_combout\);

-- Location: LCFF_X22_Y10_N15
\got_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[14]~14\,
	sload => VCC,
	ena => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(14));

-- Location: LCCOMB_X22_Y10_N8
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Equal10~1_combout\ & ((got_data(14)) # ((\MRAM_A[14]~reg0_regout\ & \WideOr7~combout\)))) # (!\Equal10~1_combout\ & (((\MRAM_A[14]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => got_data(14),
	datac => \MRAM_A[14]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X22_Y10_N9
\MRAM_A[14]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[14]~reg0_regout\);

-- Location: LCCOMB_X17_Y10_N24
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (got_data(15) & ((\Equal10~1_combout\) # ((\MRAM_A[15]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(15) & (((\MRAM_A[15]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(15),
	datab => \Equal10~1_combout\,
	datac => \MRAM_A[15]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X17_Y10_N25
\MRAM_A[15]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[15]~reg0_regout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_EN~I\ : cycloneii_io
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
	datain => \ALT_INV_MRAM_EN~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_EN);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_OUTPUT_EN~I\ : cycloneii_io
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
	datain => \ALT_INV_MRAM_OUTPUT_EN~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_OUTPUT_EN);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_WRITE_EN~I\ : cycloneii_io
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
	datain => \ALT_INV_MRAM_WRITE_EN~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_WRITE_EN);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_UPPER_EN~I\ : cycloneii_io
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
	datain => \ALT_INV_MRAM_LOWER_EN~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_UPPER_EN);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_LOWER_EN~I\ : cycloneii_io
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
	datain => \ALT_INV_MRAM_LOWER_EN~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_LOWER_EN);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[0]~I\ : cycloneii_io
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
	datain => \MRAM_A[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(0));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[1]~I\ : cycloneii_io
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
	datain => \MRAM_A[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(1));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[2]~I\ : cycloneii_io
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
	datain => \MRAM_A[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(2));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[3]~I\ : cycloneii_io
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
	datain => \MRAM_A[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(3));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[4]~I\ : cycloneii_io
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
	datain => \MRAM_A[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(4));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[5]~I\ : cycloneii_io
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
	datain => \MRAM_A[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(5));

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[6]~I\ : cycloneii_io
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
	datain => \MRAM_A[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(6));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[7]~I\ : cycloneii_io
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
	datain => \MRAM_A[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(7));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[8]~I\ : cycloneii_io
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
	datain => \MRAM_A[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(8));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[9]~I\ : cycloneii_io
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
	datain => \MRAM_A[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(9));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[10]~I\ : cycloneii_io
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
	datain => \MRAM_A[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(10));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[11]~I\ : cycloneii_io
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
	datain => \MRAM_A[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(11));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[12]~I\ : cycloneii_io
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
	datain => \MRAM_A[12]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(12));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[13]~I\ : cycloneii_io
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
	datain => \MRAM_A[13]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(13));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[14]~I\ : cycloneii_io
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
	datain => \MRAM_A[14]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(14));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[15]~I\ : cycloneii_io
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
	datain => \MRAM_A[15]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(15));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[16]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(16));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MRAM_A[17]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_A(17));
END structure;


