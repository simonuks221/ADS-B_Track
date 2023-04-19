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

-- DATE "04/19/2023 14:46:12"

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
-- MRAM_D[10]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[11]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[12]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL \counter[6]~29_combout\ : std_logic;
SIGNAL \counter[18]~54\ : std_logic;
SIGNAL \counter[19]~55_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Equal0~1_RTM011_combout\ : std_logic;
SIGNAL \Equal0~2_OTERM17\ : std_logic;
SIGNAL \Equal0~2_RTM019_combout\ : std_logic;
SIGNAL \Equal5~1_OTERM31\ : std_logic;
SIGNAL \counter[6]~feeder_combout\ : std_logic;
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
SIGNAL \counter[0]~57_combout\ : std_logic;
SIGNAL \counter[1]_OTERM37\ : std_logic;
SIGNAL \counter[1]~20\ : std_logic;
SIGNAL \counter[2]~22\ : std_logic;
SIGNAL \counter[3]~23_combout\ : std_logic;
SIGNAL \counter[3]~24\ : std_logic;
SIGNAL \counter[4]~26\ : std_logic;
SIGNAL \counter[5]~27_combout\ : std_logic;
SIGNAL \counter[5]~feeder_combout\ : std_logic;
SIGNAL \counter[5]~28\ : std_logic;
SIGNAL \counter[6]~30\ : std_logic;
SIGNAL \counter[7]~31_combout\ : std_logic;
SIGNAL \counter[7]~32\ : std_logic;
SIGNAL \counter[8]~33_combout\ : std_logic;
SIGNAL \counter[8]~34\ : std_logic;
SIGNAL \counter[9]~36\ : std_logic;
SIGNAL \counter[10]~37_combout\ : std_logic;
SIGNAL \counter[10]~38\ : std_logic;
SIGNAL \counter[11]~39_combout\ : std_logic;
SIGNAL \counter[11]~40\ : std_logic;
SIGNAL \counter[12]~41_combout\ : std_logic;
SIGNAL \Equal0~6_RTM027_combout\ : std_logic;
SIGNAL \Equal0~6_OTERM25\ : std_logic;
SIGNAL \counter[2]~21_combout\ : std_logic;
SIGNAL \counter[2]_OTERM39\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \counter[12]~42\ : std_logic;
SIGNAL \counter[13]~43_combout\ : std_logic;
SIGNAL \counter[13]~44\ : std_logic;
SIGNAL \counter[14]~45_combout\ : std_logic;
SIGNAL \counter[14]~46\ : std_logic;
SIGNAL \counter[15]~47_combout\ : std_logic;
SIGNAL \counter[15]~48\ : std_logic;
SIGNAL \counter[16]~49_combout\ : std_logic;
SIGNAL \counter[16]~50\ : std_logic;
SIGNAL \counter[17]~51_combout\ : std_logic;
SIGNAL \counter[17]~52\ : std_logic;
SIGNAL \counter[18]~53_combout\ : std_logic;
SIGNAL \counter[9]~35_combout\ : std_logic;
SIGNAL \counter[9]~feeder_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \Equal9~2_combout\ : std_logic;
SIGNAL \counter[4]_OTERM41\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal0~0_RTM015_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~2_OTERM21\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal5~0_OTERM23_OTERM47\ : std_logic;
SIGNAL \Equal5~0_OTERM23_OTERM49\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~0_OTERM23_OTERM45\ : std_logic;
SIGNAL \Equal5~0_NEW_REG22_OTERM43\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal0~4_RTM07_combout\ : std_logic;
SIGNAL \Equal0~5_RTM035_combout\ : std_logic;
SIGNAL \Equal0~5_OTERM33\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \WideOr8~2_combout\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \MRAM_D[0]~enfeeder_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal8~0_OTERM29\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
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
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \MRAM_EN~reg0_regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \MRAM_OUTPUT_EN~reg0_regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \MRAM_WRITE_EN~reg0_regout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \MRAM_LOWER_EN~reg0_regout\ : std_logic;
SIGNAL \got_data[0]~feeder_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \WideOr7~combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \MRAM_A[0]~reg0_regout\ : std_logic;
SIGNAL \got_data[1]~feeder_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \MRAM_A[1]~reg0_regout\ : std_logic;
SIGNAL \got_data[2]~feeder_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \MRAM_A[2]~reg0_regout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \MRAM_A[3]~reg0_regout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \MRAM_A[4]~reg0_regout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \MRAM_A[5]~reg0_regout\ : std_logic;
SIGNAL \got_data[6]~feeder_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \MRAM_A[6]~reg0_regout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \MRAM_A[7]~reg0_regout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \MRAM_A[8]~reg0_regout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \MRAM_A[9]~reg0_regout\ : std_logic;
SIGNAL \got_data[10]~feeder_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \MRAM_A[10]~reg0_regout\ : std_logic;
SIGNAL \got_data[11]~feeder_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \MRAM_A[11]~reg0_regout\ : std_logic;
SIGNAL \got_data[12]~feeder_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \MRAM_A[12]~reg0_regout\ : std_logic;
SIGNAL \got_data[13]~feeder_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \MRAM_A[13]~reg0_regout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \MRAM_A[14]~reg0_regout\ : std_logic;
SIGNAL \got_data[15]~feeder_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \MRAM_A[15]~reg0_regout\ : std_logic;
SIGNAL got_data : std_logic_vector(15 DOWNTO 0);
SIGNAL counter : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_MRAM_LOWER_EN~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_WRITE_EN~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_OUTPUT_EN~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_EN~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[15]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[14]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[13]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[12]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[11]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[10]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[9]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[8]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[3]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[2]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[1]~en_regout\ : std_logic;
SIGNAL \ALT_INV_MRAM_D[0]~en_regout\ : std_logic;

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
\ALT_INV_MRAM_LOWER_EN~reg0_regout\ <= NOT \MRAM_LOWER_EN~reg0_regout\;
\ALT_INV_MRAM_WRITE_EN~reg0_regout\ <= NOT \MRAM_WRITE_EN~reg0_regout\;
\ALT_INV_MRAM_OUTPUT_EN~reg0_regout\ <= NOT \MRAM_OUTPUT_EN~reg0_regout\;
\ALT_INV_MRAM_EN~reg0_regout\ <= NOT \MRAM_EN~reg0_regout\;
\ALT_INV_MRAM_D[15]~en_regout\ <= NOT \MRAM_D[15]~en_regout\;
\ALT_INV_MRAM_D[14]~en_regout\ <= NOT \MRAM_D[14]~en_regout\;
\ALT_INV_MRAM_D[13]~en_regout\ <= NOT \MRAM_D[13]~en_regout\;
\ALT_INV_MRAM_D[12]~en_regout\ <= NOT \MRAM_D[12]~en_regout\;
\ALT_INV_MRAM_D[11]~en_regout\ <= NOT \MRAM_D[11]~en_regout\;
\ALT_INV_MRAM_D[10]~en_regout\ <= NOT \MRAM_D[10]~en_regout\;
\ALT_INV_MRAM_D[9]~en_regout\ <= NOT \MRAM_D[9]~en_regout\;
\ALT_INV_MRAM_D[8]~en_regout\ <= NOT \MRAM_D[8]~en_regout\;
\ALT_INV_MRAM_D[3]~en_regout\ <= NOT \MRAM_D[3]~en_regout\;
\ALT_INV_MRAM_D[2]~en_regout\ <= NOT \MRAM_D[2]~en_regout\;
\ALT_INV_MRAM_D[1]~en_regout\ <= NOT \MRAM_D[1]~en_regout\;
\ALT_INV_MRAM_D[0]~en_regout\ <= NOT \MRAM_D[0]~en_regout\;

-- Location: LCFF_X25_Y12_N13
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[6]~feeder_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCFF_X25_Y11_N19
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[19]~55_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCCOMB_X25_Y12_N20
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

-- Location: LCCOMB_X25_Y12_N24
\counter[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~29_combout\ = (counter(6) & (!\counter[5]~28\)) # (!counter(6) & ((\counter[5]~28\) # (GND)))
-- \counter[6]~30\ = CARRY((!\counter[5]~28\) # (!counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~28\,
	combout => \counter[6]~29_combout\,
	cout => \counter[6]~30\);

-- Location: LCCOMB_X25_Y11_N16
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

-- Location: LCCOMB_X25_Y11_N18
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

-- Location: LCCOMB_X26_Y12_N20
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!counter(2) & !counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(2),
	datad => counter(1),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X25_Y12_N4
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\counter[4]~25_combout\ & \counter[5]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[4]~25_combout\,
	datad => \counter[5]~27_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X25_Y10_N16
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Equal5~2_combout\ & ((\Equal5~0_NEW_REG22_OTERM43\) # ((!counter(1) & \Equal1~4_combout\)))) # (!\Equal5~2_combout\ & (((!counter(1) & \Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \Equal5~0_NEW_REG22_OTERM43\,
	datac => counter(1),
	datad => \Equal1~4_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X25_Y10_N22
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\MRAM_LOWER_EN~reg0_regout\ & ((\Equal2~1_combout\) # ((\Equal4~0_combout\ & \Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \MRAM_LOWER_EN~reg0_regout\,
	datac => \Equal1~4_combout\,
	datad => \Equal2~1_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X25_Y10_N10
\Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (!\MRAM_LOWER_EN~reg0_regout\ & ((\Equal8~1_combout\) # ((\Equal5~2_combout\ & \Equal5~0_NEW_REG22_OTERM43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \MRAM_LOWER_EN~reg0_regout\,
	datac => \Equal8~1_combout\,
	datad => \Equal5~0_NEW_REG22_OTERM43\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X25_Y10_N6
\Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\Selector4~1_combout\) # (((\Equal3~0_combout\) # (\Selector4~0_combout\)) # (!\WideOr8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~1_combout\,
	datab => \WideOr8~2_combout\,
	datac => \Equal3~0_combout\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~2_combout\);

-- Location: LCFF_X27_Y10_N17
\got_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[3]~3\,
	sload => VCC,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(3));

-- Location: LCFF_X27_Y10_N3
\got_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[4]~4\,
	sload => VCC,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(4));

-- Location: LCFF_X27_Y10_N5
\got_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[5]~5\,
	sload => VCC,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(5));

-- Location: LCFF_X27_Y10_N25
\got_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[7]~7\,
	sload => VCC,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(7));

-- Location: LCFF_X27_Y10_N27
\got_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[14]~14\,
	sload => VCC,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(14));

-- Location: LCCOMB_X25_Y11_N20
\Equal0~1_RTM011\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_RTM011_combout\ = (\counter[18]~53_combout\) # (\counter[19]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[18]~53_combout\,
	datad => \counter[19]~55_combout\,
	combout => \Equal0~1_RTM011_combout\);

-- Location: LCFF_X26_Y11_N11
\Equal0~2_NEW_REG16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal0~2_RTM019_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal0~2_OTERM17\);

-- Location: LCCOMB_X26_Y11_N10
\Equal0~2_RTM019\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_RTM019_combout\ = (\counter[19]~55_combout\) # ((\counter[18]~53_combout\) # ((\counter[9]~35_combout\) # (\Equal0~0_RTM015_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[19]~55_combout\,
	datab => \counter[18]~53_combout\,
	datac => \counter[9]~35_combout\,
	datad => \Equal0~0_RTM015_combout\,
	combout => \Equal0~2_RTM019_combout\);

-- Location: LCFF_X26_Y12_N7
\Equal5~1_NEW_REG30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \Equal5~1_combout\,
	sload => VCC,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal5~1_OTERM31\);

-- Location: LCCOMB_X25_Y12_N12
\counter[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~feeder_combout\ = \counter[6]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[6]~29_combout\,
	combout => \counter[6]~feeder_combout\);

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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => \MRAM_D[5]~en_regout\,
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => \MRAM_D[7]~en_regout\,
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MRAM_D[9]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(9),
	combout => \MRAM_D[9]~9\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MRAM_D[11]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(11),
	combout => \MRAM_D[11]~11\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MRAM_D[13]~en_regout\,
	oe => VCC,
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MRAM_D[15]~en_regout\,
	oe => VCC,
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

-- Location: LCFF_X25_Y11_N21
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[12]~41_combout\,
	sload => VCC,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCCOMB_X26_Y12_N2
\counter[0]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~57_combout\ = (\Equal9~2_combout\ & !counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal9~2_combout\,
	datac => counter(0),
	combout => \counter[0]~57_combout\);

-- Location: LCFF_X26_Y12_N3
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X26_Y12_N10
\counter[1]_NEW36\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]_OTERM37\ = counter(1) $ (((\Equal9~2_combout\ & counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal9~2_combout\,
	datac => counter(1),
	datad => counter(0),
	combout => \counter[1]_OTERM37\);

-- Location: LCFF_X26_Y12_N11
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[1]_OTERM37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X25_Y12_N14
\counter[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~20\ = CARRY((counter(0) & counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datad => VCC,
	cout => \counter[1]~20\);

-- Location: LCCOMB_X25_Y12_N16
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

-- Location: LCCOMB_X25_Y12_N18
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

-- Location: LCFF_X25_Y12_N19
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[3]~23_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X25_Y12_N22
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

-- Location: LCCOMB_X25_Y12_N8
\counter[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~feeder_combout\ = \counter[5]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[5]~27_combout\,
	combout => \counter[5]~feeder_combout\);

-- Location: LCFF_X25_Y12_N9
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[5]~feeder_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X25_Y12_N26
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

-- Location: LCFF_X25_Y12_N27
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[7]~31_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X25_Y12_N28
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

-- Location: LCFF_X25_Y12_N29
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[8]~33_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCCOMB_X25_Y12_N30
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

-- Location: LCCOMB_X25_Y11_N0
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

-- Location: LCFF_X25_Y11_N1
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[10]~37_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X25_Y11_N2
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

-- Location: LCFF_X25_Y11_N3
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[11]~39_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X25_Y11_N4
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

-- Location: LCCOMB_X26_Y11_N28
\Equal0~6_RTM027\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_RTM027_combout\ = (\counter[12]~41_combout\) # ((\counter[10]~37_combout\) # (\counter[5]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter[12]~41_combout\,
	datac => \counter[10]~37_combout\,
	datad => \counter[5]~27_combout\,
	combout => \Equal0~6_RTM027_combout\);

-- Location: LCFF_X26_Y11_N29
\Equal0~6_NEW_REG24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal0~6_RTM027_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal0~6_OTERM25\);

-- Location: LCCOMB_X25_Y12_N0
\counter[2]_NEW38\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]_OTERM39\ = (\Equal9~2_combout\ & ((\counter[2]~21_combout\))) # (!\Equal9~2_combout\ & (counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datac => \counter[2]~21_combout\,
	datad => \Equal9~2_combout\,
	combout => \counter[2]_OTERM39\);

-- Location: LCFF_X26_Y12_N21
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[2]_OTERM39\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X26_Y12_N16
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!counter(1) & (!counter(0) & (!counter(2) & !counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(2),
	datad => counter(4),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X25_Y11_N6
\counter[13]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[13]~43_combout\ = (counter(13) & (\counter[12]~42\ $ (GND))) # (!counter(13) & (!\counter[12]~42\ & VCC))
-- \counter[13]~44\ = CARRY((counter(13) & !\counter[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~42\,
	combout => \counter[13]~43_combout\,
	cout => \counter[13]~44\);

-- Location: LCFF_X25_Y11_N7
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[13]~43_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCCOMB_X25_Y11_N8
\counter[14]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[14]~45_combout\ = (counter(14) & (!\counter[13]~44\)) # (!counter(14) & ((\counter[13]~44\) # (GND)))
-- \counter[14]~46\ = CARRY((!\counter[13]~44\) # (!counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~44\,
	combout => \counter[14]~45_combout\,
	cout => \counter[14]~46\);

-- Location: LCFF_X25_Y11_N25
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[14]~45_combout\,
	sload => VCC,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCCOMB_X25_Y11_N10
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

-- Location: LCFF_X25_Y11_N11
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[15]~47_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X25_Y11_N12
\counter[16]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[16]~49_combout\ = (counter(16) & (!\counter[15]~48\)) # (!counter(16) & ((\counter[15]~48\) # (GND)))
-- \counter[16]~50\ = CARRY((!\counter[15]~48\) # (!counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~48\,
	combout => \counter[16]~49_combout\,
	cout => \counter[16]~50\);

-- Location: LCFF_X25_Y11_N23
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[16]~49_combout\,
	sload => VCC,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCCOMB_X25_Y11_N14
\counter[17]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[17]~51_combout\ = (counter(17) & (\counter[16]~50\ $ (GND))) # (!counter(17) & (!\counter[16]~50\ & VCC))
-- \counter[17]~52\ = CARRY((counter(17) & !\counter[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~50\,
	combout => \counter[17]~51_combout\,
	cout => \counter[17]~52\);

-- Location: LCFF_X25_Y11_N27
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \counter[17]~51_combout\,
	sload => VCC,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCFF_X25_Y11_N17
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[18]~53_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LCCOMB_X25_Y12_N10
\counter[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[9]~feeder_combout\ = \counter[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[9]~35_combout\,
	combout => \counter[9]~feeder_combout\);

-- Location: LCFF_X25_Y12_N11
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[9]~feeder_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X25_Y11_N22
\Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (counter(6) & (counter(14) & (counter(16) & counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(14),
	datac => counter(16),
	datad => counter(9),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X25_Y11_N26
\Equal9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (counter(19) & (counter(18) & (counter(17) & \Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datab => counter(18),
	datac => counter(17),
	datad => \Equal9~0_combout\,
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X26_Y11_N4
\Equal9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~2_combout\ = (\Equal0~5_OTERM33\) # ((\Equal0~6_OTERM25\) # ((!\Equal9~1_combout\) # (!\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_OTERM33\,
	datab => \Equal0~6_OTERM25\,
	datac => \Equal0~3_combout\,
	datad => \Equal9~1_combout\,
	combout => \Equal9~2_combout\);

-- Location: LCCOMB_X26_Y12_N22
\counter[4]_NEW40\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]_OTERM41\ = (\Equal9~2_combout\ & (\counter[4]~25_combout\)) # (!\Equal9~2_combout\ & ((counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[4]~25_combout\,
	datab => \Equal9~2_combout\,
	datac => counter(4),
	combout => \counter[4]_OTERM41\);

-- Location: LCFF_X26_Y12_N23
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter[4]_OTERM41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X26_Y12_N28
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!counter(4) & !counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(4),
	datad => counter(0),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X25_Y11_N30
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\counter[13]~43_combout\ & (!\counter[11]~39_combout\ & (\counter[3]~23_combout\ & !\counter[15]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[13]~43_combout\,
	datab => \counter[11]~39_combout\,
	datac => \counter[3]~23_combout\,
	datad => \counter[15]~47_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X25_Y11_N24
\Equal0~0_RTM015\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_RTM015_combout\ = (\counter[6]~29_combout\) # ((\counter[17]~51_combout\) # ((\counter[14]~45_combout\) # (\counter[16]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[6]~29_combout\,
	datab => \counter[17]~51_combout\,
	datac => \counter[14]~45_combout\,
	datad => \counter[16]~49_combout\,
	combout => \Equal0~0_RTM015_combout\);

-- Location: LCCOMB_X26_Y11_N30
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\counter[8]~33_combout\ & (!\counter[10]~37_combout\ & (\counter[7]~31_combout\ & \counter[9]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[8]~33_combout\,
	datab => \counter[10]~37_combout\,
	datac => \counter[7]~31_combout\,
	datad => \counter[9]~35_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X25_Y11_N28
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\Equal0~1_RTM011_combout\ & (\Equal1~0_combout\ & (!\Equal0~0_RTM015_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_RTM011_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal0~0_RTM015_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCFF_X25_Y11_N29
\Equal1~2_NEW_REG20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal1~2_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal1~2_OTERM21\);

-- Location: LCCOMB_X26_Y12_N26
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!counter(5) & (\Equal1~3_combout\ & (\Equal1~2_OTERM21\ & counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \Equal1~3_combout\,
	datac => \Equal1~2_OTERM21\,
	datad => counter(12),
	combout => \Equal1~4_combout\);

-- Location: LCFF_X26_Y11_N3
\Equal5~0_OTERM23_NEW_REG46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \Equal9~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal5~0_OTERM23_OTERM47\);

-- Location: LCFF_X26_Y11_N1
\Equal5~0_OTERM23_NEW_REG48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal5~0_NEW_REG22_OTERM43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal5~0_OTERM23_OTERM49\);

-- Location: LCCOMB_X26_Y11_N22
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\counter[4]~25_combout\ & (\counter[5]~27_combout\ & (\counter[12]~41_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[4]~25_combout\,
	datab => \counter[5]~27_combout\,
	datac => \counter[12]~41_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCFF_X26_Y11_N23
\Equal5~0_OTERM23_NEW_REG44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal5~0_OTERM23_OTERM45\);

-- Location: LCCOMB_X26_Y11_N0
\Equal5~0_NEW_REG22_NEW42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_NEW_REG22_OTERM43\ = (\Equal5~0_OTERM23_OTERM47\ & ((\Equal5~0_OTERM23_OTERM45\))) # (!\Equal5~0_OTERM23_OTERM47\ & (\Equal5~0_OTERM23_OTERM49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~0_OTERM23_OTERM47\,
	datac => \Equal5~0_OTERM23_OTERM49\,
	datad => \Equal5~0_OTERM23_OTERM45\,
	combout => \Equal5~0_NEW_REG22_OTERM43\);

-- Location: LCCOMB_X26_Y12_N18
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (counter(2) & !counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(2),
	datad => counter(1),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X26_Y11_N24
\Equal0~4_RTM07\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_RTM07_combout\ = (\counter[15]~47_combout\) # ((\counter[13]~43_combout\) # (\counter[11]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[15]~47_combout\,
	datac => \counter[13]~43_combout\,
	datad => \counter[11]~39_combout\,
	combout => \Equal0~4_RTM07_combout\);

-- Location: LCCOMB_X26_Y11_N14
\Equal0~5_RTM035\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_RTM035_combout\ = (\counter[3]~23_combout\) # ((\counter[7]~31_combout\) # ((\Equal0~4_RTM07_combout\) # (\counter[8]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[3]~23_combout\,
	datab => \counter[7]~31_combout\,
	datac => \Equal0~4_RTM07_combout\,
	datad => \counter[8]~33_combout\,
	combout => \Equal0~5_RTM035_combout\);

-- Location: LCFF_X26_Y11_N15
\Equal0~5_NEW_REG32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal0~5_RTM035_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal0~5_OTERM33\);

-- Location: LCCOMB_X26_Y11_N8
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Equal0~2_OTERM17\ & (!\Equal0~5_OTERM33\ & (\Equal0~3_combout\ & !\Equal0~6_OTERM25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_OTERM17\,
	datab => \Equal0~5_OTERM33\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~6_OTERM25\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X25_Y10_N8
\WideOr8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr8~2_combout\ = (!\Equal0~7_combout\ & (((!\Equal4~0_combout\) # (!\Equal5~0_NEW_REG22_OTERM43\)) # (!counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => \Equal5~0_NEW_REG22_OTERM43\,
	datac => \Equal4~0_combout\,
	datad => \Equal0~7_combout\,
	combout => \WideOr8~2_combout\);

-- Location: LCCOMB_X24_Y10_N24
WideOr8 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = (\WideOr8~2_combout\ & (((counter(1)) # (!\Equal1~4_combout\)) # (!counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \Equal1~4_combout\,
	datac => counter(1),
	datad => \WideOr8~2_combout\,
	combout => \WideOr8~combout\);

-- Location: LCCOMB_X21_Y10_N12
\MRAM_D[0]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \MRAM_D[0]~enfeeder_combout\ = \WideOr8~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WideOr8~combout\,
	combout => \MRAM_D[0]~enfeeder_combout\);

-- Location: LCCOMB_X26_Y12_N0
\Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!counter(0) & (!counter(2) & counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datac => counter(2),
	datad => counter(1),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X26_Y12_N4
\Equal5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (\Equal5~1_OTERM31\ & (\Equal5~2_combout\ & (\Equal1~2_OTERM21\ & counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_OTERM31\,
	datab => \Equal5~2_combout\,
	datac => \Equal1~2_OTERM21\,
	datad => counter(12),
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X26_Y11_N26
\Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\counter[12]~41_combout\ & (\counter[10]~37_combout\ & \counter[5]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter[12]~41_combout\,
	datac => \counter[10]~37_combout\,
	datad => \counter[5]~27_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCFF_X26_Y11_N27
\Equal8~0_NEW_REG28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal8~0_combout\,
	ena => \Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Equal8~0_OTERM29\);

-- Location: LCCOMB_X26_Y11_N12
\Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (!\Equal0~2_OTERM17\ & (!\Equal0~5_OTERM33\ & (\Equal0~3_combout\ & \Equal8~0_OTERM29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_OTERM17\,
	datab => \Equal0~5_OTERM33\,
	datac => \Equal0~3_combout\,
	datad => \Equal8~0_OTERM29\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X25_Y10_N0
\WideNor0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = (!\Equal5~3_combout\ & (!\Equal8~1_combout\ & ((!\Equal1~4_combout\) # (!\Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Equal1~4_combout\,
	datac => \Equal5~3_combout\,
	datad => \Equal8~1_combout\,
	combout => \WideNor0~2_combout\);

-- Location: LCCOMB_X26_Y12_N6
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (counter(1) & (!counter(2) & \Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datad => \Equal1~4_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X25_Y10_N30
\WideNor0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = ((\Equal3~0_combout\) # ((!\WideNor0~2_combout\) # (!\WideOr8~2_combout\))) # (!\WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~1_combout\,
	datab => \Equal3~0_combout\,
	datac => \WideOr8~2_combout\,
	datad => \WideNor0~2_combout\,
	combout => \WideNor0~3_combout\);

-- Location: LCCOMB_X24_Y10_N12
WideOr9 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr9~combout\ = (!\Equal6~0_combout\ & (\WideNor0~2_combout\ & (!\Equal3~0_combout\ & \WideNor0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \WideNor0~2_combout\,
	datac => \Equal3~0_combout\,
	datad => \WideNor0~3_combout\,
	combout => \WideOr9~combout\);

-- Location: LCFF_X21_Y10_N13
\MRAM_D[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \MRAM_D[0]~enfeeder_combout\,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[0]~en_regout\);

-- Location: LCFF_X24_Y10_N7
\MRAM_D[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[1]~en_regout\);

-- Location: LCFF_X24_Y10_N25
\MRAM_D[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \WideOr8~combout\,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[2]~en_regout\);

-- Location: LCFF_X24_Y10_N9
\MRAM_D[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[3]~en_regout\);

-- Location: LCFF_X24_Y10_N31
\MRAM_D[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[4]~en_regout\);

-- Location: LCFF_X24_Y10_N19
\MRAM_D[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[5]~en_regout\);

-- Location: LCFF_X24_Y10_N3
\MRAM_D[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[6]~en_regout\);

-- Location: LCFF_X24_Y10_N5
\MRAM_D[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[7]~en_regout\);

-- Location: LCFF_X24_Y10_N27
\MRAM_D[8]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[8]~en_regout\);

-- Location: LCFF_X24_Y10_N1
\MRAM_D[9]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[9]~en_regout\);

-- Location: LCFF_X24_Y10_N15
\MRAM_D[10]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[10]~en_regout\);

-- Location: LCFF_X24_Y10_N29
\MRAM_D[11]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[11]~en_regout\);

-- Location: LCFF_X24_Y10_N23
\MRAM_D[12]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[12]~en_regout\);

-- Location: LCFF_X24_Y10_N17
\MRAM_D[13]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[13]~en_regout\);

-- Location: LCFF_X24_Y10_N21
\MRAM_D[14]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[14]~en_regout\);

-- Location: LCFF_X24_Y10_N11
\MRAM_D[15]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \WideOr8~combout\,
	sload => VCC,
	ena => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_D[15]~en_regout\);

-- Location: LCCOMB_X26_Y11_N16
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!counter(1) & (\Equal5~0_NEW_REG22_OTERM43\ & (!counter(0) & counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \Equal5~0_NEW_REG22_OTERM43\,
	datac => counter(0),
	datad => counter(2),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X25_Y10_N26
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & (!\Equal8~1_combout\ & ((\Equal6~0_combout\) # (\WideNor0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Equal6~0_combout\,
	datac => \Equal8~1_combout\,
	datad => \WideNor0~3_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X25_Y10_N28
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\Equal3~0_combout\ & (\WideOr8~2_combout\ & ((\MRAM_EN~reg0_regout\) # (\Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \WideOr8~2_combout\,
	datac => \MRAM_EN~reg0_regout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCFF_X25_Y10_N29
\MRAM_EN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_EN~reg0_regout\);

-- Location: LCCOMB_X26_Y11_N2
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Equal8~1_combout\) # ((\Equal5~2_combout\ & \Equal5~0_NEW_REG22_OTERM43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \Equal5~0_NEW_REG22_OTERM43\,
	datad => \Equal8~1_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X26_Y12_N14
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal2~0_combout\ & (\Equal1~2_OTERM21\ & (counter(12) & !counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal1~2_OTERM21\,
	datac => counter(12),
	datad => counter(5),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X26_Y11_N20
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Equal2~1_combout\) # ((\Equal1~4_combout\ & ((!counter(2)) # (!counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \Equal1~4_combout\,
	datac => \Equal2~1_combout\,
	datad => counter(2),
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X26_Y11_N18
\Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = ((!\MRAM_OUTPUT_EN~reg0_regout\ & ((\Selector1~0_combout\) # (\Selector1~1_combout\)))) # (!\WideOr8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MRAM_OUTPUT_EN~reg0_regout\,
	datab => \Selector1~0_combout\,
	datac => \Selector1~1_combout\,
	datad => \WideOr8~2_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X26_Y11_N6
\Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (!\Selector1~2_combout\ & ((\Equal6~0_combout\) # ((\WideNor0~3_combout\) # (\MRAM_OUTPUT_EN~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \WideNor0~3_combout\,
	datac => \MRAM_OUTPUT_EN~reg0_regout\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~3_combout\);

-- Location: LCFF_X26_Y11_N7
\MRAM_OUTPUT_EN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_OUTPUT_EN~reg0_regout\);

-- Location: LCCOMB_X25_Y10_N4
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Equal5~3_combout\) # ((\Equal2~1_combout\) # ((\Equal4~0_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal1~4_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X25_Y10_N12
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\Equal8~1_combout\ & (!\Equal6~0_combout\ & (!\Selector2~0_combout\ & \WideNor0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \Equal6~0_combout\,
	datac => \Selector2~0_combout\,
	datad => \WideNor0~3_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X25_Y10_N20
\Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!\Equal3~0_combout\ & (\WideOr8~2_combout\ & ((\MRAM_WRITE_EN~reg0_regout\) # (\Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \WideOr8~2_combout\,
	datac => \MRAM_WRITE_EN~reg0_regout\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCFF_X25_Y10_N21
\MRAM_WRITE_EN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_WRITE_EN~reg0_regout\);

-- Location: LCCOMB_X25_Y10_N14
\Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = (!\Selector4~2_combout\ & ((\Equal6~0_combout\) # ((\MRAM_LOWER_EN~reg0_regout\) # (\WideNor0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~2_combout\,
	datab => \Equal6~0_combout\,
	datac => \MRAM_LOWER_EN~reg0_regout\,
	datad => \WideNor0~3_combout\,
	combout => \Selector4~3_combout\);

-- Location: LCFF_X25_Y10_N15
\MRAM_LOWER_EN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_LOWER_EN~reg0_regout\);

-- Location: LCCOMB_X27_Y10_N30
\got_data[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[0]~feeder_combout\ = \MRAM_D[0]~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[0]~0\,
	combout => \got_data[0]~feeder_combout\);

-- Location: LCCOMB_X25_Y10_N2
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!counter(1) & (counter(2) & (counter(0) & \Equal5~0_NEW_REG22_OTERM43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(0),
	datad => \Equal5~0_NEW_REG22_OTERM43\,
	combout => \Equal7~0_combout\);

-- Location: LCFF_X27_Y10_N31
\got_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[0]~feeder_combout\,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(0));

-- Location: LCCOMB_X26_Y12_N8
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!counter(1) & (counter(0) & (!counter(2) & !counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(2),
	datad => counter(4),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X26_Y12_N30
\WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (!\Equal2~0_combout\ & ((counter(1)) # ((!\Equal1~3_combout\) # (!counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => \Equal2~0_combout\,
	datad => \Equal1~3_combout\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X26_Y12_N24
\WideNor0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = (counter(5)) # (((\WideNor0~0_combout\) # (!counter(12))) # (!\Equal1~2_OTERM21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \Equal1~2_OTERM21\,
	datac => counter(12),
	datad => \WideNor0~0_combout\,
	combout => \WideNor0~1_combout\);

-- Location: LCCOMB_X26_Y12_N12
\WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = ((counter(0) & (\Equal5~0_NEW_REG22_OTERM43\ & \Equal4~0_combout\))) # (!\WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => \Equal5~0_NEW_REG22_OTERM43\,
	datac => \Equal4~0_combout\,
	datad => \WideNor0~1_combout\,
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X26_Y10_N14
WideOr7 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~combout\ = (\Equal6~0_combout\) # ((\Equal3~0_combout\) # ((\WideOr7~0_combout\) # (!\WideNor0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \WideNor0~3_combout\,
	datad => \WideOr7~0_combout\,
	combout => \WideOr7~combout\);

-- Location: LCCOMB_X26_Y10_N22
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Equal8~1_combout\ & ((got_data(0)) # ((\MRAM_A[0]~reg0_regout\ & \WideOr7~combout\)))) # (!\Equal8~1_combout\ & (((\MRAM_A[0]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => got_data(0),
	datac => \MRAM_A[0]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector20~0_combout\);

-- Location: LCFF_X26_Y10_N23
\MRAM_A[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[0]~reg0_regout\);

-- Location: LCCOMB_X27_Y10_N0
\got_data[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[1]~feeder_combout\ = \MRAM_D[1]~1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[1]~1\,
	combout => \got_data[1]~feeder_combout\);

-- Location: LCFF_X27_Y10_N1
\got_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[1]~feeder_combout\,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(1));

-- Location: LCCOMB_X26_Y10_N2
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\Equal8~1_combout\ & ((got_data(1)) # ((\MRAM_A[1]~reg0_regout\ & \WideOr7~combout\)))) # (!\Equal8~1_combout\ & (((\MRAM_A[1]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => got_data(1),
	datac => \MRAM_A[1]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector19~0_combout\);

-- Location: LCFF_X26_Y10_N3
\MRAM_A[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[1]~reg0_regout\);

-- Location: LCCOMB_X27_Y10_N22
\got_data[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[2]~feeder_combout\ = \MRAM_D[2]~2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[2]~2\,
	combout => \got_data[2]~feeder_combout\);

-- Location: LCFF_X27_Y10_N23
\got_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[2]~feeder_combout\,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(2));

-- Location: LCCOMB_X26_Y10_N12
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\Equal8~1_combout\ & ((got_data(2)) # ((\MRAM_A[2]~reg0_regout\ & \WideOr7~combout\)))) # (!\Equal8~1_combout\ & (((\MRAM_A[2]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => got_data(2),
	datac => \MRAM_A[2]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector18~0_combout\);

-- Location: LCFF_X26_Y10_N13
\MRAM_A[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[2]~reg0_regout\);

-- Location: LCCOMB_X26_Y10_N4
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (got_data(3) & ((\Equal8~1_combout\) # ((\MRAM_A[3]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(3) & (((\MRAM_A[3]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(3),
	datab => \Equal8~1_combout\,
	datac => \MRAM_A[3]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector17~0_combout\);

-- Location: LCFF_X26_Y10_N5
\MRAM_A[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[3]~reg0_regout\);

-- Location: LCCOMB_X26_Y10_N8
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (got_data(4) & ((\Equal8~1_combout\) # ((\MRAM_A[4]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(4) & (((\MRAM_A[4]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(4),
	datab => \Equal8~1_combout\,
	datac => \MRAM_A[4]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector16~0_combout\);

-- Location: LCFF_X26_Y10_N9
\MRAM_A[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[4]~reg0_regout\);

-- Location: LCCOMB_X26_Y10_N24
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (got_data(5) & ((\Equal8~1_combout\) # ((\MRAM_A[5]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(5) & (((\MRAM_A[5]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(5),
	datab => \Equal8~1_combout\,
	datac => \MRAM_A[5]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector15~0_combout\);

-- Location: LCFF_X26_Y10_N25
\MRAM_A[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[5]~reg0_regout\);

-- Location: LCCOMB_X25_Y10_N24
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

-- Location: LCFF_X25_Y10_N25
\got_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[6]~feeder_combout\,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(6));

-- Location: LCCOMB_X26_Y10_N30
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Equal8~1_combout\ & ((got_data(6)) # ((\MRAM_A[6]~reg0_regout\ & \WideOr7~combout\)))) # (!\Equal8~1_combout\ & (((\MRAM_A[6]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => got_data(6),
	datac => \MRAM_A[6]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector14~0_combout\);

-- Location: LCFF_X26_Y10_N31
\MRAM_A[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[6]~reg0_regout\);

-- Location: LCCOMB_X27_Y10_N6
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (got_data(7) & ((\Equal8~1_combout\) # ((\MRAM_A[7]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(7) & (((\MRAM_A[7]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(7),
	datab => \Equal8~1_combout\,
	datac => \MRAM_A[7]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector13~0_combout\);

-- Location: LCFF_X27_Y10_N7
\MRAM_A[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[7]~reg0_regout\);

-- Location: LCFF_X25_Y10_N19
\got_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[8]~8\,
	sload => VCC,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(8));

-- Location: LCCOMB_X26_Y10_N10
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Equal8~1_combout\ & ((got_data(8)) # ((\MRAM_A[8]~reg0_regout\ & \WideOr7~combout\)))) # (!\Equal8~1_combout\ & (((\MRAM_A[8]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => got_data(8),
	datac => \MRAM_A[8]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector12~0_combout\);

-- Location: LCFF_X26_Y10_N11
\MRAM_A[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[8]~reg0_regout\);

-- Location: LCFF_X27_Y10_N11
\got_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[9]~9\,
	sload => VCC,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(9));

-- Location: LCCOMB_X26_Y10_N18
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\Equal8~1_combout\ & ((got_data(9)) # ((\MRAM_A[9]~reg0_regout\ & \WideOr7~combout\)))) # (!\Equal8~1_combout\ & (((\MRAM_A[9]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => got_data(9),
	datac => \MRAM_A[9]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X26_Y10_N19
\MRAM_A[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[9]~reg0_regout\);

-- Location: LCCOMB_X27_Y10_N8
\got_data[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[10]~feeder_combout\ = \MRAM_D[10]~10\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[10]~10\,
	combout => \got_data[10]~feeder_combout\);

-- Location: LCFF_X27_Y10_N9
\got_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[10]~feeder_combout\,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(10));

-- Location: LCCOMB_X26_Y10_N26
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Equal8~1_combout\ & ((got_data(10)) # ((\MRAM_A[10]~reg0_regout\ & \WideOr7~combout\)))) # (!\Equal8~1_combout\ & (((\MRAM_A[10]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => got_data(10),
	datac => \MRAM_A[10]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector10~0_combout\);

-- Location: LCFF_X26_Y10_N27
\MRAM_A[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[10]~reg0_regout\);

-- Location: LCCOMB_X27_Y10_N18
\got_data[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[11]~feeder_combout\ = \MRAM_D[11]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[11]~11\,
	combout => \got_data[11]~feeder_combout\);

-- Location: LCFF_X27_Y10_N19
\got_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[11]~feeder_combout\,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(11));

-- Location: LCCOMB_X26_Y10_N20
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Equal8~1_combout\ & ((got_data(11)) # ((\MRAM_A[11]~reg0_regout\ & \WideOr7~combout\)))) # (!\Equal8~1_combout\ & (((\MRAM_A[11]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => got_data(11),
	datac => \MRAM_A[11]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X26_Y10_N21
\MRAM_A[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[11]~reg0_regout\);

-- Location: LCCOMB_X27_Y10_N12
\got_data[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \got_data[12]~feeder_combout\ = \MRAM_D[12]~12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[12]~12\,
	combout => \got_data[12]~feeder_combout\);

-- Location: LCFF_X27_Y10_N13
\got_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[12]~feeder_combout\,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(12));

-- Location: LCCOMB_X26_Y10_N0
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Equal8~1_combout\ & ((got_data(12)) # ((\MRAM_A[12]~reg0_regout\ & \WideOr7~combout\)))) # (!\Equal8~1_combout\ & (((\MRAM_A[12]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => got_data(12),
	datac => \MRAM_A[12]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector8~0_combout\);

-- Location: LCFF_X26_Y10_N1
\MRAM_A[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[12]~reg0_regout\);

-- Location: LCCOMB_X27_Y10_N28
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

-- Location: LCFF_X27_Y10_N29
\got_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[13]~feeder_combout\,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(13));

-- Location: LCCOMB_X26_Y10_N28
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Equal8~1_combout\ & ((got_data(13)) # ((\MRAM_A[13]~reg0_regout\ & \WideOr7~combout\)))) # (!\Equal8~1_combout\ & (((\MRAM_A[13]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => got_data(13),
	datac => \MRAM_A[13]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X26_Y10_N29
\MRAM_A[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[13]~reg0_regout\);

-- Location: LCCOMB_X26_Y10_N6
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (got_data(14) & ((\Equal8~1_combout\) # ((\MRAM_A[14]~reg0_regout\ & \WideOr7~combout\)))) # (!got_data(14) & (((\MRAM_A[14]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => got_data(14),
	datab => \Equal8~1_combout\,
	datac => \MRAM_A[14]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X26_Y10_N7
\MRAM_A[14]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MRAM_A[14]~reg0_regout\);

-- Location: LCCOMB_X27_Y10_N14
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

-- Location: LCFF_X27_Y10_N15
\got_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \got_data[15]~feeder_combout\,
	ena => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => got_data(15));

-- Location: LCCOMB_X26_Y10_N16
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Equal8~1_combout\ & ((got_data(15)) # ((\MRAM_A[15]~reg0_regout\ & \WideOr7~combout\)))) # (!\Equal8~1_combout\ & (((\MRAM_A[15]~reg0_regout\ & \WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => got_data(15),
	datac => \MRAM_A[15]~reg0_regout\,
	datad => \WideOr7~combout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X26_Y10_N17
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


