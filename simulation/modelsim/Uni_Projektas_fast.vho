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

-- DATE "01/13/2023 23:36:25"

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

ENTITY 	UNI_Projektas IS
    PORT (
	CLK : IN std_logic;
	ADC_IN : IN std_logic_vector(7 DOWNTO 0);
	DATA_OUT : OUT std_logic_vector(5 DOWNTO 0);
	SYNC : OUT std_logic
	);
END UNI_Projektas;

-- Design Ports Information
-- DATA_OUT[0]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_OUT[1]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_OUT[2]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_OUT[3]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_OUT[4]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_OUT[5]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SYNC	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADC_IN[7]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_IN[6]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_IN[5]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_IN[4]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_IN[3]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_IN[2]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_IN[1]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_IN[0]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF UNI_Projektas IS
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
SIGNAL ww_ADC_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DATA_OUT : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_SYNC : std_logic;
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_divider1|Add1~4_combout\ : std_logic;
SIGNAL \clock_divider1|Add1~6_combout\ : std_logic;
SIGNAL \clock_divider1|counter[5]~0_combout\ : std_logic;
SIGNAL \clock_divider1|counter~1_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \clock_divider1|Add1~0_combout\ : std_logic;
SIGNAL \clock_divider1|Add1~3\ : std_logic;
SIGNAL \clock_divider1|Add1~5\ : std_logic;
SIGNAL \clock_divider1|Add1~7\ : std_logic;
SIGNAL \clock_divider1|Add1~9\ : std_logic;
SIGNAL \clock_divider1|Add1~10_combout\ : std_logic;
SIGNAL \clock_divider1|Add1~11\ : std_logic;
SIGNAL \clock_divider1|Add1~12_combout\ : std_logic;
SIGNAL \clock_divider1|Add1~8_combout\ : std_logic;
SIGNAL \clock_divider1|LessThan0~0_combout\ : std_logic;
SIGNAL \clock_divider1|counter~2_combout\ : std_logic;
SIGNAL \clock_divider1|Add1~1\ : std_logic;
SIGNAL \clock_divider1|Add1~2_combout\ : std_logic;
SIGNAL \clock_divider1|Add1~13\ : std_logic;
SIGNAL \clock_divider1|Add1~14_combout\ : std_logic;
SIGNAL \clock_divider1|LessThan0~1_combout\ : std_logic;
SIGNAL \clock_divider1|half_clock[1]~feeder_combout\ : std_logic;
SIGNAL \clock_divider1|LessThan0~2_combout\ : std_logic;
SIGNAL \clock_divider1|clock_out~regout\ : std_logic;
SIGNAL \clock_divider1|half_clock\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock_divider1|counter\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_ADC_IN <= ADC_IN;
DATA_OUT <= ww_DATA_OUT;
SYNC <= ww_SYNC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

-- Location: LCCOMB_X1_Y4_N8
\clock_divider1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|Add1~4_combout\ = (\clock_divider1|counter\(2) & (\clock_divider1|Add1~3\ $ (GND))) # (!\clock_divider1|counter\(2) & (!\clock_divider1|Add1~3\ & VCC))
-- \clock_divider1|Add1~5\ = CARRY((\clock_divider1|counter\(2) & !\clock_divider1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider1|counter\(2),
	datad => VCC,
	cin => \clock_divider1|Add1~3\,
	combout => \clock_divider1|Add1~4_combout\,
	cout => \clock_divider1|Add1~5\);

-- Location: LCCOMB_X1_Y4_N10
\clock_divider1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|Add1~6_combout\ = (\clock_divider1|counter\(3) & (!\clock_divider1|Add1~5\)) # (!\clock_divider1|counter\(3) & ((\clock_divider1|Add1~5\) # (GND)))
-- \clock_divider1|Add1~7\ = CARRY((!\clock_divider1|Add1~5\) # (!\clock_divider1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider1|counter\(3),
	datad => VCC,
	cin => \clock_divider1|Add1~5\,
	combout => \clock_divider1|Add1~6_combout\,
	cout => \clock_divider1|Add1~7\);

-- Location: LCFF_X1_Y4_N11
\clock_divider1|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider1|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider1|counter\(3));

-- Location: LCFF_X1_Y4_N21
\clock_divider1|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider1|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider1|counter\(2));

-- Location: LCCOMB_X1_Y4_N24
\clock_divider1|counter[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|counter[5]~0_combout\ = (\clock_divider1|counter\(0)) # (!\clock_divider1|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider1|counter\(2),
	datad => \clock_divider1|counter\(0),
	combout => \clock_divider1|counter[5]~0_combout\);

-- Location: LCCOMB_X1_Y4_N20
\clock_divider1|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|counter~1_combout\ = (\clock_divider1|Add1~4_combout\ & ((\clock_divider1|counter[5]~0_combout\) # ((!\clock_divider1|LessThan0~0_combout\) # (!\clock_divider1|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider1|counter[5]~0_combout\,
	datab => \clock_divider1|LessThan0~1_combout\,
	datac => \clock_divider1|Add1~4_combout\,
	datad => \clock_divider1|LessThan0~0_combout\,
	combout => \clock_divider1|counter~1_combout\);

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

-- Location: LCCOMB_X1_Y4_N4
\clock_divider1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|Add1~0_combout\ = \clock_divider1|counter\(0) $ (VCC)
-- \clock_divider1|Add1~1\ = CARRY(\clock_divider1|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider1|counter\(0),
	datad => VCC,
	combout => \clock_divider1|Add1~0_combout\,
	cout => \clock_divider1|Add1~1\);

-- Location: LCCOMB_X1_Y4_N6
\clock_divider1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|Add1~2_combout\ = (\clock_divider1|counter\(1) & (!\clock_divider1|Add1~1\)) # (!\clock_divider1|counter\(1) & ((\clock_divider1|Add1~1\) # (GND)))
-- \clock_divider1|Add1~3\ = CARRY((!\clock_divider1|Add1~1\) # (!\clock_divider1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider1|counter\(1),
	datad => VCC,
	cin => \clock_divider1|Add1~1\,
	combout => \clock_divider1|Add1~2_combout\,
	cout => \clock_divider1|Add1~3\);

-- Location: LCCOMB_X1_Y4_N12
\clock_divider1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|Add1~8_combout\ = (\clock_divider1|counter\(4) & (\clock_divider1|Add1~7\ $ (GND))) # (!\clock_divider1|counter\(4) & (!\clock_divider1|Add1~7\ & VCC))
-- \clock_divider1|Add1~9\ = CARRY((\clock_divider1|counter\(4) & !\clock_divider1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider1|counter\(4),
	datad => VCC,
	cin => \clock_divider1|Add1~7\,
	combout => \clock_divider1|Add1~8_combout\,
	cout => \clock_divider1|Add1~9\);

-- Location: LCCOMB_X1_Y4_N14
\clock_divider1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|Add1~10_combout\ = (\clock_divider1|counter\(5) & (!\clock_divider1|Add1~9\)) # (!\clock_divider1|counter\(5) & ((\clock_divider1|Add1~9\) # (GND)))
-- \clock_divider1|Add1~11\ = CARRY((!\clock_divider1|Add1~9\) # (!\clock_divider1|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider1|counter\(5),
	datad => VCC,
	cin => \clock_divider1|Add1~9\,
	combout => \clock_divider1|Add1~10_combout\,
	cout => \clock_divider1|Add1~11\);

-- Location: LCFF_X1_Y4_N15
\clock_divider1|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider1|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider1|counter\(5));

-- Location: LCCOMB_X1_Y4_N16
\clock_divider1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|Add1~12_combout\ = (\clock_divider1|counter\(6) & (\clock_divider1|Add1~11\ $ (GND))) # (!\clock_divider1|counter\(6) & (!\clock_divider1|Add1~11\ & VCC))
-- \clock_divider1|Add1~13\ = CARRY((\clock_divider1|counter\(6) & !\clock_divider1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider1|counter\(6),
	datad => VCC,
	cin => \clock_divider1|Add1~11\,
	combout => \clock_divider1|Add1~12_combout\,
	cout => \clock_divider1|Add1~13\);

-- Location: LCFF_X1_Y4_N17
\clock_divider1|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider1|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider1|counter\(6));

-- Location: LCFF_X1_Y4_N13
\clock_divider1|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider1|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider1|counter\(4));

-- Location: LCCOMB_X1_Y4_N22
\clock_divider1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|LessThan0~0_combout\ = (!\clock_divider1|counter\(3) & (!\clock_divider1|counter\(5) & (!\clock_divider1|counter\(6) & !\clock_divider1|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider1|counter\(3),
	datab => \clock_divider1|counter\(5),
	datac => \clock_divider1|counter\(6),
	datad => \clock_divider1|counter\(4),
	combout => \clock_divider1|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y4_N26
\clock_divider1|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|counter~2_combout\ = (\clock_divider1|Add1~0_combout\ & ((\clock_divider1|counter[5]~0_combout\) # ((!\clock_divider1|LessThan0~0_combout\) # (!\clock_divider1|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider1|counter[5]~0_combout\,
	datab => \clock_divider1|LessThan0~1_combout\,
	datac => \clock_divider1|Add1~0_combout\,
	datad => \clock_divider1|LessThan0~0_combout\,
	combout => \clock_divider1|counter~2_combout\);

-- Location: LCFF_X1_Y4_N27
\clock_divider1|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider1|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider1|counter\(0));

-- Location: LCFF_X1_Y4_N7
\clock_divider1|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider1|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider1|counter\(1));

-- Location: LCCOMB_X1_Y4_N18
\clock_divider1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|Add1~14_combout\ = \clock_divider1|Add1~13\ $ (\clock_divider1|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider1|counter\(7),
	cin => \clock_divider1|Add1~13\,
	combout => \clock_divider1|Add1~14_combout\);

-- Location: LCFF_X1_Y4_N19
\clock_divider1|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider1|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider1|counter\(7));

-- Location: LCCOMB_X1_Y4_N0
\clock_divider1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|LessThan0~1_combout\ = (!\clock_divider1|counter\(1) & !\clock_divider1|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider1|counter\(1),
	datad => \clock_divider1|counter\(7),
	combout => \clock_divider1|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y4_N30
\clock_divider1|half_clock[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|half_clock[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \clock_divider1|half_clock[1]~feeder_combout\);

-- Location: LCFF_X1_Y4_N31
\clock_divider1|half_clock[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider1|half_clock[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider1|half_clock\(1));

-- Location: LCCOMB_X1_Y4_N28
\clock_divider1|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider1|LessThan0~2_combout\ = (\clock_divider1|counter\(2)) # (((!\clock_divider1|LessThan0~0_combout\) # (!\clock_divider1|half_clock\(1))) # (!\clock_divider1|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider1|counter\(2),
	datab => \clock_divider1|LessThan0~1_combout\,
	datac => \clock_divider1|half_clock\(1),
	datad => \clock_divider1|LessThan0~0_combout\,
	combout => \clock_divider1|LessThan0~2_combout\);

-- Location: LCFF_X1_Y4_N29
\clock_divider1|clock_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clock_divider1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider1|clock_out~regout\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_OUT[0]~I\ : cycloneii_io
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
	padio => ww_DATA_OUT(0));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_OUT[1]~I\ : cycloneii_io
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
	padio => ww_DATA_OUT(1));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_OUT[2]~I\ : cycloneii_io
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
	padio => ww_DATA_OUT(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_OUT[3]~I\ : cycloneii_io
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
	padio => ww_DATA_OUT(3));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_OUT[4]~I\ : cycloneii_io
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
	padio => ww_DATA_OUT(4));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_OUT[5]~I\ : cycloneii_io
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
	padio => ww_DATA_OUT(5));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SYNC~I\ : cycloneii_io
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
	datain => \clock_divider1|clock_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SYNC);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_IN[7]~I\ : cycloneii_io
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
	padio => ww_ADC_IN(7));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_IN[6]~I\ : cycloneii_io
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
	padio => ww_ADC_IN(6));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_IN[5]~I\ : cycloneii_io
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
	padio => ww_ADC_IN(5));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_IN[4]~I\ : cycloneii_io
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
	padio => ww_ADC_IN(4));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_IN[3]~I\ : cycloneii_io
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
	padio => ww_ADC_IN(3));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_IN[2]~I\ : cycloneii_io
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
	padio => ww_ADC_IN(2));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_IN[1]~I\ : cycloneii_io
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
	padio => ww_ADC_IN(1));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_IN[0]~I\ : cycloneii_io
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
	padio => ww_ADC_IN(0));
END structure;


