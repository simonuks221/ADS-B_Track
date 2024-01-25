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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/17/2024 19:25:36"

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
	BUTTON : IN std_logic;
	ADC_SHDN : OUT std_logic;
	ADC_SYNC : OUT std_logic;
	ADC_CLK : OUT std_logic;
	ADC_DORB : IN std_logic;
	ADC_DORA : IN std_logic;
	ADC_DCLKB : IN std_logic;
	ADC_DCLKA : IN std_logic;
	ADC_BIT_B : IN std_logic_vector(9 DOWNTO 0);
	ADC_BIT_A : IN std_logic_vector(9 DOWNTO 0);
	ADC_SPI_SDIN : INOUT std_logic;
	ADC_SPI_SCLK : OUT std_logic;
	ADC_SPI_CS : OUT std_logic;
	SPI_MOSI : INOUT std_logic;
	SPI_MISO : INOUT std_logic;
	SPI_SCLK : INOUT std_logic;
	SPI_CS : INOUT std_logic;
	MRAM_OUTPUT_EN : OUT std_logic;
	MRAM_A : OUT std_logic_vector(17 DOWNTO 0);
	MRAM_EN : OUT std_logic;
	MRAM_WRITE_EN : OUT std_logic;
	MRAM_UPPER_EN : OUT std_logic;
	MRAM_LOWER_EN : OUT std_logic;
	MRAM_D : INOUT std_logic_vector(15 DOWNTO 0);
	UART_RX : IN std_logic;
	UART_TX : OUT std_logic
	);
END UNI_Projektas;

-- Design Ports Information
-- SPI_MOSI	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SPI_MISO	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SPI_SCLK	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADC_SPI_SDIN	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SPI_CS	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- MRAM_D[10]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[11]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[12]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[13]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[14]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[15]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BUTTON	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_SHDN	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADC_SYNC	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADC_CLK	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADC_DORB	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_DORA	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_DCLKB	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_B[0]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_B[1]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_B[2]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_B[3]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_B[4]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_B[5]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_B[6]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_B[7]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_B[8]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_B[9]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[8]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[9]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_SPI_SCLK	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADC_SPI_CS	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_OUTPUT_EN	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- MRAM_EN	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_WRITE_EN	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_UPPER_EN	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_LOWER_EN	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_RX	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_TX	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_DCLKA	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[7]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[6]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[5]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[4]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[3]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[2]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[1]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[0]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_BUTTON : std_logic;
SIGNAL ww_ADC_SHDN : std_logic;
SIGNAL ww_ADC_SYNC : std_logic;
SIGNAL ww_ADC_CLK : std_logic;
SIGNAL ww_ADC_DORB : std_logic;
SIGNAL ww_ADC_DORA : std_logic;
SIGNAL ww_ADC_DCLKB : std_logic;
SIGNAL ww_ADC_DCLKA : std_logic;
SIGNAL ww_ADC_BIT_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ADC_BIT_A : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ADC_SPI_SCLK : std_logic;
SIGNAL ww_ADC_SPI_CS : std_logic;
SIGNAL ww_MRAM_OUTPUT_EN : std_logic;
SIGNAL ww_MRAM_A : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_MRAM_EN : std_logic;
SIGNAL ww_MRAM_WRITE_EN : std_logic;
SIGNAL ww_MRAM_UPPER_EN : std_logic;
SIGNAL ww_MRAM_LOWER_EN : std_logic;
SIGNAL ww_UART_RX : std_logic;
SIGNAL ww_UART_TX : std_logic;
SIGNAL \pl|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pl|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc_spi|curr_state.idle~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pl|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pl|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \pl|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \this_write_out_mram_manager|getting_data~regout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~26_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~30_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~36_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~44_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~55\ : std_logic;
SIGNAL \Corr_Main_1|Add19~57\ : std_logic;
SIGNAL \Corr_Main_1|Add19~56_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~59\ : std_logic;
SIGNAL \Corr_Main_1|Add19~58_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~61\ : std_logic;
SIGNAL \Corr_Main_1|Add19~60_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~62_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~6_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~8_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~13\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~14_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~0_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~8_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~10_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[2]~21_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[11]~39_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[13]~43_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[14]~45_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[15]~48\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[16]~51_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~7\ : std_logic;
SIGNAL \Corr_Main_1|Add5~9\ : std_logic;
SIGNAL \Corr_Main_1|Add5~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~11\ : std_logic;
SIGNAL \Corr_Main_1|Add5~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~13\ : std_logic;
SIGNAL \Corr_Main_1|Add5~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~15\ : std_logic;
SIGNAL \Corr_Main_1|Add5~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~1\ : std_logic;
SIGNAL \Corr_Main_1|Add4~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~3\ : std_logic;
SIGNAL \Corr_Main_1|Add4~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~5\ : std_logic;
SIGNAL \Corr_Main_1|Add4~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~7\ : std_logic;
SIGNAL \Corr_Main_1|Add4~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~9\ : std_logic;
SIGNAL \Corr_Main_1|Add4~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~11\ : std_logic;
SIGNAL \Corr_Main_1|Add4~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~13\ : std_logic;
SIGNAL \Corr_Main_1|Add4~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~15\ : std_logic;
SIGNAL \Corr_Main_1|Add4~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add10~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add10~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add10~7\ : std_logic;
SIGNAL \Corr_Main_1|Add10~9\ : std_logic;
SIGNAL \Corr_Main_1|Add10~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add10~11\ : std_logic;
SIGNAL \Corr_Main_1|Add10~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add10~13\ : std_logic;
SIGNAL \Corr_Main_1|Add10~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add10~15\ : std_logic;
SIGNAL \Corr_Main_1|Add10~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add10~17\ : std_logic;
SIGNAL \Corr_Main_1|Add10~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add10~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~17\ : std_logic;
SIGNAL \Corr_Main_1|Add14~19\ : std_logic;
SIGNAL \Corr_Main_1|Add14~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~15\ : std_logic;
SIGNAL \Corr_Main_1|Add6~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add11~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add11~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add11~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add11~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add11~15\ : std_logic;
SIGNAL \Corr_Main_1|Add11~17\ : std_logic;
SIGNAL \Corr_Main_1|Add11~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add11~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~17\ : std_logic;
SIGNAL \Corr_Main_1|Add16~19\ : std_logic;
SIGNAL \Corr_Main_1|Add16~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add7~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add7~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add7~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add7~15\ : std_logic;
SIGNAL \Corr_Main_1|Add7~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~17\ : std_logic;
SIGNAL \Corr_Main_1|Add17~19\ : std_logic;
SIGNAL \Corr_Main_1|Add17~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~13\ : std_logic;
SIGNAL \Corr_Main_1|Add2~15\ : std_logic;
SIGNAL \Corr_Main_1|Add2~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~5\ : std_logic;
SIGNAL \Corr_Main_1|Add1~7\ : std_logic;
SIGNAL \Corr_Main_1|Add1~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~9\ : std_logic;
SIGNAL \Corr_Main_1|Add1~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~11\ : std_logic;
SIGNAL \Corr_Main_1|Add1~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~13\ : std_logic;
SIGNAL \Corr_Main_1|Add1~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~15\ : std_logic;
SIGNAL \Corr_Main_1|Add1~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add0~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~19\ : std_logic;
SIGNAL \Corr_Main_1|Add15~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add15~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add15~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add15~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add15~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add15~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~21\ : std_logic;
SIGNAL \Corr_Main_1|Add17~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~22_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~0_combout\ : std_logic;
SIGNAL \adc_spi|Equal1~1_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state.reading~regout\ : std_logic;
SIGNAL \Corr_Main_1|Equal0~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Equal0~5_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector0~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector13~0_combout\ : std_logic;
SIGNAL \adc_spi|Add1~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector7~0_combout\ : std_logic;
SIGNAL \adc_spi|Add1~1_combout\ : std_logic;
SIGNAL \adc_spi|Add1~2_combout\ : std_logic;
SIGNAL \adc_spi|Selector8~1_combout\ : std_logic;
SIGNAL \adc_spi|Add1~3_combout\ : std_logic;
SIGNAL \adc_spi|Add0~10_combout\ : std_logic;
SIGNAL \this_setup_manager|spi_command_index[2]~2_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~5_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~6_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~7_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|Equal0~0_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|getting_data~0_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~9_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~10_combout\ : std_logic;
SIGNAL \this_state_manager|Selector12~1_combout\ : std_logic;
SIGNAL \this_state_manager|process_1~2_combout\ : std_logic;
SIGNAL \this_state_manager|process_1~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~3_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~5_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~19_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~21_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~27_combout\ : std_logic;
SIGNAL \this_read_adc_manager|process_0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector11~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector5~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|PREAMBULE_FOUND~1_combout\ : std_logic;
SIGNAL \Corr_Main_1|PREAMBULE_FOUND~2_combout\ : std_logic;
SIGNAL \adc_spi|Selector19~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector20~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector21~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector22~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector23~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector24~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector25~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector26~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector27~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector28~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Mux0~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector29~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector30~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector31~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Mux1~0_combout\ : std_logic;
SIGNAL \adc_spi|curr_state.idle~clkctrl_outclk\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[10]~feeder_combout\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[11]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[6]~feeder_combout\ : std_logic;
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
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \pl|altpll_component|_clk0\ : std_logic;
SIGNAL \pl|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \adc_spi|Selector4~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector4~1_combout\ : std_logic;
SIGNAL \adc_spi|Equal2~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector8~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector5~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector9~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector6~0_combout\ : std_logic;
SIGNAL \adc_spi|Equal1~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector3~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector15~0_combout\ : std_logic;
SIGNAL \adc_spi|Add0~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector15~1_combout\ : std_logic;
SIGNAL \adc_spi|Add0~1\ : std_logic;
SIGNAL \adc_spi|Add0~2_combout\ : std_logic;
SIGNAL \adc_spi|Selector14~0_combout\ : std_logic;
SIGNAL \adc_spi|Add0~3\ : std_logic;
SIGNAL \adc_spi|Add0~4_combout\ : std_logic;
SIGNAL \adc_spi|Selector13~0_combout\ : std_logic;
SIGNAL \adc_spi|Equal0~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector3~1_combout\ : std_logic;
SIGNAL \adc_spi|curr_state.cs_up~regout\ : std_logic;
SIGNAL \this_state_manager|Add0~7\ : std_logic;
SIGNAL \this_state_manager|Add0~9\ : std_logic;
SIGNAL \this_state_manager|Add0~11\ : std_logic;
SIGNAL \this_state_manager|Add0~12_combout\ : std_logic;
SIGNAL \this_state_manager|Selector3~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[0]~18\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[1]~20_combout\ : std_logic;
SIGNAL \this_state_manager|Selector14~0_combout\ : std_logic;
SIGNAL \this_state_manager|curr_state.write_out_mram~regout\ : std_logic;
SIGNAL \this_write_out_mram_manager|msb~1_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|msb~regout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[0]~18\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[1]~20_combout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.transmiting~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector1~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|curr_state.sync~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector8~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector9~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector12~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~1\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~3\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~5\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~7\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~9\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~10_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector7~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Equal0~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~4_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector10~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Equal0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~11\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~12_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector6~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Equal0~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector3~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|curr_state.data~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector13~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector15~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector15~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector14~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector14~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector14~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector4~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector4~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|curr_state.stop~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|curr_state.idle~regout\ : std_logic;
SIGNAL \UART_Controller_1|Selector4~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.waiting~regout\ : std_logic;
SIGNAL \UART_Controller_1|Selector1~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.idle~regout\ : std_logic;
SIGNAL \UART_Controller_1|Selector2~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.reading_fifo~regout\ : std_logic;
SIGNAL \UART_Controller_1|fifo_read_req~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_DATA_IRQ~0_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_DATA_IRQ~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ : std_logic;
SIGNAL \this_write_out_mram_manager|have_data~0_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|have_data~regout\ : std_logic;
SIGNAL \this_write_out_mram_manager|msb~0_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|MRAM_READ_DATA~feeder_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|MRAM_READ_DATA~regout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~1_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~30_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~3\ : std_logic;
SIGNAL \Corr_Main_1|Add19~5\ : std_logic;
SIGNAL \Corr_Main_1|Add19~7\ : std_logic;
SIGNAL \Corr_Main_1|Add19~9\ : std_logic;
SIGNAL \Corr_Main_1|Add19~11\ : std_logic;
SIGNAL \Corr_Main_1|Add19~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~28_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~13\ : std_logic;
SIGNAL \Corr_Main_1|Add19~15\ : std_logic;
SIGNAL \Corr_Main_1|Add19~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~26_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~17\ : std_logic;
SIGNAL \Corr_Main_1|Add19~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~25_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~19\ : std_logic;
SIGNAL \Corr_Main_1|Add19~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~24_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~21\ : std_logic;
SIGNAL \Corr_Main_1|Add19~22_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~23_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~23\ : std_logic;
SIGNAL \Corr_Main_1|Add19~24_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~22_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~25\ : std_logic;
SIGNAL \Corr_Main_1|Add19~27\ : std_logic;
SIGNAL \Corr_Main_1|Add19~28_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~29\ : std_logic;
SIGNAL \Corr_Main_1|Add19~31\ : std_logic;
SIGNAL \Corr_Main_1|Add19~33\ : std_logic;
SIGNAL \Corr_Main_1|Add19~35\ : std_logic;
SIGNAL \Corr_Main_1|Add19~37\ : std_logic;
SIGNAL \Corr_Main_1|Add19~38_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~15_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~39\ : std_logic;
SIGNAL \Corr_Main_1|Add19~41\ : std_logic;
SIGNAL \Corr_Main_1|Add19~43\ : std_logic;
SIGNAL \Corr_Main_1|Add19~45\ : std_logic;
SIGNAL \Corr_Main_1|Add19~46_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~11_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~47\ : std_logic;
SIGNAL \Corr_Main_1|Add19~48_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~49\ : std_logic;
SIGNAL \Corr_Main_1|Add19~50_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~9_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~51\ : std_logic;
SIGNAL \Corr_Main_1|Add19~53\ : std_logic;
SIGNAL \Corr_Main_1|Add19~54_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~7_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~52_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Equal0~1_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~34_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~17_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~32_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Equal0~3_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~42_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~13_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~40_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Equal0~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Equal0~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Equal0~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~0_combout\ : std_logic;
SIGNAL \ADC_DCLKA~combout\ : std_logic;
SIGNAL \this_read_adc_manager|last_state~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|last_state~regout\ : std_logic;
SIGNAL \this_read_adc_manager|read_counter~3_combout\ : std_logic;
SIGNAL \this_read_adc_manager|read_counter~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|read_counter~1_combout\ : std_logic;
SIGNAL \this_read_adc_manager|read_counter~2_combout\ : std_logic;
SIGNAL \this_read_adc_manager|Equal1~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|ADC_BIT_VALID~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|ADC_BIT_VALID~regout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~1\ : std_logic;
SIGNAL \Corr_Main_1|Add19~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt[1]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter~52_combout\ : std_logic;
SIGNAL \Corr_Main_1|MRAM_WRITE_DATA~regout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~11_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state.idle~regout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter~19_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[1]~21\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[2]~23\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[3]~24_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[3]~25\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[4]~27\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[5]~28_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[5]~29\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[6]~30_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[6]~31\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[7]~32_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[7]~33\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[8]~34_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[8]~35\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[9]~36_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[9]~37\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[10]~38_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[10]~39\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[11]~41\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[12]~42_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[12]~43\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[13]~45\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[14]~47\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[15]~48_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[14]~46_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|Equal0~4_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|Equal0~3_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[4]~26_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|Equal0~1_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|Equal0~2_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|Equal0~5_combout\ : std_logic;
SIGNAL \this_state_manager|Selector12~0_combout\ : std_logic;
SIGNAL \this_state_manager|Selector12~2_combout\ : std_logic;
SIGNAL \this_state_manager|curr_state.read_adc~regout\ : std_logic;
SIGNAL \Corr_Main_1|Equal5~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter~19_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[1]~21\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[2]~23\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[3]~24_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[3]~25\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[4]~27\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[5]~28_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[5]~29\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[6]~30_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[4]~26_combout\ : std_logic;
SIGNAL \this_state_manager|process_1~1_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[6]~31\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[7]~32_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[7]~33\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[8]~34_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[8]~35\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[9]~36_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[9]~37\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[10]~38_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[10]~39\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[11]~41\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[12]~42_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[12]~43\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[13]~45\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[14]~47\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[15]~48_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[14]~46_combout\ : std_logic;
SIGNAL \this_state_manager|process_1~3_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[0]~17_combout\ : std_logic;
SIGNAL \this_state_manager|process_1~0_combout\ : std_logic;
SIGNAL \this_state_manager|process_1~4_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[0]~18\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[1]~19_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter~49_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter~50_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[1]~20\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[2]~22\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[3]~23_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[3]~24\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[4]~26\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[5]~27_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[5]~28\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[6]~29_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[6]~30\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[7]~31_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[7]~32\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[8]~33_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[8]~34\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[9]~35_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[9]~36\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[10]~37_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[10]~38\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[11]~40\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[12]~41_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[12]~42\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[13]~44\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[14]~46\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[15]~47_combout\ : std_logic;
SIGNAL \this_state_manager|process_1~7_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[0]~17_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[15]~49\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[16]~50_combout\ : std_logic;
SIGNAL \this_state_manager|process_1~5_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[4]~25_combout\ : std_logic;
SIGNAL \this_state_manager|process_1~6_combout\ : std_logic;
SIGNAL \this_state_manager|process_1~9_combout\ : std_logic;
SIGNAL \this_state_manager|process_1~10_combout\ : std_logic;
SIGNAL \this_state_manager|Selector13~0_combout\ : std_logic;
SIGNAL \this_state_manager|curr_state.wait_1~regout\ : std_logic;
SIGNAL \this_state_manager|Selector9~0_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~13\ : std_logic;
SIGNAL \this_state_manager|Add0~14_combout\ : std_logic;
SIGNAL \this_state_manager|Selector2~0_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~15\ : std_logic;
SIGNAL \this_state_manager|Add0~16_combout\ : std_logic;
SIGNAL \this_state_manager|Selector1~0_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~17\ : std_logic;
SIGNAL \this_state_manager|Add0~18_combout\ : std_logic;
SIGNAL \this_state_manager|Selector0~0_combout\ : std_logic;
SIGNAL \this_state_manager|curr_state.wait_0~0_combout\ : std_logic;
SIGNAL \this_state_manager|curr_state.wait_0~regout\ : std_logic;
SIGNAL \this_state_manager|Selector9~1_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~1\ : std_logic;
SIGNAL \this_state_manager|Add0~2_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~3\ : std_logic;
SIGNAL \this_state_manager|Add0~5\ : std_logic;
SIGNAL \this_state_manager|Add0~6_combout\ : std_logic;
SIGNAL \this_state_manager|Selector6~0_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~4_combout\ : std_logic;
SIGNAL \this_state_manager|Selector7~0_combout\ : std_logic;
SIGNAL \this_state_manager|Equal1~0_combout\ : std_logic;
SIGNAL \this_state_manager|Equal1~1_combout\ : std_logic;
SIGNAL \this_state_manager|Selector4~0_combout\ : std_logic;
SIGNAL \this_state_manager|Equal0~0_combout\ : std_logic;
SIGNAL \this_state_manager|Equal0~1_combout\ : std_logic;
SIGNAL \this_state_manager|Equal0~2_combout\ : std_logic;
SIGNAL \this_state_manager|Selector11~0_combout\ : std_logic;
SIGNAL \this_state_manager|Selector11~1_combout\ : std_logic;
SIGNAL \this_state_manager|curr_state.setup~regout\ : std_logic;
SIGNAL \this_setup_manager|spi_command_index[0]~1_combout\ : std_logic;
SIGNAL \this_setup_manager|spi_command_index[1]~0_combout\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_irq~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector0~0_combout\ : std_logic;
SIGNAL \adc_spi|curr_state.idle~regout\ : std_logic;
SIGNAL \adc_spi|Selector1~0_combout\ : std_logic;
SIGNAL \adc_spi|curr_state.latch_data~regout\ : std_logic;
SIGNAL \adc_spi|Selector2~0_combout\ : std_logic;
SIGNAL \adc_spi|curr_state.running~regout\ : std_logic;
SIGNAL \adc_spi|sclk~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector10~0_combout\ : std_logic;
SIGNAL \adc_spi|sclk~regout\ : std_logic;
SIGNAL \adc_spi|Selector16~2_combout\ : std_logic;
SIGNAL \adc_spi|SPI_CS~combout\ : std_logic;
SIGNAL \adc_spi|Selector18~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector18~1_combout\ : std_logic;
SIGNAL \adc_spi|Selector17~0_combout\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[15]~feeder_combout\ : std_logic;
SIGNAL \adc_spi|Selector16~0_combout\ : std_logic;
SIGNAL \adc_spi|Selector16~1_combout\ : std_logic;
SIGNAL \adc_spi|Add0~5\ : std_logic;
SIGNAL \adc_spi|Add0~6_combout\ : std_logic;
SIGNAL \adc_spi|Selector12~0_combout\ : std_logic;
SIGNAL \adc_spi|is_read~0_combout\ : std_logic;
SIGNAL \adc_spi|is_read~regout\ : std_logic;
SIGNAL \adc_spi|Add0~7\ : std_logic;
SIGNAL \adc_spi|Add0~8_combout\ : std_logic;
SIGNAL \adc_spi|Selector11~0_combout\ : std_logic;
SIGNAL \adc_spi|SPI_MOSI~1_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~31_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~32_combout\ : std_logic;
SIGNAL \Corr_Main_1|Equal0~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|cnt~29_combout\ : std_logic;
SIGNAL \Corr_Main_1|Equal0~7_combout\ : std_logic;
SIGNAL \Corr_Main_1|Equal0~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Equal0~9_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita1~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_7[36]~feeder_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[0]~feeder_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[0]~1_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[0]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0[0]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0[3]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0[4]~feeder_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[1]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[1]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_1[0]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_1[4]~feeder_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[2]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[2]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_2[2]~feeder_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[3]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_3[1]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_3[2]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_3[4]~feeder_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[4]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[4]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_4[0]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_4[2]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_4[4]~feeder_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[5]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_5[1]~feeder_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[6]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_6[0]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_6[1]~feeder_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[7]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_7[0]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_7[1]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_6[11]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a6\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_6[36]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_6[37]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_6[39]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_5[13]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_5[14]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_5[38]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_4[14]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a4\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_4[37]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_4[38]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_4[39]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_3[11]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_3[36]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_3[37]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_3[38]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_3[39]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_2[11]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a2\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_2[37]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_2[38]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_2[39]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_1[11]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_1[13]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_1[14]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_1[36]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_1[37]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_1[38]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0[11]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0[14]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0[39]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\ : std_logic;
SIGNAL \Corr_Main_1|Add3~1\ : std_logic;
SIGNAL \Corr_Main_1|Add3~3\ : std_logic;
SIGNAL \Corr_Main_1|Add3~5\ : std_logic;
SIGNAL \Corr_Main_1|Add3~7\ : std_logic;
SIGNAL \Corr_Main_1|Add3~9\ : std_logic;
SIGNAL \Corr_Main_1|Add3~11\ : std_logic;
SIGNAL \Corr_Main_1|Add3~13\ : std_logic;
SIGNAL \Corr_Main_1|Add3~15\ : std_logic;
SIGNAL \Corr_Main_1|Add3~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~1\ : std_logic;
SIGNAL \Corr_Main_1|Add9~3\ : std_logic;
SIGNAL \Corr_Main_1|Add9~5\ : std_logic;
SIGNAL \Corr_Main_1|Add9~7\ : std_logic;
SIGNAL \Corr_Main_1|Add9~9\ : std_logic;
SIGNAL \Corr_Main_1|Add9~11\ : std_logic;
SIGNAL \Corr_Main_1|Add9~13\ : std_logic;
SIGNAL \Corr_Main_1|Add9~15\ : std_logic;
SIGNAL \Corr_Main_1|Add9~17\ : std_logic;
SIGNAL \Corr_Main_1|Add9~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~1\ : std_logic;
SIGNAL \Corr_Main_1|Add2~3\ : std_logic;
SIGNAL \Corr_Main_1|Add2~5\ : std_logic;
SIGNAL \Corr_Main_1|Add2~7\ : std_logic;
SIGNAL \Corr_Main_1|Add2~9\ : std_logic;
SIGNAL \Corr_Main_1|Add2~11\ : std_logic;
SIGNAL \Corr_Main_1|Add2~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~1\ : std_logic;
SIGNAL \Corr_Main_1|Add13~3\ : std_logic;
SIGNAL \Corr_Main_1|Add13~5\ : std_logic;
SIGNAL \Corr_Main_1|Add13~7\ : std_logic;
SIGNAL \Corr_Main_1|Add13~9\ : std_logic;
SIGNAL \Corr_Main_1|Add13~11\ : std_logic;
SIGNAL \Corr_Main_1|Add13~13\ : std_logic;
SIGNAL \Corr_Main_1|Add13~15\ : std_logic;
SIGNAL \Corr_Main_1|Add13~17\ : std_logic;
SIGNAL \Corr_Main_1|Add13~19\ : std_logic;
SIGNAL \Corr_Main_1|Add13~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add0~1\ : std_logic;
SIGNAL \Corr_Main_1|Add0~3\ : std_logic;
SIGNAL \Corr_Main_1|Add0~5\ : std_logic;
SIGNAL \Corr_Main_1|Add0~7\ : std_logic;
SIGNAL \Corr_Main_1|Add0~9\ : std_logic;
SIGNAL \Corr_Main_1|Add0~11\ : std_logic;
SIGNAL \Corr_Main_1|Add0~13\ : std_logic;
SIGNAL \Corr_Main_1|Add0~15\ : std_logic;
SIGNAL \Corr_Main_1|Add0~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add0~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add0~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add0~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add0~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add0~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~1\ : std_logic;
SIGNAL \Corr_Main_1|Add1~3\ : std_logic;
SIGNAL \Corr_Main_1|Add1~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add0~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add0~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~1\ : std_logic;
SIGNAL \Corr_Main_1|Add8~3\ : std_logic;
SIGNAL \Corr_Main_1|Add8~5\ : std_logic;
SIGNAL \Corr_Main_1|Add8~7\ : std_logic;
SIGNAL \Corr_Main_1|Add8~9\ : std_logic;
SIGNAL \Corr_Main_1|Add8~11\ : std_logic;
SIGNAL \Corr_Main_1|Add8~13\ : std_logic;
SIGNAL \Corr_Main_1|Add8~15\ : std_logic;
SIGNAL \Corr_Main_1|Add8~17\ : std_logic;
SIGNAL \Corr_Main_1|Add8~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~1\ : std_logic;
SIGNAL \Corr_Main_1|Add12~3\ : std_logic;
SIGNAL \Corr_Main_1|Add12~5\ : std_logic;
SIGNAL \Corr_Main_1|Add12~7\ : std_logic;
SIGNAL \Corr_Main_1|Add12~9\ : std_logic;
SIGNAL \Corr_Main_1|Add12~11\ : std_logic;
SIGNAL \Corr_Main_1|Add12~13\ : std_logic;
SIGNAL \Corr_Main_1|Add12~15\ : std_logic;
SIGNAL \Corr_Main_1|Add12~17\ : std_logic;
SIGNAL \Corr_Main_1|Add12~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add15~1\ : std_logic;
SIGNAL \Corr_Main_1|Add15~3\ : std_logic;
SIGNAL \Corr_Main_1|Add15~5\ : std_logic;
SIGNAL \Corr_Main_1|Add15~7\ : std_logic;
SIGNAL \Corr_Main_1|Add15~9\ : std_logic;
SIGNAL \Corr_Main_1|Add15~11\ : std_logic;
SIGNAL \Corr_Main_1|Add15~13\ : std_logic;
SIGNAL \Corr_Main_1|Add15~15\ : std_logic;
SIGNAL \Corr_Main_1|Add15~17\ : std_logic;
SIGNAL \Corr_Main_1|Add15~19\ : std_logic;
SIGNAL \Corr_Main_1|Add15~21\ : std_logic;
SIGNAL \Corr_Main_1|Add15~22_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add15~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add15~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~1\ : std_logic;
SIGNAL \Corr_Main_1|Add5~3\ : std_logic;
SIGNAL \Corr_Main_1|Add5~5\ : std_logic;
SIGNAL \Corr_Main_1|Add5~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add10~1\ : std_logic;
SIGNAL \Corr_Main_1|Add10~3\ : std_logic;
SIGNAL \Corr_Main_1|Add10~5\ : std_logic;
SIGNAL \Corr_Main_1|Add10~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add10~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~1\ : std_logic;
SIGNAL \Corr_Main_1|Add14~3\ : std_logic;
SIGNAL \Corr_Main_1|Add14~5\ : std_logic;
SIGNAL \Corr_Main_1|Add14~7\ : std_logic;
SIGNAL \Corr_Main_1|Add14~9\ : std_logic;
SIGNAL \Corr_Main_1|Add14~11\ : std_logic;
SIGNAL \Corr_Main_1|Add14~13\ : std_logic;
SIGNAL \Corr_Main_1|Add14~15\ : std_logic;
SIGNAL \Corr_Main_1|Add14~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a7\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_7[47]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a6\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_6[46]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_5[46]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a4\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_2[46]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_1[46]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~1\ : std_logic;
SIGNAL \Corr_Main_1|Add6~3\ : std_logic;
SIGNAL \Corr_Main_1|Add6~5\ : std_logic;
SIGNAL \Corr_Main_1|Add6~7\ : std_logic;
SIGNAL \Corr_Main_1|Add6~9\ : std_logic;
SIGNAL \Corr_Main_1|Add6~11\ : std_logic;
SIGNAL \Corr_Main_1|Add6~13\ : std_logic;
SIGNAL \Corr_Main_1|Add6~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add11~1\ : std_logic;
SIGNAL \Corr_Main_1|Add11~3\ : std_logic;
SIGNAL \Corr_Main_1|Add11~5\ : std_logic;
SIGNAL \Corr_Main_1|Add11~7\ : std_logic;
SIGNAL \Corr_Main_1|Add11~9\ : std_logic;
SIGNAL \Corr_Main_1|Add11~11\ : std_logic;
SIGNAL \Corr_Main_1|Add11~13\ : std_logic;
SIGNAL \Corr_Main_1|Add11~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add11~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add11~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add11~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~1\ : std_logic;
SIGNAL \Corr_Main_1|Add16~3\ : std_logic;
SIGNAL \Corr_Main_1|Add16~5\ : std_logic;
SIGNAL \Corr_Main_1|Add16~7\ : std_logic;
SIGNAL \Corr_Main_1|Add16~9\ : std_logic;
SIGNAL \Corr_Main_1|Add16~11\ : std_logic;
SIGNAL \Corr_Main_1|Add16~13\ : std_logic;
SIGNAL \Corr_Main_1|Add16~15\ : std_logic;
SIGNAL \Corr_Main_1|Add16~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_6[47]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_6[48]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_5[48]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_4[48]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_2[48]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add7~1\ : std_logic;
SIGNAL \Corr_Main_1|Add7~3\ : std_logic;
SIGNAL \Corr_Main_1|Add7~5\ : std_logic;
SIGNAL \Corr_Main_1|Add7~7\ : std_logic;
SIGNAL \Corr_Main_1|Add7~9\ : std_logic;
SIGNAL \Corr_Main_1|Add7~11\ : std_logic;
SIGNAL \Corr_Main_1|Add7~13\ : std_logic;
SIGNAL \Corr_Main_1|Add7~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add7~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add7~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add7~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add7~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~1\ : std_logic;
SIGNAL \Corr_Main_1|Add17~3\ : std_logic;
SIGNAL \Corr_Main_1|Add17~5\ : std_logic;
SIGNAL \Corr_Main_1|Add17~7\ : std_logic;
SIGNAL \Corr_Main_1|Add17~9\ : std_logic;
SIGNAL \Corr_Main_1|Add17~11\ : std_logic;
SIGNAL \Corr_Main_1|Add17~13\ : std_logic;
SIGNAL \Corr_Main_1|Add17~15\ : std_logic;
SIGNAL \Corr_Main_1|Add17~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add15~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add15~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add15~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~1\ : std_logic;
SIGNAL \Corr_Main_1|Add18~3\ : std_logic;
SIGNAL \Corr_Main_1|Add18~5\ : std_logic;
SIGNAL \Corr_Main_1|Add18~7\ : std_logic;
SIGNAL \Corr_Main_1|Add18~9\ : std_logic;
SIGNAL \Corr_Main_1|Add18~11\ : std_logic;
SIGNAL \Corr_Main_1|Add18~13\ : std_logic;
SIGNAL \Corr_Main_1|Add18~15\ : std_logic;
SIGNAL \Corr_Main_1|Add18~17\ : std_logic;
SIGNAL \Corr_Main_1|Add18~19\ : std_logic;
SIGNAL \Corr_Main_1|Add18~21\ : std_logic;
SIGNAL \Corr_Main_1|Add18~22_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|PREAMBULE_FOUND~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~23\ : std_logic;
SIGNAL \Corr_Main_1|Add18~24_combout\ : std_logic;
SIGNAL \Corr_Main_1|PREAMBULE_FOUND~3_combout\ : std_logic;
SIGNAL \Corr_Main_1|PREAMBULE_FOUND~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|PREAMBULE_FOUND~regout\ : std_logic;
SIGNAL \this_mram_controller|counter~1_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux25~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Add0~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Add0~1_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux5~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector21~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[0]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|counter~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux42~0_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~8_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state.writing~regout\ : std_logic;
SIGNAL \this_mram_controller|Selector6~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[0]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[0]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|Mux27~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[1]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[1]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[1]~en_regout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~4_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux28~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[2]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[2]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[2]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|Mux29~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[3]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[3]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[3]~en_regout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~8_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux30~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[4]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[4]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[4]~en_regout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~10_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux31~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[5]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[5]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[5]~en_regout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~12_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux32~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[6]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[6]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[6]~en_regout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~14_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux33~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[7]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[7]~en_regout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~16_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux34~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[8]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[8]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[8]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|Mux35~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[9]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[9]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[9]~en_regout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~20_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux36~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[10]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[10]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[10]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|Mux37~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[11]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[11]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[11]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[12]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[12]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[13]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[13]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[14]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[14]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[15]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[15]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|Selector0~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector1~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector1~1_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_OUTPUT_EN~regout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[0]~17_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[2]~22_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[2]~22_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[11]~40_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[11]~40_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter[13]~44_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[13]~44_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[15]~49\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[16]~50_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux5~1_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector0~2_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_EN~regout\ : std_logic;
SIGNAL \this_mram_controller|Selector2~1_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux3~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector2~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector2~2_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_WRITE_EN~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[0]~0_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_SEND_DATA[0]~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_SEND_DATA[1]~1_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_SEND_DATA[2]~0_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_SEND_DATA[3]~3_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_SEND_DATA[4]~6_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_SEND_DATA[5]~5_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_SEND_DATA[6]~4_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|msb~_wirecell_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|data_send[6]~feeder_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|data_send[5]~feeder_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Mux0~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Mux0~3_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector2~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|curr_state.start~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|data_send[2]~feeder_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|data_send[1]~feeder_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Mux0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Mux0~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|TX~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|TX~3_combout\ : std_logic;
SIGNAL MRAM_ADDRESS_IN_COMBINED : std_logic_vector(17 DOWNTO 0);
SIGNAL \this_mram_controller|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \this_state_manager|counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \this_setup_manager|spi_command_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \this_read_adc_manager|read_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc_spi|tx_buf\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc_spi|bits_sent\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_tx_1|data_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Corr_Main_1|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Corr_Main_1|address_counter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|diff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_7\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_6\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_5\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_4\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_3\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_2\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_1\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \ADC_BIT_A~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \this_mram_controller|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \this_setup_manager|SPI_send_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \this_read_adc_manager|address_counter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \this_write_out_mram_manager|address_counter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \adc_spi|clk_counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_tx_1|data_send\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_tx_1|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adc_spi|ALT_INV_curr_state.idle~clkctrl_outclk\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[15]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[14]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[13]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[12]~en_regout\ : std_logic;
SIGNAL \this_state_manager|ALT_INV_curr_state.read_adc~regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_curr_state.idle~regout\ : std_logic;
SIGNAL \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_WRITE_EN~regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_EN~regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_OUTPUT_EN~regout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_BUTTON <= BUTTON;
ADC_SHDN <= ww_ADC_SHDN;
ADC_SYNC <= ww_ADC_SYNC;
ADC_CLK <= ww_ADC_CLK;
ww_ADC_DORB <= ADC_DORB;
ww_ADC_DORA <= ADC_DORA;
ww_ADC_DCLKB <= ADC_DCLKB;
ww_ADC_DCLKA <= ADC_DCLKA;
ww_ADC_BIT_B <= ADC_BIT_B;
ww_ADC_BIT_A <= ADC_BIT_A;
ADC_SPI_SCLK <= ww_ADC_SPI_SCLK;
ADC_SPI_CS <= ww_ADC_SPI_CS;
MRAM_OUTPUT_EN <= ww_MRAM_OUTPUT_EN;
MRAM_A <= ww_MRAM_A;
MRAM_EN <= ww_MRAM_EN;
MRAM_WRITE_EN <= ww_MRAM_WRITE_EN;
MRAM_UPPER_EN <= ww_MRAM_UPPER_EN;
MRAM_LOWER_EN <= ww_MRAM_LOWER_EN;
ww_UART_RX <= UART_RX;
UART_TX <= ww_UART_TX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pl|altpll_component|pll_INCLK_bus\ <= (gnd & \CLK~combout\);

\pl|altpll_component|_clk0\ <= \pl|altpll_component|pll_CLK_bus\(0);
\pl|altpll_component|pll~CLK1\ <= \pl|altpll_component|pll_CLK_bus\(1);
\pl|altpll_component|pll~CLK2\ <= \pl|altpll_component|pll_CLK_bus\(2);

\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTADATAIN_bus\ <= (\this_write_out_mram_manager|msb~_wirecell_combout\ & \this_write_out_mram_manager|UART_SEND_DATA[6]~4_combout\ & 
\this_write_out_mram_manager|UART_SEND_DATA[5]~5_combout\ & \this_write_out_mram_manager|UART_SEND_DATA[4]~6_combout\ & \this_write_out_mram_manager|UART_SEND_DATA[3]~3_combout\ & \this_write_out_mram_manager|UART_SEND_DATA[2]~0_combout\ & 
\this_write_out_mram_manager|UART_SEND_DATA[1]~1_combout\ & \this_write_out_mram_manager|UART_SEND_DATA[0]~2_combout\);

\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTAADDR_bus\ <= (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3) & 
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBADDR_bus\ <= (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) & 
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & 
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(0) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(0);
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(1) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(1);
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(2) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(2);
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(3) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(3);
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(4) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(4);
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(5) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(5);
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(6) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(6);
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(7) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(7);

\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\ <= (\Corr_Main_1|buff|buffer_7\(14) & \Corr_Main_1|buff|buffer_6\(14) & \Corr_Main_1|buff|buffer_5\(14) & \Corr_Main_1|buff|buffer_4\(14) & 
\Corr_Main_1|buff|buffer_3\(14) & \Corr_Main_1|buff|buffer_2\(14) & \Corr_Main_1|buff|buffer_1\(14) & \Corr_Main_1|buff|buffer_0\(14));

\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\ <= (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4) & \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3) & 
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2) & \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1) & \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(0));

\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\ <= (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4) & \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3) & 
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2) & \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1) & \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(0));

\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\ <= \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(0);
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\ <= \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(1);
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a2\ <= \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(2);
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\ <= \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(3);
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a4\ <= \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(4);
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\ <= \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(5);
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a6\ <= \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(6);
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\ <= \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(7);

\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\ <= (\Corr_Main_1|buff|buffer_7\(4) & \Corr_Main_1|buff|buffer_6\(4) & \Corr_Main_1|buff|buffer_5\(4) & \Corr_Main_1|buff|buffer_4\(4) & 
\Corr_Main_1|buff|buffer_3\(4) & \Corr_Main_1|buff|buffer_2\(4) & \Corr_Main_1|buff|buffer_1\(4) & \Corr_Main_1|buff|buffer_0\(4) & \Corr_Main_1|buff|buffer_7\(39) & \Corr_Main_1|buff|buffer_6\(39) & \Corr_Main_1|buff|buffer_5\(39) & 
\Corr_Main_1|buff|buffer_4\(39) & \Corr_Main_1|buff|buffer_3\(39) & \Corr_Main_1|buff|buffer_2\(39) & \Corr_Main_1|buff|buffer_1\(39) & \Corr_Main_1|buff|buffer_0\(39));

\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\ <= (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(1) & \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(0));

\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\ <= (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(1) & \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(0));

\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(0);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(1);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(2);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(3);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a4\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(4);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(5);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a6\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(6);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a7\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(7);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(8);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(9);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(10);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(11);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(12);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(13);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(14);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(15);

\adc_spi|curr_state.idle~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \adc_spi|curr_state.idle~regout\);

\pl|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \pl|altpll_component|_clk0\);

\rtl~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rtl~0_combout\);
\adc_spi|ALT_INV_curr_state.idle~clkctrl_outclk\ <= NOT \adc_spi|curr_state.idle~clkctrl_outclk\;
\this_mram_controller|ALT_INV_MRAM_D[15]~en_regout\ <= NOT \this_mram_controller|MRAM_D[15]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[14]~en_regout\ <= NOT \this_mram_controller|MRAM_D[14]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[13]~en_regout\ <= NOT \this_mram_controller|MRAM_D[13]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[12]~en_regout\ <= NOT \this_mram_controller|MRAM_D[12]~en_regout\;
\this_state_manager|ALT_INV_curr_state.read_adc~regout\ <= NOT \this_state_manager|curr_state.read_adc~regout\;
\this_mram_controller|ALT_INV_curr_state.idle~regout\ <= NOT \this_mram_controller|curr_state.idle~regout\;
\this_state_manager|ALT_INV_curr_state.write_out_mram~regout\ <= NOT \this_state_manager|curr_state.write_out_mram~regout\;
\this_mram_controller|ALT_INV_MRAM_WRITE_EN~regout\ <= NOT \this_mram_controller|MRAM_WRITE_EN~regout\;
\this_mram_controller|ALT_INV_MRAM_EN~regout\ <= NOT \this_mram_controller|MRAM_EN~regout\;
\this_mram_controller|ALT_INV_MRAM_OUTPUT_EN~regout\ <= NOT \this_mram_controller|MRAM_OUTPUT_EN~regout\;

-- Location: LCFF_X17_Y7_N7
\this_write_out_mram_manager|getting_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|getting_data~0_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|getting_data~regout\);

-- Location: LCFF_X27_Y7_N17
\this_read_adc_manager|address_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[16]~51_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(16));

-- Location: LCFF_X27_Y8_N21
\this_read_adc_manager|address_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[2]~21_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(2));

-- Location: LCFF_X27_Y7_N7
\this_read_adc_manager|address_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[11]~39_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(11));

-- Location: LCFF_X27_Y7_N11
\this_read_adc_manager|address_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[13]~43_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(13));

-- Location: LCFF_X27_Y7_N13
\this_read_adc_manager|address_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[14]~45_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(14));

-- Location: LCCOMB_X19_Y9_N0
\Corr_Main_1|Add19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~0_combout\ = \Corr_Main_1|cnt\(0) $ (VCC)
-- \Corr_Main_1|Add19~1\ = CARRY(\Corr_Main_1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt\(0),
	datad => VCC,
	combout => \Corr_Main_1|Add19~0_combout\,
	cout => \Corr_Main_1|Add19~1\);

-- Location: LCCOMB_X19_Y9_N4
\Corr_Main_1|Add19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~4_combout\ = (\Corr_Main_1|cnt\(2) & (\Corr_Main_1|Add19~3\ $ (GND))) # (!\Corr_Main_1|cnt\(2) & (!\Corr_Main_1|Add19~3\ & VCC))
-- \Corr_Main_1|Add19~5\ = CARRY((\Corr_Main_1|cnt\(2) & !\Corr_Main_1|Add19~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(2),
	datad => VCC,
	cin => \Corr_Main_1|Add19~3\,
	combout => \Corr_Main_1|Add19~4_combout\,
	cout => \Corr_Main_1|Add19~5\);

-- Location: LCCOMB_X19_Y9_N6
\Corr_Main_1|Add19~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~6_combout\ = (\Corr_Main_1|cnt\(3) & (!\Corr_Main_1|Add19~5\)) # (!\Corr_Main_1|cnt\(3) & ((\Corr_Main_1|Add19~5\) # (GND)))
-- \Corr_Main_1|Add19~7\ = CARRY((!\Corr_Main_1|Add19~5\) # (!\Corr_Main_1|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(3),
	datad => VCC,
	cin => \Corr_Main_1|Add19~5\,
	combout => \Corr_Main_1|Add19~6_combout\,
	cout => \Corr_Main_1|Add19~7\);

-- Location: LCCOMB_X19_Y9_N8
\Corr_Main_1|Add19~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~8_combout\ = (\Corr_Main_1|cnt\(4) & (\Corr_Main_1|Add19~7\ $ (GND))) # (!\Corr_Main_1|cnt\(4) & (!\Corr_Main_1|Add19~7\ & VCC))
-- \Corr_Main_1|Add19~9\ = CARRY((\Corr_Main_1|cnt\(4) & !\Corr_Main_1|Add19~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt\(4),
	datad => VCC,
	cin => \Corr_Main_1|Add19~7\,
	combout => \Corr_Main_1|Add19~8_combout\,
	cout => \Corr_Main_1|Add19~9\);

-- Location: LCCOMB_X19_Y9_N14
\Corr_Main_1|Add19~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~14_combout\ = (\Corr_Main_1|cnt\(7) & (!\Corr_Main_1|Add19~13\)) # (!\Corr_Main_1|cnt\(7) & ((\Corr_Main_1|Add19~13\) # (GND)))
-- \Corr_Main_1|Add19~15\ = CARRY((!\Corr_Main_1|Add19~13\) # (!\Corr_Main_1|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(7),
	datad => VCC,
	cin => \Corr_Main_1|Add19~13\,
	combout => \Corr_Main_1|Add19~14_combout\,
	cout => \Corr_Main_1|Add19~15\);

-- Location: LCCOMB_X19_Y9_N26
\Corr_Main_1|Add19~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~26_combout\ = (\Corr_Main_1|cnt\(13) & (!\Corr_Main_1|Add19~25\)) # (!\Corr_Main_1|cnt\(13) & ((\Corr_Main_1|Add19~25\) # (GND)))
-- \Corr_Main_1|Add19~27\ = CARRY((!\Corr_Main_1|Add19~25\) # (!\Corr_Main_1|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(13),
	datad => VCC,
	cin => \Corr_Main_1|Add19~25\,
	combout => \Corr_Main_1|Add19~26_combout\,
	cout => \Corr_Main_1|Add19~27\);

-- Location: LCCOMB_X19_Y9_N30
\Corr_Main_1|Add19~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~30_combout\ = (\Corr_Main_1|cnt\(15) & (!\Corr_Main_1|Add19~29\)) # (!\Corr_Main_1|cnt\(15) & ((\Corr_Main_1|Add19~29\) # (GND)))
-- \Corr_Main_1|Add19~31\ = CARRY((!\Corr_Main_1|Add19~29\) # (!\Corr_Main_1|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(15),
	datad => VCC,
	cin => \Corr_Main_1|Add19~29\,
	combout => \Corr_Main_1|Add19~30_combout\,
	cout => \Corr_Main_1|Add19~31\);

-- Location: LCCOMB_X19_Y8_N4
\Corr_Main_1|Add19~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~36_combout\ = (\Corr_Main_1|cnt\(18) & (\Corr_Main_1|Add19~35\ $ (GND))) # (!\Corr_Main_1|cnt\(18) & (!\Corr_Main_1|Add19~35\ & VCC))
-- \Corr_Main_1|Add19~37\ = CARRY((\Corr_Main_1|cnt\(18) & !\Corr_Main_1|Add19~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(18),
	datad => VCC,
	cin => \Corr_Main_1|Add19~35\,
	combout => \Corr_Main_1|Add19~36_combout\,
	cout => \Corr_Main_1|Add19~37\);

-- Location: LCCOMB_X19_Y8_N12
\Corr_Main_1|Add19~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~44_combout\ = (\Corr_Main_1|cnt\(22) & (\Corr_Main_1|Add19~43\ $ (GND))) # (!\Corr_Main_1|cnt\(22) & (!\Corr_Main_1|Add19~43\ & VCC))
-- \Corr_Main_1|Add19~45\ = CARRY((\Corr_Main_1|cnt\(22) & !\Corr_Main_1|Add19~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(22),
	datad => VCC,
	cin => \Corr_Main_1|Add19~43\,
	combout => \Corr_Main_1|Add19~44_combout\,
	cout => \Corr_Main_1|Add19~45\);

-- Location: LCCOMB_X19_Y8_N22
\Corr_Main_1|Add19~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~54_combout\ = (\Corr_Main_1|cnt\(27) & (!\Corr_Main_1|Add19~53\)) # (!\Corr_Main_1|cnt\(27) & ((\Corr_Main_1|Add19~53\) # (GND)))
-- \Corr_Main_1|Add19~55\ = CARRY((!\Corr_Main_1|Add19~53\) # (!\Corr_Main_1|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(27),
	datad => VCC,
	cin => \Corr_Main_1|Add19~53\,
	combout => \Corr_Main_1|Add19~54_combout\,
	cout => \Corr_Main_1|Add19~55\);

-- Location: LCCOMB_X19_Y8_N24
\Corr_Main_1|Add19~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~56_combout\ = (\Corr_Main_1|cnt\(28) & (\Corr_Main_1|Add19~55\ $ (GND))) # (!\Corr_Main_1|cnt\(28) & (!\Corr_Main_1|Add19~55\ & VCC))
-- \Corr_Main_1|Add19~57\ = CARRY((\Corr_Main_1|cnt\(28) & !\Corr_Main_1|Add19~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(28),
	datad => VCC,
	cin => \Corr_Main_1|Add19~55\,
	combout => \Corr_Main_1|Add19~56_combout\,
	cout => \Corr_Main_1|Add19~57\);

-- Location: LCCOMB_X19_Y8_N26
\Corr_Main_1|Add19~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~58_combout\ = (\Corr_Main_1|cnt\(29) & (!\Corr_Main_1|Add19~57\)) # (!\Corr_Main_1|cnt\(29) & ((\Corr_Main_1|Add19~57\) # (GND)))
-- \Corr_Main_1|Add19~59\ = CARRY((!\Corr_Main_1|Add19~57\) # (!\Corr_Main_1|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(29),
	datad => VCC,
	cin => \Corr_Main_1|Add19~57\,
	combout => \Corr_Main_1|Add19~58_combout\,
	cout => \Corr_Main_1|Add19~59\);

-- Location: LCCOMB_X19_Y8_N28
\Corr_Main_1|Add19~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~60_combout\ = (\Corr_Main_1|cnt\(30) & (\Corr_Main_1|Add19~59\ $ (GND))) # (!\Corr_Main_1|cnt\(30) & (!\Corr_Main_1|Add19~59\ & VCC))
-- \Corr_Main_1|Add19~61\ = CARRY((\Corr_Main_1|cnt\(30) & !\Corr_Main_1|Add19~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(30),
	datad => VCC,
	cin => \Corr_Main_1|Add19~59\,
	combout => \Corr_Main_1|Add19~60_combout\,
	cout => \Corr_Main_1|Add19~61\);

-- Location: LCCOMB_X19_Y8_N30
\Corr_Main_1|Add19~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~62_combout\ = \Corr_Main_1|Add19~61\ $ (\Corr_Main_1|cnt\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|cnt\(31),
	cin => \Corr_Main_1|Add19~61\,
	combout => \Corr_Main_1|Add19~62_combout\);

-- Location: LCCOMB_X13_Y6_N6
\UART_Controller_1|uart_tx_1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~2_combout\ = (\UART_Controller_1|uart_tx_1|counter\(1) & (!\UART_Controller_1|uart_tx_1|Add0~1\)) # (!\UART_Controller_1|uart_tx_1|counter\(1) & ((\UART_Controller_1|uart_tx_1|Add0~1\) # (GND)))
-- \UART_Controller_1|uart_tx_1|Add0~3\ = CARRY((!\UART_Controller_1|uart_tx_1|Add0~1\) # (!\UART_Controller_1|uart_tx_1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|counter\(1),
	datad => VCC,
	cin => \UART_Controller_1|uart_tx_1|Add0~1\,
	combout => \UART_Controller_1|uart_tx_1|Add0~2_combout\,
	cout => \UART_Controller_1|uart_tx_1|Add0~3\);

-- Location: LCCOMB_X13_Y6_N10
\UART_Controller_1|uart_tx_1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~6_combout\ = (\UART_Controller_1|uart_tx_1|counter\(3) & (!\UART_Controller_1|uart_tx_1|Add0~5\)) # (!\UART_Controller_1|uart_tx_1|counter\(3) & ((\UART_Controller_1|uart_tx_1|Add0~5\) # (GND)))
-- \UART_Controller_1|uart_tx_1|Add0~7\ = CARRY((!\UART_Controller_1|uart_tx_1|Add0~5\) # (!\UART_Controller_1|uart_tx_1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|counter\(3),
	datad => VCC,
	cin => \UART_Controller_1|uart_tx_1|Add0~5\,
	combout => \UART_Controller_1|uart_tx_1|Add0~6_combout\,
	cout => \UART_Controller_1|uart_tx_1|Add0~7\);

-- Location: LCCOMB_X13_Y6_N12
\UART_Controller_1|uart_tx_1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~8_combout\ = (\UART_Controller_1|uart_tx_1|counter\(4) & (\UART_Controller_1|uart_tx_1|Add0~7\ $ (GND))) # (!\UART_Controller_1|uart_tx_1|counter\(4) & (!\UART_Controller_1|uart_tx_1|Add0~7\ & VCC))
-- \UART_Controller_1|uart_tx_1|Add0~9\ = CARRY((\UART_Controller_1|uart_tx_1|counter\(4) & !\UART_Controller_1|uart_tx_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|counter\(4),
	datad => VCC,
	cin => \UART_Controller_1|uart_tx_1|Add0~7\,
	combout => \UART_Controller_1|uart_tx_1|Add0~8_combout\,
	cout => \UART_Controller_1|uart_tx_1|Add0~9\);

-- Location: LCCOMB_X13_Y6_N16
\UART_Controller_1|uart_tx_1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~12_combout\ = (\UART_Controller_1|uart_tx_1|counter\(6) & (\UART_Controller_1|uart_tx_1|Add0~11\ $ (GND))) # (!\UART_Controller_1|uart_tx_1|counter\(6) & (!\UART_Controller_1|uart_tx_1|Add0~11\ & VCC))
-- \UART_Controller_1|uart_tx_1|Add0~13\ = CARRY((\UART_Controller_1|uart_tx_1|counter\(6) & !\UART_Controller_1|uart_tx_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|counter\(6),
	datad => VCC,
	cin => \UART_Controller_1|uart_tx_1|Add0~11\,
	combout => \UART_Controller_1|uart_tx_1|Add0~12_combout\,
	cout => \UART_Controller_1|uart_tx_1|Add0~13\);

-- Location: LCCOMB_X13_Y6_N18
\UART_Controller_1|uart_tx_1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~14_combout\ = \UART_Controller_1|uart_tx_1|Add0~13\ $ (\UART_Controller_1|uart_tx_1|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_tx_1|counter\(7),
	cin => \UART_Controller_1|uart_tx_1|Add0~13\,
	combout => \UART_Controller_1|uart_tx_1|Add0~14_combout\);

-- Location: LCCOMB_X17_Y6_N12
\this_state_manager|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~0_combout\ = \this_state_manager|counter\(0) $ (VCC)
-- \this_state_manager|Add0~1\ = CARRY(\this_state_manager|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(0),
	datad => VCC,
	combout => \this_state_manager|Add0~0_combout\,
	cout => \this_state_manager|Add0~1\);

-- Location: LCCOMB_X17_Y6_N20
\this_state_manager|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~8_combout\ = (\this_state_manager|counter\(4) & (\this_state_manager|Add0~7\ $ (GND))) # (!\this_state_manager|counter\(4) & (!\this_state_manager|Add0~7\ & VCC))
-- \this_state_manager|Add0~9\ = CARRY((\this_state_manager|counter\(4) & !\this_state_manager|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(4),
	datad => VCC,
	cin => \this_state_manager|Add0~7\,
	combout => \this_state_manager|Add0~8_combout\,
	cout => \this_state_manager|Add0~9\);

-- Location: LCCOMB_X17_Y6_N22
\this_state_manager|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~10_combout\ = (\this_state_manager|counter\(5) & (!\this_state_manager|Add0~9\)) # (!\this_state_manager|counter\(5) & ((\this_state_manager|Add0~9\) # (GND)))
-- \this_state_manager|Add0~11\ = CARRY((!\this_state_manager|Add0~9\) # (!\this_state_manager|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(5),
	datad => VCC,
	cin => \this_state_manager|Add0~9\,
	combout => \this_state_manager|Add0~10_combout\,
	cout => \this_state_manager|Add0~11\);

-- Location: LCCOMB_X27_Y8_N20
\this_read_adc_manager|address_counter[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[2]~21_combout\ = (\this_read_adc_manager|address_counter\(2) & (\this_read_adc_manager|address_counter[1]~20\ $ (GND))) # (!\this_read_adc_manager|address_counter\(2) & (!\this_read_adc_manager|address_counter[1]~20\ 
-- & VCC))
-- \this_read_adc_manager|address_counter[2]~22\ = CARRY((\this_read_adc_manager|address_counter\(2) & !\this_read_adc_manager|address_counter[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(2),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[1]~20\,
	combout => \this_read_adc_manager|address_counter[2]~21_combout\,
	cout => \this_read_adc_manager|address_counter[2]~22\);

-- Location: LCCOMB_X27_Y7_N6
\this_read_adc_manager|address_counter[11]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[11]~39_combout\ = (\this_read_adc_manager|address_counter\(11) & (!\this_read_adc_manager|address_counter[10]~38\)) # (!\this_read_adc_manager|address_counter\(11) & ((\this_read_adc_manager|address_counter[10]~38\) 
-- # (GND)))
-- \this_read_adc_manager|address_counter[11]~40\ = CARRY((!\this_read_adc_manager|address_counter[10]~38\) # (!\this_read_adc_manager|address_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(11),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[10]~38\,
	combout => \this_read_adc_manager|address_counter[11]~39_combout\,
	cout => \this_read_adc_manager|address_counter[11]~40\);

-- Location: LCCOMB_X27_Y7_N10
\this_read_adc_manager|address_counter[13]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[13]~43_combout\ = (\this_read_adc_manager|address_counter\(13) & (!\this_read_adc_manager|address_counter[12]~42\)) # (!\this_read_adc_manager|address_counter\(13) & ((\this_read_adc_manager|address_counter[12]~42\) 
-- # (GND)))
-- \this_read_adc_manager|address_counter[13]~44\ = CARRY((!\this_read_adc_manager|address_counter[12]~42\) # (!\this_read_adc_manager|address_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(13),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[12]~42\,
	combout => \this_read_adc_manager|address_counter[13]~43_combout\,
	cout => \this_read_adc_manager|address_counter[13]~44\);

-- Location: LCCOMB_X27_Y7_N12
\this_read_adc_manager|address_counter[14]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[14]~45_combout\ = (\this_read_adc_manager|address_counter\(14) & (\this_read_adc_manager|address_counter[13]~44\ $ (GND))) # (!\this_read_adc_manager|address_counter\(14) & 
-- (!\this_read_adc_manager|address_counter[13]~44\ & VCC))
-- \this_read_adc_manager|address_counter[14]~46\ = CARRY((\this_read_adc_manager|address_counter\(14) & !\this_read_adc_manager|address_counter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(14),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[13]~44\,
	combout => \this_read_adc_manager|address_counter[14]~45_combout\,
	cout => \this_read_adc_manager|address_counter[14]~46\);

-- Location: LCCOMB_X27_Y7_N14
\this_read_adc_manager|address_counter[15]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[15]~47_combout\ = (\this_read_adc_manager|address_counter\(15) & (!\this_read_adc_manager|address_counter[14]~46\)) # (!\this_read_adc_manager|address_counter\(15) & ((\this_read_adc_manager|address_counter[14]~46\) 
-- # (GND)))
-- \this_read_adc_manager|address_counter[15]~48\ = CARRY((!\this_read_adc_manager|address_counter[14]~46\) # (!\this_read_adc_manager|address_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(15),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[14]~46\,
	combout => \this_read_adc_manager|address_counter[15]~47_combout\,
	cout => \this_read_adc_manager|address_counter[15]~48\);

-- Location: LCCOMB_X27_Y7_N16
\this_read_adc_manager|address_counter[16]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[16]~51_combout\ = \this_read_adc_manager|address_counter\(16) $ (!\this_read_adc_manager|address_counter[15]~48\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(16),
	cin => \this_read_adc_manager|address_counter[15]~48\,
	combout => \this_read_adc_manager|address_counter[16]~51_combout\);

-- Location: LCCOMB_X22_Y7_N14
\Corr_Main_1|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~6_combout\ = (\Corr_Main_1|buff|buffer_3\(38) & ((\Corr_Main_1|buff|buffer_3\(39) & (\Corr_Main_1|Add5~5\ & VCC)) # (!\Corr_Main_1|buff|buffer_3\(39) & (!\Corr_Main_1|Add5~5\)))) # (!\Corr_Main_1|buff|buffer_3\(38) & 
-- ((\Corr_Main_1|buff|buffer_3\(39) & (!\Corr_Main_1|Add5~5\)) # (!\Corr_Main_1|buff|buffer_3\(39) & ((\Corr_Main_1|Add5~5\) # (GND)))))
-- \Corr_Main_1|Add5~7\ = CARRY((\Corr_Main_1|buff|buffer_3\(38) & (!\Corr_Main_1|buff|buffer_3\(39) & !\Corr_Main_1|Add5~5\)) # (!\Corr_Main_1|buff|buffer_3\(38) & ((!\Corr_Main_1|Add5~5\) # (!\Corr_Main_1|buff|buffer_3\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_3\(38),
	datab => \Corr_Main_1|buff|buffer_3\(39),
	datad => VCC,
	cin => \Corr_Main_1|Add5~5\,
	combout => \Corr_Main_1|Add5~6_combout\,
	cout => \Corr_Main_1|Add5~7\);

-- Location: LCCOMB_X22_Y7_N16
\Corr_Main_1|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~8_combout\ = ((\Corr_Main_1|buff|buffer_4\(38) $ (\Corr_Main_1|buff|buffer_4\(39) $ (!\Corr_Main_1|Add5~7\)))) # (GND)
-- \Corr_Main_1|Add5~9\ = CARRY((\Corr_Main_1|buff|buffer_4\(38) & ((\Corr_Main_1|buff|buffer_4\(39)) # (!\Corr_Main_1|Add5~7\))) # (!\Corr_Main_1|buff|buffer_4\(38) & (\Corr_Main_1|buff|buffer_4\(39) & !\Corr_Main_1|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_4\(38),
	datab => \Corr_Main_1|buff|buffer_4\(39),
	datad => VCC,
	cin => \Corr_Main_1|Add5~7\,
	combout => \Corr_Main_1|Add5~8_combout\,
	cout => \Corr_Main_1|Add5~9\);

-- Location: LCCOMB_X22_Y7_N18
\Corr_Main_1|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~10_combout\ = (\Corr_Main_1|buff|buffer_5\(39) & ((\Corr_Main_1|buff|buffer_5\(38) & (\Corr_Main_1|Add5~9\ & VCC)) # (!\Corr_Main_1|buff|buffer_5\(38) & (!\Corr_Main_1|Add5~9\)))) # (!\Corr_Main_1|buff|buffer_5\(39) & 
-- ((\Corr_Main_1|buff|buffer_5\(38) & (!\Corr_Main_1|Add5~9\)) # (!\Corr_Main_1|buff|buffer_5\(38) & ((\Corr_Main_1|Add5~9\) # (GND)))))
-- \Corr_Main_1|Add5~11\ = CARRY((\Corr_Main_1|buff|buffer_5\(39) & (!\Corr_Main_1|buff|buffer_5\(38) & !\Corr_Main_1|Add5~9\)) # (!\Corr_Main_1|buff|buffer_5\(39) & ((!\Corr_Main_1|Add5~9\) # (!\Corr_Main_1|buff|buffer_5\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_5\(39),
	datab => \Corr_Main_1|buff|buffer_5\(38),
	datad => VCC,
	cin => \Corr_Main_1|Add5~9\,
	combout => \Corr_Main_1|Add5~10_combout\,
	cout => \Corr_Main_1|Add5~11\);

-- Location: LCCOMB_X22_Y7_N20
\Corr_Main_1|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~12_combout\ = ((\Corr_Main_1|buff|buffer_6\(39) $ (\Corr_Main_1|buff|buffer_6\(38) $ (!\Corr_Main_1|Add5~11\)))) # (GND)
-- \Corr_Main_1|Add5~13\ = CARRY((\Corr_Main_1|buff|buffer_6\(39) & ((\Corr_Main_1|buff|buffer_6\(38)) # (!\Corr_Main_1|Add5~11\))) # (!\Corr_Main_1|buff|buffer_6\(39) & (\Corr_Main_1|buff|buffer_6\(38) & !\Corr_Main_1|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_6\(39),
	datab => \Corr_Main_1|buff|buffer_6\(38),
	datad => VCC,
	cin => \Corr_Main_1|Add5~11\,
	combout => \Corr_Main_1|Add5~12_combout\,
	cout => \Corr_Main_1|Add5~13\);

-- Location: LCCOMB_X22_Y7_N22
\Corr_Main_1|Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~14_combout\ = (\Corr_Main_1|buff|buffer_7\(39) & ((\Corr_Main_1|buff|buffer_7\(38) & (\Corr_Main_1|Add5~13\ & VCC)) # (!\Corr_Main_1|buff|buffer_7\(38) & (!\Corr_Main_1|Add5~13\)))) # (!\Corr_Main_1|buff|buffer_7\(39) & 
-- ((\Corr_Main_1|buff|buffer_7\(38) & (!\Corr_Main_1|Add5~13\)) # (!\Corr_Main_1|buff|buffer_7\(38) & ((\Corr_Main_1|Add5~13\) # (GND)))))
-- \Corr_Main_1|Add5~15\ = CARRY((\Corr_Main_1|buff|buffer_7\(39) & (!\Corr_Main_1|buff|buffer_7\(38) & !\Corr_Main_1|Add5~13\)) # (!\Corr_Main_1|buff|buffer_7\(39) & ((!\Corr_Main_1|Add5~13\) # (!\Corr_Main_1|buff|buffer_7\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_7\(39),
	datab => \Corr_Main_1|buff|buffer_7\(38),
	datad => VCC,
	cin => \Corr_Main_1|Add5~13\,
	combout => \Corr_Main_1|Add5~14_combout\,
	cout => \Corr_Main_1|Add5~15\);

-- Location: LCCOMB_X22_Y7_N24
\Corr_Main_1|Add5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~16_combout\ = !\Corr_Main_1|Add5~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add5~15\,
	combout => \Corr_Main_1|Add5~16_combout\);

-- Location: LCCOMB_X20_Y7_N4
\Corr_Main_1|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~0_combout\ = (\Corr_Main_1|buff|buffer_0\(37) & (\Corr_Main_1|buff|buffer_0\(36) $ (VCC))) # (!\Corr_Main_1|buff|buffer_0\(37) & (\Corr_Main_1|buff|buffer_0\(36) & VCC))
-- \Corr_Main_1|Add4~1\ = CARRY((\Corr_Main_1|buff|buffer_0\(37) & \Corr_Main_1|buff|buffer_0\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0\(37),
	datab => \Corr_Main_1|buff|buffer_0\(36),
	datad => VCC,
	combout => \Corr_Main_1|Add4~0_combout\,
	cout => \Corr_Main_1|Add4~1\);

-- Location: LCCOMB_X20_Y7_N6
\Corr_Main_1|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~2_combout\ = (\Corr_Main_1|buff|buffer_1\(36) & ((\Corr_Main_1|buff|buffer_1\(37) & (\Corr_Main_1|Add4~1\ & VCC)) # (!\Corr_Main_1|buff|buffer_1\(37) & (!\Corr_Main_1|Add4~1\)))) # (!\Corr_Main_1|buff|buffer_1\(36) & 
-- ((\Corr_Main_1|buff|buffer_1\(37) & (!\Corr_Main_1|Add4~1\)) # (!\Corr_Main_1|buff|buffer_1\(37) & ((\Corr_Main_1|Add4~1\) # (GND)))))
-- \Corr_Main_1|Add4~3\ = CARRY((\Corr_Main_1|buff|buffer_1\(36) & (!\Corr_Main_1|buff|buffer_1\(37) & !\Corr_Main_1|Add4~1\)) # (!\Corr_Main_1|buff|buffer_1\(36) & ((!\Corr_Main_1|Add4~1\) # (!\Corr_Main_1|buff|buffer_1\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_1\(36),
	datab => \Corr_Main_1|buff|buffer_1\(37),
	datad => VCC,
	cin => \Corr_Main_1|Add4~1\,
	combout => \Corr_Main_1|Add4~2_combout\,
	cout => \Corr_Main_1|Add4~3\);

-- Location: LCCOMB_X20_Y7_N8
\Corr_Main_1|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~4_combout\ = ((\Corr_Main_1|buff|buffer_2\(36) $ (\Corr_Main_1|buff|buffer_2\(37) $ (!\Corr_Main_1|Add4~3\)))) # (GND)
-- \Corr_Main_1|Add4~5\ = CARRY((\Corr_Main_1|buff|buffer_2\(36) & ((\Corr_Main_1|buff|buffer_2\(37)) # (!\Corr_Main_1|Add4~3\))) # (!\Corr_Main_1|buff|buffer_2\(36) & (\Corr_Main_1|buff|buffer_2\(37) & !\Corr_Main_1|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_2\(36),
	datab => \Corr_Main_1|buff|buffer_2\(37),
	datad => VCC,
	cin => \Corr_Main_1|Add4~3\,
	combout => \Corr_Main_1|Add4~4_combout\,
	cout => \Corr_Main_1|Add4~5\);

-- Location: LCCOMB_X20_Y7_N10
\Corr_Main_1|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~6_combout\ = (\Corr_Main_1|buff|buffer_3\(36) & ((\Corr_Main_1|buff|buffer_3\(37) & (\Corr_Main_1|Add4~5\ & VCC)) # (!\Corr_Main_1|buff|buffer_3\(37) & (!\Corr_Main_1|Add4~5\)))) # (!\Corr_Main_1|buff|buffer_3\(36) & 
-- ((\Corr_Main_1|buff|buffer_3\(37) & (!\Corr_Main_1|Add4~5\)) # (!\Corr_Main_1|buff|buffer_3\(37) & ((\Corr_Main_1|Add4~5\) # (GND)))))
-- \Corr_Main_1|Add4~7\ = CARRY((\Corr_Main_1|buff|buffer_3\(36) & (!\Corr_Main_1|buff|buffer_3\(37) & !\Corr_Main_1|Add4~5\)) # (!\Corr_Main_1|buff|buffer_3\(36) & ((!\Corr_Main_1|Add4~5\) # (!\Corr_Main_1|buff|buffer_3\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_3\(36),
	datab => \Corr_Main_1|buff|buffer_3\(37),
	datad => VCC,
	cin => \Corr_Main_1|Add4~5\,
	combout => \Corr_Main_1|Add4~6_combout\,
	cout => \Corr_Main_1|Add4~7\);

-- Location: LCCOMB_X20_Y7_N12
\Corr_Main_1|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~8_combout\ = ((\Corr_Main_1|buff|buffer_4\(36) $ (\Corr_Main_1|buff|buffer_4\(37) $ (!\Corr_Main_1|Add4~7\)))) # (GND)
-- \Corr_Main_1|Add4~9\ = CARRY((\Corr_Main_1|buff|buffer_4\(36) & ((\Corr_Main_1|buff|buffer_4\(37)) # (!\Corr_Main_1|Add4~7\))) # (!\Corr_Main_1|buff|buffer_4\(36) & (\Corr_Main_1|buff|buffer_4\(37) & !\Corr_Main_1|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_4\(36),
	datab => \Corr_Main_1|buff|buffer_4\(37),
	datad => VCC,
	cin => \Corr_Main_1|Add4~7\,
	combout => \Corr_Main_1|Add4~8_combout\,
	cout => \Corr_Main_1|Add4~9\);

-- Location: LCCOMB_X20_Y7_N14
\Corr_Main_1|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~10_combout\ = (\Corr_Main_1|buff|buffer_5\(37) & ((\Corr_Main_1|buff|buffer_5\(36) & (\Corr_Main_1|Add4~9\ & VCC)) # (!\Corr_Main_1|buff|buffer_5\(36) & (!\Corr_Main_1|Add4~9\)))) # (!\Corr_Main_1|buff|buffer_5\(37) & 
-- ((\Corr_Main_1|buff|buffer_5\(36) & (!\Corr_Main_1|Add4~9\)) # (!\Corr_Main_1|buff|buffer_5\(36) & ((\Corr_Main_1|Add4~9\) # (GND)))))
-- \Corr_Main_1|Add4~11\ = CARRY((\Corr_Main_1|buff|buffer_5\(37) & (!\Corr_Main_1|buff|buffer_5\(36) & !\Corr_Main_1|Add4~9\)) # (!\Corr_Main_1|buff|buffer_5\(37) & ((!\Corr_Main_1|Add4~9\) # (!\Corr_Main_1|buff|buffer_5\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_5\(37),
	datab => \Corr_Main_1|buff|buffer_5\(36),
	datad => VCC,
	cin => \Corr_Main_1|Add4~9\,
	combout => \Corr_Main_1|Add4~10_combout\,
	cout => \Corr_Main_1|Add4~11\);

-- Location: LCCOMB_X20_Y7_N16
\Corr_Main_1|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~12_combout\ = ((\Corr_Main_1|buff|buffer_6\(36) $ (\Corr_Main_1|buff|buffer_6\(37) $ (!\Corr_Main_1|Add4~11\)))) # (GND)
-- \Corr_Main_1|Add4~13\ = CARRY((\Corr_Main_1|buff|buffer_6\(36) & ((\Corr_Main_1|buff|buffer_6\(37)) # (!\Corr_Main_1|Add4~11\))) # (!\Corr_Main_1|buff|buffer_6\(36) & (\Corr_Main_1|buff|buffer_6\(37) & !\Corr_Main_1|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_6\(36),
	datab => \Corr_Main_1|buff|buffer_6\(37),
	datad => VCC,
	cin => \Corr_Main_1|Add4~11\,
	combout => \Corr_Main_1|Add4~12_combout\,
	cout => \Corr_Main_1|Add4~13\);

-- Location: LCCOMB_X20_Y7_N18
\Corr_Main_1|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~14_combout\ = (\Corr_Main_1|buff|buffer_7\(37) & ((\Corr_Main_1|buff|buffer_7\(36) & (\Corr_Main_1|Add4~13\ & VCC)) # (!\Corr_Main_1|buff|buffer_7\(36) & (!\Corr_Main_1|Add4~13\)))) # (!\Corr_Main_1|buff|buffer_7\(37) & 
-- ((\Corr_Main_1|buff|buffer_7\(36) & (!\Corr_Main_1|Add4~13\)) # (!\Corr_Main_1|buff|buffer_7\(36) & ((\Corr_Main_1|Add4~13\) # (GND)))))
-- \Corr_Main_1|Add4~15\ = CARRY((\Corr_Main_1|buff|buffer_7\(37) & (!\Corr_Main_1|buff|buffer_7\(36) & !\Corr_Main_1|Add4~13\)) # (!\Corr_Main_1|buff|buffer_7\(37) & ((!\Corr_Main_1|Add4~13\) # (!\Corr_Main_1|buff|buffer_7\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_7\(37),
	datab => \Corr_Main_1|buff|buffer_7\(36),
	datad => VCC,
	cin => \Corr_Main_1|Add4~13\,
	combout => \Corr_Main_1|Add4~14_combout\,
	cout => \Corr_Main_1|Add4~15\);

-- Location: LCCOMB_X20_Y7_N20
\Corr_Main_1|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~16_combout\ = !\Corr_Main_1|Add4~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add4~15\,
	combout => \Corr_Main_1|Add4~16_combout\);

-- Location: LCCOMB_X21_Y7_N12
\Corr_Main_1|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~0_combout\ = (\Corr_Main_1|Add4~0_combout\ & (\Corr_Main_1|Add5~0_combout\ $ (VCC))) # (!\Corr_Main_1|Add4~0_combout\ & (\Corr_Main_1|Add5~0_combout\ & VCC))
-- \Corr_Main_1|Add10~1\ = CARRY((\Corr_Main_1|Add4~0_combout\ & \Corr_Main_1|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~0_combout\,
	datab => \Corr_Main_1|Add5~0_combout\,
	datad => VCC,
	combout => \Corr_Main_1|Add10~0_combout\,
	cout => \Corr_Main_1|Add10~1\);

-- Location: LCCOMB_X21_Y7_N16
\Corr_Main_1|Add10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~4_combout\ = ((\Corr_Main_1|Add4~4_combout\ $ (\Corr_Main_1|Add5~4_combout\ $ (!\Corr_Main_1|Add10~3\)))) # (GND)
-- \Corr_Main_1|Add10~5\ = CARRY((\Corr_Main_1|Add4~4_combout\ & ((\Corr_Main_1|Add5~4_combout\) # (!\Corr_Main_1|Add10~3\))) # (!\Corr_Main_1|Add4~4_combout\ & (\Corr_Main_1|Add5~4_combout\ & !\Corr_Main_1|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~4_combout\,
	datab => \Corr_Main_1|Add5~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add10~3\,
	combout => \Corr_Main_1|Add10~4_combout\,
	cout => \Corr_Main_1|Add10~5\);

-- Location: LCCOMB_X21_Y7_N18
\Corr_Main_1|Add10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~6_combout\ = (\Corr_Main_1|Add4~6_combout\ & ((\Corr_Main_1|Add5~6_combout\ & (\Corr_Main_1|Add10~5\ & VCC)) # (!\Corr_Main_1|Add5~6_combout\ & (!\Corr_Main_1|Add10~5\)))) # (!\Corr_Main_1|Add4~6_combout\ & 
-- ((\Corr_Main_1|Add5~6_combout\ & (!\Corr_Main_1|Add10~5\)) # (!\Corr_Main_1|Add5~6_combout\ & ((\Corr_Main_1|Add10~5\) # (GND)))))
-- \Corr_Main_1|Add10~7\ = CARRY((\Corr_Main_1|Add4~6_combout\ & (!\Corr_Main_1|Add5~6_combout\ & !\Corr_Main_1|Add10~5\)) # (!\Corr_Main_1|Add4~6_combout\ & ((!\Corr_Main_1|Add10~5\) # (!\Corr_Main_1|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~6_combout\,
	datab => \Corr_Main_1|Add5~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add10~5\,
	combout => \Corr_Main_1|Add10~6_combout\,
	cout => \Corr_Main_1|Add10~7\);

-- Location: LCCOMB_X21_Y7_N20
\Corr_Main_1|Add10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~8_combout\ = ((\Corr_Main_1|Add5~8_combout\ $ (\Corr_Main_1|Add4~8_combout\ $ (!\Corr_Main_1|Add10~7\)))) # (GND)
-- \Corr_Main_1|Add10~9\ = CARRY((\Corr_Main_1|Add5~8_combout\ & ((\Corr_Main_1|Add4~8_combout\) # (!\Corr_Main_1|Add10~7\))) # (!\Corr_Main_1|Add5~8_combout\ & (\Corr_Main_1|Add4~8_combout\ & !\Corr_Main_1|Add10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add5~8_combout\,
	datab => \Corr_Main_1|Add4~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add10~7\,
	combout => \Corr_Main_1|Add10~8_combout\,
	cout => \Corr_Main_1|Add10~9\);

-- Location: LCCOMB_X21_Y7_N22
\Corr_Main_1|Add10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~10_combout\ = (\Corr_Main_1|Add4~10_combout\ & ((\Corr_Main_1|Add5~10_combout\ & (\Corr_Main_1|Add10~9\ & VCC)) # (!\Corr_Main_1|Add5~10_combout\ & (!\Corr_Main_1|Add10~9\)))) # (!\Corr_Main_1|Add4~10_combout\ & 
-- ((\Corr_Main_1|Add5~10_combout\ & (!\Corr_Main_1|Add10~9\)) # (!\Corr_Main_1|Add5~10_combout\ & ((\Corr_Main_1|Add10~9\) # (GND)))))
-- \Corr_Main_1|Add10~11\ = CARRY((\Corr_Main_1|Add4~10_combout\ & (!\Corr_Main_1|Add5~10_combout\ & !\Corr_Main_1|Add10~9\)) # (!\Corr_Main_1|Add4~10_combout\ & ((!\Corr_Main_1|Add10~9\) # (!\Corr_Main_1|Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~10_combout\,
	datab => \Corr_Main_1|Add5~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add10~9\,
	combout => \Corr_Main_1|Add10~10_combout\,
	cout => \Corr_Main_1|Add10~11\);

-- Location: LCCOMB_X21_Y7_N24
\Corr_Main_1|Add10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~12_combout\ = ((\Corr_Main_1|Add5~12_combout\ $ (\Corr_Main_1|Add4~12_combout\ $ (!\Corr_Main_1|Add10~11\)))) # (GND)
-- \Corr_Main_1|Add10~13\ = CARRY((\Corr_Main_1|Add5~12_combout\ & ((\Corr_Main_1|Add4~12_combout\) # (!\Corr_Main_1|Add10~11\))) # (!\Corr_Main_1|Add5~12_combout\ & (\Corr_Main_1|Add4~12_combout\ & !\Corr_Main_1|Add10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add5~12_combout\,
	datab => \Corr_Main_1|Add4~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add10~11\,
	combout => \Corr_Main_1|Add10~12_combout\,
	cout => \Corr_Main_1|Add10~13\);

-- Location: LCCOMB_X21_Y7_N26
\Corr_Main_1|Add10~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~14_combout\ = (\Corr_Main_1|Add5~14_combout\ & ((\Corr_Main_1|Add4~14_combout\ & (\Corr_Main_1|Add10~13\ & VCC)) # (!\Corr_Main_1|Add4~14_combout\ & (!\Corr_Main_1|Add10~13\)))) # (!\Corr_Main_1|Add5~14_combout\ & 
-- ((\Corr_Main_1|Add4~14_combout\ & (!\Corr_Main_1|Add10~13\)) # (!\Corr_Main_1|Add4~14_combout\ & ((\Corr_Main_1|Add10~13\) # (GND)))))
-- \Corr_Main_1|Add10~15\ = CARRY((\Corr_Main_1|Add5~14_combout\ & (!\Corr_Main_1|Add4~14_combout\ & !\Corr_Main_1|Add10~13\)) # (!\Corr_Main_1|Add5~14_combout\ & ((!\Corr_Main_1|Add10~13\) # (!\Corr_Main_1|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add5~14_combout\,
	datab => \Corr_Main_1|Add4~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add10~13\,
	combout => \Corr_Main_1|Add10~14_combout\,
	cout => \Corr_Main_1|Add10~15\);

-- Location: LCCOMB_X21_Y7_N28
\Corr_Main_1|Add10~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~16_combout\ = ((\Corr_Main_1|Add4~16_combout\ $ (\Corr_Main_1|Add5~16_combout\ $ (!\Corr_Main_1|Add10~15\)))) # (GND)
-- \Corr_Main_1|Add10~17\ = CARRY((\Corr_Main_1|Add4~16_combout\ & ((\Corr_Main_1|Add5~16_combout\) # (!\Corr_Main_1|Add10~15\))) # (!\Corr_Main_1|Add4~16_combout\ & (\Corr_Main_1|Add5~16_combout\ & !\Corr_Main_1|Add10~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~16_combout\,
	datab => \Corr_Main_1|Add5~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add10~15\,
	combout => \Corr_Main_1|Add10~16_combout\,
	cout => \Corr_Main_1|Add10~17\);

-- Location: LCCOMB_X21_Y7_N30
\Corr_Main_1|Add10~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~18_combout\ = \Corr_Main_1|Add10~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add10~17\,
	combout => \Corr_Main_1|Add10~18_combout\);

-- Location: LCCOMB_X20_Y5_N2
\Corr_Main_1|Add14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~0_combout\ = (\Corr_Main_1|Add10~0_combout\ & (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\ $ (VCC))) # (!\Corr_Main_1|Add10~0_combout\ & 
-- (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\ & VCC))
-- \Corr_Main_1|Add14~1\ = CARRY((\Corr_Main_1|Add10~0_combout\ & \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~0_combout\,
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	datad => VCC,
	combout => \Corr_Main_1|Add14~0_combout\,
	cout => \Corr_Main_1|Add14~1\);

-- Location: LCCOMB_X20_Y5_N4
\Corr_Main_1|Add14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~2_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\ & ((\Corr_Main_1|Add10~2_combout\ & (\Corr_Main_1|Add14~1\ & VCC)) # (!\Corr_Main_1|Add10~2_combout\ & (!\Corr_Main_1|Add14~1\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\ & ((\Corr_Main_1|Add10~2_combout\ & (!\Corr_Main_1|Add14~1\)) # (!\Corr_Main_1|Add10~2_combout\ & ((\Corr_Main_1|Add14~1\) # (GND)))))
-- \Corr_Main_1|Add14~3\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\ & (!\Corr_Main_1|Add10~2_combout\ & !\Corr_Main_1|Add14~1\)) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\ & 
-- ((!\Corr_Main_1|Add14~1\) # (!\Corr_Main_1|Add10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\,
	datab => \Corr_Main_1|Add10~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~1\,
	combout => \Corr_Main_1|Add14~2_combout\,
	cout => \Corr_Main_1|Add14~3\);

-- Location: LCCOMB_X20_Y5_N6
\Corr_Main_1|Add14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~4_combout\ = ((\Corr_Main_1|Add10~4_combout\ $ (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a2\ $ (!\Corr_Main_1|Add14~3\)))) # (GND)
-- \Corr_Main_1|Add14~5\ = CARRY((\Corr_Main_1|Add10~4_combout\ & ((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a2\) # (!\Corr_Main_1|Add14~3\))) # (!\Corr_Main_1|Add10~4_combout\ & 
-- (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a2\ & !\Corr_Main_1|Add14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~4_combout\,
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a2\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~3\,
	combout => \Corr_Main_1|Add14~4_combout\,
	cout => \Corr_Main_1|Add14~5\);

-- Location: LCCOMB_X20_Y5_N16
\Corr_Main_1|Add14~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~14_combout\ = (\Corr_Main_1|Add10~14_combout\ & ((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\ & (\Corr_Main_1|Add14~13\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\ 
-- & (!\Corr_Main_1|Add14~13\)))) # (!\Corr_Main_1|Add10~14_combout\ & ((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\ & (!\Corr_Main_1|Add14~13\)) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\ & 
-- ((\Corr_Main_1|Add14~13\) # (GND)))))
-- \Corr_Main_1|Add14~15\ = CARRY((\Corr_Main_1|Add10~14_combout\ & (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\ & !\Corr_Main_1|Add14~13\)) # (!\Corr_Main_1|Add10~14_combout\ & ((!\Corr_Main_1|Add14~13\) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~14_combout\,
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~13\,
	combout => \Corr_Main_1|Add14~14_combout\,
	cout => \Corr_Main_1|Add14~15\);

-- Location: LCCOMB_X20_Y5_N18
\Corr_Main_1|Add14~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~16_combout\ = (\Corr_Main_1|Add10~16_combout\ & (\Corr_Main_1|Add14~15\ $ (GND))) # (!\Corr_Main_1|Add10~16_combout\ & (!\Corr_Main_1|Add14~15\ & VCC))
-- \Corr_Main_1|Add14~17\ = CARRY((\Corr_Main_1|Add10~16_combout\ & !\Corr_Main_1|Add14~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~15\,
	combout => \Corr_Main_1|Add14~16_combout\,
	cout => \Corr_Main_1|Add14~17\);

-- Location: LCCOMB_X20_Y5_N20
\Corr_Main_1|Add14~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~18_combout\ = (\Corr_Main_1|Add10~18_combout\ & (!\Corr_Main_1|Add14~17\)) # (!\Corr_Main_1|Add10~18_combout\ & ((\Corr_Main_1|Add14~17\) # (GND)))
-- \Corr_Main_1|Add14~19\ = CARRY((!\Corr_Main_1|Add14~17\) # (!\Corr_Main_1|Add10~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~17\,
	combout => \Corr_Main_1|Add14~18_combout\,
	cout => \Corr_Main_1|Add14~19\);

-- Location: LCCOMB_X20_Y6_N24
\Corr_Main_1|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~10_combout\ = (\Corr_Main_1|buff|buffer_5\(47) & ((\Corr_Main_1|buff|buffer_5\(46) & (\Corr_Main_1|Add6~9\ & VCC)) # (!\Corr_Main_1|buff|buffer_5\(46) & (!\Corr_Main_1|Add6~9\)))) # (!\Corr_Main_1|buff|buffer_5\(47) & 
-- ((\Corr_Main_1|buff|buffer_5\(46) & (!\Corr_Main_1|Add6~9\)) # (!\Corr_Main_1|buff|buffer_5\(46) & ((\Corr_Main_1|Add6~9\) # (GND)))))
-- \Corr_Main_1|Add6~11\ = CARRY((\Corr_Main_1|buff|buffer_5\(47) & (!\Corr_Main_1|buff|buffer_5\(46) & !\Corr_Main_1|Add6~9\)) # (!\Corr_Main_1|buff|buffer_5\(47) & ((!\Corr_Main_1|Add6~9\) # (!\Corr_Main_1|buff|buffer_5\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_5\(47),
	datab => \Corr_Main_1|buff|buffer_5\(46),
	datad => VCC,
	cin => \Corr_Main_1|Add6~9\,
	combout => \Corr_Main_1|Add6~10_combout\,
	cout => \Corr_Main_1|Add6~11\);

-- Location: LCCOMB_X20_Y6_N26
\Corr_Main_1|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~12_combout\ = ((\Corr_Main_1|buff|buffer_6\(47) $ (\Corr_Main_1|buff|buffer_6\(46) $ (!\Corr_Main_1|Add6~11\)))) # (GND)
-- \Corr_Main_1|Add6~13\ = CARRY((\Corr_Main_1|buff|buffer_6\(47) & ((\Corr_Main_1|buff|buffer_6\(46)) # (!\Corr_Main_1|Add6~11\))) # (!\Corr_Main_1|buff|buffer_6\(47) & (\Corr_Main_1|buff|buffer_6\(46) & !\Corr_Main_1|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_6\(47),
	datab => \Corr_Main_1|buff|buffer_6\(46),
	datad => VCC,
	cin => \Corr_Main_1|Add6~11\,
	combout => \Corr_Main_1|Add6~12_combout\,
	cout => \Corr_Main_1|Add6~13\);

-- Location: LCCOMB_X20_Y6_N28
\Corr_Main_1|Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~14_combout\ = (\Corr_Main_1|buff|buffer_7\(46) & ((\Corr_Main_1|buff|buffer_7\(47) & (\Corr_Main_1|Add6~13\ & VCC)) # (!\Corr_Main_1|buff|buffer_7\(47) & (!\Corr_Main_1|Add6~13\)))) # (!\Corr_Main_1|buff|buffer_7\(46) & 
-- ((\Corr_Main_1|buff|buffer_7\(47) & (!\Corr_Main_1|Add6~13\)) # (!\Corr_Main_1|buff|buffer_7\(47) & ((\Corr_Main_1|Add6~13\) # (GND)))))
-- \Corr_Main_1|Add6~15\ = CARRY((\Corr_Main_1|buff|buffer_7\(46) & (!\Corr_Main_1|buff|buffer_7\(47) & !\Corr_Main_1|Add6~13\)) # (!\Corr_Main_1|buff|buffer_7\(46) & ((!\Corr_Main_1|Add6~13\) # (!\Corr_Main_1|buff|buffer_7\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_7\(46),
	datab => \Corr_Main_1|buff|buffer_7\(47),
	datad => VCC,
	cin => \Corr_Main_1|Add6~13\,
	combout => \Corr_Main_1|Add6~14_combout\,
	cout => \Corr_Main_1|Add6~15\);

-- Location: LCCOMB_X20_Y6_N30
\Corr_Main_1|Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~16_combout\ = !\Corr_Main_1|Add6~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add6~15\,
	combout => \Corr_Main_1|Add6~16_combout\);

-- Location: LCCOMB_X19_Y6_N14
\Corr_Main_1|Add11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add11~6_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\ & ((\Corr_Main_1|Add6~6_combout\ & (\Corr_Main_1|Add11~5\ & VCC)) # (!\Corr_Main_1|Add6~6_combout\ & (!\Corr_Main_1|Add11~5\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\ & ((\Corr_Main_1|Add6~6_combout\ & (!\Corr_Main_1|Add11~5\)) # (!\Corr_Main_1|Add6~6_combout\ & ((\Corr_Main_1|Add11~5\) # (GND)))))
-- \Corr_Main_1|Add11~7\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\ & (!\Corr_Main_1|Add6~6_combout\ & !\Corr_Main_1|Add11~5\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\ & 
-- ((!\Corr_Main_1|Add11~5\) # (!\Corr_Main_1|Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\,
	datab => \Corr_Main_1|Add6~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add11~5\,
	combout => \Corr_Main_1|Add11~6_combout\,
	cout => \Corr_Main_1|Add11~7\);

-- Location: LCCOMB_X19_Y6_N16
\Corr_Main_1|Add11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add11~8_combout\ = ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a4\ $ (\Corr_Main_1|Add6~8_combout\ $ (!\Corr_Main_1|Add11~7\)))) # (GND)
-- \Corr_Main_1|Add11~9\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a4\ & ((\Corr_Main_1|Add6~8_combout\) # (!\Corr_Main_1|Add11~7\))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a4\ & 
-- (\Corr_Main_1|Add6~8_combout\ & !\Corr_Main_1|Add11~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a4\,
	datab => \Corr_Main_1|Add6~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add11~7\,
	combout => \Corr_Main_1|Add11~8_combout\,
	cout => \Corr_Main_1|Add11~9\);

-- Location: LCCOMB_X19_Y6_N18
\Corr_Main_1|Add11~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add11~10_combout\ = (\Corr_Main_1|Add6~10_combout\ & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\ & (\Corr_Main_1|Add11~9\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\ & 
-- (!\Corr_Main_1|Add11~9\)))) # (!\Corr_Main_1|Add6~10_combout\ & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\ & (!\Corr_Main_1|Add11~9\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\ & 
-- ((\Corr_Main_1|Add11~9\) # (GND)))))
-- \Corr_Main_1|Add11~11\ = CARRY((\Corr_Main_1|Add6~10_combout\ & (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\ & !\Corr_Main_1|Add11~9\)) # (!\Corr_Main_1|Add6~10_combout\ & ((!\Corr_Main_1|Add11~9\) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add6~10_combout\,
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\,
	datad => VCC,
	cin => \Corr_Main_1|Add11~9\,
	combout => \Corr_Main_1|Add11~10_combout\,
	cout => \Corr_Main_1|Add11~11\);

-- Location: LCCOMB_X19_Y6_N20
\Corr_Main_1|Add11~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add11~12_combout\ = ((\Corr_Main_1|Add6~12_combout\ $ (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a6\ $ (!\Corr_Main_1|Add11~11\)))) # (GND)
-- \Corr_Main_1|Add11~13\ = CARRY((\Corr_Main_1|Add6~12_combout\ & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a6\) # (!\Corr_Main_1|Add11~11\))) # (!\Corr_Main_1|Add6~12_combout\ & 
-- (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a6\ & !\Corr_Main_1|Add11~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add6~12_combout\,
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a6\,
	datad => VCC,
	cin => \Corr_Main_1|Add11~11\,
	combout => \Corr_Main_1|Add11~12_combout\,
	cout => \Corr_Main_1|Add11~13\);

-- Location: LCCOMB_X19_Y6_N22
\Corr_Main_1|Add11~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add11~14_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a7\ & ((\Corr_Main_1|Add6~14_combout\ & (\Corr_Main_1|Add11~13\ & VCC)) # (!\Corr_Main_1|Add6~14_combout\ & (!\Corr_Main_1|Add11~13\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a7\ & ((\Corr_Main_1|Add6~14_combout\ & (!\Corr_Main_1|Add11~13\)) # (!\Corr_Main_1|Add6~14_combout\ & ((\Corr_Main_1|Add11~13\) # (GND)))))
-- \Corr_Main_1|Add11~15\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a7\ & (!\Corr_Main_1|Add6~14_combout\ & !\Corr_Main_1|Add11~13\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a7\ & 
-- ((!\Corr_Main_1|Add11~13\) # (!\Corr_Main_1|Add6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a7\,
	datab => \Corr_Main_1|Add6~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add11~13\,
	combout => \Corr_Main_1|Add11~14_combout\,
	cout => \Corr_Main_1|Add11~15\);

-- Location: LCCOMB_X19_Y6_N24
\Corr_Main_1|Add11~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add11~16_combout\ = (\Corr_Main_1|Add6~16_combout\ & (\Corr_Main_1|Add11~15\ $ (GND))) # (!\Corr_Main_1|Add6~16_combout\ & (!\Corr_Main_1|Add11~15\ & VCC))
-- \Corr_Main_1|Add11~17\ = CARRY((\Corr_Main_1|Add6~16_combout\ & !\Corr_Main_1|Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add6~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add11~15\,
	combout => \Corr_Main_1|Add11~16_combout\,
	cout => \Corr_Main_1|Add11~17\);

-- Location: LCCOMB_X19_Y6_N26
\Corr_Main_1|Add11~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add11~18_combout\ = \Corr_Main_1|Add11~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add11~17\,
	combout => \Corr_Main_1|Add11~18_combout\);

-- Location: LCCOMB_X19_Y5_N0
\Corr_Main_1|Add16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~0_combout\ = (\Corr_Main_1|Add14~0_combout\ & (\Corr_Main_1|Add11~0_combout\ $ (VCC))) # (!\Corr_Main_1|Add14~0_combout\ & (\Corr_Main_1|Add11~0_combout\ & VCC))
-- \Corr_Main_1|Add16~1\ = CARRY((\Corr_Main_1|Add14~0_combout\ & \Corr_Main_1|Add11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add14~0_combout\,
	datab => \Corr_Main_1|Add11~0_combout\,
	datad => VCC,
	combout => \Corr_Main_1|Add16~0_combout\,
	cout => \Corr_Main_1|Add16~1\);

-- Location: LCCOMB_X19_Y5_N2
\Corr_Main_1|Add16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~2_combout\ = (\Corr_Main_1|Add14~2_combout\ & ((\Corr_Main_1|Add11~2_combout\ & (\Corr_Main_1|Add16~1\ & VCC)) # (!\Corr_Main_1|Add11~2_combout\ & (!\Corr_Main_1|Add16~1\)))) # (!\Corr_Main_1|Add14~2_combout\ & 
-- ((\Corr_Main_1|Add11~2_combout\ & (!\Corr_Main_1|Add16~1\)) # (!\Corr_Main_1|Add11~2_combout\ & ((\Corr_Main_1|Add16~1\) # (GND)))))
-- \Corr_Main_1|Add16~3\ = CARRY((\Corr_Main_1|Add14~2_combout\ & (!\Corr_Main_1|Add11~2_combout\ & !\Corr_Main_1|Add16~1\)) # (!\Corr_Main_1|Add14~2_combout\ & ((!\Corr_Main_1|Add16~1\) # (!\Corr_Main_1|Add11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add14~2_combout\,
	datab => \Corr_Main_1|Add11~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~1\,
	combout => \Corr_Main_1|Add16~2_combout\,
	cout => \Corr_Main_1|Add16~3\);

-- Location: LCCOMB_X19_Y5_N10
\Corr_Main_1|Add16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~10_combout\ = (\Corr_Main_1|Add11~10_combout\ & ((\Corr_Main_1|Add14~10_combout\ & (\Corr_Main_1|Add16~9\ & VCC)) # (!\Corr_Main_1|Add14~10_combout\ & (!\Corr_Main_1|Add16~9\)))) # (!\Corr_Main_1|Add11~10_combout\ & 
-- ((\Corr_Main_1|Add14~10_combout\ & (!\Corr_Main_1|Add16~9\)) # (!\Corr_Main_1|Add14~10_combout\ & ((\Corr_Main_1|Add16~9\) # (GND)))))
-- \Corr_Main_1|Add16~11\ = CARRY((\Corr_Main_1|Add11~10_combout\ & (!\Corr_Main_1|Add14~10_combout\ & !\Corr_Main_1|Add16~9\)) # (!\Corr_Main_1|Add11~10_combout\ & ((!\Corr_Main_1|Add16~9\) # (!\Corr_Main_1|Add14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add11~10_combout\,
	datab => \Corr_Main_1|Add14~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~9\,
	combout => \Corr_Main_1|Add16~10_combout\,
	cout => \Corr_Main_1|Add16~11\);

-- Location: LCCOMB_X19_Y5_N12
\Corr_Main_1|Add16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~12_combout\ = ((\Corr_Main_1|Add11~12_combout\ $ (\Corr_Main_1|Add14~12_combout\ $ (!\Corr_Main_1|Add16~11\)))) # (GND)
-- \Corr_Main_1|Add16~13\ = CARRY((\Corr_Main_1|Add11~12_combout\ & ((\Corr_Main_1|Add14~12_combout\) # (!\Corr_Main_1|Add16~11\))) # (!\Corr_Main_1|Add11~12_combout\ & (\Corr_Main_1|Add14~12_combout\ & !\Corr_Main_1|Add16~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add11~12_combout\,
	datab => \Corr_Main_1|Add14~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~11\,
	combout => \Corr_Main_1|Add16~12_combout\,
	cout => \Corr_Main_1|Add16~13\);

-- Location: LCCOMB_X19_Y5_N14
\Corr_Main_1|Add16~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~14_combout\ = (\Corr_Main_1|Add14~14_combout\ & ((\Corr_Main_1|Add11~14_combout\ & (\Corr_Main_1|Add16~13\ & VCC)) # (!\Corr_Main_1|Add11~14_combout\ & (!\Corr_Main_1|Add16~13\)))) # (!\Corr_Main_1|Add14~14_combout\ & 
-- ((\Corr_Main_1|Add11~14_combout\ & (!\Corr_Main_1|Add16~13\)) # (!\Corr_Main_1|Add11~14_combout\ & ((\Corr_Main_1|Add16~13\) # (GND)))))
-- \Corr_Main_1|Add16~15\ = CARRY((\Corr_Main_1|Add14~14_combout\ & (!\Corr_Main_1|Add11~14_combout\ & !\Corr_Main_1|Add16~13\)) # (!\Corr_Main_1|Add14~14_combout\ & ((!\Corr_Main_1|Add16~13\) # (!\Corr_Main_1|Add11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add14~14_combout\,
	datab => \Corr_Main_1|Add11~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~13\,
	combout => \Corr_Main_1|Add16~14_combout\,
	cout => \Corr_Main_1|Add16~15\);

-- Location: LCCOMB_X19_Y5_N16
\Corr_Main_1|Add16~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~16_combout\ = ((\Corr_Main_1|Add11~16_combout\ $ (\Corr_Main_1|Add14~16_combout\ $ (!\Corr_Main_1|Add16~15\)))) # (GND)
-- \Corr_Main_1|Add16~17\ = CARRY((\Corr_Main_1|Add11~16_combout\ & ((\Corr_Main_1|Add14~16_combout\) # (!\Corr_Main_1|Add16~15\))) # (!\Corr_Main_1|Add11~16_combout\ & (\Corr_Main_1|Add14~16_combout\ & !\Corr_Main_1|Add16~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add11~16_combout\,
	datab => \Corr_Main_1|Add14~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~15\,
	combout => \Corr_Main_1|Add16~16_combout\,
	cout => \Corr_Main_1|Add16~17\);

-- Location: LCCOMB_X19_Y5_N18
\Corr_Main_1|Add16~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~18_combout\ = (\Corr_Main_1|Add14~18_combout\ & ((\Corr_Main_1|Add11~18_combout\ & (\Corr_Main_1|Add16~17\ & VCC)) # (!\Corr_Main_1|Add11~18_combout\ & (!\Corr_Main_1|Add16~17\)))) # (!\Corr_Main_1|Add14~18_combout\ & 
-- ((\Corr_Main_1|Add11~18_combout\ & (!\Corr_Main_1|Add16~17\)) # (!\Corr_Main_1|Add11~18_combout\ & ((\Corr_Main_1|Add16~17\) # (GND)))))
-- \Corr_Main_1|Add16~19\ = CARRY((\Corr_Main_1|Add14~18_combout\ & (!\Corr_Main_1|Add11~18_combout\ & !\Corr_Main_1|Add16~17\)) # (!\Corr_Main_1|Add14~18_combout\ & ((!\Corr_Main_1|Add16~17\) # (!\Corr_Main_1|Add11~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add14~18_combout\,
	datab => \Corr_Main_1|Add11~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~17\,
	combout => \Corr_Main_1|Add16~18_combout\,
	cout => \Corr_Main_1|Add16~19\);

-- Location: LCCOMB_X21_Y6_N18
\Corr_Main_1|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add7~4_combout\ = ((\Corr_Main_1|buff|buffer_2\(48) $ (\Corr_Main_1|buff|buffer_2\(49) $ (!\Corr_Main_1|Add7~3\)))) # (GND)
-- \Corr_Main_1|Add7~5\ = CARRY((\Corr_Main_1|buff|buffer_2\(48) & ((\Corr_Main_1|buff|buffer_2\(49)) # (!\Corr_Main_1|Add7~3\))) # (!\Corr_Main_1|buff|buffer_2\(48) & (\Corr_Main_1|buff|buffer_2\(49) & !\Corr_Main_1|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_2\(48),
	datab => \Corr_Main_1|buff|buffer_2\(49),
	datad => VCC,
	cin => \Corr_Main_1|Add7~3\,
	combout => \Corr_Main_1|Add7~4_combout\,
	cout => \Corr_Main_1|Add7~5\);

-- Location: LCCOMB_X21_Y6_N20
\Corr_Main_1|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add7~6_combout\ = (\Corr_Main_1|buff|buffer_3\(48) & ((\Corr_Main_1|buff|buffer_3\(49) & (\Corr_Main_1|Add7~5\ & VCC)) # (!\Corr_Main_1|buff|buffer_3\(49) & (!\Corr_Main_1|Add7~5\)))) # (!\Corr_Main_1|buff|buffer_3\(48) & 
-- ((\Corr_Main_1|buff|buffer_3\(49) & (!\Corr_Main_1|Add7~5\)) # (!\Corr_Main_1|buff|buffer_3\(49) & ((\Corr_Main_1|Add7~5\) # (GND)))))
-- \Corr_Main_1|Add7~7\ = CARRY((\Corr_Main_1|buff|buffer_3\(48) & (!\Corr_Main_1|buff|buffer_3\(49) & !\Corr_Main_1|Add7~5\)) # (!\Corr_Main_1|buff|buffer_3\(48) & ((!\Corr_Main_1|Add7~5\) # (!\Corr_Main_1|buff|buffer_3\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_3\(48),
	datab => \Corr_Main_1|buff|buffer_3\(49),
	datad => VCC,
	cin => \Corr_Main_1|Add7~5\,
	combout => \Corr_Main_1|Add7~6_combout\,
	cout => \Corr_Main_1|Add7~7\);

-- Location: LCCOMB_X21_Y6_N22
\Corr_Main_1|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add7~8_combout\ = ((\Corr_Main_1|buff|buffer_4\(49) $ (\Corr_Main_1|buff|buffer_4\(48) $ (!\Corr_Main_1|Add7~7\)))) # (GND)
-- \Corr_Main_1|Add7~9\ = CARRY((\Corr_Main_1|buff|buffer_4\(49) & ((\Corr_Main_1|buff|buffer_4\(48)) # (!\Corr_Main_1|Add7~7\))) # (!\Corr_Main_1|buff|buffer_4\(49) & (\Corr_Main_1|buff|buffer_4\(48) & !\Corr_Main_1|Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_4\(49),
	datab => \Corr_Main_1|buff|buffer_4\(48),
	datad => VCC,
	cin => \Corr_Main_1|Add7~7\,
	combout => \Corr_Main_1|Add7~8_combout\,
	cout => \Corr_Main_1|Add7~9\);

-- Location: LCCOMB_X21_Y6_N28
\Corr_Main_1|Add7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add7~14_combout\ = (\Corr_Main_1|buff|buffer_7\(48) & ((\Corr_Main_1|buff|buffer_7\(49) & (\Corr_Main_1|Add7~13\ & VCC)) # (!\Corr_Main_1|buff|buffer_7\(49) & (!\Corr_Main_1|Add7~13\)))) # (!\Corr_Main_1|buff|buffer_7\(48) & 
-- ((\Corr_Main_1|buff|buffer_7\(49) & (!\Corr_Main_1|Add7~13\)) # (!\Corr_Main_1|buff|buffer_7\(49) & ((\Corr_Main_1|Add7~13\) # (GND)))))
-- \Corr_Main_1|Add7~15\ = CARRY((\Corr_Main_1|buff|buffer_7\(48) & (!\Corr_Main_1|buff|buffer_7\(49) & !\Corr_Main_1|Add7~13\)) # (!\Corr_Main_1|buff|buffer_7\(48) & ((!\Corr_Main_1|Add7~13\) # (!\Corr_Main_1|buff|buffer_7\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_7\(48),
	datab => \Corr_Main_1|buff|buffer_7\(49),
	datad => VCC,
	cin => \Corr_Main_1|Add7~13\,
	combout => \Corr_Main_1|Add7~14_combout\,
	cout => \Corr_Main_1|Add7~15\);

-- Location: LCCOMB_X21_Y6_N30
\Corr_Main_1|Add7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add7~16_combout\ = !\Corr_Main_1|Add7~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add7~15\,
	combout => \Corr_Main_1|Add7~16_combout\);

-- Location: LCCOMB_X21_Y8_N6
\Corr_Main_1|Add17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~2_combout\ = (\Corr_Main_1|Add16~2_combout\ & ((\Corr_Main_1|Add7~2_combout\ & (\Corr_Main_1|Add17~1\ & VCC)) # (!\Corr_Main_1|Add7~2_combout\ & (!\Corr_Main_1|Add17~1\)))) # (!\Corr_Main_1|Add16~2_combout\ & 
-- ((\Corr_Main_1|Add7~2_combout\ & (!\Corr_Main_1|Add17~1\)) # (!\Corr_Main_1|Add7~2_combout\ & ((\Corr_Main_1|Add17~1\) # (GND)))))
-- \Corr_Main_1|Add17~3\ = CARRY((\Corr_Main_1|Add16~2_combout\ & (!\Corr_Main_1|Add7~2_combout\ & !\Corr_Main_1|Add17~1\)) # (!\Corr_Main_1|Add16~2_combout\ & ((!\Corr_Main_1|Add17~1\) # (!\Corr_Main_1|Add7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add16~2_combout\,
	datab => \Corr_Main_1|Add7~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~1\,
	combout => \Corr_Main_1|Add17~2_combout\,
	cout => \Corr_Main_1|Add17~3\);

-- Location: LCCOMB_X21_Y8_N12
\Corr_Main_1|Add17~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~8_combout\ = ((\Corr_Main_1|Add7~8_combout\ $ (\Corr_Main_1|Add16~8_combout\ $ (!\Corr_Main_1|Add17~7\)))) # (GND)
-- \Corr_Main_1|Add17~9\ = CARRY((\Corr_Main_1|Add7~8_combout\ & ((\Corr_Main_1|Add16~8_combout\) # (!\Corr_Main_1|Add17~7\))) # (!\Corr_Main_1|Add7~8_combout\ & (\Corr_Main_1|Add16~8_combout\ & !\Corr_Main_1|Add17~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add7~8_combout\,
	datab => \Corr_Main_1|Add16~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~7\,
	combout => \Corr_Main_1|Add17~8_combout\,
	cout => \Corr_Main_1|Add17~9\);

-- Location: LCCOMB_X21_Y8_N16
\Corr_Main_1|Add17~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~12_combout\ = ((\Corr_Main_1|Add16~12_combout\ $ (\Corr_Main_1|Add7~12_combout\ $ (!\Corr_Main_1|Add17~11\)))) # (GND)
-- \Corr_Main_1|Add17~13\ = CARRY((\Corr_Main_1|Add16~12_combout\ & ((\Corr_Main_1|Add7~12_combout\) # (!\Corr_Main_1|Add17~11\))) # (!\Corr_Main_1|Add16~12_combout\ & (\Corr_Main_1|Add7~12_combout\ & !\Corr_Main_1|Add17~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add16~12_combout\,
	datab => \Corr_Main_1|Add7~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~11\,
	combout => \Corr_Main_1|Add17~12_combout\,
	cout => \Corr_Main_1|Add17~13\);

-- Location: LCCOMB_X21_Y8_N20
\Corr_Main_1|Add17~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~16_combout\ = ((\Corr_Main_1|Add7~16_combout\ $ (\Corr_Main_1|Add16~16_combout\ $ (!\Corr_Main_1|Add17~15\)))) # (GND)
-- \Corr_Main_1|Add17~17\ = CARRY((\Corr_Main_1|Add7~16_combout\ & ((\Corr_Main_1|Add16~16_combout\) # (!\Corr_Main_1|Add17~15\))) # (!\Corr_Main_1|Add7~16_combout\ & (\Corr_Main_1|Add16~16_combout\ & !\Corr_Main_1|Add17~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add7~16_combout\,
	datab => \Corr_Main_1|Add16~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~15\,
	combout => \Corr_Main_1|Add17~16_combout\,
	cout => \Corr_Main_1|Add17~17\);

-- Location: LCCOMB_X21_Y8_N22
\Corr_Main_1|Add17~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~18_combout\ = (\Corr_Main_1|Add16~18_combout\ & (!\Corr_Main_1|Add17~17\)) # (!\Corr_Main_1|Add16~18_combout\ & ((\Corr_Main_1|Add17~17\) # (GND)))
-- \Corr_Main_1|Add17~19\ = CARRY((!\Corr_Main_1|Add17~17\) # (!\Corr_Main_1|Add16~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add16~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~17\,
	combout => \Corr_Main_1|Add17~18_combout\,
	cout => \Corr_Main_1|Add17~19\);

-- Location: LCCOMB_X21_Y5_N2
\Corr_Main_1|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~0_combout\ = (\Corr_Main_1|buff|buffer_0\(13) & (\Corr_Main_1|buff|buffer_0\(12) $ (VCC))) # (!\Corr_Main_1|buff|buffer_0\(13) & (\Corr_Main_1|buff|buffer_0\(12) & VCC))
-- \Corr_Main_1|Add3~1\ = CARRY((\Corr_Main_1|buff|buffer_0\(13) & \Corr_Main_1|buff|buffer_0\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0\(13),
	datab => \Corr_Main_1|buff|buffer_0\(12),
	datad => VCC,
	combout => \Corr_Main_1|Add3~0_combout\,
	cout => \Corr_Main_1|Add3~1\);

-- Location: LCCOMB_X21_Y5_N10
\Corr_Main_1|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~8_combout\ = ((\Corr_Main_1|buff|buffer_4\(12) $ (\Corr_Main_1|buff|buffer_4\(13) $ (!\Corr_Main_1|Add3~7\)))) # (GND)
-- \Corr_Main_1|Add3~9\ = CARRY((\Corr_Main_1|buff|buffer_4\(12) & ((\Corr_Main_1|buff|buffer_4\(13)) # (!\Corr_Main_1|Add3~7\))) # (!\Corr_Main_1|buff|buffer_4\(12) & (\Corr_Main_1|buff|buffer_4\(13) & !\Corr_Main_1|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_4\(12),
	datab => \Corr_Main_1|buff|buffer_4\(13),
	datad => VCC,
	cin => \Corr_Main_1|Add3~7\,
	combout => \Corr_Main_1|Add3~8_combout\,
	cout => \Corr_Main_1|Add3~9\);

-- Location: LCCOMB_X21_Y5_N16
\Corr_Main_1|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~14_combout\ = (\Corr_Main_1|buff|buffer_7\(13) & ((\Corr_Main_1|buff|buffer_7\(12) & (\Corr_Main_1|Add3~13\ & VCC)) # (!\Corr_Main_1|buff|buffer_7\(12) & (!\Corr_Main_1|Add3~13\)))) # (!\Corr_Main_1|buff|buffer_7\(13) & 
-- ((\Corr_Main_1|buff|buffer_7\(12) & (!\Corr_Main_1|Add3~13\)) # (!\Corr_Main_1|buff|buffer_7\(12) & ((\Corr_Main_1|Add3~13\) # (GND)))))
-- \Corr_Main_1|Add3~15\ = CARRY((\Corr_Main_1|buff|buffer_7\(13) & (!\Corr_Main_1|buff|buffer_7\(12) & !\Corr_Main_1|Add3~13\)) # (!\Corr_Main_1|buff|buffer_7\(13) & ((!\Corr_Main_1|Add3~13\) # (!\Corr_Main_1|buff|buffer_7\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_7\(13),
	datab => \Corr_Main_1|buff|buffer_7\(12),
	datad => VCC,
	cin => \Corr_Main_1|Add3~13\,
	combout => \Corr_Main_1|Add3~14_combout\,
	cout => \Corr_Main_1|Add3~15\);

-- Location: LCCOMB_X22_Y5_N14
\Corr_Main_1|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~2_combout\ = (\Corr_Main_1|buff|buffer_1\(14) & ((\Corr_Main_1|Add3~2_combout\ & (\Corr_Main_1|Add9~1\ & VCC)) # (!\Corr_Main_1|Add3~2_combout\ & (!\Corr_Main_1|Add9~1\)))) # (!\Corr_Main_1|buff|buffer_1\(14) & 
-- ((\Corr_Main_1|Add3~2_combout\ & (!\Corr_Main_1|Add9~1\)) # (!\Corr_Main_1|Add3~2_combout\ & ((\Corr_Main_1|Add9~1\) # (GND)))))
-- \Corr_Main_1|Add9~3\ = CARRY((\Corr_Main_1|buff|buffer_1\(14) & (!\Corr_Main_1|Add3~2_combout\ & !\Corr_Main_1|Add9~1\)) # (!\Corr_Main_1|buff|buffer_1\(14) & ((!\Corr_Main_1|Add9~1\) # (!\Corr_Main_1|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_1\(14),
	datab => \Corr_Main_1|Add3~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add9~1\,
	combout => \Corr_Main_1|Add9~2_combout\,
	cout => \Corr_Main_1|Add9~3\);

-- Location: LCCOMB_X22_Y5_N20
\Corr_Main_1|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~8_combout\ = ((\Corr_Main_1|Add3~8_combout\ $ (\Corr_Main_1|buff|buffer_4\(14) $ (!\Corr_Main_1|Add9~7\)))) # (GND)
-- \Corr_Main_1|Add9~9\ = CARRY((\Corr_Main_1|Add3~8_combout\ & ((\Corr_Main_1|buff|buffer_4\(14)) # (!\Corr_Main_1|Add9~7\))) # (!\Corr_Main_1|Add3~8_combout\ & (\Corr_Main_1|buff|buffer_4\(14) & !\Corr_Main_1|Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add3~8_combout\,
	datab => \Corr_Main_1|buff|buffer_4\(14),
	datad => VCC,
	cin => \Corr_Main_1|Add9~7\,
	combout => \Corr_Main_1|Add9~8_combout\,
	cout => \Corr_Main_1|Add9~9\);

-- Location: LCCOMB_X22_Y5_N22
\Corr_Main_1|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~10_combout\ = (\Corr_Main_1|buff|buffer_5\(14) & ((\Corr_Main_1|Add3~10_combout\ & (\Corr_Main_1|Add9~9\ & VCC)) # (!\Corr_Main_1|Add3~10_combout\ & (!\Corr_Main_1|Add9~9\)))) # (!\Corr_Main_1|buff|buffer_5\(14) & 
-- ((\Corr_Main_1|Add3~10_combout\ & (!\Corr_Main_1|Add9~9\)) # (!\Corr_Main_1|Add3~10_combout\ & ((\Corr_Main_1|Add9~9\) # (GND)))))
-- \Corr_Main_1|Add9~11\ = CARRY((\Corr_Main_1|buff|buffer_5\(14) & (!\Corr_Main_1|Add3~10_combout\ & !\Corr_Main_1|Add9~9\)) # (!\Corr_Main_1|buff|buffer_5\(14) & ((!\Corr_Main_1|Add9~9\) # (!\Corr_Main_1|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_5\(14),
	datab => \Corr_Main_1|Add3~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add9~9\,
	combout => \Corr_Main_1|Add9~10_combout\,
	cout => \Corr_Main_1|Add9~11\);

-- Location: LCCOMB_X22_Y5_N24
\Corr_Main_1|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~12_combout\ = ((\Corr_Main_1|buff|buffer_6\(14) $ (\Corr_Main_1|Add3~12_combout\ $ (!\Corr_Main_1|Add9~11\)))) # (GND)
-- \Corr_Main_1|Add9~13\ = CARRY((\Corr_Main_1|buff|buffer_6\(14) & ((\Corr_Main_1|Add3~12_combout\) # (!\Corr_Main_1|Add9~11\))) # (!\Corr_Main_1|buff|buffer_6\(14) & (\Corr_Main_1|Add3~12_combout\ & !\Corr_Main_1|Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_6\(14),
	datab => \Corr_Main_1|Add3~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add9~11\,
	combout => \Corr_Main_1|Add9~12_combout\,
	cout => \Corr_Main_1|Add9~13\);

-- Location: LCCOMB_X22_Y4_N0
\Corr_Main_1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~0_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\ & (\Corr_Main_1|buff|buffer_0\(11) $ (VCC))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\ & 
-- (\Corr_Main_1|buff|buffer_0\(11) & VCC))
-- \Corr_Main_1|Add2~1\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\ & \Corr_Main_1|buff|buffer_0\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\,
	datab => \Corr_Main_1|buff|buffer_0\(11),
	datad => VCC,
	combout => \Corr_Main_1|Add2~0_combout\,
	cout => \Corr_Main_1|Add2~1\);

-- Location: LCCOMB_X22_Y4_N4
\Corr_Main_1|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~4_combout\ = ((\Corr_Main_1|buff|buffer_2\(11) $ (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\ $ (!\Corr_Main_1|Add2~3\)))) # (GND)
-- \Corr_Main_1|Add2~5\ = CARRY((\Corr_Main_1|buff|buffer_2\(11) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\) # (!\Corr_Main_1|Add2~3\))) # (!\Corr_Main_1|buff|buffer_2\(11) & 
-- (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\ & !\Corr_Main_1|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_2\(11),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\,
	datad => VCC,
	cin => \Corr_Main_1|Add2~3\,
	combout => \Corr_Main_1|Add2~4_combout\,
	cout => \Corr_Main_1|Add2~5\);

-- Location: LCCOMB_X22_Y4_N6
\Corr_Main_1|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~6_combout\ = (\Corr_Main_1|buff|buffer_3\(11) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\ & (\Corr_Main_1|Add2~5\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\ & 
-- (!\Corr_Main_1|Add2~5\)))) # (!\Corr_Main_1|buff|buffer_3\(11) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\ & (!\Corr_Main_1|Add2~5\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\ & 
-- ((\Corr_Main_1|Add2~5\) # (GND)))))
-- \Corr_Main_1|Add2~7\ = CARRY((\Corr_Main_1|buff|buffer_3\(11) & (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\ & !\Corr_Main_1|Add2~5\)) # (!\Corr_Main_1|buff|buffer_3\(11) & ((!\Corr_Main_1|Add2~5\) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_3\(11),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\,
	datad => VCC,
	cin => \Corr_Main_1|Add2~5\,
	combout => \Corr_Main_1|Add2~6_combout\,
	cout => \Corr_Main_1|Add2~7\);

-- Location: LCCOMB_X22_Y4_N12
\Corr_Main_1|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~12_combout\ = ((\Corr_Main_1|buff|buffer_6\(11) $ (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\ $ (!\Corr_Main_1|Add2~11\)))) # (GND)
-- \Corr_Main_1|Add2~13\ = CARRY((\Corr_Main_1|buff|buffer_6\(11) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\) # (!\Corr_Main_1|Add2~11\))) # (!\Corr_Main_1|buff|buffer_6\(11) & 
-- (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\ & !\Corr_Main_1|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_6\(11),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\,
	datad => VCC,
	cin => \Corr_Main_1|Add2~11\,
	combout => \Corr_Main_1|Add2~12_combout\,
	cout => \Corr_Main_1|Add2~13\);

-- Location: LCCOMB_X22_Y4_N14
\Corr_Main_1|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~14_combout\ = (\Corr_Main_1|buff|buffer_7\(11) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\ & (\Corr_Main_1|Add2~13\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\ 
-- & (!\Corr_Main_1|Add2~13\)))) # (!\Corr_Main_1|buff|buffer_7\(11) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\ & (!\Corr_Main_1|Add2~13\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\ & 
-- ((\Corr_Main_1|Add2~13\) # (GND)))))
-- \Corr_Main_1|Add2~15\ = CARRY((\Corr_Main_1|buff|buffer_7\(11) & (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\ & !\Corr_Main_1|Add2~13\)) # (!\Corr_Main_1|buff|buffer_7\(11) & ((!\Corr_Main_1|Add2~13\) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_7\(11),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\,
	datad => VCC,
	cin => \Corr_Main_1|Add2~13\,
	combout => \Corr_Main_1|Add2~14_combout\,
	cout => \Corr_Main_1|Add2~15\);

-- Location: LCCOMB_X22_Y4_N16
\Corr_Main_1|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~16_combout\ = !\Corr_Main_1|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add2~15\,
	combout => \Corr_Main_1|Add2~16_combout\);

-- Location: LCCOMB_X21_Y4_N16
\Corr_Main_1|Add13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~8_combout\ = ((\Corr_Main_1|Add9~8_combout\ $ (\Corr_Main_1|Add2~8_combout\ $ (!\Corr_Main_1|Add13~7\)))) # (GND)
-- \Corr_Main_1|Add13~9\ = CARRY((\Corr_Main_1|Add9~8_combout\ & ((\Corr_Main_1|Add2~8_combout\) # (!\Corr_Main_1|Add13~7\))) # (!\Corr_Main_1|Add9~8_combout\ & (\Corr_Main_1|Add2~8_combout\ & !\Corr_Main_1|Add13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add9~8_combout\,
	datab => \Corr_Main_1|Add2~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~7\,
	combout => \Corr_Main_1|Add13~8_combout\,
	cout => \Corr_Main_1|Add13~9\);

-- Location: LCCOMB_X21_Y4_N24
\Corr_Main_1|Add13~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~16_combout\ = ((\Corr_Main_1|Add2~16_combout\ $ (\Corr_Main_1|Add9~16_combout\ $ (!\Corr_Main_1|Add13~15\)))) # (GND)
-- \Corr_Main_1|Add13~17\ = CARRY((\Corr_Main_1|Add2~16_combout\ & ((\Corr_Main_1|Add9~16_combout\) # (!\Corr_Main_1|Add13~15\))) # (!\Corr_Main_1|Add2~16_combout\ & (\Corr_Main_1|Add9~16_combout\ & !\Corr_Main_1|Add13~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add2~16_combout\,
	datab => \Corr_Main_1|Add9~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~15\,
	combout => \Corr_Main_1|Add13~16_combout\,
	cout => \Corr_Main_1|Add13~17\);

-- Location: LCCOMB_X21_Y4_N26
\Corr_Main_1|Add13~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~18_combout\ = (\Corr_Main_1|Add9~18_combout\ & (!\Corr_Main_1|Add13~17\)) # (!\Corr_Main_1|Add9~18_combout\ & ((\Corr_Main_1|Add13~17\) # (GND)))
-- \Corr_Main_1|Add13~19\ = CARRY((!\Corr_Main_1|Add13~17\) # (!\Corr_Main_1|Add9~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add9~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~17\,
	combout => \Corr_Main_1|Add13~18_combout\,
	cout => \Corr_Main_1|Add13~19\);

-- Location: LCCOMB_X27_Y4_N2
\Corr_Main_1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~0_combout\ = (\Corr_Main_1|buff|buffer_0\(3) & (\Corr_Main_1|buff|buffer_0\(2) $ (VCC))) # (!\Corr_Main_1|buff|buffer_0\(3) & (\Corr_Main_1|buff|buffer_0\(2) & VCC))
-- \Corr_Main_1|Add1~1\ = CARRY((\Corr_Main_1|buff|buffer_0\(3) & \Corr_Main_1|buff|buffer_0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0\(3),
	datab => \Corr_Main_1|buff|buffer_0\(2),
	datad => VCC,
	combout => \Corr_Main_1|Add1~0_combout\,
	cout => \Corr_Main_1|Add1~1\);

-- Location: LCCOMB_X27_Y4_N4
\Corr_Main_1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~2_combout\ = (\Corr_Main_1|buff|buffer_1\(2) & ((\Corr_Main_1|buff|buffer_1\(3) & (\Corr_Main_1|Add1~1\ & VCC)) # (!\Corr_Main_1|buff|buffer_1\(3) & (!\Corr_Main_1|Add1~1\)))) # (!\Corr_Main_1|buff|buffer_1\(2) & 
-- ((\Corr_Main_1|buff|buffer_1\(3) & (!\Corr_Main_1|Add1~1\)) # (!\Corr_Main_1|buff|buffer_1\(3) & ((\Corr_Main_1|Add1~1\) # (GND)))))
-- \Corr_Main_1|Add1~3\ = CARRY((\Corr_Main_1|buff|buffer_1\(2) & (!\Corr_Main_1|buff|buffer_1\(3) & !\Corr_Main_1|Add1~1\)) # (!\Corr_Main_1|buff|buffer_1\(2) & ((!\Corr_Main_1|Add1~1\) # (!\Corr_Main_1|buff|buffer_1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_1\(2),
	datab => \Corr_Main_1|buff|buffer_1\(3),
	datad => VCC,
	cin => \Corr_Main_1|Add1~1\,
	combout => \Corr_Main_1|Add1~2_combout\,
	cout => \Corr_Main_1|Add1~3\);

-- Location: LCCOMB_X27_Y4_N6
\Corr_Main_1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~4_combout\ = ((\Corr_Main_1|buff|buffer_2\(2) $ (\Corr_Main_1|buff|buffer_2\(3) $ (!\Corr_Main_1|Add1~3\)))) # (GND)
-- \Corr_Main_1|Add1~5\ = CARRY((\Corr_Main_1|buff|buffer_2\(2) & ((\Corr_Main_1|buff|buffer_2\(3)) # (!\Corr_Main_1|Add1~3\))) # (!\Corr_Main_1|buff|buffer_2\(2) & (\Corr_Main_1|buff|buffer_2\(3) & !\Corr_Main_1|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_2\(2),
	datab => \Corr_Main_1|buff|buffer_2\(3),
	datad => VCC,
	cin => \Corr_Main_1|Add1~3\,
	combout => \Corr_Main_1|Add1~4_combout\,
	cout => \Corr_Main_1|Add1~5\);

-- Location: LCCOMB_X27_Y4_N8
\Corr_Main_1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~6_combout\ = (\Corr_Main_1|buff|buffer_3\(2) & ((\Corr_Main_1|buff|buffer_3\(3) & (\Corr_Main_1|Add1~5\ & VCC)) # (!\Corr_Main_1|buff|buffer_3\(3) & (!\Corr_Main_1|Add1~5\)))) # (!\Corr_Main_1|buff|buffer_3\(2) & 
-- ((\Corr_Main_1|buff|buffer_3\(3) & (!\Corr_Main_1|Add1~5\)) # (!\Corr_Main_1|buff|buffer_3\(3) & ((\Corr_Main_1|Add1~5\) # (GND)))))
-- \Corr_Main_1|Add1~7\ = CARRY((\Corr_Main_1|buff|buffer_3\(2) & (!\Corr_Main_1|buff|buffer_3\(3) & !\Corr_Main_1|Add1~5\)) # (!\Corr_Main_1|buff|buffer_3\(2) & ((!\Corr_Main_1|Add1~5\) # (!\Corr_Main_1|buff|buffer_3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_3\(2),
	datab => \Corr_Main_1|buff|buffer_3\(3),
	datad => VCC,
	cin => \Corr_Main_1|Add1~5\,
	combout => \Corr_Main_1|Add1~6_combout\,
	cout => \Corr_Main_1|Add1~7\);

-- Location: LCCOMB_X27_Y4_N10
\Corr_Main_1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~8_combout\ = ((\Corr_Main_1|buff|buffer_4\(2) $ (\Corr_Main_1|buff|buffer_4\(3) $ (!\Corr_Main_1|Add1~7\)))) # (GND)
-- \Corr_Main_1|Add1~9\ = CARRY((\Corr_Main_1|buff|buffer_4\(2) & ((\Corr_Main_1|buff|buffer_4\(3)) # (!\Corr_Main_1|Add1~7\))) # (!\Corr_Main_1|buff|buffer_4\(2) & (\Corr_Main_1|buff|buffer_4\(3) & !\Corr_Main_1|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_4\(2),
	datab => \Corr_Main_1|buff|buffer_4\(3),
	datad => VCC,
	cin => \Corr_Main_1|Add1~7\,
	combout => \Corr_Main_1|Add1~8_combout\,
	cout => \Corr_Main_1|Add1~9\);

-- Location: LCCOMB_X27_Y4_N12
\Corr_Main_1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~10_combout\ = (\Corr_Main_1|buff|buffer_5\(2) & ((\Corr_Main_1|buff|buffer_5\(3) & (\Corr_Main_1|Add1~9\ & VCC)) # (!\Corr_Main_1|buff|buffer_5\(3) & (!\Corr_Main_1|Add1~9\)))) # (!\Corr_Main_1|buff|buffer_5\(2) & 
-- ((\Corr_Main_1|buff|buffer_5\(3) & (!\Corr_Main_1|Add1~9\)) # (!\Corr_Main_1|buff|buffer_5\(3) & ((\Corr_Main_1|Add1~9\) # (GND)))))
-- \Corr_Main_1|Add1~11\ = CARRY((\Corr_Main_1|buff|buffer_5\(2) & (!\Corr_Main_1|buff|buffer_5\(3) & !\Corr_Main_1|Add1~9\)) # (!\Corr_Main_1|buff|buffer_5\(2) & ((!\Corr_Main_1|Add1~9\) # (!\Corr_Main_1|buff|buffer_5\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_5\(2),
	datab => \Corr_Main_1|buff|buffer_5\(3),
	datad => VCC,
	cin => \Corr_Main_1|Add1~9\,
	combout => \Corr_Main_1|Add1~10_combout\,
	cout => \Corr_Main_1|Add1~11\);

-- Location: LCCOMB_X27_Y4_N14
\Corr_Main_1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~12_combout\ = ((\Corr_Main_1|buff|buffer_6\(3) $ (\Corr_Main_1|buff|buffer_6\(2) $ (!\Corr_Main_1|Add1~11\)))) # (GND)
-- \Corr_Main_1|Add1~13\ = CARRY((\Corr_Main_1|buff|buffer_6\(3) & ((\Corr_Main_1|buff|buffer_6\(2)) # (!\Corr_Main_1|Add1~11\))) # (!\Corr_Main_1|buff|buffer_6\(3) & (\Corr_Main_1|buff|buffer_6\(2) & !\Corr_Main_1|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_6\(3),
	datab => \Corr_Main_1|buff|buffer_6\(2),
	datad => VCC,
	cin => \Corr_Main_1|Add1~11\,
	combout => \Corr_Main_1|Add1~12_combout\,
	cout => \Corr_Main_1|Add1~13\);

-- Location: LCCOMB_X27_Y4_N16
\Corr_Main_1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~14_combout\ = (\Corr_Main_1|buff|buffer_7\(2) & ((\Corr_Main_1|buff|buffer_7\(3) & (\Corr_Main_1|Add1~13\ & VCC)) # (!\Corr_Main_1|buff|buffer_7\(3) & (!\Corr_Main_1|Add1~13\)))) # (!\Corr_Main_1|buff|buffer_7\(2) & 
-- ((\Corr_Main_1|buff|buffer_7\(3) & (!\Corr_Main_1|Add1~13\)) # (!\Corr_Main_1|buff|buffer_7\(3) & ((\Corr_Main_1|Add1~13\) # (GND)))))
-- \Corr_Main_1|Add1~15\ = CARRY((\Corr_Main_1|buff|buffer_7\(2) & (!\Corr_Main_1|buff|buffer_7\(3) & !\Corr_Main_1|Add1~13\)) # (!\Corr_Main_1|buff|buffer_7\(2) & ((!\Corr_Main_1|Add1~13\) # (!\Corr_Main_1|buff|buffer_7\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_7\(2),
	datab => \Corr_Main_1|buff|buffer_7\(3),
	datad => VCC,
	cin => \Corr_Main_1|Add1~13\,
	combout => \Corr_Main_1|Add1~14_combout\,
	cout => \Corr_Main_1|Add1~15\);

-- Location: LCCOMB_X27_Y4_N18
\Corr_Main_1|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~16_combout\ = !\Corr_Main_1|Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add1~15\,
	combout => \Corr_Main_1|Add1~16_combout\);

-- Location: LCCOMB_X26_Y4_N12
\Corr_Main_1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add0~4_combout\ = ((\Corr_Main_1|buff|buffer_2\(0) $ (\Corr_Main_1|buff|buffer_2\(1) $ (!\Corr_Main_1|Add0~3\)))) # (GND)
-- \Corr_Main_1|Add0~5\ = CARRY((\Corr_Main_1|buff|buffer_2\(0) & ((\Corr_Main_1|buff|buffer_2\(1)) # (!\Corr_Main_1|Add0~3\))) # (!\Corr_Main_1|buff|buffer_2\(0) & (\Corr_Main_1|buff|buffer_2\(1) & !\Corr_Main_1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_2\(0),
	datab => \Corr_Main_1|buff|buffer_2\(1),
	datad => VCC,
	cin => \Corr_Main_1|Add0~3\,
	combout => \Corr_Main_1|Add0~4_combout\,
	cout => \Corr_Main_1|Add0~5\);

-- Location: LCCOMB_X25_Y4_N10
\Corr_Main_1|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~0_combout\ = (\Corr_Main_1|Add1~0_combout\ & (\Corr_Main_1|Add0~0_combout\ $ (VCC))) # (!\Corr_Main_1|Add1~0_combout\ & (\Corr_Main_1|Add0~0_combout\ & VCC))
-- \Corr_Main_1|Add8~1\ = CARRY((\Corr_Main_1|Add1~0_combout\ & \Corr_Main_1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add1~0_combout\,
	datab => \Corr_Main_1|Add0~0_combout\,
	datad => VCC,
	combout => \Corr_Main_1|Add8~0_combout\,
	cout => \Corr_Main_1|Add8~1\);

-- Location: LCCOMB_X25_Y4_N14
\Corr_Main_1|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~4_combout\ = ((\Corr_Main_1|Add0~4_combout\ $ (\Corr_Main_1|Add1~4_combout\ $ (!\Corr_Main_1|Add8~3\)))) # (GND)
-- \Corr_Main_1|Add8~5\ = CARRY((\Corr_Main_1|Add0~4_combout\ & ((\Corr_Main_1|Add1~4_combout\) # (!\Corr_Main_1|Add8~3\))) # (!\Corr_Main_1|Add0~4_combout\ & (\Corr_Main_1|Add1~4_combout\ & !\Corr_Main_1|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add0~4_combout\,
	datab => \Corr_Main_1|Add1~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add8~3\,
	combout => \Corr_Main_1|Add8~4_combout\,
	cout => \Corr_Main_1|Add8~5\);

-- Location: LCCOMB_X25_Y4_N16
\Corr_Main_1|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~6_combout\ = (\Corr_Main_1|Add1~6_combout\ & ((\Corr_Main_1|Add0~6_combout\ & (\Corr_Main_1|Add8~5\ & VCC)) # (!\Corr_Main_1|Add0~6_combout\ & (!\Corr_Main_1|Add8~5\)))) # (!\Corr_Main_1|Add1~6_combout\ & ((\Corr_Main_1|Add0~6_combout\ & 
-- (!\Corr_Main_1|Add8~5\)) # (!\Corr_Main_1|Add0~6_combout\ & ((\Corr_Main_1|Add8~5\) # (GND)))))
-- \Corr_Main_1|Add8~7\ = CARRY((\Corr_Main_1|Add1~6_combout\ & (!\Corr_Main_1|Add0~6_combout\ & !\Corr_Main_1|Add8~5\)) # (!\Corr_Main_1|Add1~6_combout\ & ((!\Corr_Main_1|Add8~5\) # (!\Corr_Main_1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add1~6_combout\,
	datab => \Corr_Main_1|Add0~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add8~5\,
	combout => \Corr_Main_1|Add8~6_combout\,
	cout => \Corr_Main_1|Add8~7\);

-- Location: LCCOMB_X25_Y4_N18
\Corr_Main_1|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~8_combout\ = ((\Corr_Main_1|Add1~8_combout\ $ (\Corr_Main_1|Add0~8_combout\ $ (!\Corr_Main_1|Add8~7\)))) # (GND)
-- \Corr_Main_1|Add8~9\ = CARRY((\Corr_Main_1|Add1~8_combout\ & ((\Corr_Main_1|Add0~8_combout\) # (!\Corr_Main_1|Add8~7\))) # (!\Corr_Main_1|Add1~8_combout\ & (\Corr_Main_1|Add0~8_combout\ & !\Corr_Main_1|Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add1~8_combout\,
	datab => \Corr_Main_1|Add0~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add8~7\,
	combout => \Corr_Main_1|Add8~8_combout\,
	cout => \Corr_Main_1|Add8~9\);

-- Location: LCCOMB_X25_Y4_N26
\Corr_Main_1|Add8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~16_combout\ = ((\Corr_Main_1|Add1~16_combout\ $ (\Corr_Main_1|Add0~16_combout\ $ (!\Corr_Main_1|Add8~15\)))) # (GND)
-- \Corr_Main_1|Add8~17\ = CARRY((\Corr_Main_1|Add1~16_combout\ & ((\Corr_Main_1|Add0~16_combout\) # (!\Corr_Main_1|Add8~15\))) # (!\Corr_Main_1|Add1~16_combout\ & (\Corr_Main_1|Add0~16_combout\ & !\Corr_Main_1|Add8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add1~16_combout\,
	datab => \Corr_Main_1|Add0~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add8~15\,
	combout => \Corr_Main_1|Add8~16_combout\,
	cout => \Corr_Main_1|Add8~17\);

-- Location: LCCOMB_X24_Y4_N4
\Corr_Main_1|Add12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~0_combout\ = (\Corr_Main_1|Add8~0_combout\ & (\Corr_Main_1|buff|buffer_0\(4) $ (VCC))) # (!\Corr_Main_1|Add8~0_combout\ & (\Corr_Main_1|buff|buffer_0\(4) & VCC))
-- \Corr_Main_1|Add12~1\ = CARRY((\Corr_Main_1|Add8~0_combout\ & \Corr_Main_1|buff|buffer_0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add8~0_combout\,
	datab => \Corr_Main_1|buff|buffer_0\(4),
	datad => VCC,
	combout => \Corr_Main_1|Add12~0_combout\,
	cout => \Corr_Main_1|Add12~1\);

-- Location: LCCOMB_X24_Y4_N6
\Corr_Main_1|Add12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~2_combout\ = (\Corr_Main_1|buff|buffer_1\(4) & ((\Corr_Main_1|Add8~2_combout\ & (\Corr_Main_1|Add12~1\ & VCC)) # (!\Corr_Main_1|Add8~2_combout\ & (!\Corr_Main_1|Add12~1\)))) # (!\Corr_Main_1|buff|buffer_1\(4) & 
-- ((\Corr_Main_1|Add8~2_combout\ & (!\Corr_Main_1|Add12~1\)) # (!\Corr_Main_1|Add8~2_combout\ & ((\Corr_Main_1|Add12~1\) # (GND)))))
-- \Corr_Main_1|Add12~3\ = CARRY((\Corr_Main_1|buff|buffer_1\(4) & (!\Corr_Main_1|Add8~2_combout\ & !\Corr_Main_1|Add12~1\)) # (!\Corr_Main_1|buff|buffer_1\(4) & ((!\Corr_Main_1|Add12~1\) # (!\Corr_Main_1|Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_1\(4),
	datab => \Corr_Main_1|Add8~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add12~1\,
	combout => \Corr_Main_1|Add12~2_combout\,
	cout => \Corr_Main_1|Add12~3\);

-- Location: LCCOMB_X24_Y4_N8
\Corr_Main_1|Add12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~4_combout\ = ((\Corr_Main_1|Add8~4_combout\ $ (\Corr_Main_1|buff|buffer_2\(4) $ (!\Corr_Main_1|Add12~3\)))) # (GND)
-- \Corr_Main_1|Add12~5\ = CARRY((\Corr_Main_1|Add8~4_combout\ & ((\Corr_Main_1|buff|buffer_2\(4)) # (!\Corr_Main_1|Add12~3\))) # (!\Corr_Main_1|Add8~4_combout\ & (\Corr_Main_1|buff|buffer_2\(4) & !\Corr_Main_1|Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add8~4_combout\,
	datab => \Corr_Main_1|buff|buffer_2\(4),
	datad => VCC,
	cin => \Corr_Main_1|Add12~3\,
	combout => \Corr_Main_1|Add12~4_combout\,
	cout => \Corr_Main_1|Add12~5\);

-- Location: LCCOMB_X24_Y4_N10
\Corr_Main_1|Add12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~6_combout\ = (\Corr_Main_1|Add8~6_combout\ & ((\Corr_Main_1|buff|buffer_3\(4) & (\Corr_Main_1|Add12~5\ & VCC)) # (!\Corr_Main_1|buff|buffer_3\(4) & (!\Corr_Main_1|Add12~5\)))) # (!\Corr_Main_1|Add8~6_combout\ & 
-- ((\Corr_Main_1|buff|buffer_3\(4) & (!\Corr_Main_1|Add12~5\)) # (!\Corr_Main_1|buff|buffer_3\(4) & ((\Corr_Main_1|Add12~5\) # (GND)))))
-- \Corr_Main_1|Add12~7\ = CARRY((\Corr_Main_1|Add8~6_combout\ & (!\Corr_Main_1|buff|buffer_3\(4) & !\Corr_Main_1|Add12~5\)) # (!\Corr_Main_1|Add8~6_combout\ & ((!\Corr_Main_1|Add12~5\) # (!\Corr_Main_1|buff|buffer_3\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add8~6_combout\,
	datab => \Corr_Main_1|buff|buffer_3\(4),
	datad => VCC,
	cin => \Corr_Main_1|Add12~5\,
	combout => \Corr_Main_1|Add12~6_combout\,
	cout => \Corr_Main_1|Add12~7\);

-- Location: LCCOMB_X24_Y4_N14
\Corr_Main_1|Add12~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~10_combout\ = (\Corr_Main_1|buff|buffer_5\(4) & ((\Corr_Main_1|Add8~10_combout\ & (\Corr_Main_1|Add12~9\ & VCC)) # (!\Corr_Main_1|Add8~10_combout\ & (!\Corr_Main_1|Add12~9\)))) # (!\Corr_Main_1|buff|buffer_5\(4) & 
-- ((\Corr_Main_1|Add8~10_combout\ & (!\Corr_Main_1|Add12~9\)) # (!\Corr_Main_1|Add8~10_combout\ & ((\Corr_Main_1|Add12~9\) # (GND)))))
-- \Corr_Main_1|Add12~11\ = CARRY((\Corr_Main_1|buff|buffer_5\(4) & (!\Corr_Main_1|Add8~10_combout\ & !\Corr_Main_1|Add12~9\)) # (!\Corr_Main_1|buff|buffer_5\(4) & ((!\Corr_Main_1|Add12~9\) # (!\Corr_Main_1|Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_5\(4),
	datab => \Corr_Main_1|Add8~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add12~9\,
	combout => \Corr_Main_1|Add12~10_combout\,
	cout => \Corr_Main_1|Add12~11\);

-- Location: LCCOMB_X24_Y4_N16
\Corr_Main_1|Add12~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~12_combout\ = ((\Corr_Main_1|buff|buffer_6\(4) $ (\Corr_Main_1|Add8~12_combout\ $ (!\Corr_Main_1|Add12~11\)))) # (GND)
-- \Corr_Main_1|Add12~13\ = CARRY((\Corr_Main_1|buff|buffer_6\(4) & ((\Corr_Main_1|Add8~12_combout\) # (!\Corr_Main_1|Add12~11\))) # (!\Corr_Main_1|buff|buffer_6\(4) & (\Corr_Main_1|Add8~12_combout\ & !\Corr_Main_1|Add12~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_6\(4),
	datab => \Corr_Main_1|Add8~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add12~11\,
	combout => \Corr_Main_1|Add12~12_combout\,
	cout => \Corr_Main_1|Add12~13\);

-- Location: LCCOMB_X24_Y4_N18
\Corr_Main_1|Add12~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~14_combout\ = (\Corr_Main_1|buff|buffer_7\(4) & ((\Corr_Main_1|Add8~14_combout\ & (\Corr_Main_1|Add12~13\ & VCC)) # (!\Corr_Main_1|Add8~14_combout\ & (!\Corr_Main_1|Add12~13\)))) # (!\Corr_Main_1|buff|buffer_7\(4) & 
-- ((\Corr_Main_1|Add8~14_combout\ & (!\Corr_Main_1|Add12~13\)) # (!\Corr_Main_1|Add8~14_combout\ & ((\Corr_Main_1|Add12~13\) # (GND)))))
-- \Corr_Main_1|Add12~15\ = CARRY((\Corr_Main_1|buff|buffer_7\(4) & (!\Corr_Main_1|Add8~14_combout\ & !\Corr_Main_1|Add12~13\)) # (!\Corr_Main_1|buff|buffer_7\(4) & ((!\Corr_Main_1|Add12~13\) # (!\Corr_Main_1|Add8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_7\(4),
	datab => \Corr_Main_1|Add8~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add12~13\,
	combout => \Corr_Main_1|Add12~14_combout\,
	cout => \Corr_Main_1|Add12~15\);

-- Location: LCCOMB_X24_Y4_N22
\Corr_Main_1|Add12~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~18_combout\ = (\Corr_Main_1|Add8~18_combout\ & (!\Corr_Main_1|Add12~17\)) # (!\Corr_Main_1|Add8~18_combout\ & ((\Corr_Main_1|Add12~17\) # (GND)))
-- \Corr_Main_1|Add12~19\ = CARRY((!\Corr_Main_1|Add12~17\) # (!\Corr_Main_1|Add8~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add8~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add12~17\,
	combout => \Corr_Main_1|Add12~18_combout\,
	cout => \Corr_Main_1|Add12~19\);

-- Location: LCCOMB_X20_Y4_N4
\Corr_Main_1|Add15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add15~0_combout\ = (\Corr_Main_1|Add12~0_combout\ & (\Corr_Main_1|Add13~0_combout\ $ (VCC))) # (!\Corr_Main_1|Add12~0_combout\ & (\Corr_Main_1|Add13~0_combout\ & VCC))
-- \Corr_Main_1|Add15~1\ = CARRY((\Corr_Main_1|Add12~0_combout\ & \Corr_Main_1|Add13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add12~0_combout\,
	datab => \Corr_Main_1|Add13~0_combout\,
	datad => VCC,
	combout => \Corr_Main_1|Add15~0_combout\,
	cout => \Corr_Main_1|Add15~1\);

-- Location: LCCOMB_X20_Y4_N8
\Corr_Main_1|Add15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add15~4_combout\ = ((\Corr_Main_1|Add12~4_combout\ $ (\Corr_Main_1|Add13~4_combout\ $ (!\Corr_Main_1|Add15~3\)))) # (GND)
-- \Corr_Main_1|Add15~5\ = CARRY((\Corr_Main_1|Add12~4_combout\ & ((\Corr_Main_1|Add13~4_combout\) # (!\Corr_Main_1|Add15~3\))) # (!\Corr_Main_1|Add12~4_combout\ & (\Corr_Main_1|Add13~4_combout\ & !\Corr_Main_1|Add15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add12~4_combout\,
	datab => \Corr_Main_1|Add13~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add15~3\,
	combout => \Corr_Main_1|Add15~4_combout\,
	cout => \Corr_Main_1|Add15~5\);

-- Location: LCCOMB_X20_Y4_N10
\Corr_Main_1|Add15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add15~6_combout\ = (\Corr_Main_1|Add12~6_combout\ & ((\Corr_Main_1|Add13~6_combout\ & (\Corr_Main_1|Add15~5\ & VCC)) # (!\Corr_Main_1|Add13~6_combout\ & (!\Corr_Main_1|Add15~5\)))) # (!\Corr_Main_1|Add12~6_combout\ & 
-- ((\Corr_Main_1|Add13~6_combout\ & (!\Corr_Main_1|Add15~5\)) # (!\Corr_Main_1|Add13~6_combout\ & ((\Corr_Main_1|Add15~5\) # (GND)))))
-- \Corr_Main_1|Add15~7\ = CARRY((\Corr_Main_1|Add12~6_combout\ & (!\Corr_Main_1|Add13~6_combout\ & !\Corr_Main_1|Add15~5\)) # (!\Corr_Main_1|Add12~6_combout\ & ((!\Corr_Main_1|Add15~5\) # (!\Corr_Main_1|Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add12~6_combout\,
	datab => \Corr_Main_1|Add13~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add15~5\,
	combout => \Corr_Main_1|Add15~6_combout\,
	cout => \Corr_Main_1|Add15~7\);

-- Location: LCCOMB_X20_Y4_N14
\Corr_Main_1|Add15~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add15~10_combout\ = (\Corr_Main_1|Add12~10_combout\ & ((\Corr_Main_1|Add13~10_combout\ & (\Corr_Main_1|Add15~9\ & VCC)) # (!\Corr_Main_1|Add13~10_combout\ & (!\Corr_Main_1|Add15~9\)))) # (!\Corr_Main_1|Add12~10_combout\ & 
-- ((\Corr_Main_1|Add13~10_combout\ & (!\Corr_Main_1|Add15~9\)) # (!\Corr_Main_1|Add13~10_combout\ & ((\Corr_Main_1|Add15~9\) # (GND)))))
-- \Corr_Main_1|Add15~11\ = CARRY((\Corr_Main_1|Add12~10_combout\ & (!\Corr_Main_1|Add13~10_combout\ & !\Corr_Main_1|Add15~9\)) # (!\Corr_Main_1|Add12~10_combout\ & ((!\Corr_Main_1|Add15~9\) # (!\Corr_Main_1|Add13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add12~10_combout\,
	datab => \Corr_Main_1|Add13~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add15~9\,
	combout => \Corr_Main_1|Add15~10_combout\,
	cout => \Corr_Main_1|Add15~11\);

-- Location: LCCOMB_X20_Y4_N18
\Corr_Main_1|Add15~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add15~14_combout\ = (\Corr_Main_1|Add12~14_combout\ & ((\Corr_Main_1|Add13~14_combout\ & (\Corr_Main_1|Add15~13\ & VCC)) # (!\Corr_Main_1|Add13~14_combout\ & (!\Corr_Main_1|Add15~13\)))) # (!\Corr_Main_1|Add12~14_combout\ & 
-- ((\Corr_Main_1|Add13~14_combout\ & (!\Corr_Main_1|Add15~13\)) # (!\Corr_Main_1|Add13~14_combout\ & ((\Corr_Main_1|Add15~13\) # (GND)))))
-- \Corr_Main_1|Add15~15\ = CARRY((\Corr_Main_1|Add12~14_combout\ & (!\Corr_Main_1|Add13~14_combout\ & !\Corr_Main_1|Add15~13\)) # (!\Corr_Main_1|Add12~14_combout\ & ((!\Corr_Main_1|Add15~13\) # (!\Corr_Main_1|Add13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add12~14_combout\,
	datab => \Corr_Main_1|Add13~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add15~13\,
	combout => \Corr_Main_1|Add15~14_combout\,
	cout => \Corr_Main_1|Add15~15\);

-- Location: LCCOMB_X20_Y4_N20
\Corr_Main_1|Add15~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add15~16_combout\ = ((\Corr_Main_1|Add13~16_combout\ $ (\Corr_Main_1|Add12~16_combout\ $ (!\Corr_Main_1|Add15~15\)))) # (GND)
-- \Corr_Main_1|Add15~17\ = CARRY((\Corr_Main_1|Add13~16_combout\ & ((\Corr_Main_1|Add12~16_combout\) # (!\Corr_Main_1|Add15~15\))) # (!\Corr_Main_1|Add13~16_combout\ & (\Corr_Main_1|Add12~16_combout\ & !\Corr_Main_1|Add15~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add13~16_combout\,
	datab => \Corr_Main_1|Add12~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add15~15\,
	combout => \Corr_Main_1|Add15~16_combout\,
	cout => \Corr_Main_1|Add15~17\);

-- Location: LCCOMB_X20_Y8_N4
\Corr_Main_1|Add18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~2_combout\ = (\Corr_Main_1|Add17~2_combout\ & ((\Corr_Main_1|Add15~2_combout\ & (\Corr_Main_1|Add18~1\ & VCC)) # (!\Corr_Main_1|Add15~2_combout\ & (!\Corr_Main_1|Add18~1\)))) # (!\Corr_Main_1|Add17~2_combout\ & 
-- ((\Corr_Main_1|Add15~2_combout\ & (!\Corr_Main_1|Add18~1\)) # (!\Corr_Main_1|Add15~2_combout\ & ((\Corr_Main_1|Add18~1\) # (GND)))))
-- \Corr_Main_1|Add18~3\ = CARRY((\Corr_Main_1|Add17~2_combout\ & (!\Corr_Main_1|Add15~2_combout\ & !\Corr_Main_1|Add18~1\)) # (!\Corr_Main_1|Add17~2_combout\ & ((!\Corr_Main_1|Add18~1\) # (!\Corr_Main_1|Add15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add17~2_combout\,
	datab => \Corr_Main_1|Add15~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~1\,
	combout => \Corr_Main_1|Add18~2_combout\,
	cout => \Corr_Main_1|Add18~3\);

-- Location: LCCOMB_X20_Y8_N8
\Corr_Main_1|Add18~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~6_combout\ = (\Corr_Main_1|Add15~6_combout\ & ((\Corr_Main_1|Add17~6_combout\ & (\Corr_Main_1|Add18~5\ & VCC)) # (!\Corr_Main_1|Add17~6_combout\ & (!\Corr_Main_1|Add18~5\)))) # (!\Corr_Main_1|Add15~6_combout\ & 
-- ((\Corr_Main_1|Add17~6_combout\ & (!\Corr_Main_1|Add18~5\)) # (!\Corr_Main_1|Add17~6_combout\ & ((\Corr_Main_1|Add18~5\) # (GND)))))
-- \Corr_Main_1|Add18~7\ = CARRY((\Corr_Main_1|Add15~6_combout\ & (!\Corr_Main_1|Add17~6_combout\ & !\Corr_Main_1|Add18~5\)) # (!\Corr_Main_1|Add15~6_combout\ & ((!\Corr_Main_1|Add18~5\) # (!\Corr_Main_1|Add17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add15~6_combout\,
	datab => \Corr_Main_1|Add17~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~5\,
	combout => \Corr_Main_1|Add18~6_combout\,
	cout => \Corr_Main_1|Add18~7\);

-- Location: LCCOMB_X20_Y5_N22
\Corr_Main_1|Add14~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~20_combout\ = !\Corr_Main_1|Add14~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add14~19\,
	combout => \Corr_Main_1|Add14~20_combout\);

-- Location: LCCOMB_X19_Y5_N20
\Corr_Main_1|Add16~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~20_combout\ = \Corr_Main_1|Add16~19\ $ (!\Corr_Main_1|Add14~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|Add14~20_combout\,
	cin => \Corr_Main_1|Add16~19\,
	combout => \Corr_Main_1|Add16~20_combout\);

-- Location: LCCOMB_X21_Y8_N24
\Corr_Main_1|Add17~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~20_combout\ = (\Corr_Main_1|Add16~20_combout\ & (\Corr_Main_1|Add17~19\ $ (GND))) # (!\Corr_Main_1|Add16~20_combout\ & (!\Corr_Main_1|Add17~19\ & VCC))
-- \Corr_Main_1|Add17~21\ = CARRY((\Corr_Main_1|Add16~20_combout\ & !\Corr_Main_1|Add17~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add16~20_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~19\,
	combout => \Corr_Main_1|Add17~20_combout\,
	cout => \Corr_Main_1|Add17~21\);

-- Location: LCCOMB_X24_Y4_N24
\Corr_Main_1|Add12~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~20_combout\ = !\Corr_Main_1|Add12~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add12~19\,
	combout => \Corr_Main_1|Add12~20_combout\);

-- Location: LCCOMB_X21_Y8_N26
\Corr_Main_1|Add17~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~22_combout\ = \Corr_Main_1|Add17~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add17~21\,
	combout => \Corr_Main_1|Add17~22_combout\);

-- Location: LCCOMB_X18_Y5_N10
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4) & (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4) & (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ & VCC))
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4) & !\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4),
	datad => VCC,
	cin => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\,
	combout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\,
	cout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X18_Y5_N12
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~0_combout\ = \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\,
	combout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~0_combout\);

-- Location: LCFF_X2_Y6_N7
\adc_spi|clk_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|clk_counter\(2));

-- Location: LCFF_X2_Y6_N17
\adc_spi|clk_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|clk_counter\(1));

-- Location: LCCOMB_X1_Y6_N12
\adc_spi|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Equal1~1_combout\ = (!\adc_spi|clk_counter\(1) & (\adc_spi|clk_counter\(5) & \adc_spi|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|clk_counter\(1),
	datac => \adc_spi|clk_counter\(5),
	datad => \adc_spi|Equal1~0_combout\,
	combout => \adc_spi|Equal1~1_combout\);

-- Location: LCFF_X6_Y6_N5
\this_setup_manager|spi_command_index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \adc_spi|ALT_INV_curr_state.idle~clkctrl_outclk\,
	datain => \this_setup_manager|spi_command_index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|spi_command_index\(2));

-- Location: LCFF_X17_Y7_N3
\this_mram_controller|curr_state.reading\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|curr_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|curr_state.reading~regout\);

-- Location: LCFF_X18_Y8_N9
\Corr_Main_1|cnt[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~3_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(31));

-- Location: LCFF_X18_Y8_N13
\Corr_Main_1|cnt[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~4_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(30));

-- Location: LCFF_X18_Y8_N21
\Corr_Main_1|cnt[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~5_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(29));

-- Location: LCFF_X18_Y8_N1
\Corr_Main_1|cnt[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~6_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(28));

-- Location: LCCOMB_X18_Y8_N6
\Corr_Main_1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Equal0~0_combout\ = (!\Corr_Main_1|cnt\(29) & (!\Corr_Main_1|cnt\(28) & (!\Corr_Main_1|cnt\(31) & !\Corr_Main_1|cnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(29),
	datab => \Corr_Main_1|cnt\(28),
	datac => \Corr_Main_1|cnt\(31),
	datad => \Corr_Main_1|cnt\(30),
	combout => \Corr_Main_1|Equal0~0_combout\);

-- Location: LCFF_X18_Y8_N11
\Corr_Main_1|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~12_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(22));

-- Location: LCFF_X17_Y8_N25
\Corr_Main_1|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~16_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(18));

-- Location: LCFF_X18_Y9_N11
\Corr_Main_1|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~19_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(15));

-- Location: LCFF_X18_Y9_N21
\Corr_Main_1|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~21_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(13));

-- Location: LCCOMB_X18_Y9_N12
\Corr_Main_1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Equal0~5_combout\ = (!\Corr_Main_1|cnt\(13) & (!\Corr_Main_1|cnt\(12) & (!\Corr_Main_1|cnt\(14) & !\Corr_Main_1|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(13),
	datab => \Corr_Main_1|cnt\(12),
	datac => \Corr_Main_1|cnt\(14),
	datad => \Corr_Main_1|cnt\(15),
	combout => \Corr_Main_1|Equal0~5_combout\);

-- Location: LCFF_X17_Y9_N25
\Corr_Main_1|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~27_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(7));

-- Location: LCCOMB_X19_Y11_N10
\this_mram_controller|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector0~1_combout\ = ((\this_mram_controller|Mux3~0_combout\ & (!\this_mram_controller|MRAM_EN~regout\)) # (!\this_mram_controller|Mux3~0_combout\ & ((\this_mram_controller|counter\(1))))) # 
-- (!\this_mram_controller|curr_state.writing~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|MRAM_EN~regout\,
	datab => \this_mram_controller|curr_state.writing~regout\,
	datac => \this_mram_controller|Mux3~0_combout\,
	datad => \this_mram_controller|counter\(1),
	combout => \this_mram_controller|Selector0~1_combout\);

-- Location: LCFF_X12_Y6_N11
\UART_Controller_1|uart_tx_1|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(1));

-- Location: LCFF_X12_Y6_N15
\UART_Controller_1|uart_tx_1|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(7));

-- Location: LCCOMB_X12_Y6_N6
\UART_Controller_1|uart_tx_1|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector13~0_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(2) & ((\UART_Controller_1|uart_tx_1|curr_state.idle~regout\) # (\UART_Controller_1|uart_tx_1|curr_state.data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|data_index\(2),
	datac => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector13~0_combout\);

-- Location: LCCOMB_X2_Y6_N24
\adc_spi|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Add1~0_combout\ = (\adc_spi|clk_counter\(1) & \adc_spi|clk_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|clk_counter\(1),
	datac => \adc_spi|clk_counter\(0),
	combout => \adc_spi|Add1~0_combout\);

-- Location: LCCOMB_X2_Y6_N6
\adc_spi|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector7~0_combout\ = (\adc_spi|clk_counter\(2) & ((\adc_spi|curr_state.latch_data~regout\) # ((!\adc_spi|Add1~0_combout\ & \adc_spi|Selector8~0_combout\)))) # (!\adc_spi|clk_counter\(2) & (\adc_spi|Add1~0_combout\ & 
-- ((\adc_spi|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Add1~0_combout\,
	datab => \adc_spi|curr_state.latch_data~regout\,
	datac => \adc_spi|clk_counter\(2),
	datad => \adc_spi|Selector8~0_combout\,
	combout => \adc_spi|Selector7~0_combout\);

-- Location: LCCOMB_X2_Y6_N10
\adc_spi|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Add1~1_combout\ = (\adc_spi|clk_counter\(2) & (\adc_spi|clk_counter\(0) & \adc_spi|clk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|clk_counter\(2),
	datab => \adc_spi|clk_counter\(0),
	datac => \adc_spi|clk_counter\(1),
	combout => \adc_spi|Add1~1_combout\);

-- Location: LCCOMB_X2_Y6_N20
\adc_spi|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Add1~2_combout\ = (\adc_spi|clk_counter\(2) & (\adc_spi|clk_counter\(0) & (\adc_spi|clk_counter\(1) & \adc_spi|clk_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|clk_counter\(2),
	datab => \adc_spi|clk_counter\(0),
	datac => \adc_spi|clk_counter\(1),
	datad => \adc_spi|clk_counter\(3),
	combout => \adc_spi|Add1~2_combout\);

-- Location: LCCOMB_X2_Y6_N16
\adc_spi|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector8~1_combout\ = (\adc_spi|clk_counter\(1) & ((\adc_spi|curr_state.latch_data~regout\) # ((!\adc_spi|clk_counter\(0) & \adc_spi|Selector8~0_combout\)))) # (!\adc_spi|clk_counter\(1) & (((\adc_spi|clk_counter\(0) & 
-- \adc_spi|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|curr_state.latch_data~regout\,
	datab => \adc_spi|clk_counter\(0),
	datac => \adc_spi|clk_counter\(1),
	datad => \adc_spi|Selector8~0_combout\,
	combout => \adc_spi|Selector8~1_combout\);

-- Location: LCCOMB_X2_Y6_N26
\adc_spi|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Add1~3_combout\ = (\adc_spi|clk_counter\(2) & (\adc_spi|clk_counter\(4) & (\adc_spi|Add1~0_combout\ & \adc_spi|clk_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|clk_counter\(2),
	datab => \adc_spi|clk_counter\(4),
	datac => \adc_spi|Add1~0_combout\,
	datad => \adc_spi|clk_counter\(3),
	combout => \adc_spi|Add1~3_combout\);

-- Location: LCCOMB_X2_Y6_N14
\adc_spi|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Add0~10_combout\ = (\adc_spi|curr_state.running~regout\ & (\adc_spi|Equal1~0_combout\ & (\adc_spi|clk_counter\(1) & !\adc_spi|clk_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|curr_state.running~regout\,
	datab => \adc_spi|Equal1~0_combout\,
	datac => \adc_spi|clk_counter\(1),
	datad => \adc_spi|clk_counter\(5),
	combout => \adc_spi|Add0~10_combout\);

-- Location: LCFF_X17_Y6_N21
\this_state_manager|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~8_combout\,
	ena => \this_state_manager|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(4));

-- Location: LCCOMB_X6_Y6_N4
\this_setup_manager|spi_command_index[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|spi_command_index[2]~2_combout\ = \this_setup_manager|spi_command_index\(2) $ (((\this_state_manager|curr_state.setup~regout\ & (\this_setup_manager|spi_command_index\(0) & \this_setup_manager|spi_command_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|curr_state.setup~regout\,
	datab => \this_setup_manager|spi_command_index\(0),
	datac => \this_setup_manager|spi_command_index\(2),
	datad => \this_setup_manager|spi_command_index\(1),
	combout => \this_setup_manager|spi_command_index[2]~2_combout\);

-- Location: LCCOMB_X17_Y7_N26
\this_mram_controller|curr_state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~5_combout\ = (\this_write_out_mram_manager|MRAM_READ_DATA~regout\ & (!\this_mram_controller|curr_state.idle~regout\ & !\Corr_Main_1|MRAM_WRITE_DATA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|MRAM_READ_DATA~regout\,
	datac => \this_mram_controller|curr_state.idle~regout\,
	datad => \Corr_Main_1|MRAM_WRITE_DATA~regout\,
	combout => \this_mram_controller|curr_state~5_combout\);

-- Location: LCCOMB_X17_Y7_N10
\this_mram_controller|curr_state~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~6_combout\ = (((\this_mram_controller|counter\(3)) # (!\this_mram_controller|counter\(0))) # (!\this_mram_controller|counter\(1))) # (!\this_mram_controller|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(2),
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|counter\(3),
	datad => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|curr_state~6_combout\);

-- Location: LCCOMB_X17_Y7_N2
\this_mram_controller|curr_state~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~7_combout\ = (\this_mram_controller|curr_state~5_combout\) # ((\this_mram_controller|curr_state~6_combout\ & (\this_mram_controller|curr_state.idle~regout\ & \this_mram_controller|curr_state.reading~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state~6_combout\,
	datab => \this_mram_controller|curr_state.idle~regout\,
	datac => \this_mram_controller|curr_state.reading~regout\,
	datad => \this_mram_controller|curr_state~5_combout\,
	combout => \this_mram_controller|curr_state~7_combout\);

-- Location: LCCOMB_X18_Y12_N6
\this_write_out_mram_manager|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|Equal0~0_combout\ = (\this_write_out_mram_manager|address_counter\(2) & (\this_write_out_mram_manager|address_counter\(3) & (\this_write_out_mram_manager|address_counter\(0) & 
-- \this_write_out_mram_manager|address_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(2),
	datab => \this_write_out_mram_manager|address_counter\(3),
	datac => \this_write_out_mram_manager|address_counter\(0),
	datad => \this_write_out_mram_manager|address_counter\(1),
	combout => \this_write_out_mram_manager|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y7_N6
\this_write_out_mram_manager|getting_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|getting_data~0_combout\ = \this_write_out_mram_manager|getting_data~regout\ $ (((!\this_write_out_mram_manager|have_data~regout\ & !\this_mram_controller|curr_state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|have_data~regout\,
	datab => \this_mram_controller|curr_state.idle~regout\,
	datac => \this_write_out_mram_manager|getting_data~regout\,
	combout => \this_write_out_mram_manager|getting_data~0_combout\);

-- Location: LCCOMB_X19_Y11_N12
\this_mram_controller|curr_state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~9_combout\ = (\this_mram_controller|counter\(1) & (((!\this_mram_controller|counter\(0))) # (!\this_mram_controller|curr_state.reading~regout\))) # (!\this_mram_controller|counter\(1) & 
-- (((\this_mram_controller|counter\(0)) # (!\this_mram_controller|curr_state.writing~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|counter\(0),
	datad => \this_mram_controller|curr_state.writing~regout\,
	combout => \this_mram_controller|curr_state~9_combout\);

-- Location: LCCOMB_X17_Y7_N12
\this_mram_controller|curr_state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~10_combout\ = (\this_mram_controller|counter\(3)) # ((\this_mram_controller|curr_state~9_combout\) # (!\this_mram_controller|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(3),
	datac => \this_mram_controller|curr_state~9_combout\,
	datad => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|curr_state~10_combout\);

-- Location: LCCOMB_X6_Y6_N10
\this_state_manager|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector12~1_combout\ = (\this_state_manager|curr_state.setup~regout\ & (\this_setup_manager|spi_command_index\(0) & (\this_setup_manager|spi_command_index\(2) & !\this_setup_manager|spi_command_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|curr_state.setup~regout\,
	datab => \this_setup_manager|spi_command_index\(0),
	datac => \this_setup_manager|spi_command_index\(2),
	datad => \this_setup_manager|spi_command_index\(1),
	combout => \this_state_manager|Selector12~1_combout\);

-- Location: LCCOMB_X17_Y11_N18
\this_state_manager|process_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|process_1~2_combout\ = (!\Corr_Main_1|address_counter\(11) & (\Corr_Main_1|address_counter\(9) & (\Corr_Main_1|address_counter\(10) & !\Corr_Main_1|address_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(11),
	datab => \Corr_Main_1|address_counter\(9),
	datac => \Corr_Main_1|address_counter\(10),
	datad => \Corr_Main_1|address_counter\(8),
	combout => \this_state_manager|process_1~2_combout\);

-- Location: LCCOMB_X27_Y7_N20
\this_state_manager|process_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|process_1~8_combout\ = (!\this_read_adc_manager|address_counter\(13) & (!\this_read_adc_manager|address_counter\(11) & (!\this_read_adc_manager|address_counter\(12) & !\this_read_adc_manager|address_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(13),
	datab => \this_read_adc_manager|address_counter\(11),
	datac => \this_read_adc_manager|address_counter\(12),
	datad => \this_read_adc_manager|address_counter\(14),
	combout => \this_state_manager|process_1~8_combout\);

-- Location: LCCOMB_X18_Y8_N8
\Corr_Main_1|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~3_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|cnt~1_combout\,
	datad => \Corr_Main_1|Add19~62_combout\,
	combout => \Corr_Main_1|cnt~3_combout\);

-- Location: LCCOMB_X18_Y8_N12
\Corr_Main_1|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~4_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|cnt~1_combout\,
	datad => \Corr_Main_1|Add19~60_combout\,
	combout => \Corr_Main_1|cnt~4_combout\);

-- Location: LCCOMB_X18_Y8_N20
\Corr_Main_1|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~5_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt~1_combout\,
	datac => \Corr_Main_1|Add19~58_combout\,
	combout => \Corr_Main_1|cnt~5_combout\);

-- Location: LCCOMB_X18_Y8_N0
\Corr_Main_1|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~6_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|cnt~1_combout\,
	datad => \Corr_Main_1|Add19~56_combout\,
	combout => \Corr_Main_1|cnt~6_combout\);

-- Location: LCCOMB_X18_Y8_N10
\Corr_Main_1|cnt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~12_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt~1_combout\,
	datac => \Corr_Main_1|Add19~44_combout\,
	combout => \Corr_Main_1|cnt~12_combout\);

-- Location: LCCOMB_X17_Y8_N24
\Corr_Main_1|cnt~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~16_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|cnt~1_combout\,
	datad => \Corr_Main_1|Add19~36_combout\,
	combout => \Corr_Main_1|cnt~16_combout\);

-- Location: LCCOMB_X18_Y9_N10
\Corr_Main_1|cnt~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~19_combout\ = (\Corr_Main_1|Add19~30_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add19~30_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~19_combout\);

-- Location: LCCOMB_X18_Y9_N20
\Corr_Main_1|cnt~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~21_combout\ = (\Corr_Main_1|Add19~26_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|Add19~26_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~21_combout\);

-- Location: LCCOMB_X17_Y9_N24
\Corr_Main_1|cnt~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~27_combout\ = (\Corr_Main_1|Add19~14_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|Add19~14_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~27_combout\);

-- Location: LCCOMB_X27_Y6_N20
\this_read_adc_manager|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|process_0~0_combout\ = (\this_read_adc_manager|last_state~regout\) # (!\ADC_DCLKA~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_DCLKA~combout\,
	datad => \this_read_adc_manager|last_state~regout\,
	combout => \this_read_adc_manager|process_0~0_combout\);

-- Location: LCCOMB_X12_Y6_N10
\UART_Controller_1|uart_tx_1|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector11~0_combout\ = (\UART_Controller_1|uart_tx_1|Add0~2_combout\ & (!\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & 
-- !\UART_Controller_1|uart_tx_1|curr_state.sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Add0~2_combout\,
	datab => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector11~0_combout\);

-- Location: LCCOMB_X12_Y6_N14
\UART_Controller_1|uart_tx_1|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector5~0_combout\ = (!\UART_Controller_1|uart_tx_1|curr_state.sync~regout\ & (\UART_Controller_1|uart_tx_1|Add0~14_combout\ & (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & 
-- !\UART_Controller_1|uart_tx_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	datab => \UART_Controller_1|uart_tx_1|Add0~14_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector5~0_combout\);

-- Location: LCFF_X12_Y10_N7
\this_mram_controller|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[6]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(6));

-- Location: LCCOMB_X14_Y7_N12
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) & (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) & 
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\);

-- Location: LCFF_X21_Y6_N27
\Corr_Main_1|buff|buffer_6[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_6\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(49));

-- Location: LCFF_X21_Y6_N25
\Corr_Main_1|buff|buffer_5[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_5\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(49));

-- Location: LCFF_X21_Y6_N23
\Corr_Main_1|buff|buffer_4[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_4\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(49));

-- Location: LCFF_X21_Y6_N15
\Corr_Main_1|buff|buffer_0[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(49));

-- Location: LCCOMB_X20_Y8_N30
\Corr_Main_1|PREAMBULE_FOUND~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|PREAMBULE_FOUND~1_combout\ = (\Corr_Main_1|Add18~8_combout\) # ((\Corr_Main_1|Add18~10_combout\) # ((\Corr_Main_1|Add18~4_combout\ & \Corr_Main_1|Add18~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add18~8_combout\,
	datab => \Corr_Main_1|Add18~4_combout\,
	datac => \Corr_Main_1|Add18~6_combout\,
	datad => \Corr_Main_1|Add18~10_combout\,
	combout => \Corr_Main_1|PREAMBULE_FOUND~1_combout\);

-- Location: LCCOMB_X20_Y8_N0
\Corr_Main_1|PREAMBULE_FOUND~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|PREAMBULE_FOUND~2_combout\ = (\Corr_Main_1|Add18~14_combout\ & (\Corr_Main_1|PREAMBULE_FOUND~1_combout\ & (\Corr_Main_1|Add18~12_combout\ & \Corr_Main_1|Add18~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add18~14_combout\,
	datab => \Corr_Main_1|PREAMBULE_FOUND~1_combout\,
	datac => \Corr_Main_1|Add18~12_combout\,
	datad => \Corr_Main_1|Add18~16_combout\,
	combout => \Corr_Main_1|PREAMBULE_FOUND~2_combout\);

-- Location: LCFF_X4_Y6_N25
\adc_spi|tx_buf[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(12));

-- Location: LCFF_X4_Y6_N13
\adc_spi|tx_buf[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector20~0_combout\,
	ena => \adc_spi|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(11));

-- Location: LCCOMB_X4_Y6_N24
\adc_spi|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector19~0_combout\ = (\adc_spi|Selector18~0_combout\ & ((\adc_spi|tx_buf\(12)) # ((\adc_spi|Selector16~2_combout\ & \adc_spi|tx_buf\(11))))) # (!\adc_spi|Selector18~0_combout\ & (\adc_spi|Selector16~2_combout\ & ((\adc_spi|tx_buf\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Selector18~0_combout\,
	datab => \adc_spi|Selector16~2_combout\,
	datac => \adc_spi|tx_buf\(12),
	datad => \adc_spi|tx_buf\(11),
	combout => \adc_spi|Selector19~0_combout\);

-- Location: LCCOMB_X26_Y6_N14
\this_read_adc_manager|MRAM_DATA_OUT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\ = (!\this_mram_controller|curr_state.idle~regout\ & \this_state_manager|curr_state.read_adc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|curr_state.idle~regout\,
	datad => \this_state_manager|curr_state.read_adc~regout\,
	combout => \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\);

-- Location: LCFF_X4_Y6_N29
\adc_spi|tx_buf[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector21~0_combout\,
	ena => \adc_spi|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(10));

-- Location: LCFF_X5_Y6_N11
\this_setup_manager|SPI_send_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|SPI_send_data[11]~feeder_combout\,
	ena => \this_setup_manager|SPI_send_irq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data\(11));

-- Location: LCCOMB_X4_Y6_N12
\adc_spi|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector20~0_combout\ = (\adc_spi|curr_state.running~regout\ & (\adc_spi|tx_buf\(10))) # (!\adc_spi|curr_state.running~regout\ & ((\this_setup_manager|SPI_send_data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|curr_state.running~regout\,
	datab => \adc_spi|tx_buf\(10),
	datac => \this_setup_manager|SPI_send_data\(11),
	combout => \adc_spi|Selector20~0_combout\);

-- Location: LCFF_X4_Y6_N9
\adc_spi|tx_buf[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector22~0_combout\,
	ena => \adc_spi|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(9));

-- Location: LCFF_X5_Y6_N31
\this_setup_manager|SPI_send_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|SPI_send_data[10]~feeder_combout\,
	ena => \this_setup_manager|SPI_send_irq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data\(10));

-- Location: LCCOMB_X4_Y6_N28
\adc_spi|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector21~0_combout\ = (\adc_spi|curr_state.running~regout\ & (\adc_spi|tx_buf\(9))) # (!\adc_spi|curr_state.running~regout\ & ((\this_setup_manager|SPI_send_data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi|tx_buf\(9),
	datac => \adc_spi|curr_state.running~regout\,
	datad => \this_setup_manager|SPI_send_data\(10),
	combout => \adc_spi|Selector21~0_combout\);

-- Location: LCFF_X4_Y6_N17
\adc_spi|tx_buf[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(8));

-- Location: LCCOMB_X4_Y6_N8
\adc_spi|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector22~0_combout\ = (\adc_spi|curr_state.running~regout\ & (\adc_spi|tx_buf\(8))) # (!\adc_spi|curr_state.running~regout\ & ((\this_setup_manager|SPI_send_data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|tx_buf\(8),
	datac => \adc_spi|curr_state.running~regout\,
	datad => \this_setup_manager|SPI_send_data\(10),
	combout => \adc_spi|Selector22~0_combout\);

-- Location: LCFF_X4_Y6_N11
\adc_spi|tx_buf[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(7));

-- Location: LCCOMB_X4_Y6_N16
\adc_spi|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector23~0_combout\ = (\adc_spi|Selector18~0_combout\ & ((\adc_spi|tx_buf\(8)) # ((\adc_spi|Selector16~2_combout\ & \adc_spi|tx_buf\(7))))) # (!\adc_spi|Selector18~0_combout\ & (\adc_spi|Selector16~2_combout\ & ((\adc_spi|tx_buf\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Selector18~0_combout\,
	datab => \adc_spi|Selector16~2_combout\,
	datac => \adc_spi|tx_buf\(8),
	datad => \adc_spi|tx_buf\(7),
	combout => \adc_spi|Selector23~0_combout\);

-- Location: LCFF_X4_Y6_N23
\adc_spi|tx_buf[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(6));

-- Location: LCCOMB_X4_Y6_N10
\adc_spi|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector24~0_combout\ = (\adc_spi|Selector18~0_combout\ & ((\adc_spi|tx_buf\(7)) # ((\adc_spi|Selector16~2_combout\ & \adc_spi|tx_buf\(6))))) # (!\adc_spi|Selector18~0_combout\ & (\adc_spi|Selector16~2_combout\ & ((\adc_spi|tx_buf\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Selector18~0_combout\,
	datab => \adc_spi|Selector16~2_combout\,
	datac => \adc_spi|tx_buf\(7),
	datad => \adc_spi|tx_buf\(6),
	combout => \adc_spi|Selector24~0_combout\);

-- Location: LCFF_X4_Y6_N31
\adc_spi|tx_buf[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(5));

-- Location: LCCOMB_X4_Y6_N22
\adc_spi|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector25~0_combout\ = (\adc_spi|Selector18~0_combout\ & ((\adc_spi|tx_buf\(6)) # ((\adc_spi|Selector16~2_combout\ & \adc_spi|tx_buf\(5))))) # (!\adc_spi|Selector18~0_combout\ & (\adc_spi|Selector16~2_combout\ & ((\adc_spi|tx_buf\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Selector18~0_combout\,
	datab => \adc_spi|Selector16~2_combout\,
	datac => \adc_spi|tx_buf\(6),
	datad => \adc_spi|tx_buf\(5),
	combout => \adc_spi|Selector25~0_combout\);

-- Location: LCFF_X4_Y6_N3
\adc_spi|tx_buf[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector27~0_combout\,
	ena => \adc_spi|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(4));

-- Location: LCCOMB_X4_Y6_N30
\adc_spi|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector26~0_combout\ = (\adc_spi|Selector18~0_combout\ & ((\adc_spi|tx_buf\(5)) # ((\adc_spi|Selector16~2_combout\ & \adc_spi|tx_buf\(4))))) # (!\adc_spi|Selector18~0_combout\ & (\adc_spi|Selector16~2_combout\ & ((\adc_spi|tx_buf\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Selector18~0_combout\,
	datab => \adc_spi|Selector16~2_combout\,
	datac => \adc_spi|tx_buf\(5),
	datad => \adc_spi|tx_buf\(4),
	combout => \adc_spi|Selector26~0_combout\);

-- Location: LCFF_X4_Y6_N7
\adc_spi|tx_buf[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector28~0_combout\,
	ena => \adc_spi|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(3));

-- Location: LCFF_X5_Y6_N13
\this_setup_manager|SPI_send_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|Mux0~0_combout\,
	ena => \this_setup_manager|SPI_send_irq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data\(4));

-- Location: LCCOMB_X4_Y6_N2
\adc_spi|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector27~0_combout\ = (\adc_spi|curr_state.running~regout\ & (\adc_spi|tx_buf\(3))) # (!\adc_spi|curr_state.running~regout\ & ((\this_setup_manager|SPI_send_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|tx_buf\(3),
	datab => \this_setup_manager|SPI_send_data\(4),
	datac => \adc_spi|curr_state.running~regout\,
	combout => \adc_spi|Selector27~0_combout\);

-- Location: LCFF_X4_Y6_N5
\adc_spi|tx_buf[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(2));

-- Location: LCCOMB_X4_Y6_N6
\adc_spi|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector28~0_combout\ = (\adc_spi|curr_state.running~regout\ & (\adc_spi|tx_buf\(2))) # (!\adc_spi|curr_state.running~regout\ & ((\this_setup_manager|SPI_send_data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|curr_state.running~regout\,
	datab => \adc_spi|tx_buf\(2),
	datac => \this_setup_manager|SPI_send_data\(11),
	combout => \adc_spi|Selector28~0_combout\);

-- Location: LCCOMB_X5_Y6_N12
\this_setup_manager|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Mux0~0_combout\ = (!\this_setup_manager|spi_command_index\(0) & \this_setup_manager|spi_command_index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|spi_command_index\(0),
	datad => \this_setup_manager|spi_command_index\(1),
	combout => \this_setup_manager|Mux0~0_combout\);

-- Location: LCFF_X4_Y6_N19
\adc_spi|tx_buf[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector30~0_combout\,
	ena => \adc_spi|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(1));

-- Location: LCCOMB_X4_Y6_N4
\adc_spi|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector29~0_combout\ = (\adc_spi|Selector18~0_combout\ & ((\adc_spi|tx_buf\(2)) # ((\adc_spi|Selector16~2_combout\ & \adc_spi|tx_buf\(1))))) # (!\adc_spi|Selector18~0_combout\ & (\adc_spi|Selector16~2_combout\ & ((\adc_spi|tx_buf\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Selector18~0_combout\,
	datab => \adc_spi|Selector16~2_combout\,
	datac => \adc_spi|tx_buf\(2),
	datad => \adc_spi|tx_buf\(1),
	combout => \adc_spi|Selector29~0_combout\);

-- Location: LCFF_X4_Y6_N15
\adc_spi|tx_buf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector31~0_combout\,
	ena => \adc_spi|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(0));

-- Location: LCFF_X5_Y6_N5
\this_setup_manager|SPI_send_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|Mux1~0_combout\,
	ena => \this_setup_manager|SPI_send_irq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data\(0));

-- Location: LCCOMB_X4_Y6_N18
\adc_spi|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector30~0_combout\ = (\adc_spi|curr_state.running~regout\ & (\adc_spi|tx_buf\(0))) # (!\adc_spi|curr_state.running~regout\ & ((\this_setup_manager|SPI_send_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi|tx_buf\(0),
	datac => \adc_spi|curr_state.running~regout\,
	datad => \this_setup_manager|SPI_send_data\(0),
	combout => \adc_spi|Selector30~0_combout\);

-- Location: LCCOMB_X4_Y6_N14
\adc_spi|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector31~0_combout\ = (!\adc_spi|curr_state.running~regout\ & \this_setup_manager|SPI_send_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_spi|curr_state.running~regout\,
	datad => \this_setup_manager|SPI_send_data\(0),
	combout => \adc_spi|Selector31~0_combout\);

-- Location: LCCOMB_X5_Y6_N4
\this_setup_manager|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Mux1~0_combout\ = (!\this_setup_manager|spi_command_index\(2) & (!\this_setup_manager|spi_command_index\(0) & !\this_setup_manager|spi_command_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|spi_command_index\(2),
	datab => \this_setup_manager|spi_command_index\(0),
	datad => \this_setup_manager|spi_command_index\(1),
	combout => \this_setup_manager|Mux1~0_combout\);

-- Location: CLKCTRL_G2
\adc_spi|curr_state.idle~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \adc_spi|curr_state.idle~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \adc_spi|curr_state.idle~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y6_N30
\this_setup_manager|SPI_send_data[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|SPI_send_data[10]~feeder_combout\ = \this_setup_manager|spi_command_index\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_setup_manager|spi_command_index\(1),
	combout => \this_setup_manager|SPI_send_data[10]~feeder_combout\);

-- Location: LCCOMB_X5_Y6_N10
\this_setup_manager|SPI_send_data[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|SPI_send_data[11]~feeder_combout\ = \this_setup_manager|spi_command_index\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_setup_manager|spi_command_index\(2),
	combout => \this_setup_manager|SPI_send_data[11]~feeder_combout\);

-- Location: LCCOMB_X12_Y10_N6
\this_mram_controller|data_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|data_out[6]~feeder_combout\ = \MRAM_D[6]~6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[6]~6\,
	combout => \this_mram_controller|data_out[6]~feeder_combout\);

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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \this_mram_controller|MRAM_D[0]~reg0_regout\,
	oe => \this_mram_controller|MRAM_D[0]~en_regout\,
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \this_mram_controller|MRAM_D[1]~reg0_regout\,
	oe => \this_mram_controller|MRAM_D[1]~en_regout\,
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \this_mram_controller|MRAM_D[2]~reg0_regout\,
	oe => \this_mram_controller|MRAM_D[2]~en_regout\,
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \this_mram_controller|MRAM_D[3]~reg0_regout\,
	oe => \this_mram_controller|MRAM_D[3]~en_regout\,
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
	datain => \this_mram_controller|MRAM_D[4]~reg0_regout\,
	oe => \this_mram_controller|MRAM_D[4]~en_regout\,
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
	datain => \this_mram_controller|MRAM_D[5]~reg0_regout\,
	oe => \this_mram_controller|MRAM_D[5]~en_regout\,
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
	datain => \this_mram_controller|MRAM_D[6]~reg0_regout\,
	oe => \this_mram_controller|MRAM_D[6]~en_regout\,
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
	datain => \this_mram_controller|MRAM_D[7]~reg0_regout\,
	oe => \this_mram_controller|MRAM_D[7]~en_regout\,
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \this_mram_controller|MRAM_D[8]~reg0_regout\,
	oe => \this_mram_controller|MRAM_D[8]~en_regout\,
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
	datain => \this_mram_controller|MRAM_D[9]~reg0_regout\,
	oe => \this_mram_controller|MRAM_D[9]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(9),
	combout => \MRAM_D[9]~9\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \this_mram_controller|MRAM_D[10]~reg0_regout\,
	oe => \this_mram_controller|MRAM_D[10]~en_regout\,
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
	datain => \this_mram_controller|MRAM_D[11]~reg0_regout\,
	oe => \this_mram_controller|MRAM_D[11]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(11),
	combout => \MRAM_D[11]~11\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \this_mram_controller|ALT_INV_MRAM_D[12]~en_regout\,
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
	datain => \this_mram_controller|ALT_INV_MRAM_D[13]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(13),
	combout => \MRAM_D[13]~13\);

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

-- Location: PLL_1
\pl|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 2,
	c0_mode => "odd",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 3,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 15,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 6014,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \pl|altpll_component|pll_INCLK_bus\,
	clk => \pl|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\pl|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pl|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pl|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y6_N4
\adc_spi|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector4~0_combout\ = (\adc_spi|curr_state.cs_up~regout\) # (\adc_spi|curr_state.running~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi|curr_state.cs_up~regout\,
	datac => \adc_spi|curr_state.running~regout\,
	combout => \adc_spi|Selector4~0_combout\);

-- Location: LCCOMB_X1_Y6_N8
\adc_spi|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector4~1_combout\ = (\adc_spi|clk_counter\(5) & ((\adc_spi|curr_state.latch_data~regout\) # ((!\adc_spi|Add1~3_combout\ & \adc_spi|Selector4~0_combout\)))) # (!\adc_spi|clk_counter\(5) & (\adc_spi|Add1~3_combout\ & 
-- (\adc_spi|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Add1~3_combout\,
	datab => \adc_spi|Selector4~0_combout\,
	datac => \adc_spi|clk_counter\(5),
	datad => \adc_spi|curr_state.latch_data~regout\,
	combout => \adc_spi|Selector4~1_combout\);

-- Location: LCFF_X1_Y6_N9
\adc_spi|clk_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|clk_counter\(5));

-- Location: LCCOMB_X1_Y6_N2
\adc_spi|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Equal2~0_combout\ = (\adc_spi|clk_counter\(1) & (!\adc_spi|clk_counter\(5) & \adc_spi|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|clk_counter\(1),
	datac => \adc_spi|clk_counter\(5),
	datad => \adc_spi|Equal1~0_combout\,
	combout => \adc_spi|Equal2~0_combout\);

-- Location: LCCOMB_X2_Y6_N22
\adc_spi|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector8~0_combout\ = (\adc_spi|curr_state.cs_up~regout\) # ((\adc_spi|curr_state.running~regout\ & !\adc_spi|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|curr_state.running~regout\,
	datac => \adc_spi|curr_state.cs_up~regout\,
	datad => \adc_spi|Equal2~0_combout\,
	combout => \adc_spi|Selector8~0_combout\);

-- Location: LCCOMB_X2_Y6_N28
\adc_spi|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector5~0_combout\ = (\adc_spi|clk_counter\(4) & ((\adc_spi|curr_state.latch_data~regout\) # ((!\adc_spi|Add1~2_combout\ & \adc_spi|Selector8~0_combout\)))) # (!\adc_spi|clk_counter\(4) & (\adc_spi|Add1~2_combout\ & 
-- ((\adc_spi|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Add1~2_combout\,
	datab => \adc_spi|curr_state.latch_data~regout\,
	datac => \adc_spi|clk_counter\(4),
	datad => \adc_spi|Selector8~0_combout\,
	combout => \adc_spi|Selector5~0_combout\);

-- Location: LCFF_X2_Y6_N29
\adc_spi|clk_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|clk_counter\(4));

-- Location: LCCOMB_X2_Y6_N8
\adc_spi|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector9~0_combout\ = (\adc_spi|clk_counter\(0) & (\adc_spi|curr_state.latch_data~regout\)) # (!\adc_spi|clk_counter\(0) & ((\adc_spi|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi|curr_state.latch_data~regout\,
	datac => \adc_spi|clk_counter\(0),
	datad => \adc_spi|Selector8~0_combout\,
	combout => \adc_spi|Selector9~0_combout\);

-- Location: LCFF_X2_Y6_N9
\adc_spi|clk_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|clk_counter\(0));

-- Location: LCCOMB_X2_Y6_N2
\adc_spi|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector6~0_combout\ = (\adc_spi|clk_counter\(3) & ((\adc_spi|curr_state.latch_data~regout\) # ((!\adc_spi|Add1~1_combout\ & \adc_spi|Selector8~0_combout\)))) # (!\adc_spi|clk_counter\(3) & (\adc_spi|Add1~1_combout\ & 
-- ((\adc_spi|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Add1~1_combout\,
	datab => \adc_spi|curr_state.latch_data~regout\,
	datac => \adc_spi|clk_counter\(3),
	datad => \adc_spi|Selector8~0_combout\,
	combout => \adc_spi|Selector6~0_combout\);

-- Location: LCFF_X2_Y6_N3
\adc_spi|clk_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|clk_counter\(3));

-- Location: LCCOMB_X2_Y6_N30
\adc_spi|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Equal1~0_combout\ = (\adc_spi|clk_counter\(2) & (\adc_spi|clk_counter\(4) & (!\adc_spi|clk_counter\(0) & \adc_spi|clk_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|clk_counter\(2),
	datab => \adc_spi|clk_counter\(4),
	datac => \adc_spi|clk_counter\(0),
	datad => \adc_spi|clk_counter\(3),
	combout => \adc_spi|Equal1~0_combout\);

-- Location: LCCOMB_X1_Y6_N22
\adc_spi|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector3~0_combout\ = (\adc_spi|curr_state.cs_up~regout\ & ((\adc_spi|clk_counter\(1)) # ((!\adc_spi|Equal1~0_combout\) # (!\adc_spi|clk_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|clk_counter\(1),
	datab => \adc_spi|curr_state.cs_up~regout\,
	datac => \adc_spi|clk_counter\(5),
	datad => \adc_spi|Equal1~0_combout\,
	combout => \adc_spi|Selector3~0_combout\);

-- Location: LCCOMB_X2_Y6_N18
\adc_spi|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector15~0_combout\ = (\adc_spi|curr_state.latch_data~regout\) # ((\adc_spi|curr_state.cs_up~regout\) # ((\adc_spi|curr_state.running~regout\ & !\adc_spi|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|curr_state.running~regout\,
	datab => \adc_spi|curr_state.latch_data~regout\,
	datac => \adc_spi|curr_state.cs_up~regout\,
	datad => \adc_spi|Equal2~0_combout\,
	combout => \adc_spi|Selector15~0_combout\);

-- Location: LCCOMB_X3_Y6_N6
\adc_spi|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Add0~0_combout\ = (\adc_spi|sclk~regout\ & (\adc_spi|bits_sent\(0) $ (VCC))) # (!\adc_spi|sclk~regout\ & (\adc_spi|bits_sent\(0) & VCC))
-- \adc_spi|Add0~1\ = CARRY((\adc_spi|sclk~regout\ & \adc_spi|bits_sent\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|sclk~regout\,
	datab => \adc_spi|bits_sent\(0),
	datad => VCC,
	combout => \adc_spi|Add0~0_combout\,
	cout => \adc_spi|Add0~1\);

-- Location: LCCOMB_X3_Y6_N28
\adc_spi|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector15~1_combout\ = (\adc_spi|Add0~10_combout\ & ((\adc_spi|Add0~0_combout\) # ((\adc_spi|Selector15~0_combout\ & \adc_spi|bits_sent\(0))))) # (!\adc_spi|Add0~10_combout\ & (\adc_spi|Selector15~0_combout\ & (\adc_spi|bits_sent\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Add0~10_combout\,
	datab => \adc_spi|Selector15~0_combout\,
	datac => \adc_spi|bits_sent\(0),
	datad => \adc_spi|Add0~0_combout\,
	combout => \adc_spi|Selector15~1_combout\);

-- Location: LCFF_X3_Y6_N29
\adc_spi|bits_sent[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|bits_sent\(0));

-- Location: LCCOMB_X3_Y6_N8
\adc_spi|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Add0~2_combout\ = (\adc_spi|bits_sent\(1) & (!\adc_spi|Add0~1\)) # (!\adc_spi|bits_sent\(1) & ((\adc_spi|Add0~1\) # (GND)))
-- \adc_spi|Add0~3\ = CARRY((!\adc_spi|Add0~1\) # (!\adc_spi|bits_sent\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi|bits_sent\(1),
	datad => VCC,
	cin => \adc_spi|Add0~1\,
	combout => \adc_spi|Add0~2_combout\,
	cout => \adc_spi|Add0~3\);

-- Location: LCCOMB_X3_Y6_N2
\adc_spi|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector14~0_combout\ = (\adc_spi|Add0~10_combout\ & ((\adc_spi|Add0~2_combout\) # ((\adc_spi|bits_sent\(1) & \adc_spi|Selector15~0_combout\)))) # (!\adc_spi|Add0~10_combout\ & (((\adc_spi|bits_sent\(1) & \adc_spi|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Add0~10_combout\,
	datab => \adc_spi|Add0~2_combout\,
	datac => \adc_spi|bits_sent\(1),
	datad => \adc_spi|Selector15~0_combout\,
	combout => \adc_spi|Selector14~0_combout\);

-- Location: LCFF_X3_Y6_N3
\adc_spi|bits_sent[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|bits_sent\(1));

-- Location: LCCOMB_X3_Y6_N10
\adc_spi|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Add0~4_combout\ = (\adc_spi|bits_sent\(2) & (\adc_spi|Add0~3\ $ (GND))) # (!\adc_spi|bits_sent\(2) & (!\adc_spi|Add0~3\ & VCC))
-- \adc_spi|Add0~5\ = CARRY((\adc_spi|bits_sent\(2) & !\adc_spi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi|bits_sent\(2),
	datad => VCC,
	cin => \adc_spi|Add0~3\,
	combout => \adc_spi|Add0~4_combout\,
	cout => \adc_spi|Add0~5\);

-- Location: LCCOMB_X3_Y6_N18
\adc_spi|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector13~0_combout\ = (\adc_spi|Add0~10_combout\ & ((\adc_spi|Add0~4_combout\) # ((\adc_spi|Selector15~0_combout\ & \adc_spi|bits_sent\(2))))) # (!\adc_spi|Add0~10_combout\ & (\adc_spi|Selector15~0_combout\ & (\adc_spi|bits_sent\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Add0~10_combout\,
	datab => \adc_spi|Selector15~0_combout\,
	datac => \adc_spi|bits_sent\(2),
	datad => \adc_spi|Add0~4_combout\,
	combout => \adc_spi|Selector13~0_combout\);

-- Location: LCFF_X3_Y6_N19
\adc_spi|bits_sent[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|bits_sent\(2));

-- Location: LCCOMB_X3_Y6_N20
\adc_spi|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Equal0~0_combout\ = (!\adc_spi|bits_sent\(3) & (!\adc_spi|bits_sent\(0) & (!\adc_spi|bits_sent\(2) & !\adc_spi|bits_sent\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|bits_sent\(3),
	datab => \adc_spi|bits_sent\(0),
	datac => \adc_spi|bits_sent\(2),
	datad => \adc_spi|bits_sent\(1),
	combout => \adc_spi|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y6_N30
\adc_spi|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector3~1_combout\ = (\adc_spi|Selector3~0_combout\) # ((\adc_spi|bits_sent\(4) & (\adc_spi|curr_state.running~regout\ & \adc_spi|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|bits_sent\(4),
	datab => \adc_spi|Selector3~0_combout\,
	datac => \adc_spi|curr_state.running~regout\,
	datad => \adc_spi|Equal0~0_combout\,
	combout => \adc_spi|Selector3~1_combout\);

-- Location: LCFF_X1_Y6_N31
\adc_spi|curr_state.cs_up\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|curr_state.cs_up~regout\);

-- Location: LCCOMB_X17_Y6_N18
\this_state_manager|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~6_combout\ = (\this_state_manager|counter\(3) & (!\this_state_manager|Add0~5\)) # (!\this_state_manager|counter\(3) & ((\this_state_manager|Add0~5\) # (GND)))
-- \this_state_manager|Add0~7\ = CARRY((!\this_state_manager|Add0~5\) # (!\this_state_manager|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(3),
	datad => VCC,
	cin => \this_state_manager|Add0~5\,
	combout => \this_state_manager|Add0~6_combout\,
	cout => \this_state_manager|Add0~7\);

-- Location: LCCOMB_X17_Y6_N24
\this_state_manager|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~12_combout\ = (\this_state_manager|counter\(6) & (\this_state_manager|Add0~11\ $ (GND))) # (!\this_state_manager|counter\(6) & (!\this_state_manager|Add0~11\ & VCC))
-- \this_state_manager|Add0~13\ = CARRY((\this_state_manager|counter\(6) & !\this_state_manager|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(6),
	datad => VCC,
	cin => \this_state_manager|Add0~11\,
	combout => \this_state_manager|Add0~12_combout\,
	cout => \this_state_manager|Add0~13\);

-- Location: LCCOMB_X18_Y6_N28
\this_state_manager|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector3~0_combout\ = (\this_state_manager|Add0~12_combout\ & (!\this_state_manager|Selector11~0_combout\ & ((!\this_state_manager|curr_state.wait_0~regout\) # (!\this_state_manager|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|Equal1~1_combout\,
	datab => \this_state_manager|Add0~12_combout\,
	datac => \this_state_manager|Selector11~0_combout\,
	datad => \this_state_manager|curr_state.wait_0~regout\,
	combout => \this_state_manager|Selector3~0_combout\);

-- Location: LCCOMB_X17_Y12_N16
\Corr_Main_1|address_counter[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[0]~17_combout\ = \Corr_Main_1|address_counter\(0) $ (VCC)
-- \Corr_Main_1|address_counter[0]~18\ = CARRY(\Corr_Main_1|address_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(0),
	datad => VCC,
	combout => \Corr_Main_1|address_counter[0]~17_combout\,
	cout => \Corr_Main_1|address_counter[0]~18\);

-- Location: LCCOMB_X17_Y12_N18
\Corr_Main_1|address_counter[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[1]~20_combout\ = (\Corr_Main_1|address_counter\(1) & (!\Corr_Main_1|address_counter[0]~18\)) # (!\Corr_Main_1|address_counter\(1) & ((\Corr_Main_1|address_counter[0]~18\) # (GND)))
-- \Corr_Main_1|address_counter[1]~21\ = CARRY((!\Corr_Main_1|address_counter[0]~18\) # (!\Corr_Main_1|address_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(1),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[0]~18\,
	combout => \Corr_Main_1|address_counter[1]~20_combout\,
	cout => \Corr_Main_1|address_counter[1]~21\);

-- Location: LCCOMB_X18_Y6_N6
\this_state_manager|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector14~0_combout\ = (\this_state_manager|Equal1~1_combout\ & ((\this_state_manager|curr_state.wait_1~regout\) # ((\this_state_manager|curr_state.write_out_mram~regout\ & !\this_write_out_mram_manager|Equal0~5_combout\)))) # 
-- (!\this_state_manager|Equal1~1_combout\ & (((\this_state_manager|curr_state.write_out_mram~regout\ & !\this_write_out_mram_manager|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|Equal1~1_combout\,
	datab => \this_state_manager|curr_state.wait_1~regout\,
	datac => \this_state_manager|curr_state.write_out_mram~regout\,
	datad => \this_write_out_mram_manager|Equal0~5_combout\,
	combout => \this_state_manager|Selector14~0_combout\);

-- Location: LCFF_X18_Y6_N7
\this_state_manager|curr_state.write_out_mram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|curr_state.write_out_mram~regout\);

-- Location: LCCOMB_X17_Y7_N28
\this_write_out_mram_manager|msb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|msb~1_combout\ = \this_write_out_mram_manager|msb~regout\ $ (((\this_write_out_mram_manager|msb~0_combout\ & \this_state_manager|curr_state.write_out_mram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|msb~0_combout\,
	datac => \this_write_out_mram_manager|msb~regout\,
	datad => \this_state_manager|curr_state.write_out_mram~regout\,
	combout => \this_write_out_mram_manager|msb~1_combout\);

-- Location: LCFF_X17_Y7_N29
\this_write_out_mram_manager|msb\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|msb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|msb~regout\);

-- Location: LCCOMB_X18_Y12_N16
\this_write_out_mram_manager|address_counter[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[0]~17_combout\ = (\this_write_out_mram_manager|address_counter\(0) & (\this_write_out_mram_manager|msb~regout\ $ (VCC))) # (!\this_write_out_mram_manager|address_counter\(0) & 
-- (\this_write_out_mram_manager|msb~regout\ & VCC))
-- \this_write_out_mram_manager|address_counter[0]~18\ = CARRY((\this_write_out_mram_manager|address_counter\(0) & \this_write_out_mram_manager|msb~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(0),
	datab => \this_write_out_mram_manager|msb~regout\,
	datad => VCC,
	combout => \this_write_out_mram_manager|address_counter[0]~17_combout\,
	cout => \this_write_out_mram_manager|address_counter[0]~18\);

-- Location: LCCOMB_X18_Y12_N18
\this_write_out_mram_manager|address_counter[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[1]~20_combout\ = (\this_write_out_mram_manager|address_counter\(1) & (!\this_write_out_mram_manager|address_counter[0]~18\)) # (!\this_write_out_mram_manager|address_counter\(1) & 
-- ((\this_write_out_mram_manager|address_counter[0]~18\) # (GND)))
-- \this_write_out_mram_manager|address_counter[1]~21\ = CARRY((!\this_write_out_mram_manager|address_counter[0]~18\) # (!\this_write_out_mram_manager|address_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(1),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[0]~18\,
	combout => \this_write_out_mram_manager|address_counter[1]~20_combout\,
	cout => \this_write_out_mram_manager|address_counter[1]~21\);

-- Location: LCFF_X14_Y7_N29
\UART_Controller_1|curr_state.transmiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \UART_Controller_1|curr_state.reading_fifo~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|curr_state.transmiting~regout\);

-- Location: LCCOMB_X13_Y7_N10
\UART_Controller_1|uart_tx_1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector1~0_combout\ = (!\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & \UART_Controller_1|curr_state.transmiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datad => \UART_Controller_1|curr_state.transmiting~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector1~0_combout\);

-- Location: LCFF_X13_Y7_N11
\UART_Controller_1|uart_tx_1|curr_state.sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\);

-- Location: LCCOMB_X13_Y6_N0
\UART_Controller_1|uart_tx_1|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector8~0_combout\ = (\UART_Controller_1|uart_tx_1|Add0~8_combout\ & (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & !\UART_Controller_1|uart_tx_1|curr_state.sync~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Add0~8_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector8~0_combout\);

-- Location: LCFF_X13_Y6_N1
\UART_Controller_1|uart_tx_1|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(4));

-- Location: LCCOMB_X13_Y6_N22
\UART_Controller_1|uart_tx_1|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector9~0_combout\ = (\UART_Controller_1|uart_tx_1|Add0~6_combout\ & (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & !\UART_Controller_1|uart_tx_1|curr_state.sync~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Add0~6_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector9~0_combout\);

-- Location: LCFF_X13_Y6_N23
\UART_Controller_1|uart_tx_1|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(3));

-- Location: LCCOMB_X13_Y6_N4
\UART_Controller_1|uart_tx_1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~0_combout\ = \UART_Controller_1|uart_tx_1|counter\(0) $ (VCC)
-- \UART_Controller_1|uart_tx_1|Add0~1\ = CARRY(\UART_Controller_1|uart_tx_1|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|counter\(0),
	datad => VCC,
	combout => \UART_Controller_1|uart_tx_1|Add0~0_combout\,
	cout => \UART_Controller_1|uart_tx_1|Add0~1\);

-- Location: LCCOMB_X13_Y6_N26
\UART_Controller_1|uart_tx_1|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector12~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & (\UART_Controller_1|uart_tx_1|Add0~0_combout\ & (!\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & 
-- !\UART_Controller_1|uart_tx_1|curr_state.sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|Add0~0_combout\,
	datac => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector12~0_combout\);

-- Location: LCFF_X13_Y6_N27
\UART_Controller_1|uart_tx_1|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(0));

-- Location: LCCOMB_X13_Y6_N8
\UART_Controller_1|uart_tx_1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~4_combout\ = (\UART_Controller_1|uart_tx_1|counter\(2) & (\UART_Controller_1|uart_tx_1|Add0~3\ $ (GND))) # (!\UART_Controller_1|uart_tx_1|counter\(2) & (!\UART_Controller_1|uart_tx_1|Add0~3\ & VCC))
-- \UART_Controller_1|uart_tx_1|Add0~5\ = CARRY((\UART_Controller_1|uart_tx_1|counter\(2) & !\UART_Controller_1|uart_tx_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|counter\(2),
	datad => VCC,
	cin => \UART_Controller_1|uart_tx_1|Add0~3\,
	combout => \UART_Controller_1|uart_tx_1|Add0~4_combout\,
	cout => \UART_Controller_1|uart_tx_1|Add0~5\);

-- Location: LCCOMB_X13_Y6_N14
\UART_Controller_1|uart_tx_1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~10_combout\ = (\UART_Controller_1|uart_tx_1|counter\(5) & (!\UART_Controller_1|uart_tx_1|Add0~9\)) # (!\UART_Controller_1|uart_tx_1|counter\(5) & ((\UART_Controller_1|uart_tx_1|Add0~9\) # (GND)))
-- \UART_Controller_1|uart_tx_1|Add0~11\ = CARRY((!\UART_Controller_1|uart_tx_1|Add0~9\) # (!\UART_Controller_1|uart_tx_1|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|counter\(5),
	datad => VCC,
	cin => \UART_Controller_1|uart_tx_1|Add0~9\,
	combout => \UART_Controller_1|uart_tx_1|Add0~10_combout\,
	cout => \UART_Controller_1|uart_tx_1|Add0~11\);

-- Location: LCCOMB_X13_Y6_N28
\UART_Controller_1|uart_tx_1|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector7~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & (\UART_Controller_1|uart_tx_1|Add0~10_combout\ & (!\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & 
-- !\UART_Controller_1|uart_tx_1|curr_state.sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|Add0~10_combout\,
	datac => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector7~0_combout\);

-- Location: LCFF_X13_Y6_N29
\UART_Controller_1|uart_tx_1|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(5));

-- Location: LCCOMB_X13_Y6_N2
\UART_Controller_1|uart_tx_1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Equal0~1_combout\ = (!\UART_Controller_1|uart_tx_1|counter\(4) & \UART_Controller_1|uart_tx_1|counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|counter\(4),
	datad => \UART_Controller_1|uart_tx_1|counter\(5),
	combout => \UART_Controller_1|uart_tx_1|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y6_N30
\UART_Controller_1|uart_tx_1|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector10~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & (\UART_Controller_1|uart_tx_1|Add0~4_combout\ & !\UART_Controller_1|uart_tx_1|curr_state.sync~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datac => \UART_Controller_1|uart_tx_1|Add0~4_combout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector10~0_combout\);

-- Location: LCFF_X12_Y6_N31
\UART_Controller_1|uart_tx_1|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(2));

-- Location: LCCOMB_X13_Y6_N20
\UART_Controller_1|uart_tx_1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Equal0~0_combout\ = (\UART_Controller_1|uart_tx_1|counter\(1) & (!\UART_Controller_1|uart_tx_1|counter\(3) & (!\UART_Controller_1|uart_tx_1|counter\(2) & !\UART_Controller_1|uart_tx_1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|counter\(1),
	datab => \UART_Controller_1|uart_tx_1|counter\(3),
	datac => \UART_Controller_1|uart_tx_1|counter\(2),
	datad => \UART_Controller_1|uart_tx_1|counter\(0),
	combout => \UART_Controller_1|uart_tx_1|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y6_N30
\UART_Controller_1|uart_tx_1|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector6~0_combout\ = (\UART_Controller_1|uart_tx_1|Add0~12_combout\ & (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & !\UART_Controller_1|uart_tx_1|curr_state.sync~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|Add0~12_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector6~0_combout\);

-- Location: LCFF_X14_Y6_N31
\UART_Controller_1|uart_tx_1|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(6));

-- Location: LCCOMB_X13_Y6_N24
\UART_Controller_1|uart_tx_1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Equal0~2_combout\ = (\UART_Controller_1|uart_tx_1|counter\(7) & (\UART_Controller_1|uart_tx_1|Equal0~1_combout\ & (\UART_Controller_1|uart_tx_1|Equal0~0_combout\ & !\UART_Controller_1|uart_tx_1|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|counter\(7),
	datab => \UART_Controller_1|uart_tx_1|Equal0~1_combout\,
	datac => \UART_Controller_1|uart_tx_1|Equal0~0_combout\,
	datad => \UART_Controller_1|uart_tx_1|counter\(6),
	combout => \UART_Controller_1|uart_tx_1|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y6_N20
\UART_Controller_1|uart_tx_1|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector3~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.start~regout\ & ((\UART_Controller_1|uart_tx_1|Equal0~2_combout\) # ((!\UART_Controller_1|uart_tx_1|Selector4~0_combout\ & 
-- \UART_Controller_1|uart_tx_1|curr_state.data~regout\)))) # (!\UART_Controller_1|uart_tx_1|curr_state.start~regout\ & (!\UART_Controller_1|uart_tx_1|Selector4~0_combout\ & (\UART_Controller_1|uart_tx_1|curr_state.data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.start~regout\,
	datab => \UART_Controller_1|uart_tx_1|Selector4~0_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	datad => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector3~0_combout\);

-- Location: LCFF_X12_Y6_N21
\UART_Controller_1|uart_tx_1|curr_state.data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|curr_state.data~regout\);

-- Location: LCCOMB_X12_Y6_N0
\UART_Controller_1|uart_tx_1|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector13~1_combout\ = (\UART_Controller_1|uart_tx_1|Selector13~0_combout\) # ((\UART_Controller_1|uart_tx_1|Selector14~0_combout\ & (\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & 
-- \UART_Controller_1|uart_tx_1|data_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Selector13~0_combout\,
	datab => \UART_Controller_1|uart_tx_1|Selector14~0_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	datad => \UART_Controller_1|uart_tx_1|data_index\(1),
	combout => \UART_Controller_1|uart_tx_1|Selector13~1_combout\);

-- Location: LCFF_X12_Y6_N1
\UART_Controller_1|uart_tx_1|data_index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_index\(2));

-- Location: LCCOMB_X12_Y6_N26
\UART_Controller_1|uart_tx_1|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector15~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & (((\UART_Controller_1|uart_tx_1|data_index\(2) & \UART_Controller_1|uart_tx_1|data_index\(1))))) # 
-- (!\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|data_index\(2),
	datac => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	datad => \UART_Controller_1|uart_tx_1|data_index\(1),
	combout => \UART_Controller_1|uart_tx_1|Selector15~0_combout\);

-- Location: LCCOMB_X12_Y6_N8
\UART_Controller_1|uart_tx_1|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector15~1_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(0) & ((\UART_Controller_1|uart_tx_1|Selector15~0_combout\) # ((\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & 
-- !\UART_Controller_1|uart_tx_1|Equal0~2_combout\)))) # (!\UART_Controller_1|uart_tx_1|data_index\(0) & (\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & ((\UART_Controller_1|uart_tx_1|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	datab => \UART_Controller_1|uart_tx_1|Selector15~0_combout\,
	datac => \UART_Controller_1|uart_tx_1|data_index\(0),
	datad => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector15~1_combout\);

-- Location: LCFF_X12_Y6_N9
\UART_Controller_1|uart_tx_1|data_index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_index\(0));

-- Location: LCCOMB_X12_Y6_N2
\UART_Controller_1|uart_tx_1|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector14~0_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(0) & \UART_Controller_1|uart_tx_1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_Controller_1|uart_tx_1|data_index\(0),
	datad => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector14~0_combout\);

-- Location: LCCOMB_X12_Y6_N12
\UART_Controller_1|uart_tx_1|Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector14~1_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & (((\UART_Controller_1|uart_tx_1|data_index\(2)) # (!\UART_Controller_1|uart_tx_1|Selector14~0_combout\)))) # 
-- (!\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|Selector14~0_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	datad => \UART_Controller_1|uart_tx_1|data_index\(2),
	combout => \UART_Controller_1|uart_tx_1|Selector14~1_combout\);

-- Location: LCCOMB_X12_Y6_N22
\UART_Controller_1|uart_tx_1|Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector14~2_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(1) & (((\UART_Controller_1|uart_tx_1|Selector14~1_combout\)))) # (!\UART_Controller_1|uart_tx_1|data_index\(1) & 
-- (\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & (\UART_Controller_1|uart_tx_1|Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	datab => \UART_Controller_1|uart_tx_1|Selector14~0_combout\,
	datac => \UART_Controller_1|uart_tx_1|data_index\(1),
	datad => \UART_Controller_1|uart_tx_1|Selector14~1_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector14~2_combout\);

-- Location: LCFF_X12_Y6_N23
\UART_Controller_1|uart_tx_1|data_index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_index\(1));

-- Location: LCCOMB_X12_Y6_N4
\UART_Controller_1|uart_tx_1|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector4~0_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(2) & (\UART_Controller_1|uart_tx_1|data_index\(1) & (\UART_Controller_1|uart_tx_1|data_index\(0) & \UART_Controller_1|uart_tx_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_index\(2),
	datab => \UART_Controller_1|uart_tx_1|data_index\(1),
	datac => \UART_Controller_1|uart_tx_1|data_index\(0),
	datad => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector4~0_combout\);

-- Location: LCCOMB_X12_Y6_N18
\UART_Controller_1|uart_tx_1|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector4~1_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & ((\UART_Controller_1|uart_tx_1|Selector4~0_combout\) # ((\UART_Controller_1|uart_tx_1|curr_state.stop~regout\ & 
-- !\UART_Controller_1|uart_tx_1|Equal0~2_combout\)))) # (!\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & (((\UART_Controller_1|uart_tx_1|curr_state.stop~regout\ & !\UART_Controller_1|uart_tx_1|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	datab => \UART_Controller_1|uart_tx_1|Selector4~0_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.stop~regout\,
	datad => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector4~1_combout\);

-- Location: LCFF_X12_Y6_N19
\UART_Controller_1|uart_tx_1|curr_state.stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|curr_state.stop~regout\);

-- Location: LCCOMB_X13_Y6_N30
\UART_Controller_1|uart_tx_1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector0~0_combout\ = (\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & (!\UART_Controller_1|uart_tx_1|curr_state.stop~regout\ & ((\UART_Controller_1|uart_tx_1|curr_state.idle~regout\) # 
-- (\UART_Controller_1|curr_state.transmiting~regout\)))) # (!\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & (((\UART_Controller_1|uart_tx_1|curr_state.idle~regout\) # (\UART_Controller_1|curr_state.transmiting~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datab => \UART_Controller_1|uart_tx_1|curr_state.stop~regout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datad => \UART_Controller_1|curr_state.transmiting~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector0~0_combout\);

-- Location: LCFF_X13_Y6_N31
\UART_Controller_1|uart_tx_1|curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\);

-- Location: LCCOMB_X14_Y7_N0
\UART_Controller_1|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|Selector4~0_combout\ = (\UART_Controller_1|curr_state.transmiting~regout\) # ((\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & \UART_Controller_1|curr_state.waiting~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datac => \UART_Controller_1|curr_state.waiting~regout\,
	datad => \UART_Controller_1|curr_state.transmiting~regout\,
	combout => \UART_Controller_1|Selector4~0_combout\);

-- Location: LCFF_X14_Y7_N1
\UART_Controller_1|curr_state.waiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|curr_state.waiting~regout\);

-- Location: LCCOMB_X14_Y7_N18
\UART_Controller_1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|Selector1~0_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & ((\UART_Controller_1|uart_tx_1|curr_state.idle~regout\) # ((!\UART_Controller_1|curr_state.waiting~regout\)))) 
-- # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & (\UART_Controller_1|curr_state.idle~regout\ & ((\UART_Controller_1|uart_tx_1|curr_state.idle~regout\) # 
-- (!\UART_Controller_1|curr_state.waiting~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datab => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datac => \UART_Controller_1|curr_state.idle~regout\,
	datad => \UART_Controller_1|curr_state.waiting~regout\,
	combout => \UART_Controller_1|Selector1~0_combout\);

-- Location: LCFF_X14_Y7_N19
\UART_Controller_1|curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|curr_state.idle~regout\);

-- Location: LCCOMB_X15_Y7_N14
\UART_Controller_1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|Selector2~0_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & !\UART_Controller_1|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \UART_Controller_1|curr_state.idle~regout\,
	combout => \UART_Controller_1|Selector2~0_combout\);

-- Location: LCFF_X14_Y7_N11
\UART_Controller_1|curr_state.reading_fifo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \UART_Controller_1|Selector2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|curr_state.reading_fifo~regout\);

-- Location: LCCOMB_X14_Y7_N14
\UART_Controller_1|fifo_read_req\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|fifo_read_req~combout\ = (\UART_Controller_1|curr_state.waiting~regout\ & ((\UART_Controller_1|fifo_read_req~combout\))) # (!\UART_Controller_1|curr_state.waiting~regout\ & (\UART_Controller_1|curr_state.reading_fifo~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|curr_state.reading_fifo~regout\,
	datac => \UART_Controller_1|fifo_read_req~combout\,
	datad => \UART_Controller_1|curr_state.waiting~regout\,
	combout => \UART_Controller_1|fifo_read_req~combout\);

-- Location: LCCOMB_X14_Y7_N20
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) $ (((VCC) # 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ = CARRY(\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) $ 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X17_Y7_N16
\this_write_out_mram_manager|UART_DATA_IRQ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|UART_DATA_IRQ~0_combout\ = (\this_write_out_mram_manager|have_data~regout\ & !\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|have_data~regout\,
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \this_write_out_mram_manager|UART_DATA_IRQ~0_combout\);

-- Location: LCFF_X17_Y7_N17
\this_write_out_mram_manager|UART_DATA_IRQ\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|UART_DATA_IRQ~0_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|UART_DATA_IRQ~regout\);

-- Location: LCCOMB_X14_Y7_N8
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & (\UART_Controller_1|fifo_read_req~combout\ $ 
-- (((!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ & \this_write_out_mram_manager|UART_DATA_IRQ~regout\))))) # 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ & 
-- ((\this_write_out_mram_manager|UART_DATA_IRQ~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datac => \UART_Controller_1|fifo_read_req~combout\,
	datad => \this_write_out_mram_manager|UART_DATA_IRQ~regout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\);

-- Location: LCFF_X14_Y7_N21
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0));

-- Location: LCCOMB_X14_Y7_N30
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) & \this_write_out_mram_manager|UART_DATA_IRQ~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datad => \this_write_out_mram_manager|UART_DATA_IRQ~regout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\);

-- Location: LCCOMB_X14_Y7_N4
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ = (!\UART_Controller_1|fifo_read_req~combout\ & ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\) # 
-- ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ & \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\,
	datab => \UART_Controller_1|fifo_read_req~combout\,
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\);

-- Location: LCFF_X14_Y7_N5
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\);

-- Location: LCCOMB_X14_Y7_N28
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ = (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ & \this_write_out_mram_manager|UART_DATA_IRQ~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \this_write_out_mram_manager|UART_DATA_IRQ~regout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\);

-- Location: LCCOMB_X14_Y7_N22
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ & 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) $ (((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\) # (VCC))))) # 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ & (((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1)) # (GND))))
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ = CARRY((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1))) # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datad => VCC,
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\);

-- Location: LCFF_X14_Y7_N23
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1));

-- Location: LCCOMB_X14_Y7_N24
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) & VCC)))) # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) $ (((VCC) # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))))
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ = CARRY((!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datad => VCC,
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\);

-- Location: LCFF_X14_Y7_N25
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2));

-- Location: LCCOMB_X14_Y7_N26
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ $ 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\);

-- Location: LCFF_X14_Y7_N27
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3));

-- Location: LCCOMB_X14_Y7_N2
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2)) # 
-- ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3)) # ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1)) # 
-- (!\UART_Controller_1|fifo_read_req~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	datac => \UART_Controller_1|fifo_read_req~combout\,
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\);

-- Location: LCCOMB_X14_Y7_N10
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\) # (\this_write_out_mram_manager|UART_DATA_IRQ~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \this_write_out_mram_manager|UART_DATA_IRQ~regout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\);

-- Location: LCCOMB_X14_Y7_N6
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\) # 
-- ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\) # 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\,
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\);

-- Location: LCFF_X14_Y7_N7
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\);

-- Location: LCCOMB_X17_Y7_N24
\this_write_out_mram_manager|have_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|have_data~0_combout\ = (\this_write_out_mram_manager|have_data~regout\ & (((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)))) # 
-- (!\this_write_out_mram_manager|have_data~regout\ & (\this_write_out_mram_manager|getting_data~regout\ & (!\this_mram_controller|curr_state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|getting_data~regout\,
	datab => \this_mram_controller|curr_state.idle~regout\,
	datac => \this_write_out_mram_manager|have_data~regout\,
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \this_write_out_mram_manager|have_data~0_combout\);

-- Location: LCFF_X17_Y7_N25
\this_write_out_mram_manager|have_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|have_data~0_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|have_data~regout\);

-- Location: LCCOMB_X17_Y7_N20
\this_write_out_mram_manager|msb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|msb~0_combout\ = (!\this_write_out_mram_manager|getting_data~regout\ & (!\this_mram_controller|curr_state.idle~regout\ & !\this_write_out_mram_manager|have_data~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|getting_data~regout\,
	datab => \this_mram_controller|curr_state.idle~regout\,
	datac => \this_write_out_mram_manager|have_data~regout\,
	combout => \this_write_out_mram_manager|msb~0_combout\);

-- Location: LCCOMB_X17_Y7_N22
\this_write_out_mram_manager|MRAM_READ_DATA~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|MRAM_READ_DATA~feeder_combout\ = \this_write_out_mram_manager|msb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_write_out_mram_manager|msb~0_combout\,
	combout => \this_write_out_mram_manager|MRAM_READ_DATA~feeder_combout\);

-- Location: LCFF_X17_Y7_N23
\this_write_out_mram_manager|MRAM_READ_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|MRAM_READ_DATA~feeder_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|MRAM_READ_DATA~regout\);

-- Location: LCCOMB_X18_Y7_N12
\Corr_Main_1|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~1_combout\ = (!\this_read_adc_manager|ADC_BIT_VALID~regout\ & (\Corr_Main_1|Equal0~10_combout\ & (\Corr_Main_1|cnt\(1) $ (\Corr_Main_1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|ADC_BIT_VALID~regout\,
	datab => \Corr_Main_1|cnt\(1),
	datac => \Corr_Main_1|cnt\(0),
	datad => \Corr_Main_1|Equal0~10_combout\,
	combout => \Corr_Main_1|cnt~1_combout\);

-- Location: LCCOMB_X17_Y9_N14
\Corr_Main_1|cnt~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~30_combout\ = (\Corr_Main_1|Add19~8_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add19~8_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~30_combout\);

-- Location: LCFF_X17_Y9_N15
\Corr_Main_1|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~30_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(4));

-- Location: LCCOMB_X19_Y9_N2
\Corr_Main_1|Add19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~2_combout\ = (\Corr_Main_1|cnt\(1) & (!\Corr_Main_1|Add19~1\)) # (!\Corr_Main_1|cnt\(1) & ((\Corr_Main_1|Add19~1\) # (GND)))
-- \Corr_Main_1|Add19~3\ = CARRY((!\Corr_Main_1|Add19~1\) # (!\Corr_Main_1|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(1),
	datad => VCC,
	cin => \Corr_Main_1|Add19~1\,
	combout => \Corr_Main_1|Add19~2_combout\,
	cout => \Corr_Main_1|Add19~3\);

-- Location: LCCOMB_X19_Y9_N10
\Corr_Main_1|Add19~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~10_combout\ = (\Corr_Main_1|cnt\(5) & (!\Corr_Main_1|Add19~9\)) # (!\Corr_Main_1|cnt\(5) & ((\Corr_Main_1|Add19~9\) # (GND)))
-- \Corr_Main_1|Add19~11\ = CARRY((!\Corr_Main_1|Add19~9\) # (!\Corr_Main_1|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(5),
	datad => VCC,
	cin => \Corr_Main_1|Add19~9\,
	combout => \Corr_Main_1|Add19~10_combout\,
	cout => \Corr_Main_1|Add19~11\);

-- Location: LCCOMB_X19_Y9_N12
\Corr_Main_1|Add19~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~12_combout\ = (\Corr_Main_1|cnt\(6) & (\Corr_Main_1|Add19~11\ $ (GND))) # (!\Corr_Main_1|cnt\(6) & (!\Corr_Main_1|Add19~11\ & VCC))
-- \Corr_Main_1|Add19~13\ = CARRY((\Corr_Main_1|cnt\(6) & !\Corr_Main_1|Add19~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt\(6),
	datad => VCC,
	cin => \Corr_Main_1|Add19~11\,
	combout => \Corr_Main_1|Add19~12_combout\,
	cout => \Corr_Main_1|Add19~13\);

-- Location: LCCOMB_X17_Y9_N18
\Corr_Main_1|cnt~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~28_combout\ = (\Corr_Main_1|Add19~12_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|Add19~12_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~28_combout\);

-- Location: LCFF_X17_Y9_N19
\Corr_Main_1|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~28_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(6));

-- Location: LCCOMB_X19_Y9_N16
\Corr_Main_1|Add19~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~16_combout\ = (\Corr_Main_1|cnt\(8) & (\Corr_Main_1|Add19~15\ $ (GND))) # (!\Corr_Main_1|cnt\(8) & (!\Corr_Main_1|Add19~15\ & VCC))
-- \Corr_Main_1|Add19~17\ = CARRY((\Corr_Main_1|cnt\(8) & !\Corr_Main_1|Add19~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt\(8),
	datad => VCC,
	cin => \Corr_Main_1|Add19~15\,
	combout => \Corr_Main_1|Add19~16_combout\,
	cout => \Corr_Main_1|Add19~17\);

-- Location: LCCOMB_X18_Y9_N26
\Corr_Main_1|cnt~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~26_combout\ = (\Corr_Main_1|Add19~16_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|Add19~16_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~26_combout\);

-- Location: LCFF_X18_Y9_N27
\Corr_Main_1|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~26_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(8));

-- Location: LCCOMB_X19_Y9_N18
\Corr_Main_1|Add19~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~18_combout\ = (\Corr_Main_1|cnt\(9) & (!\Corr_Main_1|Add19~17\)) # (!\Corr_Main_1|cnt\(9) & ((\Corr_Main_1|Add19~17\) # (GND)))
-- \Corr_Main_1|Add19~19\ = CARRY((!\Corr_Main_1|Add19~17\) # (!\Corr_Main_1|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt\(9),
	datad => VCC,
	cin => \Corr_Main_1|Add19~17\,
	combout => \Corr_Main_1|Add19~18_combout\,
	cout => \Corr_Main_1|Add19~19\);

-- Location: LCCOMB_X18_Y9_N18
\Corr_Main_1|cnt~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~25_combout\ = (\Corr_Main_1|Add19~18_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add19~18_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~25_combout\);

-- Location: LCFF_X18_Y9_N19
\Corr_Main_1|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~25_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(9));

-- Location: LCCOMB_X19_Y9_N20
\Corr_Main_1|Add19~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~20_combout\ = (\Corr_Main_1|cnt\(10) & (\Corr_Main_1|Add19~19\ $ (GND))) # (!\Corr_Main_1|cnt\(10) & (!\Corr_Main_1|Add19~19\ & VCC))
-- \Corr_Main_1|Add19~21\ = CARRY((\Corr_Main_1|cnt\(10) & !\Corr_Main_1|Add19~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt\(10),
	datad => VCC,
	cin => \Corr_Main_1|Add19~19\,
	combout => \Corr_Main_1|Add19~20_combout\,
	cout => \Corr_Main_1|Add19~21\);

-- Location: LCCOMB_X18_Y9_N4
\Corr_Main_1|cnt~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~24_combout\ = (\Corr_Main_1|Add19~20_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add19~20_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~24_combout\);

-- Location: LCFF_X18_Y9_N5
\Corr_Main_1|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~24_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(10));

-- Location: LCCOMB_X19_Y9_N22
\Corr_Main_1|Add19~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~22_combout\ = (\Corr_Main_1|cnt\(11) & (!\Corr_Main_1|Add19~21\)) # (!\Corr_Main_1|cnt\(11) & ((\Corr_Main_1|Add19~21\) # (GND)))
-- \Corr_Main_1|Add19~23\ = CARRY((!\Corr_Main_1|Add19~21\) # (!\Corr_Main_1|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt\(11),
	datad => VCC,
	cin => \Corr_Main_1|Add19~21\,
	combout => \Corr_Main_1|Add19~22_combout\,
	cout => \Corr_Main_1|Add19~23\);

-- Location: LCCOMB_X18_Y9_N16
\Corr_Main_1|cnt~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~23_combout\ = (\Corr_Main_1|Add19~22_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|Add19~22_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~23_combout\);

-- Location: LCFF_X18_Y9_N17
\Corr_Main_1|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~23_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(11));

-- Location: LCCOMB_X19_Y9_N24
\Corr_Main_1|Add19~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~24_combout\ = (\Corr_Main_1|cnt\(12) & (\Corr_Main_1|Add19~23\ $ (GND))) # (!\Corr_Main_1|cnt\(12) & (!\Corr_Main_1|Add19~23\ & VCC))
-- \Corr_Main_1|Add19~25\ = CARRY((\Corr_Main_1|cnt\(12) & !\Corr_Main_1|Add19~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt\(12),
	datad => VCC,
	cin => \Corr_Main_1|Add19~23\,
	combout => \Corr_Main_1|Add19~24_combout\,
	cout => \Corr_Main_1|Add19~25\);

-- Location: LCCOMB_X18_Y9_N22
\Corr_Main_1|cnt~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~22_combout\ = (\Corr_Main_1|Add19~24_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add19~24_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~22_combout\);

-- Location: LCFF_X18_Y9_N23
\Corr_Main_1|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~22_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(12));

-- Location: LCCOMB_X19_Y9_N28
\Corr_Main_1|Add19~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~28_combout\ = (\Corr_Main_1|cnt\(14) & (\Corr_Main_1|Add19~27\ $ (GND))) # (!\Corr_Main_1|cnt\(14) & (!\Corr_Main_1|Add19~27\ & VCC))
-- \Corr_Main_1|Add19~29\ = CARRY((\Corr_Main_1|cnt\(14) & !\Corr_Main_1|Add19~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt\(14),
	datad => VCC,
	cin => \Corr_Main_1|Add19~27\,
	combout => \Corr_Main_1|Add19~28_combout\,
	cout => \Corr_Main_1|Add19~29\);

-- Location: LCCOMB_X18_Y9_N24
\Corr_Main_1|cnt~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~20_combout\ = (\Corr_Main_1|Add19~28_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add19~28_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~20_combout\);

-- Location: LCFF_X18_Y9_N25
\Corr_Main_1|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~20_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(14));

-- Location: LCCOMB_X19_Y8_N0
\Corr_Main_1|Add19~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~32_combout\ = (\Corr_Main_1|cnt\(16) & (\Corr_Main_1|Add19~31\ $ (GND))) # (!\Corr_Main_1|cnt\(16) & (!\Corr_Main_1|Add19~31\ & VCC))
-- \Corr_Main_1|Add19~33\ = CARRY((\Corr_Main_1|cnt\(16) & !\Corr_Main_1|Add19~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(16),
	datad => VCC,
	cin => \Corr_Main_1|Add19~31\,
	combout => \Corr_Main_1|Add19~32_combout\,
	cout => \Corr_Main_1|Add19~33\);

-- Location: LCCOMB_X19_Y8_N2
\Corr_Main_1|Add19~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~34_combout\ = (\Corr_Main_1|cnt\(17) & (!\Corr_Main_1|Add19~33\)) # (!\Corr_Main_1|cnt\(17) & ((\Corr_Main_1|Add19~33\) # (GND)))
-- \Corr_Main_1|Add19~35\ = CARRY((!\Corr_Main_1|Add19~33\) # (!\Corr_Main_1|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(17),
	datad => VCC,
	cin => \Corr_Main_1|Add19~33\,
	combout => \Corr_Main_1|Add19~34_combout\,
	cout => \Corr_Main_1|Add19~35\);

-- Location: LCCOMB_X19_Y8_N6
\Corr_Main_1|Add19~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~38_combout\ = (\Corr_Main_1|cnt\(19) & (!\Corr_Main_1|Add19~37\)) # (!\Corr_Main_1|cnt\(19) & ((\Corr_Main_1|Add19~37\) # (GND)))
-- \Corr_Main_1|Add19~39\ = CARRY((!\Corr_Main_1|Add19~37\) # (!\Corr_Main_1|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt\(19),
	datad => VCC,
	cin => \Corr_Main_1|Add19~37\,
	combout => \Corr_Main_1|Add19~38_combout\,
	cout => \Corr_Main_1|Add19~39\);

-- Location: LCCOMB_X17_Y8_N28
\Corr_Main_1|cnt~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~15_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|cnt~1_combout\,
	datad => \Corr_Main_1|Add19~38_combout\,
	combout => \Corr_Main_1|cnt~15_combout\);

-- Location: LCFF_X17_Y8_N29
\Corr_Main_1|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~15_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(19));

-- Location: LCCOMB_X19_Y8_N8
\Corr_Main_1|Add19~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~40_combout\ = (\Corr_Main_1|cnt\(20) & (\Corr_Main_1|Add19~39\ $ (GND))) # (!\Corr_Main_1|cnt\(20) & (!\Corr_Main_1|Add19~39\ & VCC))
-- \Corr_Main_1|Add19~41\ = CARRY((\Corr_Main_1|cnt\(20) & !\Corr_Main_1|Add19~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(20),
	datad => VCC,
	cin => \Corr_Main_1|Add19~39\,
	combout => \Corr_Main_1|Add19~40_combout\,
	cout => \Corr_Main_1|Add19~41\);

-- Location: LCCOMB_X19_Y8_N10
\Corr_Main_1|Add19~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~42_combout\ = (\Corr_Main_1|cnt\(21) & (!\Corr_Main_1|Add19~41\)) # (!\Corr_Main_1|cnt\(21) & ((\Corr_Main_1|Add19~41\) # (GND)))
-- \Corr_Main_1|Add19~43\ = CARRY((!\Corr_Main_1|Add19~41\) # (!\Corr_Main_1|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(21),
	datad => VCC,
	cin => \Corr_Main_1|Add19~41\,
	combout => \Corr_Main_1|Add19~42_combout\,
	cout => \Corr_Main_1|Add19~43\);

-- Location: LCCOMB_X19_Y8_N14
\Corr_Main_1|Add19~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~46_combout\ = (\Corr_Main_1|cnt\(23) & (!\Corr_Main_1|Add19~45\)) # (!\Corr_Main_1|cnt\(23) & ((\Corr_Main_1|Add19~45\) # (GND)))
-- \Corr_Main_1|Add19~47\ = CARRY((!\Corr_Main_1|Add19~45\) # (!\Corr_Main_1|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt\(23),
	datad => VCC,
	cin => \Corr_Main_1|Add19~45\,
	combout => \Corr_Main_1|Add19~46_combout\,
	cout => \Corr_Main_1|Add19~47\);

-- Location: LCCOMB_X18_Y8_N22
\Corr_Main_1|cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~11_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt~1_combout\,
	datac => \Corr_Main_1|Add19~46_combout\,
	combout => \Corr_Main_1|cnt~11_combout\);

-- Location: LCFF_X18_Y8_N23
\Corr_Main_1|cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~11_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(23));

-- Location: LCCOMB_X19_Y8_N16
\Corr_Main_1|Add19~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~48_combout\ = (\Corr_Main_1|cnt\(24) & (\Corr_Main_1|Add19~47\ $ (GND))) # (!\Corr_Main_1|cnt\(24) & (!\Corr_Main_1|Add19~47\ & VCC))
-- \Corr_Main_1|Add19~49\ = CARRY((\Corr_Main_1|cnt\(24) & !\Corr_Main_1|Add19~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt\(24),
	datad => VCC,
	cin => \Corr_Main_1|Add19~47\,
	combout => \Corr_Main_1|Add19~48_combout\,
	cout => \Corr_Main_1|Add19~49\);

-- Location: LCCOMB_X18_Y8_N2
\Corr_Main_1|cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~10_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt~1_combout\,
	datac => \Corr_Main_1|Add19~48_combout\,
	combout => \Corr_Main_1|cnt~10_combout\);

-- Location: LCFF_X18_Y8_N3
\Corr_Main_1|cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~10_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(24));

-- Location: LCCOMB_X19_Y8_N18
\Corr_Main_1|Add19~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~50_combout\ = (\Corr_Main_1|cnt\(25) & (!\Corr_Main_1|Add19~49\)) # (!\Corr_Main_1|cnt\(25) & ((\Corr_Main_1|Add19~49\) # (GND)))
-- \Corr_Main_1|Add19~51\ = CARRY((!\Corr_Main_1|Add19~49\) # (!\Corr_Main_1|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt\(25),
	datad => VCC,
	cin => \Corr_Main_1|Add19~49\,
	combout => \Corr_Main_1|Add19~50_combout\,
	cout => \Corr_Main_1|Add19~51\);

-- Location: LCCOMB_X18_Y8_N24
\Corr_Main_1|cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~9_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|cnt~1_combout\,
	datad => \Corr_Main_1|Add19~50_combout\,
	combout => \Corr_Main_1|cnt~9_combout\);

-- Location: LCFF_X18_Y8_N25
\Corr_Main_1|cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~9_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(25));

-- Location: LCCOMB_X19_Y8_N20
\Corr_Main_1|Add19~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~52_combout\ = (\Corr_Main_1|cnt\(26) & (\Corr_Main_1|Add19~51\ $ (GND))) # (!\Corr_Main_1|cnt\(26) & (!\Corr_Main_1|Add19~51\ & VCC))
-- \Corr_Main_1|Add19~53\ = CARRY((\Corr_Main_1|cnt\(26) & !\Corr_Main_1|Add19~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(26),
	datad => VCC,
	cin => \Corr_Main_1|Add19~51\,
	combout => \Corr_Main_1|Add19~52_combout\,
	cout => \Corr_Main_1|Add19~53\);

-- Location: LCCOMB_X18_Y8_N4
\Corr_Main_1|cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~7_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|cnt~1_combout\,
	datad => \Corr_Main_1|Add19~54_combout\,
	combout => \Corr_Main_1|cnt~7_combout\);

-- Location: LCFF_X18_Y8_N5
\Corr_Main_1|cnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~7_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(27));

-- Location: LCCOMB_X18_Y8_N30
\Corr_Main_1|cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~8_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|cnt~1_combout\,
	datad => \Corr_Main_1|Add19~52_combout\,
	combout => \Corr_Main_1|cnt~8_combout\);

-- Location: LCFF_X18_Y8_N31
\Corr_Main_1|cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~8_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(26));

-- Location: LCCOMB_X18_Y8_N28
\Corr_Main_1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Equal0~1_combout\ = (!\Corr_Main_1|cnt\(25) & (!\Corr_Main_1|cnt\(24) & (!\Corr_Main_1|cnt\(27) & !\Corr_Main_1|cnt\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(25),
	datab => \Corr_Main_1|cnt\(24),
	datac => \Corr_Main_1|cnt\(27),
	datad => \Corr_Main_1|cnt\(26),
	combout => \Corr_Main_1|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y8_N26
\Corr_Main_1|cnt~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~17_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|cnt~1_combout\,
	datad => \Corr_Main_1|Add19~34_combout\,
	combout => \Corr_Main_1|cnt~17_combout\);

-- Location: LCFF_X17_Y8_N27
\Corr_Main_1|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~17_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(17));

-- Location: LCCOMB_X17_Y8_N16
\Corr_Main_1|cnt~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~18_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|cnt~1_combout\,
	datad => \Corr_Main_1|Add19~32_combout\,
	combout => \Corr_Main_1|cnt~18_combout\);

-- Location: LCFF_X17_Y8_N17
\Corr_Main_1|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~18_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(16));

-- Location: LCCOMB_X17_Y8_N30
\Corr_Main_1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Equal0~3_combout\ = (!\Corr_Main_1|cnt\(18) & (!\Corr_Main_1|cnt\(17) & (!\Corr_Main_1|cnt\(16) & !\Corr_Main_1|cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(18),
	datab => \Corr_Main_1|cnt\(17),
	datac => \Corr_Main_1|cnt\(16),
	datad => \Corr_Main_1|cnt\(19),
	combout => \Corr_Main_1|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y8_N14
\Corr_Main_1|cnt~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~13_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt~1_combout\,
	datac => \Corr_Main_1|Add19~42_combout\,
	combout => \Corr_Main_1|cnt~13_combout\);

-- Location: LCFF_X18_Y8_N15
\Corr_Main_1|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~13_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(21));

-- Location: LCCOMB_X18_Y8_N26
\Corr_Main_1|cnt~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~14_combout\ = (\Corr_Main_1|cnt~1_combout\ & \Corr_Main_1|Add19~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|cnt~1_combout\,
	datac => \Corr_Main_1|Add19~40_combout\,
	combout => \Corr_Main_1|cnt~14_combout\);

-- Location: LCFF_X18_Y8_N27
\Corr_Main_1|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~14_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(20));

-- Location: LCCOMB_X18_Y8_N18
\Corr_Main_1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Equal0~2_combout\ = (!\Corr_Main_1|cnt\(22) & (!\Corr_Main_1|cnt\(23) & (!\Corr_Main_1|cnt\(21) & !\Corr_Main_1|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(22),
	datab => \Corr_Main_1|cnt\(23),
	datac => \Corr_Main_1|cnt\(21),
	datad => \Corr_Main_1|cnt\(20),
	combout => \Corr_Main_1|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y8_N16
\Corr_Main_1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Equal0~4_combout\ = (\Corr_Main_1|Equal0~0_combout\ & (\Corr_Main_1|Equal0~1_combout\ & (\Corr_Main_1|Equal0~3_combout\ & \Corr_Main_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Equal0~0_combout\,
	datab => \Corr_Main_1|Equal0~1_combout\,
	datac => \Corr_Main_1|Equal0~3_combout\,
	datad => \Corr_Main_1|Equal0~2_combout\,
	combout => \Corr_Main_1|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y7_N30
\Corr_Main_1|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Equal0~10_combout\ = (\Corr_Main_1|Equal0~9_combout\ & \Corr_Main_1|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Equal0~9_combout\,
	datac => \Corr_Main_1|Equal0~4_combout\,
	combout => \Corr_Main_1|Equal0~10_combout\);

-- Location: LCCOMB_X19_Y7_N12
\Corr_Main_1|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~0_combout\ = (\Corr_Main_1|Add19~0_combout\ & (\Corr_Main_1|Equal0~10_combout\ & (\Corr_Main_1|cnt\(1) $ (\Corr_Main_1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add19~0_combout\,
	datab => \Corr_Main_1|cnt\(1),
	datac => \Corr_Main_1|cnt\(0),
	datad => \Corr_Main_1|Equal0~10_combout\,
	combout => \Corr_Main_1|cnt~0_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_DCLKA~I\ : cycloneii_io
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
	padio => ww_ADC_DCLKA,
	combout => \ADC_DCLKA~combout\);

-- Location: LCCOMB_X27_Y6_N12
\this_read_adc_manager|last_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|last_state~0_combout\ = (\this_state_manager|curr_state.read_adc~regout\ & \ADC_DCLKA~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_state_manager|curr_state.read_adc~regout\,
	datad => \ADC_DCLKA~combout\,
	combout => \this_read_adc_manager|last_state~0_combout\);

-- Location: LCFF_X27_Y6_N13
\this_read_adc_manager|last_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|last_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|last_state~regout\);

-- Location: LCCOMB_X27_Y6_N26
\this_read_adc_manager|read_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|read_counter~3_combout\ = \this_read_adc_manager|read_counter\(1) $ (((\this_read_adc_manager|read_counter\(0) & (!\this_read_adc_manager|last_state~regout\ & \ADC_DCLKA~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|read_counter\(0),
	datab => \this_read_adc_manager|last_state~regout\,
	datac => \this_read_adc_manager|read_counter\(1),
	datad => \ADC_DCLKA~combout\,
	combout => \this_read_adc_manager|read_counter~3_combout\);

-- Location: LCFF_X27_Y6_N27
\this_read_adc_manager|read_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|read_counter~3_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|read_counter\(1));

-- Location: LCCOMB_X26_Y6_N26
\this_read_adc_manager|read_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|read_counter~0_combout\ = (\this_read_adc_manager|read_counter\(1) & (\this_read_adc_manager|read_counter\(2) $ ((\this_read_adc_manager|read_counter\(0))))) # (!\this_read_adc_manager|read_counter\(1) & 
-- (\this_read_adc_manager|read_counter\(2) & ((\this_read_adc_manager|read_counter\(0)) # (\this_mram_controller|curr_state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|read_counter\(1),
	datab => \this_read_adc_manager|read_counter\(2),
	datac => \this_read_adc_manager|read_counter\(0),
	datad => \this_mram_controller|curr_state.idle~regout\,
	combout => \this_read_adc_manager|read_counter~0_combout\);

-- Location: LCCOMB_X27_Y6_N0
\this_read_adc_manager|read_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|read_counter~1_combout\ = (\this_read_adc_manager|last_state~regout\ & (((\this_read_adc_manager|read_counter\(2))))) # (!\this_read_adc_manager|last_state~regout\ & ((\ADC_DCLKA~combout\ & 
-- (\this_read_adc_manager|read_counter~0_combout\)) # (!\ADC_DCLKA~combout\ & ((\this_read_adc_manager|read_counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|last_state~regout\,
	datab => \this_read_adc_manager|read_counter~0_combout\,
	datac => \this_read_adc_manager|read_counter\(2),
	datad => \ADC_DCLKA~combout\,
	combout => \this_read_adc_manager|read_counter~1_combout\);

-- Location: LCFF_X27_Y6_N1
\this_read_adc_manager|read_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|read_counter~1_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|read_counter\(2));

-- Location: LCCOMB_X27_Y6_N16
\this_read_adc_manager|read_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|read_counter~2_combout\ = (\this_read_adc_manager|process_0~0_combout\ & (((\this_read_adc_manager|read_counter\(0))))) # (!\this_read_adc_manager|process_0~0_combout\ & (!\this_read_adc_manager|read_counter\(0) & 
-- ((\this_read_adc_manager|read_counter\(1)) # (!\this_read_adc_manager|read_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|process_0~0_combout\,
	datab => \this_read_adc_manager|read_counter\(1),
	datac => \this_read_adc_manager|read_counter\(0),
	datad => \this_read_adc_manager|read_counter\(2),
	combout => \this_read_adc_manager|read_counter~2_combout\);

-- Location: LCFF_X27_Y6_N17
\this_read_adc_manager|read_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|read_counter~2_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|read_counter\(0));

-- Location: LCCOMB_X27_Y6_N4
\this_read_adc_manager|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|Equal1~0_combout\ = (!\this_read_adc_manager|read_counter\(1) & (!\this_read_adc_manager|read_counter\(0) & \this_read_adc_manager|read_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|read_counter\(1),
	datac => \this_read_adc_manager|read_counter\(0),
	datad => \this_read_adc_manager|read_counter\(2),
	combout => \this_read_adc_manager|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y6_N2
\this_read_adc_manager|ADC_BIT_VALID~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|ADC_BIT_VALID~0_combout\ = (\this_read_adc_manager|process_0~0_combout\ & (((\this_read_adc_manager|ADC_BIT_VALID~regout\)))) # (!\this_read_adc_manager|process_0~0_combout\ & (\this_read_adc_manager|Equal1~0_combout\ & 
-- ((!\this_mram_controller|curr_state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|process_0~0_combout\,
	datab => \this_read_adc_manager|Equal1~0_combout\,
	datac => \this_read_adc_manager|ADC_BIT_VALID~regout\,
	datad => \this_mram_controller|curr_state.idle~regout\,
	combout => \this_read_adc_manager|ADC_BIT_VALID~0_combout\);

-- Location: LCFF_X27_Y6_N3
\this_read_adc_manager|ADC_BIT_VALID\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|ADC_BIT_VALID~0_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|ADC_BIT_VALID~regout\);

-- Location: LCFF_X19_Y7_N13
\Corr_Main_1|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~0_combout\,
	sdata => VCC,
	sload => \this_read_adc_manager|ADC_BIT_VALID~regout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(0));

-- Location: LCCOMB_X18_Y7_N14
\Corr_Main_1|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~2_combout\ = (\Corr_Main_1|Add19~2_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add19~2_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~2_combout\);

-- Location: LCCOMB_X19_Y7_N18
\Corr_Main_1|cnt[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt[1]~feeder_combout\ = \Corr_Main_1|cnt~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|cnt~2_combout\,
	combout => \Corr_Main_1|cnt[1]~feeder_combout\);

-- Location: LCFF_X19_Y7_N19
\Corr_Main_1|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt[1]~feeder_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(1));

-- Location: LCCOMB_X18_Y7_N24
\Corr_Main_1|address_counter~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter~52_combout\ = (!\this_read_adc_manager|ADC_BIT_VALID~regout\ & (\Corr_Main_1|cnt\(1) & (\Corr_Main_1|cnt\(0) & \Corr_Main_1|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|ADC_BIT_VALID~regout\,
	datab => \Corr_Main_1|cnt\(1),
	datac => \Corr_Main_1|cnt\(0),
	datad => \Corr_Main_1|Equal0~10_combout\,
	combout => \Corr_Main_1|address_counter~52_combout\);

-- Location: LCFF_X18_Y7_N25
\Corr_Main_1|MRAM_WRITE_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter~52_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|MRAM_WRITE_DATA~regout\);

-- Location: LCCOMB_X17_Y7_N8
\this_mram_controller|curr_state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~11_combout\ = (\this_mram_controller|curr_state.idle~regout\ & (\this_mram_controller|curr_state~10_combout\)) # (!\this_mram_controller|curr_state.idle~regout\ & (((\this_write_out_mram_manager|MRAM_READ_DATA~regout\) # 
-- (\Corr_Main_1|MRAM_WRITE_DATA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state~10_combout\,
	datab => \this_write_out_mram_manager|MRAM_READ_DATA~regout\,
	datac => \this_mram_controller|curr_state.idle~regout\,
	datad => \Corr_Main_1|MRAM_WRITE_DATA~regout\,
	combout => \this_mram_controller|curr_state~11_combout\);

-- Location: LCFF_X17_Y7_N9
\this_mram_controller|curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|curr_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|curr_state.idle~regout\);

-- Location: LCCOMB_X17_Y7_N0
\this_write_out_mram_manager|address_counter~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter~19_combout\ = ((!\this_write_out_mram_manager|getting_data~regout\ & (!\this_mram_controller|curr_state.idle~regout\ & !\this_write_out_mram_manager|have_data~regout\))) # 
-- (!\this_state_manager|curr_state.write_out_mram~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|getting_data~regout\,
	datab => \this_mram_controller|curr_state.idle~regout\,
	datac => \this_write_out_mram_manager|have_data~regout\,
	datad => \this_state_manager|curr_state.write_out_mram~regout\,
	combout => \this_write_out_mram_manager|address_counter~19_combout\);

-- Location: LCFF_X18_Y12_N19
\this_write_out_mram_manager|address_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[1]~20_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(1));

-- Location: LCCOMB_X18_Y12_N20
\this_write_out_mram_manager|address_counter[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[2]~22_combout\ = (\this_write_out_mram_manager|address_counter\(2) & (\this_write_out_mram_manager|address_counter[1]~21\ $ (GND))) # (!\this_write_out_mram_manager|address_counter\(2) & 
-- (!\this_write_out_mram_manager|address_counter[1]~21\ & VCC))
-- \this_write_out_mram_manager|address_counter[2]~23\ = CARRY((\this_write_out_mram_manager|address_counter\(2) & !\this_write_out_mram_manager|address_counter[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(2),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[1]~21\,
	combout => \this_write_out_mram_manager|address_counter[2]~22_combout\,
	cout => \this_write_out_mram_manager|address_counter[2]~23\);

-- Location: LCCOMB_X18_Y12_N22
\this_write_out_mram_manager|address_counter[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[3]~24_combout\ = (\this_write_out_mram_manager|address_counter\(3) & (!\this_write_out_mram_manager|address_counter[2]~23\)) # (!\this_write_out_mram_manager|address_counter\(3) & 
-- ((\this_write_out_mram_manager|address_counter[2]~23\) # (GND)))
-- \this_write_out_mram_manager|address_counter[3]~25\ = CARRY((!\this_write_out_mram_manager|address_counter[2]~23\) # (!\this_write_out_mram_manager|address_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(3),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[2]~23\,
	combout => \this_write_out_mram_manager|address_counter[3]~24_combout\,
	cout => \this_write_out_mram_manager|address_counter[3]~25\);

-- Location: LCFF_X18_Y12_N23
\this_write_out_mram_manager|address_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[3]~24_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(3));

-- Location: LCCOMB_X18_Y12_N24
\this_write_out_mram_manager|address_counter[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[4]~26_combout\ = (\this_write_out_mram_manager|address_counter\(4) & (\this_write_out_mram_manager|address_counter[3]~25\ $ (GND))) # (!\this_write_out_mram_manager|address_counter\(4) & 
-- (!\this_write_out_mram_manager|address_counter[3]~25\ & VCC))
-- \this_write_out_mram_manager|address_counter[4]~27\ = CARRY((\this_write_out_mram_manager|address_counter\(4) & !\this_write_out_mram_manager|address_counter[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(4),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[3]~25\,
	combout => \this_write_out_mram_manager|address_counter[4]~26_combout\,
	cout => \this_write_out_mram_manager|address_counter[4]~27\);

-- Location: LCCOMB_X18_Y12_N26
\this_write_out_mram_manager|address_counter[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[5]~28_combout\ = (\this_write_out_mram_manager|address_counter\(5) & (!\this_write_out_mram_manager|address_counter[4]~27\)) # (!\this_write_out_mram_manager|address_counter\(5) & 
-- ((\this_write_out_mram_manager|address_counter[4]~27\) # (GND)))
-- \this_write_out_mram_manager|address_counter[5]~29\ = CARRY((!\this_write_out_mram_manager|address_counter[4]~27\) # (!\this_write_out_mram_manager|address_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(5),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[4]~27\,
	combout => \this_write_out_mram_manager|address_counter[5]~28_combout\,
	cout => \this_write_out_mram_manager|address_counter[5]~29\);

-- Location: LCFF_X18_Y12_N27
\this_write_out_mram_manager|address_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[5]~28_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(5));

-- Location: LCCOMB_X18_Y12_N28
\this_write_out_mram_manager|address_counter[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[6]~30_combout\ = (\this_write_out_mram_manager|address_counter\(6) & (\this_write_out_mram_manager|address_counter[5]~29\ $ (GND))) # (!\this_write_out_mram_manager|address_counter\(6) & 
-- (!\this_write_out_mram_manager|address_counter[5]~29\ & VCC))
-- \this_write_out_mram_manager|address_counter[6]~31\ = CARRY((\this_write_out_mram_manager|address_counter\(6) & !\this_write_out_mram_manager|address_counter[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(6),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[5]~29\,
	combout => \this_write_out_mram_manager|address_counter[6]~30_combout\,
	cout => \this_write_out_mram_manager|address_counter[6]~31\);

-- Location: LCFF_X18_Y12_N29
\this_write_out_mram_manager|address_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[6]~30_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(6));

-- Location: LCCOMB_X18_Y12_N30
\this_write_out_mram_manager|address_counter[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[7]~32_combout\ = (\this_write_out_mram_manager|address_counter\(7) & (!\this_write_out_mram_manager|address_counter[6]~31\)) # (!\this_write_out_mram_manager|address_counter\(7) & 
-- ((\this_write_out_mram_manager|address_counter[6]~31\) # (GND)))
-- \this_write_out_mram_manager|address_counter[7]~33\ = CARRY((!\this_write_out_mram_manager|address_counter[6]~31\) # (!\this_write_out_mram_manager|address_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(7),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[6]~31\,
	combout => \this_write_out_mram_manager|address_counter[7]~32_combout\,
	cout => \this_write_out_mram_manager|address_counter[7]~33\);

-- Location: LCFF_X18_Y12_N31
\this_write_out_mram_manager|address_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[7]~32_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(7));

-- Location: LCCOMB_X18_Y11_N0
\this_write_out_mram_manager|address_counter[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[8]~34_combout\ = (\this_write_out_mram_manager|address_counter\(8) & (\this_write_out_mram_manager|address_counter[7]~33\ $ (GND))) # (!\this_write_out_mram_manager|address_counter\(8) & 
-- (!\this_write_out_mram_manager|address_counter[7]~33\ & VCC))
-- \this_write_out_mram_manager|address_counter[8]~35\ = CARRY((\this_write_out_mram_manager|address_counter\(8) & !\this_write_out_mram_manager|address_counter[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(8),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[7]~33\,
	combout => \this_write_out_mram_manager|address_counter[8]~34_combout\,
	cout => \this_write_out_mram_manager|address_counter[8]~35\);

-- Location: LCFF_X18_Y11_N1
\this_write_out_mram_manager|address_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[8]~34_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(8));

-- Location: LCCOMB_X18_Y11_N2
\this_write_out_mram_manager|address_counter[9]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[9]~36_combout\ = (\this_write_out_mram_manager|address_counter\(9) & (!\this_write_out_mram_manager|address_counter[8]~35\)) # (!\this_write_out_mram_manager|address_counter\(9) & 
-- ((\this_write_out_mram_manager|address_counter[8]~35\) # (GND)))
-- \this_write_out_mram_manager|address_counter[9]~37\ = CARRY((!\this_write_out_mram_manager|address_counter[8]~35\) # (!\this_write_out_mram_manager|address_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(9),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[8]~35\,
	combout => \this_write_out_mram_manager|address_counter[9]~36_combout\,
	cout => \this_write_out_mram_manager|address_counter[9]~37\);

-- Location: LCFF_X18_Y11_N3
\this_write_out_mram_manager|address_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[9]~36_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(9));

-- Location: LCCOMB_X18_Y11_N4
\this_write_out_mram_manager|address_counter[10]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[10]~38_combout\ = (\this_write_out_mram_manager|address_counter\(10) & (\this_write_out_mram_manager|address_counter[9]~37\ $ (GND))) # (!\this_write_out_mram_manager|address_counter\(10) & 
-- (!\this_write_out_mram_manager|address_counter[9]~37\ & VCC))
-- \this_write_out_mram_manager|address_counter[10]~39\ = CARRY((\this_write_out_mram_manager|address_counter\(10) & !\this_write_out_mram_manager|address_counter[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(10),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[9]~37\,
	combout => \this_write_out_mram_manager|address_counter[10]~38_combout\,
	cout => \this_write_out_mram_manager|address_counter[10]~39\);

-- Location: LCFF_X18_Y11_N5
\this_write_out_mram_manager|address_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[10]~38_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(10));

-- Location: LCCOMB_X18_Y11_N6
\this_write_out_mram_manager|address_counter[11]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[11]~40_combout\ = (\this_write_out_mram_manager|address_counter\(11) & (!\this_write_out_mram_manager|address_counter[10]~39\)) # (!\this_write_out_mram_manager|address_counter\(11) & 
-- ((\this_write_out_mram_manager|address_counter[10]~39\) # (GND)))
-- \this_write_out_mram_manager|address_counter[11]~41\ = CARRY((!\this_write_out_mram_manager|address_counter[10]~39\) # (!\this_write_out_mram_manager|address_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(11),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[10]~39\,
	combout => \this_write_out_mram_manager|address_counter[11]~40_combout\,
	cout => \this_write_out_mram_manager|address_counter[11]~41\);

-- Location: LCCOMB_X18_Y11_N8
\this_write_out_mram_manager|address_counter[12]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[12]~42_combout\ = (\this_write_out_mram_manager|address_counter\(12) & (\this_write_out_mram_manager|address_counter[11]~41\ $ (GND))) # (!\this_write_out_mram_manager|address_counter\(12) & 
-- (!\this_write_out_mram_manager|address_counter[11]~41\ & VCC))
-- \this_write_out_mram_manager|address_counter[12]~43\ = CARRY((\this_write_out_mram_manager|address_counter\(12) & !\this_write_out_mram_manager|address_counter[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(12),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[11]~41\,
	combout => \this_write_out_mram_manager|address_counter[12]~42_combout\,
	cout => \this_write_out_mram_manager|address_counter[12]~43\);

-- Location: LCFF_X18_Y11_N9
\this_write_out_mram_manager|address_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[12]~42_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(12));

-- Location: LCCOMB_X18_Y11_N10
\this_write_out_mram_manager|address_counter[13]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[13]~44_combout\ = (\this_write_out_mram_manager|address_counter\(13) & (!\this_write_out_mram_manager|address_counter[12]~43\)) # (!\this_write_out_mram_manager|address_counter\(13) & 
-- ((\this_write_out_mram_manager|address_counter[12]~43\) # (GND)))
-- \this_write_out_mram_manager|address_counter[13]~45\ = CARRY((!\this_write_out_mram_manager|address_counter[12]~43\) # (!\this_write_out_mram_manager|address_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(13),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[12]~43\,
	combout => \this_write_out_mram_manager|address_counter[13]~44_combout\,
	cout => \this_write_out_mram_manager|address_counter[13]~45\);

-- Location: LCCOMB_X18_Y11_N12
\this_write_out_mram_manager|address_counter[14]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[14]~46_combout\ = (\this_write_out_mram_manager|address_counter\(14) & (\this_write_out_mram_manager|address_counter[13]~45\ $ (GND))) # (!\this_write_out_mram_manager|address_counter\(14) & 
-- (!\this_write_out_mram_manager|address_counter[13]~45\ & VCC))
-- \this_write_out_mram_manager|address_counter[14]~47\ = CARRY((\this_write_out_mram_manager|address_counter\(14) & !\this_write_out_mram_manager|address_counter[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(14),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[13]~45\,
	combout => \this_write_out_mram_manager|address_counter[14]~46_combout\,
	cout => \this_write_out_mram_manager|address_counter[14]~47\);

-- Location: LCCOMB_X18_Y11_N14
\this_write_out_mram_manager|address_counter[15]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[15]~48_combout\ = (\this_write_out_mram_manager|address_counter\(15) & (!\this_write_out_mram_manager|address_counter[14]~47\)) # (!\this_write_out_mram_manager|address_counter\(15) & 
-- ((\this_write_out_mram_manager|address_counter[14]~47\) # (GND)))
-- \this_write_out_mram_manager|address_counter[15]~49\ = CARRY((!\this_write_out_mram_manager|address_counter[14]~47\) # (!\this_write_out_mram_manager|address_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(15),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[14]~47\,
	combout => \this_write_out_mram_manager|address_counter[15]~48_combout\,
	cout => \this_write_out_mram_manager|address_counter[15]~49\);

-- Location: LCFF_X18_Y11_N15
\this_write_out_mram_manager|address_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[15]~48_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(15));

-- Location: LCFF_X18_Y11_N13
\this_write_out_mram_manager|address_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[14]~46_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(14));

-- Location: LCCOMB_X18_Y11_N28
\this_write_out_mram_manager|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|Equal0~4_combout\ = (!\this_write_out_mram_manager|address_counter\(13) & (\this_write_out_mram_manager|address_counter\(15) & (!\this_write_out_mram_manager|address_counter\(12) & 
-- !\this_write_out_mram_manager|address_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(13),
	datab => \this_write_out_mram_manager|address_counter\(15),
	datac => \this_write_out_mram_manager|address_counter\(12),
	datad => \this_write_out_mram_manager|address_counter\(14),
	combout => \this_write_out_mram_manager|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y11_N20
\this_write_out_mram_manager|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|Equal0~3_combout\ = (!\this_write_out_mram_manager|address_counter\(11) & (!\this_write_out_mram_manager|address_counter\(8) & (\this_write_out_mram_manager|address_counter\(10) & 
-- \this_write_out_mram_manager|address_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(11),
	datab => \this_write_out_mram_manager|address_counter\(8),
	datac => \this_write_out_mram_manager|address_counter\(10),
	datad => \this_write_out_mram_manager|address_counter\(9),
	combout => \this_write_out_mram_manager|Equal0~3_combout\);

-- Location: LCFF_X18_Y12_N25
\this_write_out_mram_manager|address_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[4]~26_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(4));

-- Location: LCCOMB_X18_Y12_N4
\this_write_out_mram_manager|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|Equal0~1_combout\ = (\this_write_out_mram_manager|address_counter\(4) & !\this_write_out_mram_manager|address_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_write_out_mram_manager|address_counter\(4),
	datad => \this_write_out_mram_manager|address_counter\(5),
	combout => \this_write_out_mram_manager|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y12_N14
\this_write_out_mram_manager|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|Equal0~2_combout\ = (\this_write_out_mram_manager|Equal0~0_combout\ & (!\this_write_out_mram_manager|address_counter\(6) & (\this_write_out_mram_manager|Equal0~1_combout\ & \this_write_out_mram_manager|address_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|Equal0~0_combout\,
	datab => \this_write_out_mram_manager|address_counter\(6),
	datac => \this_write_out_mram_manager|Equal0~1_combout\,
	datad => \this_write_out_mram_manager|address_counter\(7),
	combout => \this_write_out_mram_manager|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y11_N22
\this_write_out_mram_manager|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|Equal0~5_combout\ = (\this_write_out_mram_manager|address_counter\(16) & (\this_write_out_mram_manager|Equal0~4_combout\ & (\this_write_out_mram_manager|Equal0~3_combout\ & \this_write_out_mram_manager|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(16),
	datab => \this_write_out_mram_manager|Equal0~4_combout\,
	datac => \this_write_out_mram_manager|Equal0~3_combout\,
	datad => \this_write_out_mram_manager|Equal0~2_combout\,
	combout => \this_write_out_mram_manager|Equal0~5_combout\);

-- Location: LCCOMB_X18_Y6_N18
\this_state_manager|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector12~0_combout\ = (\this_state_manager|curr_state.write_out_mram~regout\ & \this_write_out_mram_manager|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|curr_state.write_out_mram~regout\,
	datad => \this_write_out_mram_manager|Equal0~5_combout\,
	combout => \this_state_manager|Selector12~0_combout\);

-- Location: LCCOMB_X18_Y6_N16
\this_state_manager|Selector12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector12~2_combout\ = (\this_state_manager|Selector12~1_combout\) # ((\this_state_manager|Selector12~0_combout\) # ((\this_state_manager|curr_state.read_adc~regout\ & !\this_state_manager|process_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|Selector12~1_combout\,
	datab => \this_state_manager|Selector12~0_combout\,
	datac => \this_state_manager|curr_state.read_adc~regout\,
	datad => \this_state_manager|process_1~10_combout\,
	combout => \this_state_manager|Selector12~2_combout\);

-- Location: LCFF_X18_Y6_N17
\this_state_manager|curr_state.read_adc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|curr_state.read_adc~regout\);

-- Location: LCCOMB_X19_Y7_N4
\Corr_Main_1|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Equal5~0_combout\ = (\Corr_Main_1|Equal0~9_combout\ & (\Corr_Main_1|Equal0~4_combout\ & (\Corr_Main_1|cnt\(1) & \Corr_Main_1|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Equal0~9_combout\,
	datab => \Corr_Main_1|Equal0~4_combout\,
	datac => \Corr_Main_1|cnt\(1),
	datad => \Corr_Main_1|cnt\(0),
	combout => \Corr_Main_1|Equal5~0_combout\);

-- Location: LCCOMB_X18_Y7_N0
\Corr_Main_1|address_counter~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter~19_combout\ = ((!\this_read_adc_manager|ADC_BIT_VALID~regout\ & \Corr_Main_1|Equal5~0_combout\)) # (!\this_state_manager|curr_state.read_adc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|ADC_BIT_VALID~regout\,
	datac => \this_state_manager|curr_state.read_adc~regout\,
	datad => \Corr_Main_1|Equal5~0_combout\,
	combout => \Corr_Main_1|address_counter~19_combout\);

-- Location: LCFF_X17_Y12_N19
\Corr_Main_1|address_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[1]~20_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(1));

-- Location: LCCOMB_X17_Y12_N20
\Corr_Main_1|address_counter[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[2]~22_combout\ = (\Corr_Main_1|address_counter\(2) & (\Corr_Main_1|address_counter[1]~21\ $ (GND))) # (!\Corr_Main_1|address_counter\(2) & (!\Corr_Main_1|address_counter[1]~21\ & VCC))
-- \Corr_Main_1|address_counter[2]~23\ = CARRY((\Corr_Main_1|address_counter\(2) & !\Corr_Main_1|address_counter[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(2),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[1]~21\,
	combout => \Corr_Main_1|address_counter[2]~22_combout\,
	cout => \Corr_Main_1|address_counter[2]~23\);

-- Location: LCCOMB_X17_Y12_N22
\Corr_Main_1|address_counter[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[3]~24_combout\ = (\Corr_Main_1|address_counter\(3) & (!\Corr_Main_1|address_counter[2]~23\)) # (!\Corr_Main_1|address_counter\(3) & ((\Corr_Main_1|address_counter[2]~23\) # (GND)))
-- \Corr_Main_1|address_counter[3]~25\ = CARRY((!\Corr_Main_1|address_counter[2]~23\) # (!\Corr_Main_1|address_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(3),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[2]~23\,
	combout => \Corr_Main_1|address_counter[3]~24_combout\,
	cout => \Corr_Main_1|address_counter[3]~25\);

-- Location: LCFF_X17_Y12_N23
\Corr_Main_1|address_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[3]~24_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(3));

-- Location: LCCOMB_X17_Y12_N24
\Corr_Main_1|address_counter[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[4]~26_combout\ = (\Corr_Main_1|address_counter\(4) & (\Corr_Main_1|address_counter[3]~25\ $ (GND))) # (!\Corr_Main_1|address_counter\(4) & (!\Corr_Main_1|address_counter[3]~25\ & VCC))
-- \Corr_Main_1|address_counter[4]~27\ = CARRY((\Corr_Main_1|address_counter\(4) & !\Corr_Main_1|address_counter[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(4),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[3]~25\,
	combout => \Corr_Main_1|address_counter[4]~26_combout\,
	cout => \Corr_Main_1|address_counter[4]~27\);

-- Location: LCCOMB_X17_Y12_N26
\Corr_Main_1|address_counter[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[5]~28_combout\ = (\Corr_Main_1|address_counter\(5) & (!\Corr_Main_1|address_counter[4]~27\)) # (!\Corr_Main_1|address_counter\(5) & ((\Corr_Main_1|address_counter[4]~27\) # (GND)))
-- \Corr_Main_1|address_counter[5]~29\ = CARRY((!\Corr_Main_1|address_counter[4]~27\) # (!\Corr_Main_1|address_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(5),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[4]~27\,
	combout => \Corr_Main_1|address_counter[5]~28_combout\,
	cout => \Corr_Main_1|address_counter[5]~29\);

-- Location: LCFF_X17_Y12_N27
\Corr_Main_1|address_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[5]~28_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(5));

-- Location: LCCOMB_X17_Y12_N28
\Corr_Main_1|address_counter[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[6]~30_combout\ = (\Corr_Main_1|address_counter\(6) & (\Corr_Main_1|address_counter[5]~29\ $ (GND))) # (!\Corr_Main_1|address_counter\(6) & (!\Corr_Main_1|address_counter[5]~29\ & VCC))
-- \Corr_Main_1|address_counter[6]~31\ = CARRY((\Corr_Main_1|address_counter\(6) & !\Corr_Main_1|address_counter[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(6),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[5]~29\,
	combout => \Corr_Main_1|address_counter[6]~30_combout\,
	cout => \Corr_Main_1|address_counter[6]~31\);

-- Location: LCFF_X17_Y12_N29
\Corr_Main_1|address_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[6]~30_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(6));

-- Location: LCFF_X17_Y12_N25
\Corr_Main_1|address_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[4]~26_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(4));

-- Location: LCCOMB_X17_Y12_N14
\this_state_manager|process_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|process_1~1_combout\ = (\Corr_Main_1|address_counter\(7) & (!\Corr_Main_1|address_counter\(6) & (!\Corr_Main_1|address_counter\(4) & \Corr_Main_1|address_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(7),
	datab => \Corr_Main_1|address_counter\(6),
	datac => \Corr_Main_1|address_counter\(4),
	datad => \Corr_Main_1|address_counter\(5),
	combout => \this_state_manager|process_1~1_combout\);

-- Location: LCCOMB_X17_Y12_N30
\Corr_Main_1|address_counter[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[7]~32_combout\ = (\Corr_Main_1|address_counter\(7) & (!\Corr_Main_1|address_counter[6]~31\)) # (!\Corr_Main_1|address_counter\(7) & ((\Corr_Main_1|address_counter[6]~31\) # (GND)))
-- \Corr_Main_1|address_counter[7]~33\ = CARRY((!\Corr_Main_1|address_counter[6]~31\) # (!\Corr_Main_1|address_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(7),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[6]~31\,
	combout => \Corr_Main_1|address_counter[7]~32_combout\,
	cout => \Corr_Main_1|address_counter[7]~33\);

-- Location: LCFF_X17_Y12_N31
\Corr_Main_1|address_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[7]~32_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(7));

-- Location: LCCOMB_X17_Y11_N0
\Corr_Main_1|address_counter[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[8]~34_combout\ = (\Corr_Main_1|address_counter\(8) & (\Corr_Main_1|address_counter[7]~33\ $ (GND))) # (!\Corr_Main_1|address_counter\(8) & (!\Corr_Main_1|address_counter[7]~33\ & VCC))
-- \Corr_Main_1|address_counter[8]~35\ = CARRY((\Corr_Main_1|address_counter\(8) & !\Corr_Main_1|address_counter[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(8),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[7]~33\,
	combout => \Corr_Main_1|address_counter[8]~34_combout\,
	cout => \Corr_Main_1|address_counter[8]~35\);

-- Location: LCFF_X17_Y11_N1
\Corr_Main_1|address_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[8]~34_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(8));

-- Location: LCCOMB_X17_Y11_N2
\Corr_Main_1|address_counter[9]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[9]~36_combout\ = (\Corr_Main_1|address_counter\(9) & (!\Corr_Main_1|address_counter[8]~35\)) # (!\Corr_Main_1|address_counter\(9) & ((\Corr_Main_1|address_counter[8]~35\) # (GND)))
-- \Corr_Main_1|address_counter[9]~37\ = CARRY((!\Corr_Main_1|address_counter[8]~35\) # (!\Corr_Main_1|address_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(9),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[8]~35\,
	combout => \Corr_Main_1|address_counter[9]~36_combout\,
	cout => \Corr_Main_1|address_counter[9]~37\);

-- Location: LCFF_X17_Y11_N3
\Corr_Main_1|address_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[9]~36_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(9));

-- Location: LCCOMB_X17_Y11_N4
\Corr_Main_1|address_counter[10]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[10]~38_combout\ = (\Corr_Main_1|address_counter\(10) & (\Corr_Main_1|address_counter[9]~37\ $ (GND))) # (!\Corr_Main_1|address_counter\(10) & (!\Corr_Main_1|address_counter[9]~37\ & VCC))
-- \Corr_Main_1|address_counter[10]~39\ = CARRY((\Corr_Main_1|address_counter\(10) & !\Corr_Main_1|address_counter[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(10),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[9]~37\,
	combout => \Corr_Main_1|address_counter[10]~38_combout\,
	cout => \Corr_Main_1|address_counter[10]~39\);

-- Location: LCFF_X17_Y11_N5
\Corr_Main_1|address_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[10]~38_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(10));

-- Location: LCCOMB_X17_Y11_N6
\Corr_Main_1|address_counter[11]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[11]~40_combout\ = (\Corr_Main_1|address_counter\(11) & (!\Corr_Main_1|address_counter[10]~39\)) # (!\Corr_Main_1|address_counter\(11) & ((\Corr_Main_1|address_counter[10]~39\) # (GND)))
-- \Corr_Main_1|address_counter[11]~41\ = CARRY((!\Corr_Main_1|address_counter[10]~39\) # (!\Corr_Main_1|address_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(11),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[10]~39\,
	combout => \Corr_Main_1|address_counter[11]~40_combout\,
	cout => \Corr_Main_1|address_counter[11]~41\);

-- Location: LCCOMB_X17_Y11_N8
\Corr_Main_1|address_counter[12]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[12]~42_combout\ = (\Corr_Main_1|address_counter\(12) & (\Corr_Main_1|address_counter[11]~41\ $ (GND))) # (!\Corr_Main_1|address_counter\(12) & (!\Corr_Main_1|address_counter[11]~41\ & VCC))
-- \Corr_Main_1|address_counter[12]~43\ = CARRY((\Corr_Main_1|address_counter\(12) & !\Corr_Main_1|address_counter[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(12),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[11]~41\,
	combout => \Corr_Main_1|address_counter[12]~42_combout\,
	cout => \Corr_Main_1|address_counter[12]~43\);

-- Location: LCFF_X17_Y11_N9
\Corr_Main_1|address_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[12]~42_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(12));

-- Location: LCCOMB_X17_Y11_N10
\Corr_Main_1|address_counter[13]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[13]~44_combout\ = (\Corr_Main_1|address_counter\(13) & (!\Corr_Main_1|address_counter[12]~43\)) # (!\Corr_Main_1|address_counter\(13) & ((\Corr_Main_1|address_counter[12]~43\) # (GND)))
-- \Corr_Main_1|address_counter[13]~45\ = CARRY((!\Corr_Main_1|address_counter[12]~43\) # (!\Corr_Main_1|address_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(13),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[12]~43\,
	combout => \Corr_Main_1|address_counter[13]~44_combout\,
	cout => \Corr_Main_1|address_counter[13]~45\);

-- Location: LCCOMB_X17_Y11_N12
\Corr_Main_1|address_counter[14]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[14]~46_combout\ = (\Corr_Main_1|address_counter\(14) & (\Corr_Main_1|address_counter[13]~45\ $ (GND))) # (!\Corr_Main_1|address_counter\(14) & (!\Corr_Main_1|address_counter[13]~45\ & VCC))
-- \Corr_Main_1|address_counter[14]~47\ = CARRY((\Corr_Main_1|address_counter\(14) & !\Corr_Main_1|address_counter[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(14),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[13]~45\,
	combout => \Corr_Main_1|address_counter[14]~46_combout\,
	cout => \Corr_Main_1|address_counter[14]~47\);

-- Location: LCCOMB_X17_Y11_N14
\Corr_Main_1|address_counter[15]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[15]~48_combout\ = (\Corr_Main_1|address_counter\(15) & (!\Corr_Main_1|address_counter[14]~47\)) # (!\Corr_Main_1|address_counter\(15) & ((\Corr_Main_1|address_counter[14]~47\) # (GND)))
-- \Corr_Main_1|address_counter[15]~49\ = CARRY((!\Corr_Main_1|address_counter[14]~47\) # (!\Corr_Main_1|address_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(15),
	datad => VCC,
	cin => \Corr_Main_1|address_counter[14]~47\,
	combout => \Corr_Main_1|address_counter[15]~48_combout\,
	cout => \Corr_Main_1|address_counter[15]~49\);

-- Location: LCFF_X17_Y11_N15
\Corr_Main_1|address_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[15]~48_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(15));

-- Location: LCFF_X17_Y11_N13
\Corr_Main_1|address_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[14]~46_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(14));

-- Location: LCCOMB_X17_Y11_N22
\this_state_manager|process_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|process_1~3_combout\ = (!\Corr_Main_1|address_counter\(13) & (!\Corr_Main_1|address_counter\(12) & (\Corr_Main_1|address_counter\(15) & !\Corr_Main_1|address_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(13),
	datab => \Corr_Main_1|address_counter\(12),
	datac => \Corr_Main_1|address_counter\(15),
	datad => \Corr_Main_1|address_counter\(14),
	combout => \this_state_manager|process_1~3_combout\);

-- Location: LCFF_X17_Y12_N17
\Corr_Main_1|address_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[0]~17_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(0));

-- Location: LCCOMB_X17_Y12_N0
\this_state_manager|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|process_1~0_combout\ = (!\Corr_Main_1|address_counter\(2) & (!\Corr_Main_1|address_counter\(3) & (!\Corr_Main_1|address_counter\(0) & !\Corr_Main_1|address_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(2),
	datab => \Corr_Main_1|address_counter\(3),
	datac => \Corr_Main_1|address_counter\(0),
	datad => \Corr_Main_1|address_counter\(1),
	combout => \this_state_manager|process_1~0_combout\);

-- Location: LCCOMB_X17_Y12_N10
\this_state_manager|process_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|process_1~4_combout\ = (\this_state_manager|process_1~2_combout\ & (\this_state_manager|process_1~1_combout\ & (\this_state_manager|process_1~3_combout\ & \this_state_manager|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|process_1~2_combout\,
	datab => \this_state_manager|process_1~1_combout\,
	datac => \this_state_manager|process_1~3_combout\,
	datad => \this_state_manager|process_1~0_combout\,
	combout => \this_state_manager|process_1~4_combout\);

-- Location: LCCOMB_X27_Y8_N16
\this_read_adc_manager|address_counter[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[0]~17_combout\ = \this_read_adc_manager|address_counter\(0) $ (VCC)
-- \this_read_adc_manager|address_counter[0]~18\ = CARRY(\this_read_adc_manager|address_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(0),
	datad => VCC,
	combout => \this_read_adc_manager|address_counter[0]~17_combout\,
	cout => \this_read_adc_manager|address_counter[0]~18\);

-- Location: LCCOMB_X27_Y8_N18
\this_read_adc_manager|address_counter[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[1]~19_combout\ = (\this_read_adc_manager|address_counter\(1) & (!\this_read_adc_manager|address_counter[0]~18\)) # (!\this_read_adc_manager|address_counter\(1) & ((\this_read_adc_manager|address_counter[0]~18\) # 
-- (GND)))
-- \this_read_adc_manager|address_counter[1]~20\ = CARRY((!\this_read_adc_manager|address_counter[0]~18\) # (!\this_read_adc_manager|address_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(1),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[0]~18\,
	combout => \this_read_adc_manager|address_counter[1]~19_combout\,
	cout => \this_read_adc_manager|address_counter[1]~20\);

-- Location: LCCOMB_X26_Y6_N24
\this_read_adc_manager|address_counter~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter~49_combout\ = (!\this_read_adc_manager|last_state~regout\ & !\this_mram_controller|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_read_adc_manager|last_state~regout\,
	datad => \this_mram_controller|curr_state.idle~regout\,
	combout => \this_read_adc_manager|address_counter~49_combout\);

-- Location: LCCOMB_X27_Y8_N4
\this_read_adc_manager|address_counter~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter~50_combout\ = ((\this_read_adc_manager|Equal1~0_combout\ & (\this_read_adc_manager|address_counter~49_combout\ & \ADC_DCLKA~combout\))) # (!\this_state_manager|curr_state.read_adc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|Equal1~0_combout\,
	datab => \this_read_adc_manager|address_counter~49_combout\,
	datac => \this_state_manager|curr_state.read_adc~regout\,
	datad => \ADC_DCLKA~combout\,
	combout => \this_read_adc_manager|address_counter~50_combout\);

-- Location: LCFF_X27_Y8_N19
\this_read_adc_manager|address_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[1]~19_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(1));

-- Location: LCCOMB_X27_Y8_N22
\this_read_adc_manager|address_counter[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[3]~23_combout\ = (\this_read_adc_manager|address_counter\(3) & (!\this_read_adc_manager|address_counter[2]~22\)) # (!\this_read_adc_manager|address_counter\(3) & ((\this_read_adc_manager|address_counter[2]~22\) # 
-- (GND)))
-- \this_read_adc_manager|address_counter[3]~24\ = CARRY((!\this_read_adc_manager|address_counter[2]~22\) # (!\this_read_adc_manager|address_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(3),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[2]~22\,
	combout => \this_read_adc_manager|address_counter[3]~23_combout\,
	cout => \this_read_adc_manager|address_counter[3]~24\);

-- Location: LCFF_X27_Y8_N23
\this_read_adc_manager|address_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[3]~23_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(3));

-- Location: LCCOMB_X27_Y8_N24
\this_read_adc_manager|address_counter[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[4]~25_combout\ = (\this_read_adc_manager|address_counter\(4) & (\this_read_adc_manager|address_counter[3]~24\ $ (GND))) # (!\this_read_adc_manager|address_counter\(4) & (!\this_read_adc_manager|address_counter[3]~24\ 
-- & VCC))
-- \this_read_adc_manager|address_counter[4]~26\ = CARRY((\this_read_adc_manager|address_counter\(4) & !\this_read_adc_manager|address_counter[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(4),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[3]~24\,
	combout => \this_read_adc_manager|address_counter[4]~25_combout\,
	cout => \this_read_adc_manager|address_counter[4]~26\);

-- Location: LCCOMB_X27_Y8_N26
\this_read_adc_manager|address_counter[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[5]~27_combout\ = (\this_read_adc_manager|address_counter\(5) & (!\this_read_adc_manager|address_counter[4]~26\)) # (!\this_read_adc_manager|address_counter\(5) & ((\this_read_adc_manager|address_counter[4]~26\) # 
-- (GND)))
-- \this_read_adc_manager|address_counter[5]~28\ = CARRY((!\this_read_adc_manager|address_counter[4]~26\) # (!\this_read_adc_manager|address_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(5),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[4]~26\,
	combout => \this_read_adc_manager|address_counter[5]~27_combout\,
	cout => \this_read_adc_manager|address_counter[5]~28\);

-- Location: LCFF_X27_Y8_N27
\this_read_adc_manager|address_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[5]~27_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(5));

-- Location: LCCOMB_X27_Y8_N28
\this_read_adc_manager|address_counter[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[6]~29_combout\ = (\this_read_adc_manager|address_counter\(6) & (\this_read_adc_manager|address_counter[5]~28\ $ (GND))) # (!\this_read_adc_manager|address_counter\(6) & (!\this_read_adc_manager|address_counter[5]~28\ 
-- & VCC))
-- \this_read_adc_manager|address_counter[6]~30\ = CARRY((\this_read_adc_manager|address_counter\(6) & !\this_read_adc_manager|address_counter[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(6),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[5]~28\,
	combout => \this_read_adc_manager|address_counter[6]~29_combout\,
	cout => \this_read_adc_manager|address_counter[6]~30\);

-- Location: LCFF_X27_Y8_N29
\this_read_adc_manager|address_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[6]~29_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(6));

-- Location: LCCOMB_X27_Y8_N30
\this_read_adc_manager|address_counter[7]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[7]~31_combout\ = (\this_read_adc_manager|address_counter\(7) & (!\this_read_adc_manager|address_counter[6]~30\)) # (!\this_read_adc_manager|address_counter\(7) & ((\this_read_adc_manager|address_counter[6]~30\) # 
-- (GND)))
-- \this_read_adc_manager|address_counter[7]~32\ = CARRY((!\this_read_adc_manager|address_counter[6]~30\) # (!\this_read_adc_manager|address_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(7),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[6]~30\,
	combout => \this_read_adc_manager|address_counter[7]~31_combout\,
	cout => \this_read_adc_manager|address_counter[7]~32\);

-- Location: LCFF_X27_Y8_N31
\this_read_adc_manager|address_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[7]~31_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(7));

-- Location: LCCOMB_X27_Y7_N0
\this_read_adc_manager|address_counter[8]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[8]~33_combout\ = (\this_read_adc_manager|address_counter\(8) & (\this_read_adc_manager|address_counter[7]~32\ $ (GND))) # (!\this_read_adc_manager|address_counter\(8) & (!\this_read_adc_manager|address_counter[7]~32\ 
-- & VCC))
-- \this_read_adc_manager|address_counter[8]~34\ = CARRY((\this_read_adc_manager|address_counter\(8) & !\this_read_adc_manager|address_counter[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(8),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[7]~32\,
	combout => \this_read_adc_manager|address_counter[8]~33_combout\,
	cout => \this_read_adc_manager|address_counter[8]~34\);

-- Location: LCFF_X27_Y7_N1
\this_read_adc_manager|address_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[8]~33_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(8));

-- Location: LCCOMB_X27_Y7_N2
\this_read_adc_manager|address_counter[9]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[9]~35_combout\ = (\this_read_adc_manager|address_counter\(9) & (!\this_read_adc_manager|address_counter[8]~34\)) # (!\this_read_adc_manager|address_counter\(9) & ((\this_read_adc_manager|address_counter[8]~34\) # 
-- (GND)))
-- \this_read_adc_manager|address_counter[9]~36\ = CARRY((!\this_read_adc_manager|address_counter[8]~34\) # (!\this_read_adc_manager|address_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(9),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[8]~34\,
	combout => \this_read_adc_manager|address_counter[9]~35_combout\,
	cout => \this_read_adc_manager|address_counter[9]~36\);

-- Location: LCFF_X27_Y7_N3
\this_read_adc_manager|address_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[9]~35_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(9));

-- Location: LCCOMB_X27_Y7_N4
\this_read_adc_manager|address_counter[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[10]~37_combout\ = (\this_read_adc_manager|address_counter\(10) & (\this_read_adc_manager|address_counter[9]~36\ $ (GND))) # (!\this_read_adc_manager|address_counter\(10) & 
-- (!\this_read_adc_manager|address_counter[9]~36\ & VCC))
-- \this_read_adc_manager|address_counter[10]~38\ = CARRY((\this_read_adc_manager|address_counter\(10) & !\this_read_adc_manager|address_counter[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(10),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[9]~36\,
	combout => \this_read_adc_manager|address_counter[10]~37_combout\,
	cout => \this_read_adc_manager|address_counter[10]~38\);

-- Location: LCFF_X27_Y7_N5
\this_read_adc_manager|address_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[10]~37_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(10));

-- Location: LCCOMB_X27_Y7_N8
\this_read_adc_manager|address_counter[12]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[12]~41_combout\ = (\this_read_adc_manager|address_counter\(12) & (\this_read_adc_manager|address_counter[11]~40\ $ (GND))) # (!\this_read_adc_manager|address_counter\(12) & 
-- (!\this_read_adc_manager|address_counter[11]~40\ & VCC))
-- \this_read_adc_manager|address_counter[12]~42\ = CARRY((\this_read_adc_manager|address_counter\(12) & !\this_read_adc_manager|address_counter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(12),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[11]~40\,
	combout => \this_read_adc_manager|address_counter[12]~41_combout\,
	cout => \this_read_adc_manager|address_counter[12]~42\);

-- Location: LCFF_X27_Y7_N9
\this_read_adc_manager|address_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[12]~41_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(12));

-- Location: LCFF_X27_Y7_N15
\this_read_adc_manager|address_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[15]~47_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(15));

-- Location: LCCOMB_X27_Y7_N22
\this_state_manager|process_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|process_1~7_combout\ = (\this_read_adc_manager|address_counter\(7) & (\this_read_adc_manager|address_counter\(9) & (\this_read_adc_manager|address_counter\(10) & !\this_read_adc_manager|address_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(7),
	datab => \this_read_adc_manager|address_counter\(9),
	datac => \this_read_adc_manager|address_counter\(10),
	datad => \this_read_adc_manager|address_counter\(8),
	combout => \this_state_manager|process_1~7_combout\);

-- Location: LCFF_X27_Y8_N17
\this_read_adc_manager|address_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[0]~17_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(0));

-- Location: LCCOMB_X17_Y11_N16
\Corr_Main_1|address_counter[16]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter[16]~50_combout\ = \Corr_Main_1|address_counter\(16) $ (!\Corr_Main_1|address_counter[15]~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(16),
	cin => \Corr_Main_1|address_counter[15]~49\,
	combout => \Corr_Main_1|address_counter[16]~50_combout\);

-- Location: LCFF_X17_Y11_N17
\Corr_Main_1|address_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[16]~50_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(16));

-- Location: LCCOMB_X27_Y8_N12
\this_state_manager|process_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|process_1~5_combout\ = (!\this_read_adc_manager|address_counter\(2) & (!\this_read_adc_manager|address_counter\(1) & (!\this_read_adc_manager|address_counter\(0) & \Corr_Main_1|address_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(2),
	datab => \this_read_adc_manager|address_counter\(1),
	datac => \this_read_adc_manager|address_counter\(0),
	datad => \Corr_Main_1|address_counter\(16),
	combout => \this_state_manager|process_1~5_combout\);

-- Location: LCFF_X27_Y8_N25
\this_read_adc_manager|address_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter[4]~25_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(4));

-- Location: LCCOMB_X27_Y8_N10
\this_state_manager|process_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|process_1~6_combout\ = (!\this_read_adc_manager|address_counter\(3) & (!\this_read_adc_manager|address_counter\(6) & (!\this_read_adc_manager|address_counter\(4) & \this_read_adc_manager|address_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(3),
	datab => \this_read_adc_manager|address_counter\(6),
	datac => \this_read_adc_manager|address_counter\(4),
	datad => \this_read_adc_manager|address_counter\(5),
	combout => \this_state_manager|process_1~6_combout\);

-- Location: LCCOMB_X27_Y7_N26
\this_state_manager|process_1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|process_1~9_combout\ = (\this_state_manager|process_1~8_combout\ & (\this_state_manager|process_1~7_combout\ & (\this_state_manager|process_1~5_combout\ & \this_state_manager|process_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|process_1~8_combout\,
	datab => \this_state_manager|process_1~7_combout\,
	datac => \this_state_manager|process_1~5_combout\,
	datad => \this_state_manager|process_1~6_combout\,
	combout => \this_state_manager|process_1~9_combout\);

-- Location: LCCOMB_X27_Y7_N24
\this_state_manager|process_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|process_1~10_combout\ = (\this_read_adc_manager|address_counter\(16) & (\this_state_manager|process_1~4_combout\ & (\this_read_adc_manager|address_counter\(15) & \this_state_manager|process_1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(16),
	datab => \this_state_manager|process_1~4_combout\,
	datac => \this_read_adc_manager|address_counter\(15),
	datad => \this_state_manager|process_1~9_combout\,
	combout => \this_state_manager|process_1~10_combout\);

-- Location: LCCOMB_X18_Y6_N22
\this_state_manager|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector13~0_combout\ = (\this_state_manager|curr_state.read_adc~regout\ & ((\this_state_manager|process_1~10_combout\) # ((\this_state_manager|curr_state.wait_1~regout\ & !\this_state_manager|Equal1~1_combout\)))) # 
-- (!\this_state_manager|curr_state.read_adc~regout\ & (((\this_state_manager|curr_state.wait_1~regout\ & !\this_state_manager|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|curr_state.read_adc~regout\,
	datab => \this_state_manager|process_1~10_combout\,
	datac => \this_state_manager|curr_state.wait_1~regout\,
	datad => \this_state_manager|Equal1~1_combout\,
	combout => \this_state_manager|Selector13~0_combout\);

-- Location: LCFF_X18_Y6_N23
\this_state_manager|curr_state.wait_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|curr_state.wait_1~regout\);

-- Location: LCCOMB_X18_Y6_N4
\this_state_manager|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector9~0_combout\ = (\this_state_manager|curr_state.wait_1~regout\) # (!\this_state_manager|curr_state.wait_0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|curr_state.wait_1~regout\,
	datad => \this_state_manager|curr_state.wait_0~regout\,
	combout => \this_state_manager|Selector9~0_combout\);

-- Location: LCFF_X18_Y6_N29
\this_state_manager|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector3~0_combout\,
	ena => \this_state_manager|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(6));

-- Location: LCCOMB_X17_Y6_N26
\this_state_manager|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~14_combout\ = (\this_state_manager|counter\(7) & (!\this_state_manager|Add0~13\)) # (!\this_state_manager|counter\(7) & ((\this_state_manager|Add0~13\) # (GND)))
-- \this_state_manager|Add0~15\ = CARRY((!\this_state_manager|Add0~13\) # (!\this_state_manager|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(7),
	datad => VCC,
	cin => \this_state_manager|Add0~13\,
	combout => \this_state_manager|Add0~14_combout\,
	cout => \this_state_manager|Add0~15\);

-- Location: LCCOMB_X18_Y6_N10
\this_state_manager|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector2~0_combout\ = (\this_state_manager|Add0~14_combout\ & !\this_state_manager|Selector11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|Add0~14_combout\,
	datac => \this_state_manager|Selector11~0_combout\,
	combout => \this_state_manager|Selector2~0_combout\);

-- Location: LCFF_X18_Y6_N11
\this_state_manager|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector2~0_combout\,
	ena => \this_state_manager|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(7));

-- Location: LCCOMB_X17_Y6_N28
\this_state_manager|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~16_combout\ = (\this_state_manager|counter\(8) & (\this_state_manager|Add0~15\ $ (GND))) # (!\this_state_manager|counter\(8) & (!\this_state_manager|Add0~15\ & VCC))
-- \this_state_manager|Add0~17\ = CARRY((\this_state_manager|counter\(8) & !\this_state_manager|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(8),
	datad => VCC,
	cin => \this_state_manager|Add0~15\,
	combout => \this_state_manager|Add0~16_combout\,
	cout => \this_state_manager|Add0~17\);

-- Location: LCCOMB_X17_Y6_N8
\this_state_manager|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector1~0_combout\ = (\this_state_manager|Add0~16_combout\ & !\this_state_manager|Selector11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|Add0~16_combout\,
	datad => \this_state_manager|Selector11~0_combout\,
	combout => \this_state_manager|Selector1~0_combout\);

-- Location: LCFF_X17_Y6_N9
\this_state_manager|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector1~0_combout\,
	ena => \this_state_manager|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(8));

-- Location: LCCOMB_X17_Y6_N30
\this_state_manager|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~18_combout\ = \this_state_manager|Add0~17\ $ (\this_state_manager|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \this_state_manager|counter\(9),
	cin => \this_state_manager|Add0~17\,
	combout => \this_state_manager|Add0~18_combout\);

-- Location: LCCOMB_X17_Y6_N10
\this_state_manager|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector0~0_combout\ = (\this_state_manager|Add0~18_combout\ & !\this_state_manager|Selector11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|Add0~18_combout\,
	datad => \this_state_manager|Selector11~0_combout\,
	combout => \this_state_manager|Selector0~0_combout\);

-- Location: LCFF_X17_Y6_N11
\this_state_manager|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector0~0_combout\,
	ena => \this_state_manager|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(9));

-- Location: LCCOMB_X18_Y6_N30
\this_state_manager|curr_state.wait_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|curr_state.wait_0~0_combout\ = (\this_state_manager|curr_state.wait_0~regout\) # ((\this_state_manager|Equal0~2_combout\ & (\this_state_manager|Equal0~1_combout\ & \this_state_manager|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|Equal0~2_combout\,
	datab => \this_state_manager|Equal0~1_combout\,
	datac => \this_state_manager|curr_state.wait_0~regout\,
	datad => \this_state_manager|counter\(9),
	combout => \this_state_manager|curr_state.wait_0~0_combout\);

-- Location: LCFF_X18_Y6_N31
\this_state_manager|curr_state.wait_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|curr_state.wait_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|curr_state.wait_0~regout\);

-- Location: LCCOMB_X17_Y6_N0
\this_state_manager|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector9~1_combout\ = (\this_state_manager|Add0~0_combout\ & (!\this_state_manager|Selector11~0_combout\ & ((!\this_state_manager|curr_state.wait_0~regout\) # (!\this_state_manager|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|Add0~0_combout\,
	datab => \this_state_manager|Selector11~0_combout\,
	datac => \this_state_manager|Equal1~1_combout\,
	datad => \this_state_manager|curr_state.wait_0~regout\,
	combout => \this_state_manager|Selector9~1_combout\);

-- Location: LCFF_X17_Y6_N1
\this_state_manager|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector9~1_combout\,
	ena => \this_state_manager|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(0));

-- Location: LCCOMB_X17_Y6_N14
\this_state_manager|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~2_combout\ = (\this_state_manager|counter\(1) & (!\this_state_manager|Add0~1\)) # (!\this_state_manager|counter\(1) & ((\this_state_manager|Add0~1\) # (GND)))
-- \this_state_manager|Add0~3\ = CARRY((!\this_state_manager|Add0~1\) # (!\this_state_manager|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(1),
	datad => VCC,
	cin => \this_state_manager|Add0~1\,
	combout => \this_state_manager|Add0~2_combout\,
	cout => \this_state_manager|Add0~3\);

-- Location: LCFF_X17_Y6_N15
\this_state_manager|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~2_combout\,
	ena => \this_state_manager|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(1));

-- Location: LCCOMB_X17_Y6_N16
\this_state_manager|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~4_combout\ = (\this_state_manager|counter\(2) & (\this_state_manager|Add0~3\ $ (GND))) # (!\this_state_manager|counter\(2) & (!\this_state_manager|Add0~3\ & VCC))
-- \this_state_manager|Add0~5\ = CARRY((\this_state_manager|counter\(2) & !\this_state_manager|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(2),
	datad => VCC,
	cin => \this_state_manager|Add0~3\,
	combout => \this_state_manager|Add0~4_combout\,
	cout => \this_state_manager|Add0~5\);

-- Location: LCCOMB_X18_Y6_N26
\this_state_manager|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector6~0_combout\ = (\this_state_manager|Add0~6_combout\ & !\this_state_manager|Selector11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|Add0~6_combout\,
	datac => \this_state_manager|Selector11~0_combout\,
	combout => \this_state_manager|Selector6~0_combout\);

-- Location: LCFF_X18_Y6_N27
\this_state_manager|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector6~0_combout\,
	ena => \this_state_manager|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(3));

-- Location: LCCOMB_X17_Y6_N6
\this_state_manager|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector7~0_combout\ = (\this_state_manager|Add0~4_combout\ & ((!\this_state_manager|curr_state.wait_0~regout\) # (!\this_state_manager|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|Equal1~1_combout\,
	datac => \this_state_manager|Add0~4_combout\,
	datad => \this_state_manager|curr_state.wait_0~regout\,
	combout => \this_state_manager|Selector7~0_combout\);

-- Location: LCFF_X17_Y6_N7
\this_state_manager|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector7~0_combout\,
	ena => \this_state_manager|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(2));

-- Location: LCCOMB_X18_Y6_N2
\this_state_manager|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal1~0_combout\ = (!\this_state_manager|counter\(8) & (!\this_state_manager|counter\(3) & (\this_state_manager|counter\(2) & !\this_state_manager|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(8),
	datab => \this_state_manager|counter\(3),
	datac => \this_state_manager|counter\(2),
	datad => \this_state_manager|counter\(7),
	combout => \this_state_manager|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y6_N12
\this_state_manager|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal1~1_combout\ = (!\this_state_manager|counter\(9) & (\this_state_manager|Equal1~0_combout\ & (\this_state_manager|Equal0~0_combout\ & \this_state_manager|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(9),
	datab => \this_state_manager|Equal1~0_combout\,
	datac => \this_state_manager|Equal0~0_combout\,
	datad => \this_state_manager|counter\(6),
	combout => \this_state_manager|Equal1~1_combout\);

-- Location: LCCOMB_X17_Y6_N2
\this_state_manager|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector4~0_combout\ = (\this_state_manager|Add0~10_combout\ & (!\this_state_manager|Selector11~0_combout\ & ((!\this_state_manager|curr_state.wait_0~regout\) # (!\this_state_manager|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|Add0~10_combout\,
	datab => \this_state_manager|Selector11~0_combout\,
	datac => \this_state_manager|Equal1~1_combout\,
	datad => \this_state_manager|curr_state.wait_0~regout\,
	combout => \this_state_manager|Selector4~0_combout\);

-- Location: LCFF_X17_Y6_N3
\this_state_manager|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector4~0_combout\,
	ena => \this_state_manager|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(5));

-- Location: LCCOMB_X17_Y6_N4
\this_state_manager|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal0~0_combout\ = (!\this_state_manager|counter\(4) & (\this_state_manager|counter\(5) & (!\this_state_manager|counter\(1) & !\this_state_manager|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(4),
	datab => \this_state_manager|counter\(5),
	datac => \this_state_manager|counter\(1),
	datad => \this_state_manager|counter\(0),
	combout => \this_state_manager|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y6_N8
\this_state_manager|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal0~1_combout\ = (\this_state_manager|Equal0~0_combout\ & \this_state_manager|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_state_manager|Equal0~0_combout\,
	datad => \this_state_manager|counter\(6),
	combout => \this_state_manager|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y6_N24
\this_state_manager|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal0~2_combout\ = (\this_state_manager|counter\(8) & (\this_state_manager|counter\(3) & (!\this_state_manager|counter\(2) & \this_state_manager|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(8),
	datab => \this_state_manager|counter\(3),
	datac => \this_state_manager|counter\(2),
	datad => \this_state_manager|counter\(7),
	combout => \this_state_manager|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y6_N20
\this_state_manager|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector11~0_combout\ = (\this_state_manager|counter\(9) & (\this_state_manager|Equal0~1_combout\ & (\this_state_manager|Equal0~2_combout\ & !\this_state_manager|curr_state.wait_0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(9),
	datab => \this_state_manager|Equal0~1_combout\,
	datac => \this_state_manager|Equal0~2_combout\,
	datad => \this_state_manager|curr_state.wait_0~regout\,
	combout => \this_state_manager|Selector11~0_combout\);

-- Location: LCCOMB_X5_Y6_N14
\this_state_manager|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector11~1_combout\ = (\this_setup_manager|SPI_send_irq~0_combout\) # (\this_state_manager|Selector11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_setup_manager|SPI_send_irq~0_combout\,
	datad => \this_state_manager|Selector11~0_combout\,
	combout => \this_state_manager|Selector11~1_combout\);

-- Location: LCFF_X5_Y6_N15
\this_state_manager|curr_state.setup\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|curr_state.setup~regout\);

-- Location: LCCOMB_X6_Y6_N22
\this_setup_manager|spi_command_index[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|spi_command_index[0]~1_combout\ = \this_setup_manager|spi_command_index\(0) $ (\this_state_manager|curr_state.setup~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_setup_manager|spi_command_index\(0),
	datad => \this_state_manager|curr_state.setup~regout\,
	combout => \this_setup_manager|spi_command_index[0]~1_combout\);

-- Location: LCFF_X6_Y6_N23
\this_setup_manager|spi_command_index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \adc_spi|ALT_INV_curr_state.idle~clkctrl_outclk\,
	datain => \this_setup_manager|spi_command_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|spi_command_index\(0));

-- Location: LCCOMB_X6_Y6_N30
\this_setup_manager|spi_command_index[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|spi_command_index[1]~0_combout\ = \this_setup_manager|spi_command_index\(1) $ (((\this_state_manager|curr_state.setup~regout\ & \this_setup_manager|spi_command_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|curr_state.setup~regout\,
	datac => \this_setup_manager|spi_command_index\(1),
	datad => \this_setup_manager|spi_command_index\(0),
	combout => \this_setup_manager|spi_command_index[1]~0_combout\);

-- Location: LCFF_X6_Y6_N31
\this_setup_manager|spi_command_index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \adc_spi|ALT_INV_curr_state.idle~clkctrl_outclk\,
	datain => \this_setup_manager|spi_command_index[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|spi_command_index\(1));

-- Location: LCCOMB_X5_Y6_N20
\this_setup_manager|SPI_send_irq~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|SPI_send_irq~0_combout\ = (\this_state_manager|curr_state.setup~regout\ & (((\this_setup_manager|spi_command_index\(1)) # (!\this_setup_manager|spi_command_index\(0))) # (!\this_setup_manager|spi_command_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|spi_command_index\(2),
	datab => \this_setup_manager|spi_command_index\(0),
	datac => \this_state_manager|curr_state.setup~regout\,
	datad => \this_setup_manager|spi_command_index\(1),
	combout => \this_setup_manager|SPI_send_irq~0_combout\);

-- Location: LCCOMB_X1_Y6_N28
\adc_spi|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector0~0_combout\ = (\adc_spi|Equal1~1_combout\ & (!\adc_spi|curr_state.cs_up~regout\ & ((\adc_spi|curr_state.idle~regout\) # (\this_setup_manager|SPI_send_irq~0_combout\)))) # (!\adc_spi|Equal1~1_combout\ & 
-- (((\adc_spi|curr_state.idle~regout\) # (\this_setup_manager|SPI_send_irq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Equal1~1_combout\,
	datab => \adc_spi|curr_state.cs_up~regout\,
	datac => \adc_spi|curr_state.idle~regout\,
	datad => \this_setup_manager|SPI_send_irq~0_combout\,
	combout => \adc_spi|Selector0~0_combout\);

-- Location: LCFF_X1_Y6_N29
\adc_spi|curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|curr_state.idle~regout\);

-- Location: LCCOMB_X1_Y6_N26
\adc_spi|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector1~0_combout\ = (!\adc_spi|curr_state.idle~regout\ & \this_setup_manager|SPI_send_irq~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi|curr_state.idle~regout\,
	datad => \this_setup_manager|SPI_send_irq~0_combout\,
	combout => \adc_spi|Selector1~0_combout\);

-- Location: LCFF_X1_Y6_N27
\adc_spi|curr_state.latch_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|curr_state.latch_data~regout\);

-- Location: LCCOMB_X1_Y6_N20
\adc_spi|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector2~0_combout\ = (\adc_spi|curr_state.latch_data~regout\) # ((\adc_spi|curr_state.running~regout\ & ((!\adc_spi|Equal0~0_combout\) # (!\adc_spi|bits_sent\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|bits_sent\(4),
	datab => \adc_spi|curr_state.latch_data~regout\,
	datac => \adc_spi|curr_state.running~regout\,
	datad => \adc_spi|Equal0~0_combout\,
	combout => \adc_spi|Selector2~0_combout\);

-- Location: LCFF_X1_Y6_N21
\adc_spi|curr_state.running\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|curr_state.running~regout\);

-- Location: LCCOMB_X1_Y6_N6
\adc_spi|sclk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|sclk~0_combout\ = (\adc_spi|curr_state.latch_data~regout\) # (\adc_spi|curr_state.cs_up~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi|curr_state.latch_data~regout\,
	datad => \adc_spi|curr_state.cs_up~regout\,
	combout => \adc_spi|sclk~0_combout\);

-- Location: LCCOMB_X1_Y6_N16
\adc_spi|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector10~0_combout\ = (\adc_spi|sclk~regout\ & ((\adc_spi|sclk~0_combout\) # ((\adc_spi|curr_state.running~regout\ & !\adc_spi|Equal2~0_combout\)))) # (!\adc_spi|sclk~regout\ & (\adc_spi|curr_state.running~regout\ & 
-- (\adc_spi|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|curr_state.running~regout\,
	datab => \adc_spi|Equal2~0_combout\,
	datac => \adc_spi|sclk~regout\,
	datad => \adc_spi|sclk~0_combout\,
	combout => \adc_spi|Selector10~0_combout\);

-- Location: LCFF_X1_Y6_N17
\adc_spi|sclk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|sclk~regout\);

-- Location: LCCOMB_X2_Y6_N12
\adc_spi|Selector16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector16~2_combout\ = (\adc_spi|Equal2~0_combout\ & (\adc_spi|curr_state.running~regout\ & \adc_spi|sclk~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Equal2~0_combout\,
	datac => \adc_spi|curr_state.running~regout\,
	datad => \adc_spi|sclk~regout\,
	combout => \adc_spi|Selector16~2_combout\);

-- Location: LCCOMB_X1_Y6_N10
\adc_spi|SPI_CS\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|SPI_CS~combout\ = (\adc_spi|curr_state.cs_up~regout\) # (!\adc_spi|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi|curr_state.idle~regout\,
	datad => \adc_spi|curr_state.cs_up~regout\,
	combout => \adc_spi|SPI_CS~combout\);

-- Location: LCCOMB_X1_Y6_N18
\adc_spi|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector18~0_combout\ = (\adc_spi|SPI_CS~combout\) # ((\adc_spi|curr_state.running~regout\ & ((!\adc_spi|sclk~regout\) # (!\adc_spi|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|curr_state.running~regout\,
	datab => \adc_spi|Equal2~0_combout\,
	datac => \adc_spi|sclk~regout\,
	datad => \adc_spi|SPI_CS~combout\,
	combout => \adc_spi|Selector18~0_combout\);

-- Location: LCCOMB_X4_Y6_N0
\adc_spi|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector18~1_combout\ = (\adc_spi|tx_buf\(12) & ((\adc_spi|Selector16~2_combout\) # ((\adc_spi|tx_buf\(13) & \adc_spi|Selector18~0_combout\)))) # (!\adc_spi|tx_buf\(12) & (((\adc_spi|tx_buf\(13) & \adc_spi|Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|tx_buf\(12),
	datab => \adc_spi|Selector16~2_combout\,
	datac => \adc_spi|tx_buf\(13),
	datad => \adc_spi|Selector18~0_combout\,
	combout => \adc_spi|Selector18~1_combout\);

-- Location: LCFF_X4_Y6_N1
\adc_spi|tx_buf[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(13));

-- Location: LCCOMB_X4_Y6_N26
\adc_spi|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector17~0_combout\ = (\adc_spi|Selector18~0_combout\ & ((\adc_spi|tx_buf\(14)) # ((\adc_spi|Selector16~2_combout\ & \adc_spi|tx_buf\(13))))) # (!\adc_spi|Selector18~0_combout\ & (\adc_spi|Selector16~2_combout\ & ((\adc_spi|tx_buf\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Selector18~0_combout\,
	datab => \adc_spi|Selector16~2_combout\,
	datac => \adc_spi|tx_buf\(14),
	datad => \adc_spi|tx_buf\(13),
	combout => \adc_spi|Selector17~0_combout\);

-- Location: LCFF_X4_Y6_N27
\adc_spi|tx_buf[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(14));

-- Location: LCCOMB_X5_Y6_N28
\this_setup_manager|SPI_send_data[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|SPI_send_data[15]~feeder_combout\ = \this_setup_manager|spi_command_index\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_setup_manager|spi_command_index\(0),
	combout => \this_setup_manager|SPI_send_data[15]~feeder_combout\);

-- Location: LCFF_X5_Y6_N29
\this_setup_manager|SPI_send_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|SPI_send_data[15]~feeder_combout\,
	ena => \this_setup_manager|SPI_send_irq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data\(15));

-- Location: LCCOMB_X4_Y6_N20
\adc_spi|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector16~0_combout\ = (\adc_spi|curr_state.running~regout\ & (\adc_spi|tx_buf\(14))) # (!\adc_spi|curr_state.running~regout\ & ((\this_setup_manager|SPI_send_data\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi|tx_buf\(14),
	datac => \adc_spi|curr_state.running~regout\,
	datad => \this_setup_manager|SPI_send_data\(15),
	combout => \adc_spi|Selector16~0_combout\);

-- Location: LCCOMB_X2_Y6_N0
\adc_spi|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector16~1_combout\ = (\adc_spi|curr_state.running~regout\ & (\adc_spi|Equal2~0_combout\ & ((\adc_spi|sclk~regout\)))) # (!\adc_spi|curr_state.running~regout\ & (((\adc_spi|curr_state.latch_data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Equal2~0_combout\,
	datab => \adc_spi|curr_state.latch_data~regout\,
	datac => \adc_spi|curr_state.running~regout\,
	datad => \adc_spi|sclk~regout\,
	combout => \adc_spi|Selector16~1_combout\);

-- Location: LCFF_X4_Y6_N21
\adc_spi|tx_buf[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector16~0_combout\,
	ena => \adc_spi|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|tx_buf\(15));

-- Location: LCCOMB_X3_Y6_N12
\adc_spi|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Add0~6_combout\ = (\adc_spi|bits_sent\(3) & (!\adc_spi|Add0~5\)) # (!\adc_spi|bits_sent\(3) & ((\adc_spi|Add0~5\) # (GND)))
-- \adc_spi|Add0~7\ = CARRY((!\adc_spi|Add0~5\) # (!\adc_spi|bits_sent\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi|bits_sent\(3),
	datad => VCC,
	cin => \adc_spi|Add0~5\,
	combout => \adc_spi|Add0~6_combout\,
	cout => \adc_spi|Add0~7\);

-- Location: LCCOMB_X3_Y6_N0
\adc_spi|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector12~0_combout\ = (\adc_spi|Add0~10_combout\ & ((\adc_spi|Add0~6_combout\) # ((\adc_spi|Selector15~0_combout\ & \adc_spi|bits_sent\(3))))) # (!\adc_spi|Add0~10_combout\ & (\adc_spi|Selector15~0_combout\ & (\adc_spi|bits_sent\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Add0~10_combout\,
	datab => \adc_spi|Selector15~0_combout\,
	datac => \adc_spi|bits_sent\(3),
	datad => \adc_spi|Add0~6_combout\,
	combout => \adc_spi|Selector12~0_combout\);

-- Location: LCFF_X3_Y6_N1
\adc_spi|bits_sent[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|bits_sent\(3));

-- Location: LCCOMB_X2_Y6_N4
\adc_spi|is_read~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|is_read~0_combout\ = (\adc_spi|curr_state.latch_data~regout\ & ((\this_setup_manager|SPI_send_data\(15)))) # (!\adc_spi|curr_state.latch_data~regout\ & (\adc_spi|is_read~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi|curr_state.latch_data~regout\,
	datac => \adc_spi|is_read~regout\,
	datad => \this_setup_manager|SPI_send_data\(15),
	combout => \adc_spi|is_read~0_combout\);

-- Location: LCFF_X2_Y6_N5
\adc_spi|is_read\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|is_read~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|is_read~regout\);

-- Location: LCCOMB_X3_Y6_N14
\adc_spi|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Add0~8_combout\ = \adc_spi|Add0~7\ $ (!\adc_spi|bits_sent\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi|bits_sent\(4),
	cin => \adc_spi|Add0~7\,
	combout => \adc_spi|Add0~8_combout\);

-- Location: LCCOMB_X3_Y6_N22
\adc_spi|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|Selector11~0_combout\ = (\adc_spi|Add0~10_combout\ & ((\adc_spi|Add0~8_combout\) # ((\adc_spi|bits_sent\(4) & \adc_spi|Selector15~0_combout\)))) # (!\adc_spi|Add0~10_combout\ & (((\adc_spi|bits_sent\(4) & \adc_spi|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi|Add0~10_combout\,
	datab => \adc_spi|Add0~8_combout\,
	datac => \adc_spi|bits_sent\(4),
	datad => \adc_spi|Selector15~0_combout\,
	combout => \adc_spi|Selector11~0_combout\);

-- Location: LCFF_X3_Y6_N23
\adc_spi|bits_sent[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi|bits_sent\(4));

-- Location: LCCOMB_X3_Y6_N24
\adc_spi|SPI_MOSI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi|SPI_MOSI~1_combout\ = ((!\adc_spi|bits_sent\(3) & !\adc_spi|bits_sent\(4))) # (!\adc_spi|is_read~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi|bits_sent\(3),
	datac => \adc_spi|is_read~regout\,
	datad => \adc_spi|bits_sent\(4),
	combout => \adc_spi|SPI_MOSI~1_combout\);

-- Location: LCCOMB_X18_Y9_N14
\Corr_Main_1|cnt~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~31_combout\ = (\Corr_Main_1|Add19~6_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add19~6_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~31_combout\);

-- Location: LCFF_X18_Y9_N15
\Corr_Main_1|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~31_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(3));

-- Location: LCCOMB_X18_Y9_N30
\Corr_Main_1|cnt~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~32_combout\ = (\Corr_Main_1|Add19~4_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add19~4_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~32_combout\);

-- Location: LCFF_X18_Y9_N31
\Corr_Main_1|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~32_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(2));

-- Location: LCCOMB_X18_Y9_N8
\Corr_Main_1|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Equal0~8_combout\ = (!\Corr_Main_1|cnt\(3) & !\Corr_Main_1|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|cnt\(3),
	datad => \Corr_Main_1|cnt\(2),
	combout => \Corr_Main_1|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y9_N26
\Corr_Main_1|cnt~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|cnt~29_combout\ = (\Corr_Main_1|Add19~10_combout\ & \Corr_Main_1|cnt~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|Add19~10_combout\,
	datad => \Corr_Main_1|cnt~1_combout\,
	combout => \Corr_Main_1|cnt~29_combout\);

-- Location: LCFF_X17_Y9_N27
\Corr_Main_1|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|cnt~29_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|cnt\(5));

-- Location: LCCOMB_X17_Y9_N30
\Corr_Main_1|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Equal0~7_combout\ = (!\Corr_Main_1|cnt\(7) & (!\Corr_Main_1|cnt\(5) & (!\Corr_Main_1|cnt\(4) & !\Corr_Main_1|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(7),
	datab => \Corr_Main_1|cnt\(5),
	datac => \Corr_Main_1|cnt\(4),
	datad => \Corr_Main_1|cnt\(6),
	combout => \Corr_Main_1|Equal0~7_combout\);

-- Location: LCCOMB_X18_Y9_N6
\Corr_Main_1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Equal0~6_combout\ = (!\Corr_Main_1|cnt\(11) & (!\Corr_Main_1|cnt\(9) & (!\Corr_Main_1|cnt\(10) & !\Corr_Main_1|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(11),
	datab => \Corr_Main_1|cnt\(9),
	datac => \Corr_Main_1|cnt\(10),
	datad => \Corr_Main_1|cnt\(8),
	combout => \Corr_Main_1|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y9_N28
\Corr_Main_1|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Equal0~9_combout\ = (\Corr_Main_1|Equal0~5_combout\ & (\Corr_Main_1|Equal0~8_combout\ & (\Corr_Main_1|Equal0~7_combout\ & \Corr_Main_1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Equal0~5_combout\,
	datab => \Corr_Main_1|Equal0~8_combout\,
	datac => \Corr_Main_1|Equal0~7_combout\,
	datad => \Corr_Main_1|Equal0~6_combout\,
	combout => \Corr_Main_1|Equal0~9_combout\);

-- Location: LCCOMB_X19_Y7_N16
\rtl~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\Corr_Main_1|cnt\(0) & (\Corr_Main_1|Equal0~4_combout\ & (\Corr_Main_1|Equal0~9_combout\ & !\Corr_Main_1|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|cnt\(0),
	datab => \Corr_Main_1|Equal0~4_combout\,
	datac => \Corr_Main_1|Equal0~9_combout\,
	datad => \Corr_Main_1|cnt\(1),
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G5
\rtl~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y5_N12
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0~combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(0) $ (VCC)
-- \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0~COUT\ = CARRY(\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(0),
	datad => VCC,
	combout => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0~combout\,
	cout => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0~COUT\);

-- Location: LCFF_X24_Y5_N13
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(0));

-- Location: LCCOMB_X24_Y5_N14
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita1~combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(1) $ (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(1),
	cin => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0~COUT\,
	combout => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita1~combout\);

-- Location: LCFF_X24_Y5_N15
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(1));

-- Location: LCCOMB_X18_Y5_N2
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ = \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(0) $ (VCC)
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ = CARRY(\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(0),
	datad => VCC,
	combout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	cout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X18_Y5_N20
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X18_Y5_N4
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1) & (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\)) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1) & ((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # (GND)))
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1),
	datad => VCC,
	cin => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\,
	combout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	cout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\);

-- Location: LCFF_X18_Y5_N5
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1));

-- Location: LCCOMB_X18_Y5_N6
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2) & (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2) & (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ & VCC))
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2) & !\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2),
	datad => VCC,
	cin => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\,
	combout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	cout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X18_Y5_N8
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3) & (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\)) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3) & ((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # (GND)))
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3),
	datad => VCC,
	cin => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\,
	combout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	cout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\);

-- Location: LCFF_X18_Y5_N9
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3));

-- Location: LCFF_X18_Y5_N11
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_reg_bit4a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4));

-- Location: LCCOMB_X18_Y5_N26
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\ = (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2) & (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1) & 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3) & \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2),
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1),
	datac => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3),
	datad => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4),
	combout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X18_Y5_N24
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~0_combout\) # 
-- ((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\ & !\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~0_combout\,
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\,
	datad => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(0),
	combout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\);

-- Location: LCFF_X18_Y5_N3
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(0));

-- Location: LCFF_X18_Y5_N7
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2));

-- Location: LCFF_X21_Y5_N31
\Corr_Main_1|buff|buffer_7[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_7\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(13));

-- Location: LCFF_X22_Y5_N27
\Corr_Main_1|buff|buffer_7[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_7\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(14));

-- Location: M4K_X23_Y5
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Corr_Main:Corr_Main_1|Corr_Buffer:buff|altshift_taps:buffer_0_rtl_0|shift_taps_r1m:auto_generated|altsyncram_6a81:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 19,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 19,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \rtl~0clkctrl_outclk\,
	portadatain => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\,
	portaaddr => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X20_Y5_N26
\Corr_Main_1|buff|buffer_7[36]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_7[36]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\,
	combout => \Corr_Main_1|buff|buffer_7[36]~feeder_combout\);

-- Location: LCFF_X20_Y5_N27
\Corr_Main_1|buff|buffer_7[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_7[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(36));

-- Location: LCFF_X20_Y7_N3
\Corr_Main_1|buff|buffer_7[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_7\(36),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(37));

-- Location: LCFF_X21_Y7_N5
\Corr_Main_1|buff|buffer_7[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_7\(37),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(38));

-- Location: LCFF_X22_Y7_N27
\Corr_Main_1|buff|buffer_7[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_7\(38),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(39));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_A[0]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_A(0),
	combout => \ADC_BIT_A~combout\(0));

-- Location: LCCOMB_X27_Y6_N22
\this_read_adc_manager|MRAM_DATA_OUT[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[0]~feeder_combout\ = \ADC_BIT_A~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_BIT_A~combout\(0),
	combout => \this_read_adc_manager|MRAM_DATA_OUT[0]~feeder_combout\);

-- Location: LCCOMB_X27_Y6_N30
\this_read_adc_manager|MRAM_DATA_OUT[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[0]~1_combout\ = (\this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\ & (\this_read_adc_manager|Equal1~0_combout\ & (\ADC_DCLKA~combout\ & !\this_read_adc_manager|last_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\,
	datab => \this_read_adc_manager|Equal1~0_combout\,
	datac => \ADC_DCLKA~combout\,
	datad => \this_read_adc_manager|last_state~regout\,
	combout => \this_read_adc_manager|MRAM_DATA_OUT[0]~1_combout\);

-- Location: LCFF_X27_Y6_N23
\this_read_adc_manager|MRAM_DATA_OUT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[0]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(0));

-- Location: LCCOMB_X26_Y6_N18
\Corr_Main_1|buff|diff[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|diff[0]~feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(0),
	combout => \Corr_Main_1|buff|diff[0]~feeder_combout\);

-- Location: LCFF_X26_Y6_N19
\Corr_Main_1|buff|diff[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|diff[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(0));

-- Location: LCCOMB_X26_Y4_N28
\Corr_Main_1|buff|buffer_0[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0[0]~feeder_combout\ = \Corr_Main_1|buff|diff\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|diff\(0),
	combout => \Corr_Main_1|buff|buffer_0[0]~feeder_combout\);

-- Location: LCFF_X26_Y4_N29
\Corr_Main_1|buff|buffer_0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(0));

-- Location: LCFF_X26_Y4_N9
\Corr_Main_1|buff|buffer_0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(1));

-- Location: LCFF_X27_Y4_N19
\Corr_Main_1|buff|buffer_0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(2));

-- Location: LCCOMB_X27_Y4_N22
\Corr_Main_1|buff|buffer_0[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0[3]~feeder_combout\ = \Corr_Main_1|buff|buffer_0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0\(2),
	combout => \Corr_Main_1|buff|buffer_0[3]~feeder_combout\);

-- Location: LCFF_X27_Y4_N23
\Corr_Main_1|buff|buffer_0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(3));

-- Location: LCCOMB_X24_Y4_N28
\Corr_Main_1|buff|buffer_0[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0[4]~feeder_combout\ = \Corr_Main_1|buff|buffer_0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0\(3),
	combout => \Corr_Main_1|buff|buffer_0[4]~feeder_combout\);

-- Location: LCFF_X24_Y4_N29
\Corr_Main_1|buff|buffer_0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(4));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_A[1]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_A(1),
	combout => \ADC_BIT_A~combout\(1));

-- Location: LCCOMB_X27_Y6_N24
\this_read_adc_manager|MRAM_DATA_OUT[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[1]~feeder_combout\ = \ADC_BIT_A~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_BIT_A~combout\(1),
	combout => \this_read_adc_manager|MRAM_DATA_OUT[1]~feeder_combout\);

-- Location: LCFF_X27_Y6_N25
\this_read_adc_manager|MRAM_DATA_OUT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[1]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(1));

-- Location: LCCOMB_X26_Y6_N12
\Corr_Main_1|buff|diff[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|diff[1]~feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(1),
	combout => \Corr_Main_1|buff|diff[1]~feeder_combout\);

-- Location: LCFF_X26_Y6_N13
\Corr_Main_1|buff|diff[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|diff[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(1));

-- Location: LCCOMB_X26_Y4_N26
\Corr_Main_1|buff|buffer_1[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_1[0]~feeder_combout\ = \Corr_Main_1|buff|diff\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|diff\(1),
	combout => \Corr_Main_1|buff|buffer_1[0]~feeder_combout\);

-- Location: LCFF_X26_Y4_N27
\Corr_Main_1|buff|buffer_1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(0));

-- Location: LCFF_X26_Y4_N11
\Corr_Main_1|buff|buffer_1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_1\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(1));

-- Location: LCFF_X26_Y4_N15
\Corr_Main_1|buff|buffer_1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_1\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(2));

-- Location: LCFF_X27_Y4_N5
\Corr_Main_1|buff|buffer_1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_1\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(3));

-- Location: LCCOMB_X24_Y4_N30
\Corr_Main_1|buff|buffer_1[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_1[4]~feeder_combout\ = \Corr_Main_1|buff|buffer_1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_1\(3),
	combout => \Corr_Main_1|buff|buffer_1[4]~feeder_combout\);

-- Location: LCFF_X24_Y4_N31
\Corr_Main_1|buff|buffer_1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_1[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(4));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_A[2]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_A(2),
	combout => \ADC_BIT_A~combout\(2));

-- Location: LCCOMB_X27_Y6_N6
\this_read_adc_manager|MRAM_DATA_OUT[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[2]~feeder_combout\ = \ADC_BIT_A~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_BIT_A~combout\(2),
	combout => \this_read_adc_manager|MRAM_DATA_OUT[2]~feeder_combout\);

-- Location: LCFF_X27_Y6_N7
\this_read_adc_manager|MRAM_DATA_OUT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[2]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(2));

-- Location: LCCOMB_X26_Y6_N4
\Corr_Main_1|buff|diff[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|diff[2]~feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(2),
	combout => \Corr_Main_1|buff|diff[2]~feeder_combout\);

-- Location: LCFF_X26_Y6_N5
\Corr_Main_1|buff|diff[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|diff[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(2));

-- Location: LCFF_X26_Y4_N25
\Corr_Main_1|buff|buffer_2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|diff\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(0));

-- Location: LCFF_X26_Y4_N13
\Corr_Main_1|buff|buffer_2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_2\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(1));

-- Location: LCCOMB_X27_Y4_N20
\Corr_Main_1|buff|buffer_2[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_2[2]~feeder_combout\ = \Corr_Main_1|buff|buffer_2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_2\(1),
	combout => \Corr_Main_1|buff|buffer_2[2]~feeder_combout\);

-- Location: LCFF_X27_Y4_N21
\Corr_Main_1|buff|buffer_2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_2[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(2));

-- Location: LCFF_X27_Y4_N7
\Corr_Main_1|buff|buffer_2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_2\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(3));

-- Location: LCFF_X24_Y4_N3
\Corr_Main_1|buff|buffer_2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_2\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(4));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_A[3]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_A(3),
	combout => \ADC_BIT_A~combout\(3));

-- Location: LCCOMB_X27_Y6_N28
\this_read_adc_manager|MRAM_DATA_OUT[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[3]~feeder_combout\ = \ADC_BIT_A~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_BIT_A~combout\(3),
	combout => \this_read_adc_manager|MRAM_DATA_OUT[3]~feeder_combout\);

-- Location: LCFF_X27_Y6_N29
\this_read_adc_manager|MRAM_DATA_OUT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[3]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(3));

-- Location: LCFF_X27_Y4_N17
\Corr_Main_1|buff|diff[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \this_read_adc_manager|MRAM_DATA_OUT\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(3));

-- Location: LCFF_X27_Y4_N3
\Corr_Main_1|buff|buffer_3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|diff\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(0));

-- Location: LCCOMB_X27_Y4_N30
\Corr_Main_1|buff|buffer_3[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_3[1]~feeder_combout\ = \Corr_Main_1|buff|buffer_3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_3\(0),
	combout => \Corr_Main_1|buff|buffer_3[1]~feeder_combout\);

-- Location: LCFF_X27_Y4_N31
\Corr_Main_1|buff|buffer_3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_3[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(1));

-- Location: LCCOMB_X27_Y4_N24
\Corr_Main_1|buff|buffer_3[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_3[2]~feeder_combout\ = \Corr_Main_1|buff|buffer_3\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_3\(1),
	combout => \Corr_Main_1|buff|buffer_3[2]~feeder_combout\);

-- Location: LCFF_X27_Y4_N25
\Corr_Main_1|buff|buffer_3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_3[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(2));

-- Location: LCFF_X27_Y4_N9
\Corr_Main_1|buff|buffer_3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_3\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(3));

-- Location: LCCOMB_X24_Y4_N0
\Corr_Main_1|buff|buffer_3[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_3[4]~feeder_combout\ = \Corr_Main_1|buff|buffer_3\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_3\(3),
	combout => \Corr_Main_1|buff|buffer_3[4]~feeder_combout\);

-- Location: LCFF_X24_Y4_N1
\Corr_Main_1|buff|buffer_3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_3[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(4));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_A[4]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_A(4),
	combout => \ADC_BIT_A~combout\(4));

-- Location: LCCOMB_X27_Y6_N18
\this_read_adc_manager|MRAM_DATA_OUT[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[4]~feeder_combout\ = \ADC_BIT_A~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_BIT_A~combout\(4),
	combout => \this_read_adc_manager|MRAM_DATA_OUT[4]~feeder_combout\);

-- Location: LCFF_X27_Y6_N19
\this_read_adc_manager|MRAM_DATA_OUT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[4]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(4));

-- Location: LCCOMB_X26_Y6_N30
\Corr_Main_1|buff|diff[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|diff[4]~feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(4),
	combout => \Corr_Main_1|buff|diff[4]~feeder_combout\);

-- Location: LCFF_X26_Y6_N31
\Corr_Main_1|buff|diff[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|diff[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(4));

-- Location: LCCOMB_X26_Y6_N28
\Corr_Main_1|buff|buffer_4[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_4[0]~feeder_combout\ = \Corr_Main_1|buff|diff\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|diff\(4),
	combout => \Corr_Main_1|buff|buffer_4[0]~feeder_combout\);

-- Location: LCFF_X26_Y6_N29
\Corr_Main_1|buff|buffer_4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_4[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(0));

-- Location: LCFF_X26_Y4_N17
\Corr_Main_1|buff|buffer_4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_4\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(1));

-- Location: LCCOMB_X27_Y4_N0
\Corr_Main_1|buff|buffer_4[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_4[2]~feeder_combout\ = \Corr_Main_1|buff|buffer_4\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_4\(1),
	combout => \Corr_Main_1|buff|buffer_4[2]~feeder_combout\);

-- Location: LCFF_X27_Y4_N1
\Corr_Main_1|buff|buffer_4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_4[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(2));

-- Location: LCFF_X27_Y4_N11
\Corr_Main_1|buff|buffer_4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_4\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(3));

-- Location: LCCOMB_X24_Y4_N26
\Corr_Main_1|buff|buffer_4[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_4[4]~feeder_combout\ = \Corr_Main_1|buff|buffer_4\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_4\(3),
	combout => \Corr_Main_1|buff|buffer_4[4]~feeder_combout\);

-- Location: LCFF_X24_Y4_N27
\Corr_Main_1|buff|buffer_4[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_4[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(4));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_A[5]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_A(5),
	combout => \ADC_BIT_A~combout\(5));

-- Location: LCCOMB_X27_Y6_N14
\this_read_adc_manager|MRAM_DATA_OUT[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[5]~feeder_combout\ = \ADC_BIT_A~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_BIT_A~combout\(5),
	combout => \this_read_adc_manager|MRAM_DATA_OUT[5]~feeder_combout\);

-- Location: LCFF_X27_Y6_N15
\this_read_adc_manager|MRAM_DATA_OUT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[5]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(5));

-- Location: LCFF_X26_Y6_N9
\Corr_Main_1|buff|diff[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \this_read_adc_manager|MRAM_DATA_OUT\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(5));

-- Location: LCFF_X26_Y4_N23
\Corr_Main_1|buff|buffer_5[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|diff\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(0));

-- Location: LCCOMB_X26_Y4_N2
\Corr_Main_1|buff|buffer_5[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_5[1]~feeder_combout\ = \Corr_Main_1|buff|buffer_5\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_5\(0),
	combout => \Corr_Main_1|buff|buffer_5[1]~feeder_combout\);

-- Location: LCFF_X26_Y4_N3
\Corr_Main_1|buff|buffer_5[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_5[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(1));

-- Location: LCFF_X26_Y4_N19
\Corr_Main_1|buff|buffer_5[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_5\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(2));

-- Location: LCFF_X27_Y4_N13
\Corr_Main_1|buff|buffer_5[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_5\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(3));

-- Location: LCFF_X24_Y4_N15
\Corr_Main_1|buff|buffer_5[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_5\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(4));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_A[6]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_A(6),
	combout => \ADC_BIT_A~combout\(6));

-- Location: LCCOMB_X27_Y6_N8
\this_read_adc_manager|MRAM_DATA_OUT[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[6]~feeder_combout\ = \ADC_BIT_A~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_BIT_A~combout\(6),
	combout => \this_read_adc_manager|MRAM_DATA_OUT[6]~feeder_combout\);

-- Location: LCFF_X27_Y6_N9
\this_read_adc_manager|MRAM_DATA_OUT[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[6]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(6));

-- Location: LCFF_X26_Y6_N11
\Corr_Main_1|buff|diff[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \this_read_adc_manager|MRAM_DATA_OUT\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(6));

-- Location: LCCOMB_X26_Y4_N6
\Corr_Main_1|buff|buffer_6[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_6[0]~feeder_combout\ = \Corr_Main_1|buff|diff\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|diff\(6),
	combout => \Corr_Main_1|buff|buffer_6[0]~feeder_combout\);

-- Location: LCFF_X26_Y4_N7
\Corr_Main_1|buff|buffer_6[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_6[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(0));

-- Location: LCCOMB_X26_Y4_N30
\Corr_Main_1|buff|buffer_6[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_6[1]~feeder_combout\ = \Corr_Main_1|buff|buffer_6\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_6\(0),
	combout => \Corr_Main_1|buff|buffer_6[1]~feeder_combout\);

-- Location: LCFF_X26_Y4_N31
\Corr_Main_1|buff|buffer_6[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_6[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(1));

-- Location: LCFF_X27_Y4_N15
\Corr_Main_1|buff|buffer_6[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_6\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(2));

-- Location: LCFF_X27_Y4_N29
\Corr_Main_1|buff|buffer_6[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_6\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(3));

-- Location: LCFF_X24_Y4_N17
\Corr_Main_1|buff|buffer_6[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_6\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(4));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_A[7]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_A(7),
	combout => \ADC_BIT_A~combout\(7));

-- Location: LCCOMB_X27_Y6_N10
\this_read_adc_manager|MRAM_DATA_OUT[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[7]~feeder_combout\ = \ADC_BIT_A~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_BIT_A~combout\(7),
	combout => \this_read_adc_manager|MRAM_DATA_OUT[7]~feeder_combout\);

-- Location: LCFF_X27_Y6_N11
\this_read_adc_manager|MRAM_DATA_OUT[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[7]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(7));

-- Location: LCFF_X26_Y6_N21
\Corr_Main_1|buff|diff[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \this_read_adc_manager|MRAM_DATA_OUT\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(7));

-- Location: LCCOMB_X26_Y4_N0
\Corr_Main_1|buff|buffer_7[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_7[0]~feeder_combout\ = \Corr_Main_1|buff|diff\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|diff\(7),
	combout => \Corr_Main_1|buff|buffer_7[0]~feeder_combout\);

-- Location: LCFF_X26_Y4_N1
\Corr_Main_1|buff|buffer_7[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_7[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(0));

-- Location: LCCOMB_X26_Y4_N4
\Corr_Main_1|buff|buffer_7[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_7[1]~feeder_combout\ = \Corr_Main_1|buff|buffer_7\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_7\(0),
	combout => \Corr_Main_1|buff|buffer_7[1]~feeder_combout\);

-- Location: LCFF_X26_Y4_N5
\Corr_Main_1|buff|buffer_7[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_7[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(1));

-- Location: LCFF_X26_Y4_N21
\Corr_Main_1|buff|buffer_7[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_7\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(2));

-- Location: LCFF_X27_Y4_N27
\Corr_Main_1|buff|buffer_7[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_7\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(3));

-- Location: LCFF_X24_Y4_N19
\Corr_Main_1|buff|buffer_7[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_7\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(4));

-- Location: M4K_X23_Y4
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Corr_Main:Corr_Main_1|Corr_Buffer:buff|altshift_taps:buffer_0_rtl_1|shift_taps_t1m:auto_generated|altsyncram_i981:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 4,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 16,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 4,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \rtl~0clkctrl_outclk\,
	portadatain => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\,
	portaaddr => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X22_Y4_N22
\Corr_Main_1|buff|buffer_6[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_6[11]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\,
	combout => \Corr_Main_1|buff|buffer_6[11]~feeder_combout\);

-- Location: LCFF_X22_Y4_N23
\Corr_Main_1|buff|buffer_6[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_6[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(11));

-- Location: LCFF_X22_Y5_N15
\Corr_Main_1|buff|buffer_6[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_6\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(12));

-- Location: LCFF_X22_Y5_N19
\Corr_Main_1|buff|buffer_6[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_6\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(13));

-- Location: LCFF_X22_Y5_N25
\Corr_Main_1|buff|buffer_6[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_6\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(14));

-- Location: LCCOMB_X20_Y5_N0
\Corr_Main_1|buff|buffer_6[36]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_6[36]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a6\,
	combout => \Corr_Main_1|buff|buffer_6[36]~feeder_combout\);

-- Location: LCFF_X20_Y5_N1
\Corr_Main_1|buff|buffer_6[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_6[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(36));

-- Location: LCCOMB_X20_Y7_N0
\Corr_Main_1|buff|buffer_6[37]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_6[37]~feeder_combout\ = \Corr_Main_1|buff|buffer_6\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_6\(36),
	combout => \Corr_Main_1|buff|buffer_6[37]~feeder_combout\);

-- Location: LCFF_X20_Y7_N1
\Corr_Main_1|buff|buffer_6[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_6[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(37));

-- Location: LCFF_X21_Y7_N23
\Corr_Main_1|buff|buffer_6[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_6\(37),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(38));

-- Location: LCCOMB_X22_Y7_N6
\Corr_Main_1|buff|buffer_6[39]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_6[39]~feeder_combout\ = \Corr_Main_1|buff|buffer_6\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_6\(38),
	combout => \Corr_Main_1|buff|buffer_6[39]~feeder_combout\);

-- Location: LCFF_X22_Y7_N7
\Corr_Main_1|buff|buffer_6[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_6[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(39));

-- Location: LCFF_X22_Y4_N31
\Corr_Main_1|buff|buffer_5[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(11));

-- Location: LCFF_X22_Y4_N1
\Corr_Main_1|buff|buffer_5[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_5\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(12));

-- Location: LCCOMB_X21_Y5_N22
\Corr_Main_1|buff|buffer_5[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_5[13]~feeder_combout\ = \Corr_Main_1|buff|buffer_5\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_5\(12),
	combout => \Corr_Main_1|buff|buffer_5[13]~feeder_combout\);

-- Location: LCFF_X21_Y5_N23
\Corr_Main_1|buff|buffer_5[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_5[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(13));

-- Location: LCCOMB_X22_Y5_N6
\Corr_Main_1|buff|buffer_5[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_5[14]~feeder_combout\ = \Corr_Main_1|buff|buffer_5\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_5\(13),
	combout => \Corr_Main_1|buff|buffer_5[14]~feeder_combout\);

-- Location: LCFF_X22_Y5_N7
\Corr_Main_1|buff|buffer_5[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_5[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(14));

-- Location: LCFF_X20_Y5_N17
\Corr_Main_1|buff|buffer_5[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(36));

-- Location: LCFF_X20_Y7_N15
\Corr_Main_1|buff|buffer_5[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_5\(36),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(37));

-- Location: LCCOMB_X21_Y7_N6
\Corr_Main_1|buff|buffer_5[38]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_5[38]~feeder_combout\ = \Corr_Main_1|buff|buffer_5\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_5\(37),
	combout => \Corr_Main_1|buff|buffer_5[38]~feeder_combout\);

-- Location: LCFF_X21_Y7_N7
\Corr_Main_1|buff|buffer_5[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_5[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(38));

-- Location: LCFF_X22_Y7_N19
\Corr_Main_1|buff|buffer_5[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_5\(38),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(39));

-- Location: LCFF_X22_Y4_N29
\Corr_Main_1|buff|buffer_4[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(11));

-- Location: LCFF_X22_Y4_N5
\Corr_Main_1|buff|buffer_4[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_4\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(12));

-- Location: LCFF_X21_Y5_N25
\Corr_Main_1|buff|buffer_4[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_4\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(13));

-- Location: LCCOMB_X22_Y5_N8
\Corr_Main_1|buff|buffer_4[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_4[14]~feeder_combout\ = \Corr_Main_1|buff|buffer_4\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_4\(13),
	combout => \Corr_Main_1|buff|buffer_4[14]~feeder_combout\);

-- Location: LCFF_X22_Y5_N9
\Corr_Main_1|buff|buffer_4[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_4[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(14));

-- Location: LCFF_X20_Y5_N25
\Corr_Main_1|buff|buffer_4[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a4\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(36));

-- Location: LCCOMB_X20_Y7_N28
\Corr_Main_1|buff|buffer_4[37]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_4[37]~feeder_combout\ = \Corr_Main_1|buff|buffer_4\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_4\(36),
	combout => \Corr_Main_1|buff|buffer_4[37]~feeder_combout\);

-- Location: LCFF_X20_Y7_N29
\Corr_Main_1|buff|buffer_4[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_4[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(37));

-- Location: LCCOMB_X21_Y7_N2
\Corr_Main_1|buff|buffer_4[38]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_4[38]~feeder_combout\ = \Corr_Main_1|buff|buffer_4\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_4\(37),
	combout => \Corr_Main_1|buff|buffer_4[38]~feeder_combout\);

-- Location: LCFF_X21_Y7_N3
\Corr_Main_1|buff|buffer_4[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_4[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(38));

-- Location: LCCOMB_X22_Y7_N2
\Corr_Main_1|buff|buffer_4[39]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_4[39]~feeder_combout\ = \Corr_Main_1|buff|buffer_4\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_4\(38),
	combout => \Corr_Main_1|buff|buffer_4[39]~feeder_combout\);

-- Location: LCFF_X22_Y7_N3
\Corr_Main_1|buff|buffer_4[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_4[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(39));

-- Location: LCCOMB_X22_Y4_N26
\Corr_Main_1|buff|buffer_3[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_3[11]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\,
	combout => \Corr_Main_1|buff|buffer_3[11]~feeder_combout\);

-- Location: LCFF_X22_Y4_N27
\Corr_Main_1|buff|buffer_3[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_3[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(11));

-- Location: LCFF_X22_Y5_N31
\Corr_Main_1|buff|buffer_3[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_3\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(12));

-- Location: LCFF_X22_Y5_N17
\Corr_Main_1|buff|buffer_3[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_3\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(13));

-- Location: LCFF_X22_Y5_N11
\Corr_Main_1|buff|buffer_3[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_3\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(14));

-- Location: LCCOMB_X20_Y5_N28
\Corr_Main_1|buff|buffer_3[36]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_3[36]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\,
	combout => \Corr_Main_1|buff|buffer_3[36]~feeder_combout\);

-- Location: LCFF_X20_Y5_N29
\Corr_Main_1|buff|buffer_3[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_3[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(36));

-- Location: LCCOMB_X20_Y7_N22
\Corr_Main_1|buff|buffer_3[37]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_3[37]~feeder_combout\ = \Corr_Main_1|buff|buffer_3\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_3\(36),
	combout => \Corr_Main_1|buff|buffer_3[37]~feeder_combout\);

-- Location: LCFF_X20_Y7_N23
\Corr_Main_1|buff|buffer_3[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_3[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(37));

-- Location: LCCOMB_X21_Y7_N8
\Corr_Main_1|buff|buffer_3[38]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_3[38]~feeder_combout\ = \Corr_Main_1|buff|buffer_3\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_3\(37),
	combout => \Corr_Main_1|buff|buffer_3[38]~feeder_combout\);

-- Location: LCFF_X21_Y7_N9
\Corr_Main_1|buff|buffer_3[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_3[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(38));

-- Location: LCCOMB_X22_Y7_N4
\Corr_Main_1|buff|buffer_3[39]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_3[39]~feeder_combout\ = \Corr_Main_1|buff|buffer_3\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_3\(38),
	combout => \Corr_Main_1|buff|buffer_3[39]~feeder_combout\);

-- Location: LCFF_X22_Y7_N5
\Corr_Main_1|buff|buffer_3[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_3[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(39));

-- Location: LCCOMB_X22_Y4_N18
\Corr_Main_1|buff|buffer_2[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_2[11]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\,
	combout => \Corr_Main_1|buff|buffer_2[11]~feeder_combout\);

-- Location: LCFF_X22_Y4_N19
\Corr_Main_1|buff|buffer_2[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_2[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(11));

-- Location: LCFF_X22_Y5_N29
\Corr_Main_1|buff|buffer_2[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_2\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(12));

-- Location: LCFF_X22_Y5_N21
\Corr_Main_1|buff|buffer_2[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_2\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(13));

-- Location: LCFF_X22_Y5_N5
\Corr_Main_1|buff|buffer_2[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_2\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(14));

-- Location: LCFF_X20_Y5_N3
\Corr_Main_1|buff|buffer_2[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a2\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(36));

-- Location: LCCOMB_X20_Y7_N24
\Corr_Main_1|buff|buffer_2[37]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_2[37]~feeder_combout\ = \Corr_Main_1|buff|buffer_2\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_2\(36),
	combout => \Corr_Main_1|buff|buffer_2[37]~feeder_combout\);

-- Location: LCFF_X20_Y7_N25
\Corr_Main_1|buff|buffer_2[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_2[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(37));

-- Location: LCCOMB_X21_Y7_N10
\Corr_Main_1|buff|buffer_2[38]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_2[38]~feeder_combout\ = \Corr_Main_1|buff|buffer_2\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_2\(37),
	combout => \Corr_Main_1|buff|buffer_2[38]~feeder_combout\);

-- Location: LCFF_X21_Y7_N11
\Corr_Main_1|buff|buffer_2[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_2[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(38));

-- Location: LCCOMB_X22_Y7_N28
\Corr_Main_1|buff|buffer_2[39]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_2[39]~feeder_combout\ = \Corr_Main_1|buff|buffer_2\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_2\(38),
	combout => \Corr_Main_1|buff|buffer_2[39]~feeder_combout\);

-- Location: LCFF_X22_Y7_N29
\Corr_Main_1|buff|buffer_2[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_2[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(39));

-- Location: LCCOMB_X22_Y4_N24
\Corr_Main_1|buff|buffer_1[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_1[11]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\,
	combout => \Corr_Main_1|buff|buffer_1[11]~feeder_combout\);

-- Location: LCFF_X22_Y4_N25
\Corr_Main_1|buff|buffer_1[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_1[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(11));

-- Location: LCFF_X22_Y4_N3
\Corr_Main_1|buff|buffer_1[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_1\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(12));

-- Location: LCCOMB_X21_Y5_N26
\Corr_Main_1|buff|buffer_1[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_1[13]~feeder_combout\ = \Corr_Main_1|buff|buffer_1\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_1\(12),
	combout => \Corr_Main_1|buff|buffer_1[13]~feeder_combout\);

-- Location: LCFF_X21_Y5_N27
\Corr_Main_1|buff|buffer_1[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_1[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(13));

-- Location: LCCOMB_X22_Y5_N2
\Corr_Main_1|buff|buffer_1[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_1[14]~feeder_combout\ = \Corr_Main_1|buff|buffer_1\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_1\(13),
	combout => \Corr_Main_1|buff|buffer_1[14]~feeder_combout\);

-- Location: LCFF_X22_Y5_N3
\Corr_Main_1|buff|buffer_1[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_1[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(14));

-- Location: LCCOMB_X20_Y5_N30
\Corr_Main_1|buff|buffer_1[36]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_1[36]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\,
	combout => \Corr_Main_1|buff|buffer_1[36]~feeder_combout\);

-- Location: LCFF_X20_Y5_N31
\Corr_Main_1|buff|buffer_1[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_1[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(36));

-- Location: LCCOMB_X20_Y7_N26
\Corr_Main_1|buff|buffer_1[37]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_1[37]~feeder_combout\ = \Corr_Main_1|buff|buffer_1\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_1\(36),
	combout => \Corr_Main_1|buff|buffer_1[37]~feeder_combout\);

-- Location: LCFF_X20_Y7_N27
\Corr_Main_1|buff|buffer_1[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_1[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(37));

-- Location: LCCOMB_X21_Y7_N0
\Corr_Main_1|buff|buffer_1[38]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_1[38]~feeder_combout\ = \Corr_Main_1|buff|buffer_1\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_1\(37),
	combout => \Corr_Main_1|buff|buffer_1[38]~feeder_combout\);

-- Location: LCFF_X21_Y7_N1
\Corr_Main_1|buff|buffer_1[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_1[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(38));

-- Location: LCFF_X22_Y7_N1
\Corr_Main_1|buff|buffer_1[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_1\(38),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(39));

-- Location: LCCOMB_X22_Y4_N20
\Corr_Main_1|buff|buffer_0[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0[11]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\,
	combout => \Corr_Main_1|buff|buffer_0[11]~feeder_combout\);

-- Location: LCFF_X22_Y4_N21
\Corr_Main_1|buff|buffer_0[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(11));

-- Location: LCFF_X22_Y4_N7
\Corr_Main_1|buff|buffer_0[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(12));

-- Location: LCFF_X21_Y5_N29
\Corr_Main_1|buff|buffer_0[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(13));

-- Location: LCCOMB_X22_Y5_N0
\Corr_Main_1|buff|buffer_0[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0[14]~feeder_combout\ = \Corr_Main_1|buff|buffer_0\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0\(13),
	combout => \Corr_Main_1|buff|buffer_0[14]~feeder_combout\);

-- Location: LCFF_X22_Y5_N1
\Corr_Main_1|buff|buffer_0[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(14));

-- Location: LCFF_X20_Y5_N19
\Corr_Main_1|buff|buffer_0[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(36));

-- Location: LCFF_X20_Y7_N31
\Corr_Main_1|buff|buffer_0[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0\(36),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(37));

-- Location: LCFF_X21_Y7_N13
\Corr_Main_1|buff|buffer_0[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0\(37),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(38));

-- Location: LCCOMB_X22_Y7_N30
\Corr_Main_1|buff|buffer_0[39]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0[39]~feeder_combout\ = \Corr_Main_1|buff|buffer_0\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0\(38),
	combout => \Corr_Main_1|buff|buffer_0[39]~feeder_combout\);

-- Location: LCFF_X22_Y7_N31
\Corr_Main_1|buff|buffer_0[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(39));

-- Location: LCFF_X22_Y4_N15
\Corr_Main_1|buff|buffer_7[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(11));

-- Location: LCFF_X22_Y4_N17
\Corr_Main_1|buff|buffer_7[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_7\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(12));

-- Location: LCCOMB_X21_Y5_N4
\Corr_Main_1|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~2_combout\ = (\Corr_Main_1|buff|buffer_1\(12) & ((\Corr_Main_1|buff|buffer_1\(13) & (\Corr_Main_1|Add3~1\ & VCC)) # (!\Corr_Main_1|buff|buffer_1\(13) & (!\Corr_Main_1|Add3~1\)))) # (!\Corr_Main_1|buff|buffer_1\(12) & 
-- ((\Corr_Main_1|buff|buffer_1\(13) & (!\Corr_Main_1|Add3~1\)) # (!\Corr_Main_1|buff|buffer_1\(13) & ((\Corr_Main_1|Add3~1\) # (GND)))))
-- \Corr_Main_1|Add3~3\ = CARRY((\Corr_Main_1|buff|buffer_1\(12) & (!\Corr_Main_1|buff|buffer_1\(13) & !\Corr_Main_1|Add3~1\)) # (!\Corr_Main_1|buff|buffer_1\(12) & ((!\Corr_Main_1|Add3~1\) # (!\Corr_Main_1|buff|buffer_1\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_1\(12),
	datab => \Corr_Main_1|buff|buffer_1\(13),
	datad => VCC,
	cin => \Corr_Main_1|Add3~1\,
	combout => \Corr_Main_1|Add3~2_combout\,
	cout => \Corr_Main_1|Add3~3\);

-- Location: LCCOMB_X21_Y5_N6
\Corr_Main_1|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~4_combout\ = ((\Corr_Main_1|buff|buffer_2\(12) $ (\Corr_Main_1|buff|buffer_2\(13) $ (!\Corr_Main_1|Add3~3\)))) # (GND)
-- \Corr_Main_1|Add3~5\ = CARRY((\Corr_Main_1|buff|buffer_2\(12) & ((\Corr_Main_1|buff|buffer_2\(13)) # (!\Corr_Main_1|Add3~3\))) # (!\Corr_Main_1|buff|buffer_2\(12) & (\Corr_Main_1|buff|buffer_2\(13) & !\Corr_Main_1|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_2\(12),
	datab => \Corr_Main_1|buff|buffer_2\(13),
	datad => VCC,
	cin => \Corr_Main_1|Add3~3\,
	combout => \Corr_Main_1|Add3~4_combout\,
	cout => \Corr_Main_1|Add3~5\);

-- Location: LCCOMB_X21_Y5_N8
\Corr_Main_1|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~6_combout\ = (\Corr_Main_1|buff|buffer_3\(13) & ((\Corr_Main_1|buff|buffer_3\(12) & (\Corr_Main_1|Add3~5\ & VCC)) # (!\Corr_Main_1|buff|buffer_3\(12) & (!\Corr_Main_1|Add3~5\)))) # (!\Corr_Main_1|buff|buffer_3\(13) & 
-- ((\Corr_Main_1|buff|buffer_3\(12) & (!\Corr_Main_1|Add3~5\)) # (!\Corr_Main_1|buff|buffer_3\(12) & ((\Corr_Main_1|Add3~5\) # (GND)))))
-- \Corr_Main_1|Add3~7\ = CARRY((\Corr_Main_1|buff|buffer_3\(13) & (!\Corr_Main_1|buff|buffer_3\(12) & !\Corr_Main_1|Add3~5\)) # (!\Corr_Main_1|buff|buffer_3\(13) & ((!\Corr_Main_1|Add3~5\) # (!\Corr_Main_1|buff|buffer_3\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_3\(13),
	datab => \Corr_Main_1|buff|buffer_3\(12),
	datad => VCC,
	cin => \Corr_Main_1|Add3~5\,
	combout => \Corr_Main_1|Add3~6_combout\,
	cout => \Corr_Main_1|Add3~7\);

-- Location: LCCOMB_X21_Y5_N12
\Corr_Main_1|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~10_combout\ = (\Corr_Main_1|buff|buffer_5\(12) & ((\Corr_Main_1|buff|buffer_5\(13) & (\Corr_Main_1|Add3~9\ & VCC)) # (!\Corr_Main_1|buff|buffer_5\(13) & (!\Corr_Main_1|Add3~9\)))) # (!\Corr_Main_1|buff|buffer_5\(12) & 
-- ((\Corr_Main_1|buff|buffer_5\(13) & (!\Corr_Main_1|Add3~9\)) # (!\Corr_Main_1|buff|buffer_5\(13) & ((\Corr_Main_1|Add3~9\) # (GND)))))
-- \Corr_Main_1|Add3~11\ = CARRY((\Corr_Main_1|buff|buffer_5\(12) & (!\Corr_Main_1|buff|buffer_5\(13) & !\Corr_Main_1|Add3~9\)) # (!\Corr_Main_1|buff|buffer_5\(12) & ((!\Corr_Main_1|Add3~9\) # (!\Corr_Main_1|buff|buffer_5\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_5\(12),
	datab => \Corr_Main_1|buff|buffer_5\(13),
	datad => VCC,
	cin => \Corr_Main_1|Add3~9\,
	combout => \Corr_Main_1|Add3~10_combout\,
	cout => \Corr_Main_1|Add3~11\);

-- Location: LCCOMB_X21_Y5_N14
\Corr_Main_1|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~12_combout\ = ((\Corr_Main_1|buff|buffer_6\(13) $ (\Corr_Main_1|buff|buffer_6\(12) $ (!\Corr_Main_1|Add3~11\)))) # (GND)
-- \Corr_Main_1|Add3~13\ = CARRY((\Corr_Main_1|buff|buffer_6\(13) & ((\Corr_Main_1|buff|buffer_6\(12)) # (!\Corr_Main_1|Add3~11\))) # (!\Corr_Main_1|buff|buffer_6\(13) & (\Corr_Main_1|buff|buffer_6\(12) & !\Corr_Main_1|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_6\(13),
	datab => \Corr_Main_1|buff|buffer_6\(12),
	datad => VCC,
	cin => \Corr_Main_1|Add3~11\,
	combout => \Corr_Main_1|Add3~12_combout\,
	cout => \Corr_Main_1|Add3~13\);

-- Location: LCCOMB_X21_Y5_N18
\Corr_Main_1|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~16_combout\ = !\Corr_Main_1|Add3~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add3~15\,
	combout => \Corr_Main_1|Add3~16_combout\);

-- Location: LCCOMB_X22_Y5_N12
\Corr_Main_1|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~0_combout\ = (\Corr_Main_1|Add3~0_combout\ & (\Corr_Main_1|buff|buffer_0\(14) $ (VCC))) # (!\Corr_Main_1|Add3~0_combout\ & (\Corr_Main_1|buff|buffer_0\(14) & VCC))
-- \Corr_Main_1|Add9~1\ = CARRY((\Corr_Main_1|Add3~0_combout\ & \Corr_Main_1|buff|buffer_0\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add3~0_combout\,
	datab => \Corr_Main_1|buff|buffer_0\(14),
	datad => VCC,
	combout => \Corr_Main_1|Add9~0_combout\,
	cout => \Corr_Main_1|Add9~1\);

-- Location: LCCOMB_X22_Y5_N16
\Corr_Main_1|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~4_combout\ = ((\Corr_Main_1|buff|buffer_2\(14) $ (\Corr_Main_1|Add3~4_combout\ $ (!\Corr_Main_1|Add9~3\)))) # (GND)
-- \Corr_Main_1|Add9~5\ = CARRY((\Corr_Main_1|buff|buffer_2\(14) & ((\Corr_Main_1|Add3~4_combout\) # (!\Corr_Main_1|Add9~3\))) # (!\Corr_Main_1|buff|buffer_2\(14) & (\Corr_Main_1|Add3~4_combout\ & !\Corr_Main_1|Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_2\(14),
	datab => \Corr_Main_1|Add3~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add9~3\,
	combout => \Corr_Main_1|Add9~4_combout\,
	cout => \Corr_Main_1|Add9~5\);

-- Location: LCCOMB_X22_Y5_N18
\Corr_Main_1|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~6_combout\ = (\Corr_Main_1|buff|buffer_3\(14) & ((\Corr_Main_1|Add3~6_combout\ & (\Corr_Main_1|Add9~5\ & VCC)) # (!\Corr_Main_1|Add3~6_combout\ & (!\Corr_Main_1|Add9~5\)))) # (!\Corr_Main_1|buff|buffer_3\(14) & 
-- ((\Corr_Main_1|Add3~6_combout\ & (!\Corr_Main_1|Add9~5\)) # (!\Corr_Main_1|Add3~6_combout\ & ((\Corr_Main_1|Add9~5\) # (GND)))))
-- \Corr_Main_1|Add9~7\ = CARRY((\Corr_Main_1|buff|buffer_3\(14) & (!\Corr_Main_1|Add3~6_combout\ & !\Corr_Main_1|Add9~5\)) # (!\Corr_Main_1|buff|buffer_3\(14) & ((!\Corr_Main_1|Add9~5\) # (!\Corr_Main_1|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_3\(14),
	datab => \Corr_Main_1|Add3~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add9~5\,
	combout => \Corr_Main_1|Add9~6_combout\,
	cout => \Corr_Main_1|Add9~7\);

-- Location: LCCOMB_X22_Y5_N26
\Corr_Main_1|Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~14_combout\ = (\Corr_Main_1|Add3~14_combout\ & ((\Corr_Main_1|buff|buffer_7\(14) & (\Corr_Main_1|Add9~13\ & VCC)) # (!\Corr_Main_1|buff|buffer_7\(14) & (!\Corr_Main_1|Add9~13\)))) # (!\Corr_Main_1|Add3~14_combout\ & 
-- ((\Corr_Main_1|buff|buffer_7\(14) & (!\Corr_Main_1|Add9~13\)) # (!\Corr_Main_1|buff|buffer_7\(14) & ((\Corr_Main_1|Add9~13\) # (GND)))))
-- \Corr_Main_1|Add9~15\ = CARRY((\Corr_Main_1|Add3~14_combout\ & (!\Corr_Main_1|buff|buffer_7\(14) & !\Corr_Main_1|Add9~13\)) # (!\Corr_Main_1|Add3~14_combout\ & ((!\Corr_Main_1|Add9~13\) # (!\Corr_Main_1|buff|buffer_7\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add3~14_combout\,
	datab => \Corr_Main_1|buff|buffer_7\(14),
	datad => VCC,
	cin => \Corr_Main_1|Add9~13\,
	combout => \Corr_Main_1|Add9~14_combout\,
	cout => \Corr_Main_1|Add9~15\);

-- Location: LCCOMB_X22_Y5_N28
\Corr_Main_1|Add9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~16_combout\ = (\Corr_Main_1|Add3~16_combout\ & (\Corr_Main_1|Add9~15\ $ (GND))) # (!\Corr_Main_1|Add3~16_combout\ & (!\Corr_Main_1|Add9~15\ & VCC))
-- \Corr_Main_1|Add9~17\ = CARRY((\Corr_Main_1|Add3~16_combout\ & !\Corr_Main_1|Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add3~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add9~15\,
	combout => \Corr_Main_1|Add9~16_combout\,
	cout => \Corr_Main_1|Add9~17\);

-- Location: LCCOMB_X22_Y5_N30
\Corr_Main_1|Add9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~18_combout\ = \Corr_Main_1|Add9~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add9~17\,
	combout => \Corr_Main_1|Add9~18_combout\);

-- Location: LCCOMB_X22_Y4_N2
\Corr_Main_1|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~2_combout\ = (\Corr_Main_1|buff|buffer_1\(11) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\ & (\Corr_Main_1|Add2~1\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\ & 
-- (!\Corr_Main_1|Add2~1\)))) # (!\Corr_Main_1|buff|buffer_1\(11) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\ & (!\Corr_Main_1|Add2~1\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\ & 
-- ((\Corr_Main_1|Add2~1\) # (GND)))))
-- \Corr_Main_1|Add2~3\ = CARRY((\Corr_Main_1|buff|buffer_1\(11) & (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\ & !\Corr_Main_1|Add2~1\)) # (!\Corr_Main_1|buff|buffer_1\(11) & ((!\Corr_Main_1|Add2~1\) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_1\(11),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\,
	datad => VCC,
	cin => \Corr_Main_1|Add2~1\,
	combout => \Corr_Main_1|Add2~2_combout\,
	cout => \Corr_Main_1|Add2~3\);

-- Location: LCCOMB_X22_Y4_N8
\Corr_Main_1|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~8_combout\ = ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\ $ (\Corr_Main_1|buff|buffer_4\(11) $ (!\Corr_Main_1|Add2~7\)))) # (GND)
-- \Corr_Main_1|Add2~9\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\ & ((\Corr_Main_1|buff|buffer_4\(11)) # (!\Corr_Main_1|Add2~7\))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\ & 
-- (\Corr_Main_1|buff|buffer_4\(11) & !\Corr_Main_1|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\,
	datab => \Corr_Main_1|buff|buffer_4\(11),
	datad => VCC,
	cin => \Corr_Main_1|Add2~7\,
	combout => \Corr_Main_1|Add2~8_combout\,
	cout => \Corr_Main_1|Add2~9\);

-- Location: LCCOMB_X22_Y4_N10
\Corr_Main_1|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~10_combout\ = (\Corr_Main_1|buff|buffer_5\(11) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\ & (\Corr_Main_1|Add2~9\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\ 
-- & (!\Corr_Main_1|Add2~9\)))) # (!\Corr_Main_1|buff|buffer_5\(11) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\ & (!\Corr_Main_1|Add2~9\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\ & 
-- ((\Corr_Main_1|Add2~9\) # (GND)))))
-- \Corr_Main_1|Add2~11\ = CARRY((\Corr_Main_1|buff|buffer_5\(11) & (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\ & !\Corr_Main_1|Add2~9\)) # (!\Corr_Main_1|buff|buffer_5\(11) & ((!\Corr_Main_1|Add2~9\) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_5\(11),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\,
	datad => VCC,
	cin => \Corr_Main_1|Add2~9\,
	combout => \Corr_Main_1|Add2~10_combout\,
	cout => \Corr_Main_1|Add2~11\);

-- Location: LCCOMB_X21_Y4_N8
\Corr_Main_1|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~0_combout\ = (\Corr_Main_1|Add2~0_combout\ & (\Corr_Main_1|Add9~0_combout\ $ (VCC))) # (!\Corr_Main_1|Add2~0_combout\ & (\Corr_Main_1|Add9~0_combout\ & VCC))
-- \Corr_Main_1|Add13~1\ = CARRY((\Corr_Main_1|Add2~0_combout\ & \Corr_Main_1|Add9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add2~0_combout\,
	datab => \Corr_Main_1|Add9~0_combout\,
	datad => VCC,
	combout => \Corr_Main_1|Add13~0_combout\,
	cout => \Corr_Main_1|Add13~1\);

-- Location: LCCOMB_X21_Y4_N10
\Corr_Main_1|Add13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~2_combout\ = (\Corr_Main_1|Add9~2_combout\ & ((\Corr_Main_1|Add2~2_combout\ & (\Corr_Main_1|Add13~1\ & VCC)) # (!\Corr_Main_1|Add2~2_combout\ & (!\Corr_Main_1|Add13~1\)))) # (!\Corr_Main_1|Add9~2_combout\ & 
-- ((\Corr_Main_1|Add2~2_combout\ & (!\Corr_Main_1|Add13~1\)) # (!\Corr_Main_1|Add2~2_combout\ & ((\Corr_Main_1|Add13~1\) # (GND)))))
-- \Corr_Main_1|Add13~3\ = CARRY((\Corr_Main_1|Add9~2_combout\ & (!\Corr_Main_1|Add2~2_combout\ & !\Corr_Main_1|Add13~1\)) # (!\Corr_Main_1|Add9~2_combout\ & ((!\Corr_Main_1|Add13~1\) # (!\Corr_Main_1|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add9~2_combout\,
	datab => \Corr_Main_1|Add2~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~1\,
	combout => \Corr_Main_1|Add13~2_combout\,
	cout => \Corr_Main_1|Add13~3\);

-- Location: LCCOMB_X21_Y4_N12
\Corr_Main_1|Add13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~4_combout\ = ((\Corr_Main_1|Add2~4_combout\ $ (\Corr_Main_1|Add9~4_combout\ $ (!\Corr_Main_1|Add13~3\)))) # (GND)
-- \Corr_Main_1|Add13~5\ = CARRY((\Corr_Main_1|Add2~4_combout\ & ((\Corr_Main_1|Add9~4_combout\) # (!\Corr_Main_1|Add13~3\))) # (!\Corr_Main_1|Add2~4_combout\ & (\Corr_Main_1|Add9~4_combout\ & !\Corr_Main_1|Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add2~4_combout\,
	datab => \Corr_Main_1|Add9~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~3\,
	combout => \Corr_Main_1|Add13~4_combout\,
	cout => \Corr_Main_1|Add13~5\);

-- Location: LCCOMB_X21_Y4_N14
\Corr_Main_1|Add13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~6_combout\ = (\Corr_Main_1|Add2~6_combout\ & ((\Corr_Main_1|Add9~6_combout\ & (\Corr_Main_1|Add13~5\ & VCC)) # (!\Corr_Main_1|Add9~6_combout\ & (!\Corr_Main_1|Add13~5\)))) # (!\Corr_Main_1|Add2~6_combout\ & 
-- ((\Corr_Main_1|Add9~6_combout\ & (!\Corr_Main_1|Add13~5\)) # (!\Corr_Main_1|Add9~6_combout\ & ((\Corr_Main_1|Add13~5\) # (GND)))))
-- \Corr_Main_1|Add13~7\ = CARRY((\Corr_Main_1|Add2~6_combout\ & (!\Corr_Main_1|Add9~6_combout\ & !\Corr_Main_1|Add13~5\)) # (!\Corr_Main_1|Add2~6_combout\ & ((!\Corr_Main_1|Add13~5\) # (!\Corr_Main_1|Add9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add2~6_combout\,
	datab => \Corr_Main_1|Add9~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~5\,
	combout => \Corr_Main_1|Add13~6_combout\,
	cout => \Corr_Main_1|Add13~7\);

-- Location: LCCOMB_X21_Y4_N18
\Corr_Main_1|Add13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~10_combout\ = (\Corr_Main_1|Add9~10_combout\ & ((\Corr_Main_1|Add2~10_combout\ & (\Corr_Main_1|Add13~9\ & VCC)) # (!\Corr_Main_1|Add2~10_combout\ & (!\Corr_Main_1|Add13~9\)))) # (!\Corr_Main_1|Add9~10_combout\ & 
-- ((\Corr_Main_1|Add2~10_combout\ & (!\Corr_Main_1|Add13~9\)) # (!\Corr_Main_1|Add2~10_combout\ & ((\Corr_Main_1|Add13~9\) # (GND)))))
-- \Corr_Main_1|Add13~11\ = CARRY((\Corr_Main_1|Add9~10_combout\ & (!\Corr_Main_1|Add2~10_combout\ & !\Corr_Main_1|Add13~9\)) # (!\Corr_Main_1|Add9~10_combout\ & ((!\Corr_Main_1|Add13~9\) # (!\Corr_Main_1|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add9~10_combout\,
	datab => \Corr_Main_1|Add2~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~9\,
	combout => \Corr_Main_1|Add13~10_combout\,
	cout => \Corr_Main_1|Add13~11\);

-- Location: LCCOMB_X21_Y4_N20
\Corr_Main_1|Add13~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~12_combout\ = ((\Corr_Main_1|Add9~12_combout\ $ (\Corr_Main_1|Add2~12_combout\ $ (!\Corr_Main_1|Add13~11\)))) # (GND)
-- \Corr_Main_1|Add13~13\ = CARRY((\Corr_Main_1|Add9~12_combout\ & ((\Corr_Main_1|Add2~12_combout\) # (!\Corr_Main_1|Add13~11\))) # (!\Corr_Main_1|Add9~12_combout\ & (\Corr_Main_1|Add2~12_combout\ & !\Corr_Main_1|Add13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add9~12_combout\,
	datab => \Corr_Main_1|Add2~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~11\,
	combout => \Corr_Main_1|Add13~12_combout\,
	cout => \Corr_Main_1|Add13~13\);

-- Location: LCCOMB_X21_Y4_N22
\Corr_Main_1|Add13~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~14_combout\ = (\Corr_Main_1|Add2~14_combout\ & ((\Corr_Main_1|Add9~14_combout\ & (\Corr_Main_1|Add13~13\ & VCC)) # (!\Corr_Main_1|Add9~14_combout\ & (!\Corr_Main_1|Add13~13\)))) # (!\Corr_Main_1|Add2~14_combout\ & 
-- ((\Corr_Main_1|Add9~14_combout\ & (!\Corr_Main_1|Add13~13\)) # (!\Corr_Main_1|Add9~14_combout\ & ((\Corr_Main_1|Add13~13\) # (GND)))))
-- \Corr_Main_1|Add13~15\ = CARRY((\Corr_Main_1|Add2~14_combout\ & (!\Corr_Main_1|Add9~14_combout\ & !\Corr_Main_1|Add13~13\)) # (!\Corr_Main_1|Add2~14_combout\ & ((!\Corr_Main_1|Add13~13\) # (!\Corr_Main_1|Add9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add2~14_combout\,
	datab => \Corr_Main_1|Add9~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~13\,
	combout => \Corr_Main_1|Add13~14_combout\,
	cout => \Corr_Main_1|Add13~15\);

-- Location: LCCOMB_X21_Y4_N28
\Corr_Main_1|Add13~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~20_combout\ = !\Corr_Main_1|Add13~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add13~19\,
	combout => \Corr_Main_1|Add13~20_combout\);

-- Location: LCCOMB_X26_Y4_N8
\Corr_Main_1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add0~0_combout\ = (\Corr_Main_1|buff|buffer_0\(0) & (\Corr_Main_1|buff|buffer_0\(1) $ (VCC))) # (!\Corr_Main_1|buff|buffer_0\(0) & (\Corr_Main_1|buff|buffer_0\(1) & VCC))
-- \Corr_Main_1|Add0~1\ = CARRY((\Corr_Main_1|buff|buffer_0\(0) & \Corr_Main_1|buff|buffer_0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0\(0),
	datab => \Corr_Main_1|buff|buffer_0\(1),
	datad => VCC,
	combout => \Corr_Main_1|Add0~0_combout\,
	cout => \Corr_Main_1|Add0~1\);

-- Location: LCCOMB_X26_Y4_N10
\Corr_Main_1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add0~2_combout\ = (\Corr_Main_1|buff|buffer_1\(0) & ((\Corr_Main_1|buff|buffer_1\(1) & (\Corr_Main_1|Add0~1\ & VCC)) # (!\Corr_Main_1|buff|buffer_1\(1) & (!\Corr_Main_1|Add0~1\)))) # (!\Corr_Main_1|buff|buffer_1\(0) & 
-- ((\Corr_Main_1|buff|buffer_1\(1) & (!\Corr_Main_1|Add0~1\)) # (!\Corr_Main_1|buff|buffer_1\(1) & ((\Corr_Main_1|Add0~1\) # (GND)))))
-- \Corr_Main_1|Add0~3\ = CARRY((\Corr_Main_1|buff|buffer_1\(0) & (!\Corr_Main_1|buff|buffer_1\(1) & !\Corr_Main_1|Add0~1\)) # (!\Corr_Main_1|buff|buffer_1\(0) & ((!\Corr_Main_1|Add0~1\) # (!\Corr_Main_1|buff|buffer_1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_1\(0),
	datab => \Corr_Main_1|buff|buffer_1\(1),
	datad => VCC,
	cin => \Corr_Main_1|Add0~1\,
	combout => \Corr_Main_1|Add0~2_combout\,
	cout => \Corr_Main_1|Add0~3\);

-- Location: LCCOMB_X26_Y4_N14
\Corr_Main_1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add0~6_combout\ = (\Corr_Main_1|buff|buffer_3\(0) & ((\Corr_Main_1|buff|buffer_3\(1) & (\Corr_Main_1|Add0~5\ & VCC)) # (!\Corr_Main_1|buff|buffer_3\(1) & (!\Corr_Main_1|Add0~5\)))) # (!\Corr_Main_1|buff|buffer_3\(0) & 
-- ((\Corr_Main_1|buff|buffer_3\(1) & (!\Corr_Main_1|Add0~5\)) # (!\Corr_Main_1|buff|buffer_3\(1) & ((\Corr_Main_1|Add0~5\) # (GND)))))
-- \Corr_Main_1|Add0~7\ = CARRY((\Corr_Main_1|buff|buffer_3\(0) & (!\Corr_Main_1|buff|buffer_3\(1) & !\Corr_Main_1|Add0~5\)) # (!\Corr_Main_1|buff|buffer_3\(0) & ((!\Corr_Main_1|Add0~5\) # (!\Corr_Main_1|buff|buffer_3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_3\(0),
	datab => \Corr_Main_1|buff|buffer_3\(1),
	datad => VCC,
	cin => \Corr_Main_1|Add0~5\,
	combout => \Corr_Main_1|Add0~6_combout\,
	cout => \Corr_Main_1|Add0~7\);

-- Location: LCCOMB_X26_Y4_N16
\Corr_Main_1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add0~8_combout\ = ((\Corr_Main_1|buff|buffer_4\(1) $ (\Corr_Main_1|buff|buffer_4\(0) $ (!\Corr_Main_1|Add0~7\)))) # (GND)
-- \Corr_Main_1|Add0~9\ = CARRY((\Corr_Main_1|buff|buffer_4\(1) & ((\Corr_Main_1|buff|buffer_4\(0)) # (!\Corr_Main_1|Add0~7\))) # (!\Corr_Main_1|buff|buffer_4\(1) & (\Corr_Main_1|buff|buffer_4\(0) & !\Corr_Main_1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_4\(1),
	datab => \Corr_Main_1|buff|buffer_4\(0),
	datad => VCC,
	cin => \Corr_Main_1|Add0~7\,
	combout => \Corr_Main_1|Add0~8_combout\,
	cout => \Corr_Main_1|Add0~9\);

-- Location: LCCOMB_X26_Y4_N18
\Corr_Main_1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add0~10_combout\ = (\Corr_Main_1|buff|buffer_5\(1) & ((\Corr_Main_1|buff|buffer_5\(0) & (\Corr_Main_1|Add0~9\ & VCC)) # (!\Corr_Main_1|buff|buffer_5\(0) & (!\Corr_Main_1|Add0~9\)))) # (!\Corr_Main_1|buff|buffer_5\(1) & 
-- ((\Corr_Main_1|buff|buffer_5\(0) & (!\Corr_Main_1|Add0~9\)) # (!\Corr_Main_1|buff|buffer_5\(0) & ((\Corr_Main_1|Add0~9\) # (GND)))))
-- \Corr_Main_1|Add0~11\ = CARRY((\Corr_Main_1|buff|buffer_5\(1) & (!\Corr_Main_1|buff|buffer_5\(0) & !\Corr_Main_1|Add0~9\)) # (!\Corr_Main_1|buff|buffer_5\(1) & ((!\Corr_Main_1|Add0~9\) # (!\Corr_Main_1|buff|buffer_5\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_5\(1),
	datab => \Corr_Main_1|buff|buffer_5\(0),
	datad => VCC,
	cin => \Corr_Main_1|Add0~9\,
	combout => \Corr_Main_1|Add0~10_combout\,
	cout => \Corr_Main_1|Add0~11\);

-- Location: LCCOMB_X26_Y4_N20
\Corr_Main_1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add0~12_combout\ = ((\Corr_Main_1|buff|buffer_6\(0) $ (\Corr_Main_1|buff|buffer_6\(1) $ (!\Corr_Main_1|Add0~11\)))) # (GND)
-- \Corr_Main_1|Add0~13\ = CARRY((\Corr_Main_1|buff|buffer_6\(0) & ((\Corr_Main_1|buff|buffer_6\(1)) # (!\Corr_Main_1|Add0~11\))) # (!\Corr_Main_1|buff|buffer_6\(0) & (\Corr_Main_1|buff|buffer_6\(1) & !\Corr_Main_1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_6\(0),
	datab => \Corr_Main_1|buff|buffer_6\(1),
	datad => VCC,
	cin => \Corr_Main_1|Add0~11\,
	combout => \Corr_Main_1|Add0~12_combout\,
	cout => \Corr_Main_1|Add0~13\);

-- Location: LCCOMB_X26_Y4_N22
\Corr_Main_1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add0~14_combout\ = (\Corr_Main_1|buff|buffer_7\(1) & ((\Corr_Main_1|buff|buffer_7\(0) & (\Corr_Main_1|Add0~13\ & VCC)) # (!\Corr_Main_1|buff|buffer_7\(0) & (!\Corr_Main_1|Add0~13\)))) # (!\Corr_Main_1|buff|buffer_7\(1) & 
-- ((\Corr_Main_1|buff|buffer_7\(0) & (!\Corr_Main_1|Add0~13\)) # (!\Corr_Main_1|buff|buffer_7\(0) & ((\Corr_Main_1|Add0~13\) # (GND)))))
-- \Corr_Main_1|Add0~15\ = CARRY((\Corr_Main_1|buff|buffer_7\(1) & (!\Corr_Main_1|buff|buffer_7\(0) & !\Corr_Main_1|Add0~13\)) # (!\Corr_Main_1|buff|buffer_7\(1) & ((!\Corr_Main_1|Add0~13\) # (!\Corr_Main_1|buff|buffer_7\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_7\(1),
	datab => \Corr_Main_1|buff|buffer_7\(0),
	datad => VCC,
	cin => \Corr_Main_1|Add0~13\,
	combout => \Corr_Main_1|Add0~14_combout\,
	cout => \Corr_Main_1|Add0~15\);

-- Location: LCCOMB_X26_Y4_N24
\Corr_Main_1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add0~16_combout\ = !\Corr_Main_1|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add0~15\,
	combout => \Corr_Main_1|Add0~16_combout\);

-- Location: LCCOMB_X25_Y4_N12
\Corr_Main_1|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~2_combout\ = (\Corr_Main_1|Add1~2_combout\ & ((\Corr_Main_1|Add0~2_combout\ & (\Corr_Main_1|Add8~1\ & VCC)) # (!\Corr_Main_1|Add0~2_combout\ & (!\Corr_Main_1|Add8~1\)))) # (!\Corr_Main_1|Add1~2_combout\ & ((\Corr_Main_1|Add0~2_combout\ & 
-- (!\Corr_Main_1|Add8~1\)) # (!\Corr_Main_1|Add0~2_combout\ & ((\Corr_Main_1|Add8~1\) # (GND)))))
-- \Corr_Main_1|Add8~3\ = CARRY((\Corr_Main_1|Add1~2_combout\ & (!\Corr_Main_1|Add0~2_combout\ & !\Corr_Main_1|Add8~1\)) # (!\Corr_Main_1|Add1~2_combout\ & ((!\Corr_Main_1|Add8~1\) # (!\Corr_Main_1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add1~2_combout\,
	datab => \Corr_Main_1|Add0~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add8~1\,
	combout => \Corr_Main_1|Add8~2_combout\,
	cout => \Corr_Main_1|Add8~3\);

-- Location: LCCOMB_X25_Y4_N20
\Corr_Main_1|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~10_combout\ = (\Corr_Main_1|Add1~10_combout\ & ((\Corr_Main_1|Add0~10_combout\ & (\Corr_Main_1|Add8~9\ & VCC)) # (!\Corr_Main_1|Add0~10_combout\ & (!\Corr_Main_1|Add8~9\)))) # (!\Corr_Main_1|Add1~10_combout\ & 
-- ((\Corr_Main_1|Add0~10_combout\ & (!\Corr_Main_1|Add8~9\)) # (!\Corr_Main_1|Add0~10_combout\ & ((\Corr_Main_1|Add8~9\) # (GND)))))
-- \Corr_Main_1|Add8~11\ = CARRY((\Corr_Main_1|Add1~10_combout\ & (!\Corr_Main_1|Add0~10_combout\ & !\Corr_Main_1|Add8~9\)) # (!\Corr_Main_1|Add1~10_combout\ & ((!\Corr_Main_1|Add8~9\) # (!\Corr_Main_1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add1~10_combout\,
	datab => \Corr_Main_1|Add0~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add8~9\,
	combout => \Corr_Main_1|Add8~10_combout\,
	cout => \Corr_Main_1|Add8~11\);

-- Location: LCCOMB_X25_Y4_N22
\Corr_Main_1|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~12_combout\ = ((\Corr_Main_1|Add1~12_combout\ $ (\Corr_Main_1|Add0~12_combout\ $ (!\Corr_Main_1|Add8~11\)))) # (GND)
-- \Corr_Main_1|Add8~13\ = CARRY((\Corr_Main_1|Add1~12_combout\ & ((\Corr_Main_1|Add0~12_combout\) # (!\Corr_Main_1|Add8~11\))) # (!\Corr_Main_1|Add1~12_combout\ & (\Corr_Main_1|Add0~12_combout\ & !\Corr_Main_1|Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add1~12_combout\,
	datab => \Corr_Main_1|Add0~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add8~11\,
	combout => \Corr_Main_1|Add8~12_combout\,
	cout => \Corr_Main_1|Add8~13\);

-- Location: LCCOMB_X25_Y4_N24
\Corr_Main_1|Add8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~14_combout\ = (\Corr_Main_1|Add1~14_combout\ & ((\Corr_Main_1|Add0~14_combout\ & (\Corr_Main_1|Add8~13\ & VCC)) # (!\Corr_Main_1|Add0~14_combout\ & (!\Corr_Main_1|Add8~13\)))) # (!\Corr_Main_1|Add1~14_combout\ & 
-- ((\Corr_Main_1|Add0~14_combout\ & (!\Corr_Main_1|Add8~13\)) # (!\Corr_Main_1|Add0~14_combout\ & ((\Corr_Main_1|Add8~13\) # (GND)))))
-- \Corr_Main_1|Add8~15\ = CARRY((\Corr_Main_1|Add1~14_combout\ & (!\Corr_Main_1|Add0~14_combout\ & !\Corr_Main_1|Add8~13\)) # (!\Corr_Main_1|Add1~14_combout\ & ((!\Corr_Main_1|Add8~13\) # (!\Corr_Main_1|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add1~14_combout\,
	datab => \Corr_Main_1|Add0~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add8~13\,
	combout => \Corr_Main_1|Add8~14_combout\,
	cout => \Corr_Main_1|Add8~15\);

-- Location: LCCOMB_X25_Y4_N28
\Corr_Main_1|Add8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~18_combout\ = \Corr_Main_1|Add8~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add8~17\,
	combout => \Corr_Main_1|Add8~18_combout\);

-- Location: LCCOMB_X24_Y4_N12
\Corr_Main_1|Add12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~8_combout\ = ((\Corr_Main_1|Add8~8_combout\ $ (\Corr_Main_1|buff|buffer_4\(4) $ (!\Corr_Main_1|Add12~7\)))) # (GND)
-- \Corr_Main_1|Add12~9\ = CARRY((\Corr_Main_1|Add8~8_combout\ & ((\Corr_Main_1|buff|buffer_4\(4)) # (!\Corr_Main_1|Add12~7\))) # (!\Corr_Main_1|Add8~8_combout\ & (\Corr_Main_1|buff|buffer_4\(4) & !\Corr_Main_1|Add12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add8~8_combout\,
	datab => \Corr_Main_1|buff|buffer_4\(4),
	datad => VCC,
	cin => \Corr_Main_1|Add12~7\,
	combout => \Corr_Main_1|Add12~8_combout\,
	cout => \Corr_Main_1|Add12~9\);

-- Location: LCCOMB_X24_Y4_N20
\Corr_Main_1|Add12~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~16_combout\ = (\Corr_Main_1|Add8~16_combout\ & (\Corr_Main_1|Add12~15\ $ (GND))) # (!\Corr_Main_1|Add8~16_combout\ & (!\Corr_Main_1|Add12~15\ & VCC))
-- \Corr_Main_1|Add12~17\ = CARRY((\Corr_Main_1|Add8~16_combout\ & !\Corr_Main_1|Add12~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add8~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add12~15\,
	combout => \Corr_Main_1|Add12~16_combout\,
	cout => \Corr_Main_1|Add12~17\);

-- Location: LCCOMB_X20_Y4_N6
\Corr_Main_1|Add15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add15~2_combout\ = (\Corr_Main_1|Add12~2_combout\ & ((\Corr_Main_1|Add13~2_combout\ & (\Corr_Main_1|Add15~1\ & VCC)) # (!\Corr_Main_1|Add13~2_combout\ & (!\Corr_Main_1|Add15~1\)))) # (!\Corr_Main_1|Add12~2_combout\ & 
-- ((\Corr_Main_1|Add13~2_combout\ & (!\Corr_Main_1|Add15~1\)) # (!\Corr_Main_1|Add13~2_combout\ & ((\Corr_Main_1|Add15~1\) # (GND)))))
-- \Corr_Main_1|Add15~3\ = CARRY((\Corr_Main_1|Add12~2_combout\ & (!\Corr_Main_1|Add13~2_combout\ & !\Corr_Main_1|Add15~1\)) # (!\Corr_Main_1|Add12~2_combout\ & ((!\Corr_Main_1|Add15~1\) # (!\Corr_Main_1|Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add12~2_combout\,
	datab => \Corr_Main_1|Add13~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add15~1\,
	combout => \Corr_Main_1|Add15~2_combout\,
	cout => \Corr_Main_1|Add15~3\);

-- Location: LCCOMB_X20_Y4_N12
\Corr_Main_1|Add15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add15~8_combout\ = ((\Corr_Main_1|Add13~8_combout\ $ (\Corr_Main_1|Add12~8_combout\ $ (!\Corr_Main_1|Add15~7\)))) # (GND)
-- \Corr_Main_1|Add15~9\ = CARRY((\Corr_Main_1|Add13~8_combout\ & ((\Corr_Main_1|Add12~8_combout\) # (!\Corr_Main_1|Add15~7\))) # (!\Corr_Main_1|Add13~8_combout\ & (\Corr_Main_1|Add12~8_combout\ & !\Corr_Main_1|Add15~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add13~8_combout\,
	datab => \Corr_Main_1|Add12~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add15~7\,
	combout => \Corr_Main_1|Add15~8_combout\,
	cout => \Corr_Main_1|Add15~9\);

-- Location: LCCOMB_X20_Y4_N16
\Corr_Main_1|Add15~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add15~12_combout\ = ((\Corr_Main_1|Add12~12_combout\ $ (\Corr_Main_1|Add13~12_combout\ $ (!\Corr_Main_1|Add15~11\)))) # (GND)
-- \Corr_Main_1|Add15~13\ = CARRY((\Corr_Main_1|Add12~12_combout\ & ((\Corr_Main_1|Add13~12_combout\) # (!\Corr_Main_1|Add15~11\))) # (!\Corr_Main_1|Add12~12_combout\ & (\Corr_Main_1|Add13~12_combout\ & !\Corr_Main_1|Add15~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add12~12_combout\,
	datab => \Corr_Main_1|Add13~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add15~11\,
	combout => \Corr_Main_1|Add15~12_combout\,
	cout => \Corr_Main_1|Add15~13\);

-- Location: LCCOMB_X20_Y4_N22
\Corr_Main_1|Add15~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add15~18_combout\ = (\Corr_Main_1|Add13~18_combout\ & ((\Corr_Main_1|Add12~18_combout\ & (\Corr_Main_1|Add15~17\ & VCC)) # (!\Corr_Main_1|Add12~18_combout\ & (!\Corr_Main_1|Add15~17\)))) # (!\Corr_Main_1|Add13~18_combout\ & 
-- ((\Corr_Main_1|Add12~18_combout\ & (!\Corr_Main_1|Add15~17\)) # (!\Corr_Main_1|Add12~18_combout\ & ((\Corr_Main_1|Add15~17\) # (GND)))))
-- \Corr_Main_1|Add15~19\ = CARRY((\Corr_Main_1|Add13~18_combout\ & (!\Corr_Main_1|Add12~18_combout\ & !\Corr_Main_1|Add15~17\)) # (!\Corr_Main_1|Add13~18_combout\ & ((!\Corr_Main_1|Add15~17\) # (!\Corr_Main_1|Add12~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add13~18_combout\,
	datab => \Corr_Main_1|Add12~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add15~17\,
	combout => \Corr_Main_1|Add15~18_combout\,
	cout => \Corr_Main_1|Add15~19\);

-- Location: LCCOMB_X20_Y4_N24
\Corr_Main_1|Add15~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add15~20_combout\ = ((\Corr_Main_1|Add12~20_combout\ $ (\Corr_Main_1|Add13~20_combout\ $ (!\Corr_Main_1|Add15~19\)))) # (GND)
-- \Corr_Main_1|Add15~21\ = CARRY((\Corr_Main_1|Add12~20_combout\ & ((\Corr_Main_1|Add13~20_combout\) # (!\Corr_Main_1|Add15~19\))) # (!\Corr_Main_1|Add12~20_combout\ & (\Corr_Main_1|Add13~20_combout\ & !\Corr_Main_1|Add15~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add12~20_combout\,
	datab => \Corr_Main_1|Add13~20_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add15~19\,
	combout => \Corr_Main_1|Add15~20_combout\,
	cout => \Corr_Main_1|Add15~21\);

-- Location: LCCOMB_X20_Y4_N26
\Corr_Main_1|Add15~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add15~22_combout\ = \Corr_Main_1|Add15~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add15~21\,
	combout => \Corr_Main_1|Add15~22_combout\);

-- Location: LCCOMB_X22_Y7_N8
\Corr_Main_1|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~0_combout\ = (\Corr_Main_1|buff|buffer_0\(38) & (\Corr_Main_1|buff|buffer_0\(39) $ (VCC))) # (!\Corr_Main_1|buff|buffer_0\(38) & (\Corr_Main_1|buff|buffer_0\(39) & VCC))
-- \Corr_Main_1|Add5~1\ = CARRY((\Corr_Main_1|buff|buffer_0\(38) & \Corr_Main_1|buff|buffer_0\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0\(38),
	datab => \Corr_Main_1|buff|buffer_0\(39),
	datad => VCC,
	combout => \Corr_Main_1|Add5~0_combout\,
	cout => \Corr_Main_1|Add5~1\);

-- Location: LCCOMB_X22_Y7_N10
\Corr_Main_1|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~2_combout\ = (\Corr_Main_1|buff|buffer_1\(38) & ((\Corr_Main_1|buff|buffer_1\(39) & (\Corr_Main_1|Add5~1\ & VCC)) # (!\Corr_Main_1|buff|buffer_1\(39) & (!\Corr_Main_1|Add5~1\)))) # (!\Corr_Main_1|buff|buffer_1\(38) & 
-- ((\Corr_Main_1|buff|buffer_1\(39) & (!\Corr_Main_1|Add5~1\)) # (!\Corr_Main_1|buff|buffer_1\(39) & ((\Corr_Main_1|Add5~1\) # (GND)))))
-- \Corr_Main_1|Add5~3\ = CARRY((\Corr_Main_1|buff|buffer_1\(38) & (!\Corr_Main_1|buff|buffer_1\(39) & !\Corr_Main_1|Add5~1\)) # (!\Corr_Main_1|buff|buffer_1\(38) & ((!\Corr_Main_1|Add5~1\) # (!\Corr_Main_1|buff|buffer_1\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_1\(38),
	datab => \Corr_Main_1|buff|buffer_1\(39),
	datad => VCC,
	cin => \Corr_Main_1|Add5~1\,
	combout => \Corr_Main_1|Add5~2_combout\,
	cout => \Corr_Main_1|Add5~3\);

-- Location: LCCOMB_X22_Y7_N12
\Corr_Main_1|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~4_combout\ = ((\Corr_Main_1|buff|buffer_2\(38) $ (\Corr_Main_1|buff|buffer_2\(39) $ (!\Corr_Main_1|Add5~3\)))) # (GND)
-- \Corr_Main_1|Add5~5\ = CARRY((\Corr_Main_1|buff|buffer_2\(38) & ((\Corr_Main_1|buff|buffer_2\(39)) # (!\Corr_Main_1|Add5~3\))) # (!\Corr_Main_1|buff|buffer_2\(38) & (\Corr_Main_1|buff|buffer_2\(39) & !\Corr_Main_1|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_2\(38),
	datab => \Corr_Main_1|buff|buffer_2\(39),
	datad => VCC,
	cin => \Corr_Main_1|Add5~3\,
	combout => \Corr_Main_1|Add5~4_combout\,
	cout => \Corr_Main_1|Add5~5\);

-- Location: LCCOMB_X21_Y7_N14
\Corr_Main_1|Add10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~2_combout\ = (\Corr_Main_1|Add4~2_combout\ & ((\Corr_Main_1|Add5~2_combout\ & (\Corr_Main_1|Add10~1\ & VCC)) # (!\Corr_Main_1|Add5~2_combout\ & (!\Corr_Main_1|Add10~1\)))) # (!\Corr_Main_1|Add4~2_combout\ & 
-- ((\Corr_Main_1|Add5~2_combout\ & (!\Corr_Main_1|Add10~1\)) # (!\Corr_Main_1|Add5~2_combout\ & ((\Corr_Main_1|Add10~1\) # (GND)))))
-- \Corr_Main_1|Add10~3\ = CARRY((\Corr_Main_1|Add4~2_combout\ & (!\Corr_Main_1|Add5~2_combout\ & !\Corr_Main_1|Add10~1\)) # (!\Corr_Main_1|Add4~2_combout\ & ((!\Corr_Main_1|Add10~1\) # (!\Corr_Main_1|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~2_combout\,
	datab => \Corr_Main_1|Add5~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add10~1\,
	combout => \Corr_Main_1|Add10~2_combout\,
	cout => \Corr_Main_1|Add10~3\);

-- Location: LCCOMB_X20_Y5_N8
\Corr_Main_1|Add14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~6_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\ & ((\Corr_Main_1|Add10~6_combout\ & (\Corr_Main_1|Add14~5\ & VCC)) # (!\Corr_Main_1|Add10~6_combout\ & (!\Corr_Main_1|Add14~5\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\ & ((\Corr_Main_1|Add10~6_combout\ & (!\Corr_Main_1|Add14~5\)) # (!\Corr_Main_1|Add10~6_combout\ & ((\Corr_Main_1|Add14~5\) # (GND)))))
-- \Corr_Main_1|Add14~7\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\ & (!\Corr_Main_1|Add10~6_combout\ & !\Corr_Main_1|Add14~5\)) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\ & 
-- ((!\Corr_Main_1|Add14~5\) # (!\Corr_Main_1|Add10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\,
	datab => \Corr_Main_1|Add10~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~5\,
	combout => \Corr_Main_1|Add14~6_combout\,
	cout => \Corr_Main_1|Add14~7\);

-- Location: LCCOMB_X20_Y5_N10
\Corr_Main_1|Add14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~8_combout\ = ((\Corr_Main_1|Add10~8_combout\ $ (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a4\ $ (!\Corr_Main_1|Add14~7\)))) # (GND)
-- \Corr_Main_1|Add14~9\ = CARRY((\Corr_Main_1|Add10~8_combout\ & ((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a4\) # (!\Corr_Main_1|Add14~7\))) # (!\Corr_Main_1|Add10~8_combout\ & 
-- (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a4\ & !\Corr_Main_1|Add14~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~8_combout\,
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a4\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~7\,
	combout => \Corr_Main_1|Add14~8_combout\,
	cout => \Corr_Main_1|Add14~9\);

-- Location: LCCOMB_X20_Y5_N12
\Corr_Main_1|Add14~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~10_combout\ = (\Corr_Main_1|Add10~10_combout\ & ((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\ & (\Corr_Main_1|Add14~9\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\ & 
-- (!\Corr_Main_1|Add14~9\)))) # (!\Corr_Main_1|Add10~10_combout\ & ((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\ & (!\Corr_Main_1|Add14~9\)) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\ & 
-- ((\Corr_Main_1|Add14~9\) # (GND)))))
-- \Corr_Main_1|Add14~11\ = CARRY((\Corr_Main_1|Add10~10_combout\ & (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\ & !\Corr_Main_1|Add14~9\)) # (!\Corr_Main_1|Add10~10_combout\ & ((!\Corr_Main_1|Add14~9\) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~10_combout\,
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~9\,
	combout => \Corr_Main_1|Add14~10_combout\,
	cout => \Corr_Main_1|Add14~11\);

-- Location: LCCOMB_X20_Y5_N14
\Corr_Main_1|Add14~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~12_combout\ = ((\Corr_Main_1|Add10~12_combout\ $ (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a6\ $ (!\Corr_Main_1|Add14~11\)))) # (GND)
-- \Corr_Main_1|Add14~13\ = CARRY((\Corr_Main_1|Add10~12_combout\ & ((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a6\) # (!\Corr_Main_1|Add14~11\))) # (!\Corr_Main_1|Add10~12_combout\ & 
-- (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a6\ & !\Corr_Main_1|Add14~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~12_combout\,
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a6\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~11\,
	combout => \Corr_Main_1|Add14~12_combout\,
	cout => \Corr_Main_1|Add14~13\);

-- Location: LCFF_X19_Y6_N3
\Corr_Main_1|buff|buffer_7[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a7\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(46));

-- Location: LCCOMB_X20_Y6_N12
\Corr_Main_1|buff|buffer_7[47]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_7[47]~feeder_combout\ = \Corr_Main_1|buff|buffer_7\(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_7\(46),
	combout => \Corr_Main_1|buff|buffer_7[47]~feeder_combout\);

-- Location: LCFF_X20_Y6_N13
\Corr_Main_1|buff|buffer_7[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_7[47]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(47));

-- Location: LCCOMB_X19_Y6_N28
\Corr_Main_1|buff|buffer_6[46]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_6[46]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a6\,
	combout => \Corr_Main_1|buff|buffer_6[46]~feeder_combout\);

-- Location: LCFF_X19_Y6_N29
\Corr_Main_1|buff|buffer_6[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_6[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(46));

-- Location: LCCOMB_X19_Y6_N4
\Corr_Main_1|buff|buffer_5[46]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_5[46]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\,
	combout => \Corr_Main_1|buff|buffer_5[46]~feeder_combout\);

-- Location: LCFF_X19_Y6_N5
\Corr_Main_1|buff|buffer_5[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_5[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(46));

-- Location: LCFF_X19_Y6_N1
\Corr_Main_1|buff|buffer_4[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a4\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(46));

-- Location: LCFF_X20_Y6_N23
\Corr_Main_1|buff|buffer_4[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_4\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(47));

-- Location: LCFF_X20_Y6_N9
\Corr_Main_1|buff|buffer_3[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(46));

-- Location: LCCOMB_X19_Y6_N6
\Corr_Main_1|buff|buffer_2[46]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_2[46]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\,
	combout => \Corr_Main_1|buff|buffer_2[46]~feeder_combout\);

-- Location: LCFF_X19_Y6_N7
\Corr_Main_1|buff|buffer_2[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_2[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(46));

-- Location: LCFF_X20_Y6_N19
\Corr_Main_1|buff|buffer_2[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_2\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(47));

-- Location: LCCOMB_X19_Y6_N30
\Corr_Main_1|buff|buffer_1[46]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_1[46]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\,
	combout => \Corr_Main_1|buff|buffer_1[46]~feeder_combout\);

-- Location: LCFF_X19_Y6_N31
\Corr_Main_1|buff|buffer_1[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_1[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(46));

-- Location: LCFF_X19_Y6_N25
\Corr_Main_1|buff|buffer_0[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(46));

-- Location: LCFF_X20_Y6_N15
\Corr_Main_1|buff|buffer_0[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(47));

-- Location: LCCOMB_X20_Y6_N14
\Corr_Main_1|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~0_combout\ = (\Corr_Main_1|buff|buffer_0\(46) & (\Corr_Main_1|buff|buffer_0\(47) $ (VCC))) # (!\Corr_Main_1|buff|buffer_0\(46) & (\Corr_Main_1|buff|buffer_0\(47) & VCC))
-- \Corr_Main_1|Add6~1\ = CARRY((\Corr_Main_1|buff|buffer_0\(46) & \Corr_Main_1|buff|buffer_0\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0\(46),
	datab => \Corr_Main_1|buff|buffer_0\(47),
	datad => VCC,
	combout => \Corr_Main_1|Add6~0_combout\,
	cout => \Corr_Main_1|Add6~1\);

-- Location: LCCOMB_X20_Y6_N16
\Corr_Main_1|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~2_combout\ = (\Corr_Main_1|buff|buffer_1\(47) & ((\Corr_Main_1|buff|buffer_1\(46) & (\Corr_Main_1|Add6~1\ & VCC)) # (!\Corr_Main_1|buff|buffer_1\(46) & (!\Corr_Main_1|Add6~1\)))) # (!\Corr_Main_1|buff|buffer_1\(47) & 
-- ((\Corr_Main_1|buff|buffer_1\(46) & (!\Corr_Main_1|Add6~1\)) # (!\Corr_Main_1|buff|buffer_1\(46) & ((\Corr_Main_1|Add6~1\) # (GND)))))
-- \Corr_Main_1|Add6~3\ = CARRY((\Corr_Main_1|buff|buffer_1\(47) & (!\Corr_Main_1|buff|buffer_1\(46) & !\Corr_Main_1|Add6~1\)) # (!\Corr_Main_1|buff|buffer_1\(47) & ((!\Corr_Main_1|Add6~1\) # (!\Corr_Main_1|buff|buffer_1\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_1\(47),
	datab => \Corr_Main_1|buff|buffer_1\(46),
	datad => VCC,
	cin => \Corr_Main_1|Add6~1\,
	combout => \Corr_Main_1|Add6~2_combout\,
	cout => \Corr_Main_1|Add6~3\);

-- Location: LCCOMB_X20_Y6_N18
\Corr_Main_1|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~4_combout\ = ((\Corr_Main_1|buff|buffer_2\(46) $ (\Corr_Main_1|buff|buffer_2\(47) $ (!\Corr_Main_1|Add6~3\)))) # (GND)
-- \Corr_Main_1|Add6~5\ = CARRY((\Corr_Main_1|buff|buffer_2\(46) & ((\Corr_Main_1|buff|buffer_2\(47)) # (!\Corr_Main_1|Add6~3\))) # (!\Corr_Main_1|buff|buffer_2\(46) & (\Corr_Main_1|buff|buffer_2\(47) & !\Corr_Main_1|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_2\(46),
	datab => \Corr_Main_1|buff|buffer_2\(47),
	datad => VCC,
	cin => \Corr_Main_1|Add6~3\,
	combout => \Corr_Main_1|Add6~4_combout\,
	cout => \Corr_Main_1|Add6~5\);

-- Location: LCCOMB_X20_Y6_N20
\Corr_Main_1|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~6_combout\ = (\Corr_Main_1|buff|buffer_3\(47) & ((\Corr_Main_1|buff|buffer_3\(46) & (\Corr_Main_1|Add6~5\ & VCC)) # (!\Corr_Main_1|buff|buffer_3\(46) & (!\Corr_Main_1|Add6~5\)))) # (!\Corr_Main_1|buff|buffer_3\(47) & 
-- ((\Corr_Main_1|buff|buffer_3\(46) & (!\Corr_Main_1|Add6~5\)) # (!\Corr_Main_1|buff|buffer_3\(46) & ((\Corr_Main_1|Add6~5\) # (GND)))))
-- \Corr_Main_1|Add6~7\ = CARRY((\Corr_Main_1|buff|buffer_3\(47) & (!\Corr_Main_1|buff|buffer_3\(46) & !\Corr_Main_1|Add6~5\)) # (!\Corr_Main_1|buff|buffer_3\(47) & ((!\Corr_Main_1|Add6~5\) # (!\Corr_Main_1|buff|buffer_3\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_3\(47),
	datab => \Corr_Main_1|buff|buffer_3\(46),
	datad => VCC,
	cin => \Corr_Main_1|Add6~5\,
	combout => \Corr_Main_1|Add6~6_combout\,
	cout => \Corr_Main_1|Add6~7\);

-- Location: LCCOMB_X20_Y6_N22
\Corr_Main_1|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~8_combout\ = ((\Corr_Main_1|buff|buffer_4\(46) $ (\Corr_Main_1|buff|buffer_4\(47) $ (!\Corr_Main_1|Add6~7\)))) # (GND)
-- \Corr_Main_1|Add6~9\ = CARRY((\Corr_Main_1|buff|buffer_4\(46) & ((\Corr_Main_1|buff|buffer_4\(47)) # (!\Corr_Main_1|Add6~7\))) # (!\Corr_Main_1|buff|buffer_4\(46) & (\Corr_Main_1|buff|buffer_4\(47) & !\Corr_Main_1|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_4\(46),
	datab => \Corr_Main_1|buff|buffer_4\(47),
	datad => VCC,
	cin => \Corr_Main_1|Add6~7\,
	combout => \Corr_Main_1|Add6~8_combout\,
	cout => \Corr_Main_1|Add6~9\);

-- Location: LCCOMB_X19_Y6_N8
\Corr_Main_1|Add11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add11~0_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\ & (\Corr_Main_1|Add6~0_combout\ $ (VCC))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\ & 
-- (\Corr_Main_1|Add6~0_combout\ & VCC))
-- \Corr_Main_1|Add11~1\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\ & \Corr_Main_1|Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	datab => \Corr_Main_1|Add6~0_combout\,
	datad => VCC,
	combout => \Corr_Main_1|Add11~0_combout\,
	cout => \Corr_Main_1|Add11~1\);

-- Location: LCCOMB_X19_Y6_N10
\Corr_Main_1|Add11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add11~2_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\ & ((\Corr_Main_1|Add6~2_combout\ & (\Corr_Main_1|Add11~1\ & VCC)) # (!\Corr_Main_1|Add6~2_combout\ & (!\Corr_Main_1|Add11~1\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\ & ((\Corr_Main_1|Add6~2_combout\ & (!\Corr_Main_1|Add11~1\)) # (!\Corr_Main_1|Add6~2_combout\ & ((\Corr_Main_1|Add11~1\) # (GND)))))
-- \Corr_Main_1|Add11~3\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\ & (!\Corr_Main_1|Add6~2_combout\ & !\Corr_Main_1|Add11~1\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\ & 
-- ((!\Corr_Main_1|Add11~1\) # (!\Corr_Main_1|Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\,
	datab => \Corr_Main_1|Add6~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add11~1\,
	combout => \Corr_Main_1|Add11~2_combout\,
	cout => \Corr_Main_1|Add11~3\);

-- Location: LCCOMB_X19_Y6_N12
\Corr_Main_1|Add11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add11~4_combout\ = ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\ $ (\Corr_Main_1|Add6~4_combout\ $ (!\Corr_Main_1|Add11~3\)))) # (GND)
-- \Corr_Main_1|Add11~5\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\ & ((\Corr_Main_1|Add6~4_combout\) # (!\Corr_Main_1|Add11~3\))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\ & 
-- (\Corr_Main_1|Add6~4_combout\ & !\Corr_Main_1|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\,
	datab => \Corr_Main_1|Add6~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add11~3\,
	combout => \Corr_Main_1|Add11~4_combout\,
	cout => \Corr_Main_1|Add11~5\);

-- Location: LCCOMB_X19_Y5_N4
\Corr_Main_1|Add16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~4_combout\ = ((\Corr_Main_1|Add14~4_combout\ $ (\Corr_Main_1|Add11~4_combout\ $ (!\Corr_Main_1|Add16~3\)))) # (GND)
-- \Corr_Main_1|Add16~5\ = CARRY((\Corr_Main_1|Add14~4_combout\ & ((\Corr_Main_1|Add11~4_combout\) # (!\Corr_Main_1|Add16~3\))) # (!\Corr_Main_1|Add14~4_combout\ & (\Corr_Main_1|Add11~4_combout\ & !\Corr_Main_1|Add16~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add14~4_combout\,
	datab => \Corr_Main_1|Add11~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~3\,
	combout => \Corr_Main_1|Add16~4_combout\,
	cout => \Corr_Main_1|Add16~5\);

-- Location: LCCOMB_X19_Y5_N6
\Corr_Main_1|Add16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~6_combout\ = (\Corr_Main_1|Add11~6_combout\ & ((\Corr_Main_1|Add14~6_combout\ & (\Corr_Main_1|Add16~5\ & VCC)) # (!\Corr_Main_1|Add14~6_combout\ & (!\Corr_Main_1|Add16~5\)))) # (!\Corr_Main_1|Add11~6_combout\ & 
-- ((\Corr_Main_1|Add14~6_combout\ & (!\Corr_Main_1|Add16~5\)) # (!\Corr_Main_1|Add14~6_combout\ & ((\Corr_Main_1|Add16~5\) # (GND)))))
-- \Corr_Main_1|Add16~7\ = CARRY((\Corr_Main_1|Add11~6_combout\ & (!\Corr_Main_1|Add14~6_combout\ & !\Corr_Main_1|Add16~5\)) # (!\Corr_Main_1|Add11~6_combout\ & ((!\Corr_Main_1|Add16~5\) # (!\Corr_Main_1|Add14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add11~6_combout\,
	datab => \Corr_Main_1|Add14~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~5\,
	combout => \Corr_Main_1|Add16~6_combout\,
	cout => \Corr_Main_1|Add16~7\);

-- Location: LCCOMB_X19_Y5_N8
\Corr_Main_1|Add16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~8_combout\ = ((\Corr_Main_1|Add11~8_combout\ $ (\Corr_Main_1|Add14~8_combout\ $ (!\Corr_Main_1|Add16~7\)))) # (GND)
-- \Corr_Main_1|Add16~9\ = CARRY((\Corr_Main_1|Add11~8_combout\ & ((\Corr_Main_1|Add14~8_combout\) # (!\Corr_Main_1|Add16~7\))) # (!\Corr_Main_1|Add11~8_combout\ & (\Corr_Main_1|Add14~8_combout\ & !\Corr_Main_1|Add16~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add11~8_combout\,
	datab => \Corr_Main_1|Add14~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~7\,
	combout => \Corr_Main_1|Add16~8_combout\,
	cout => \Corr_Main_1|Add16~9\);

-- Location: LCFF_X20_Y6_N29
\Corr_Main_1|buff|buffer_7[48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_7\(47),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(48));

-- Location: LCFF_X21_Y6_N29
\Corr_Main_1|buff|buffer_7[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_7\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(49));

-- Location: LCCOMB_X20_Y6_N10
\Corr_Main_1|buff|buffer_6[47]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_6[47]~feeder_combout\ = \Corr_Main_1|buff|buffer_6\(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_6\(46),
	combout => \Corr_Main_1|buff|buffer_6[47]~feeder_combout\);

-- Location: LCFF_X20_Y6_N11
\Corr_Main_1|buff|buffer_6[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_6[47]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(47));

-- Location: LCCOMB_X20_Y6_N2
\Corr_Main_1|buff|buffer_6[48]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_6[48]~feeder_combout\ = \Corr_Main_1|buff|buffer_6\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_6\(47),
	combout => \Corr_Main_1|buff|buffer_6[48]~feeder_combout\);

-- Location: LCFF_X20_Y6_N3
\Corr_Main_1|buff|buffer_6[48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_6[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(48));

-- Location: LCFF_X20_Y6_N25
\Corr_Main_1|buff|buffer_5[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_5\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(47));

-- Location: LCCOMB_X21_Y6_N4
\Corr_Main_1|buff|buffer_5[48]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_5[48]~feeder_combout\ = \Corr_Main_1|buff|buffer_5\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_5\(47),
	combout => \Corr_Main_1|buff|buffer_5[48]~feeder_combout\);

-- Location: LCFF_X21_Y6_N5
\Corr_Main_1|buff|buffer_5[48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_5[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(48));

-- Location: LCCOMB_X20_Y6_N6
\Corr_Main_1|buff|buffer_4[48]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_4[48]~feeder_combout\ = \Corr_Main_1|buff|buffer_4\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_4\(47),
	combout => \Corr_Main_1|buff|buffer_4[48]~feeder_combout\);

-- Location: LCFF_X20_Y6_N7
\Corr_Main_1|buff|buffer_4[48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_4[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(48));

-- Location: LCFF_X20_Y6_N21
\Corr_Main_1|buff|buffer_3[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_3\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(47));

-- Location: LCFF_X20_Y6_N31
\Corr_Main_1|buff|buffer_3[48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_3\(47),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(48));

-- Location: LCFF_X21_Y6_N21
\Corr_Main_1|buff|buffer_3[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_3\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(49));

-- Location: LCCOMB_X20_Y6_N0
\Corr_Main_1|buff|buffer_2[48]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_2[48]~feeder_combout\ = \Corr_Main_1|buff|buffer_2\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_2\(47),
	combout => \Corr_Main_1|buff|buffer_2[48]~feeder_combout\);

-- Location: LCFF_X20_Y6_N1
\Corr_Main_1|buff|buffer_2[48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_2[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(48));

-- Location: LCFF_X21_Y6_N19
\Corr_Main_1|buff|buffer_2[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_2\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(49));

-- Location: LCFF_X20_Y6_N17
\Corr_Main_1|buff|buffer_1[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_1\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(47));

-- Location: LCFF_X20_Y6_N27
\Corr_Main_1|buff|buffer_1[48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_1\(47),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(48));

-- Location: LCFF_X21_Y6_N17
\Corr_Main_1|buff|buffer_1[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_1\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(49));

-- Location: LCFF_X20_Y6_N5
\Corr_Main_1|buff|buffer_0[48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0\(47),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(48));

-- Location: LCCOMB_X21_Y6_N14
\Corr_Main_1|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add7~0_combout\ = (\Corr_Main_1|buff|buffer_0\(49) & (\Corr_Main_1|buff|buffer_0\(48) $ (VCC))) # (!\Corr_Main_1|buff|buffer_0\(49) & (\Corr_Main_1|buff|buffer_0\(48) & VCC))
-- \Corr_Main_1|Add7~1\ = CARRY((\Corr_Main_1|buff|buffer_0\(49) & \Corr_Main_1|buff|buffer_0\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0\(49),
	datab => \Corr_Main_1|buff|buffer_0\(48),
	datad => VCC,
	combout => \Corr_Main_1|Add7~0_combout\,
	cout => \Corr_Main_1|Add7~1\);

-- Location: LCCOMB_X21_Y6_N16
\Corr_Main_1|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add7~2_combout\ = (\Corr_Main_1|buff|buffer_1\(48) & ((\Corr_Main_1|buff|buffer_1\(49) & (\Corr_Main_1|Add7~1\ & VCC)) # (!\Corr_Main_1|buff|buffer_1\(49) & (!\Corr_Main_1|Add7~1\)))) # (!\Corr_Main_1|buff|buffer_1\(48) & 
-- ((\Corr_Main_1|buff|buffer_1\(49) & (!\Corr_Main_1|Add7~1\)) # (!\Corr_Main_1|buff|buffer_1\(49) & ((\Corr_Main_1|Add7~1\) # (GND)))))
-- \Corr_Main_1|Add7~3\ = CARRY((\Corr_Main_1|buff|buffer_1\(48) & (!\Corr_Main_1|buff|buffer_1\(49) & !\Corr_Main_1|Add7~1\)) # (!\Corr_Main_1|buff|buffer_1\(48) & ((!\Corr_Main_1|Add7~1\) # (!\Corr_Main_1|buff|buffer_1\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_1\(48),
	datab => \Corr_Main_1|buff|buffer_1\(49),
	datad => VCC,
	cin => \Corr_Main_1|Add7~1\,
	combout => \Corr_Main_1|Add7~2_combout\,
	cout => \Corr_Main_1|Add7~3\);

-- Location: LCCOMB_X21_Y6_N24
\Corr_Main_1|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add7~10_combout\ = (\Corr_Main_1|buff|buffer_5\(49) & ((\Corr_Main_1|buff|buffer_5\(48) & (\Corr_Main_1|Add7~9\ & VCC)) # (!\Corr_Main_1|buff|buffer_5\(48) & (!\Corr_Main_1|Add7~9\)))) # (!\Corr_Main_1|buff|buffer_5\(49) & 
-- ((\Corr_Main_1|buff|buffer_5\(48) & (!\Corr_Main_1|Add7~9\)) # (!\Corr_Main_1|buff|buffer_5\(48) & ((\Corr_Main_1|Add7~9\) # (GND)))))
-- \Corr_Main_1|Add7~11\ = CARRY((\Corr_Main_1|buff|buffer_5\(49) & (!\Corr_Main_1|buff|buffer_5\(48) & !\Corr_Main_1|Add7~9\)) # (!\Corr_Main_1|buff|buffer_5\(49) & ((!\Corr_Main_1|Add7~9\) # (!\Corr_Main_1|buff|buffer_5\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_5\(49),
	datab => \Corr_Main_1|buff|buffer_5\(48),
	datad => VCC,
	cin => \Corr_Main_1|Add7~9\,
	combout => \Corr_Main_1|Add7~10_combout\,
	cout => \Corr_Main_1|Add7~11\);

-- Location: LCCOMB_X21_Y6_N26
\Corr_Main_1|Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add7~12_combout\ = ((\Corr_Main_1|buff|buffer_6\(49) $ (\Corr_Main_1|buff|buffer_6\(48) $ (!\Corr_Main_1|Add7~11\)))) # (GND)
-- \Corr_Main_1|Add7~13\ = CARRY((\Corr_Main_1|buff|buffer_6\(49) & ((\Corr_Main_1|buff|buffer_6\(48)) # (!\Corr_Main_1|Add7~11\))) # (!\Corr_Main_1|buff|buffer_6\(49) & (\Corr_Main_1|buff|buffer_6\(48) & !\Corr_Main_1|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_6\(49),
	datab => \Corr_Main_1|buff|buffer_6\(48),
	datad => VCC,
	cin => \Corr_Main_1|Add7~11\,
	combout => \Corr_Main_1|Add7~12_combout\,
	cout => \Corr_Main_1|Add7~13\);

-- Location: LCCOMB_X21_Y8_N4
\Corr_Main_1|Add17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~0_combout\ = (\Corr_Main_1|Add16~0_combout\ & (\Corr_Main_1|Add7~0_combout\ $ (VCC))) # (!\Corr_Main_1|Add16~0_combout\ & (\Corr_Main_1|Add7~0_combout\ & VCC))
-- \Corr_Main_1|Add17~1\ = CARRY((\Corr_Main_1|Add16~0_combout\ & \Corr_Main_1|Add7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add16~0_combout\,
	datab => \Corr_Main_1|Add7~0_combout\,
	datad => VCC,
	combout => \Corr_Main_1|Add17~0_combout\,
	cout => \Corr_Main_1|Add17~1\);

-- Location: LCCOMB_X21_Y8_N8
\Corr_Main_1|Add17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~4_combout\ = ((\Corr_Main_1|Add7~4_combout\ $ (\Corr_Main_1|Add16~4_combout\ $ (!\Corr_Main_1|Add17~3\)))) # (GND)
-- \Corr_Main_1|Add17~5\ = CARRY((\Corr_Main_1|Add7~4_combout\ & ((\Corr_Main_1|Add16~4_combout\) # (!\Corr_Main_1|Add17~3\))) # (!\Corr_Main_1|Add7~4_combout\ & (\Corr_Main_1|Add16~4_combout\ & !\Corr_Main_1|Add17~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add7~4_combout\,
	datab => \Corr_Main_1|Add16~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~3\,
	combout => \Corr_Main_1|Add17~4_combout\,
	cout => \Corr_Main_1|Add17~5\);

-- Location: LCCOMB_X21_Y8_N10
\Corr_Main_1|Add17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~6_combout\ = (\Corr_Main_1|Add7~6_combout\ & ((\Corr_Main_1|Add16~6_combout\ & (\Corr_Main_1|Add17~5\ & VCC)) # (!\Corr_Main_1|Add16~6_combout\ & (!\Corr_Main_1|Add17~5\)))) # (!\Corr_Main_1|Add7~6_combout\ & 
-- ((\Corr_Main_1|Add16~6_combout\ & (!\Corr_Main_1|Add17~5\)) # (!\Corr_Main_1|Add16~6_combout\ & ((\Corr_Main_1|Add17~5\) # (GND)))))
-- \Corr_Main_1|Add17~7\ = CARRY((\Corr_Main_1|Add7~6_combout\ & (!\Corr_Main_1|Add16~6_combout\ & !\Corr_Main_1|Add17~5\)) # (!\Corr_Main_1|Add7~6_combout\ & ((!\Corr_Main_1|Add17~5\) # (!\Corr_Main_1|Add16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add7~6_combout\,
	datab => \Corr_Main_1|Add16~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~5\,
	combout => \Corr_Main_1|Add17~6_combout\,
	cout => \Corr_Main_1|Add17~7\);

-- Location: LCCOMB_X21_Y8_N14
\Corr_Main_1|Add17~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~10_combout\ = (\Corr_Main_1|Add16~10_combout\ & ((\Corr_Main_1|Add7~10_combout\ & (\Corr_Main_1|Add17~9\ & VCC)) # (!\Corr_Main_1|Add7~10_combout\ & (!\Corr_Main_1|Add17~9\)))) # (!\Corr_Main_1|Add16~10_combout\ & 
-- ((\Corr_Main_1|Add7~10_combout\ & (!\Corr_Main_1|Add17~9\)) # (!\Corr_Main_1|Add7~10_combout\ & ((\Corr_Main_1|Add17~9\) # (GND)))))
-- \Corr_Main_1|Add17~11\ = CARRY((\Corr_Main_1|Add16~10_combout\ & (!\Corr_Main_1|Add7~10_combout\ & !\Corr_Main_1|Add17~9\)) # (!\Corr_Main_1|Add16~10_combout\ & ((!\Corr_Main_1|Add17~9\) # (!\Corr_Main_1|Add7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add16~10_combout\,
	datab => \Corr_Main_1|Add7~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~9\,
	combout => \Corr_Main_1|Add17~10_combout\,
	cout => \Corr_Main_1|Add17~11\);

-- Location: LCCOMB_X21_Y8_N18
\Corr_Main_1|Add17~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~14_combout\ = (\Corr_Main_1|Add16~14_combout\ & ((\Corr_Main_1|Add7~14_combout\ & (\Corr_Main_1|Add17~13\ & VCC)) # (!\Corr_Main_1|Add7~14_combout\ & (!\Corr_Main_1|Add17~13\)))) # (!\Corr_Main_1|Add16~14_combout\ & 
-- ((\Corr_Main_1|Add7~14_combout\ & (!\Corr_Main_1|Add17~13\)) # (!\Corr_Main_1|Add7~14_combout\ & ((\Corr_Main_1|Add17~13\) # (GND)))))
-- \Corr_Main_1|Add17~15\ = CARRY((\Corr_Main_1|Add16~14_combout\ & (!\Corr_Main_1|Add7~14_combout\ & !\Corr_Main_1|Add17~13\)) # (!\Corr_Main_1|Add16~14_combout\ & ((!\Corr_Main_1|Add17~13\) # (!\Corr_Main_1|Add7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add16~14_combout\,
	datab => \Corr_Main_1|Add7~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~13\,
	combout => \Corr_Main_1|Add17~14_combout\,
	cout => \Corr_Main_1|Add17~15\);

-- Location: LCCOMB_X20_Y8_N2
\Corr_Main_1|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~0_combout\ = (\Corr_Main_1|Add15~0_combout\ & (\Corr_Main_1|Add17~0_combout\ $ (VCC))) # (!\Corr_Main_1|Add15~0_combout\ & (\Corr_Main_1|Add17~0_combout\ & VCC))
-- \Corr_Main_1|Add18~1\ = CARRY((\Corr_Main_1|Add15~0_combout\ & \Corr_Main_1|Add17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add15~0_combout\,
	datab => \Corr_Main_1|Add17~0_combout\,
	datad => VCC,
	combout => \Corr_Main_1|Add18~0_combout\,
	cout => \Corr_Main_1|Add18~1\);

-- Location: LCCOMB_X20_Y8_N6
\Corr_Main_1|Add18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~4_combout\ = ((\Corr_Main_1|Add15~4_combout\ $ (\Corr_Main_1|Add17~4_combout\ $ (!\Corr_Main_1|Add18~3\)))) # (GND)
-- \Corr_Main_1|Add18~5\ = CARRY((\Corr_Main_1|Add15~4_combout\ & ((\Corr_Main_1|Add17~4_combout\) # (!\Corr_Main_1|Add18~3\))) # (!\Corr_Main_1|Add15~4_combout\ & (\Corr_Main_1|Add17~4_combout\ & !\Corr_Main_1|Add18~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add15~4_combout\,
	datab => \Corr_Main_1|Add17~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~3\,
	combout => \Corr_Main_1|Add18~4_combout\,
	cout => \Corr_Main_1|Add18~5\);

-- Location: LCCOMB_X20_Y8_N10
\Corr_Main_1|Add18~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~8_combout\ = ((\Corr_Main_1|Add17~8_combout\ $ (\Corr_Main_1|Add15~8_combout\ $ (!\Corr_Main_1|Add18~7\)))) # (GND)
-- \Corr_Main_1|Add18~9\ = CARRY((\Corr_Main_1|Add17~8_combout\ & ((\Corr_Main_1|Add15~8_combout\) # (!\Corr_Main_1|Add18~7\))) # (!\Corr_Main_1|Add17~8_combout\ & (\Corr_Main_1|Add15~8_combout\ & !\Corr_Main_1|Add18~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add17~8_combout\,
	datab => \Corr_Main_1|Add15~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~7\,
	combout => \Corr_Main_1|Add18~8_combout\,
	cout => \Corr_Main_1|Add18~9\);

-- Location: LCCOMB_X20_Y8_N12
\Corr_Main_1|Add18~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~10_combout\ = (\Corr_Main_1|Add15~10_combout\ & ((\Corr_Main_1|Add17~10_combout\ & (\Corr_Main_1|Add18~9\ & VCC)) # (!\Corr_Main_1|Add17~10_combout\ & (!\Corr_Main_1|Add18~9\)))) # (!\Corr_Main_1|Add15~10_combout\ & 
-- ((\Corr_Main_1|Add17~10_combout\ & (!\Corr_Main_1|Add18~9\)) # (!\Corr_Main_1|Add17~10_combout\ & ((\Corr_Main_1|Add18~9\) # (GND)))))
-- \Corr_Main_1|Add18~11\ = CARRY((\Corr_Main_1|Add15~10_combout\ & (!\Corr_Main_1|Add17~10_combout\ & !\Corr_Main_1|Add18~9\)) # (!\Corr_Main_1|Add15~10_combout\ & ((!\Corr_Main_1|Add18~9\) # (!\Corr_Main_1|Add17~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add15~10_combout\,
	datab => \Corr_Main_1|Add17~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~9\,
	combout => \Corr_Main_1|Add18~10_combout\,
	cout => \Corr_Main_1|Add18~11\);

-- Location: LCCOMB_X20_Y8_N14
\Corr_Main_1|Add18~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~12_combout\ = ((\Corr_Main_1|Add17~12_combout\ $ (\Corr_Main_1|Add15~12_combout\ $ (!\Corr_Main_1|Add18~11\)))) # (GND)
-- \Corr_Main_1|Add18~13\ = CARRY((\Corr_Main_1|Add17~12_combout\ & ((\Corr_Main_1|Add15~12_combout\) # (!\Corr_Main_1|Add18~11\))) # (!\Corr_Main_1|Add17~12_combout\ & (\Corr_Main_1|Add15~12_combout\ & !\Corr_Main_1|Add18~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add17~12_combout\,
	datab => \Corr_Main_1|Add15~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~11\,
	combout => \Corr_Main_1|Add18~12_combout\,
	cout => \Corr_Main_1|Add18~13\);

-- Location: LCCOMB_X20_Y8_N16
\Corr_Main_1|Add18~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~14_combout\ = (\Corr_Main_1|Add15~14_combout\ & ((\Corr_Main_1|Add17~14_combout\ & (\Corr_Main_1|Add18~13\ & VCC)) # (!\Corr_Main_1|Add17~14_combout\ & (!\Corr_Main_1|Add18~13\)))) # (!\Corr_Main_1|Add15~14_combout\ & 
-- ((\Corr_Main_1|Add17~14_combout\ & (!\Corr_Main_1|Add18~13\)) # (!\Corr_Main_1|Add17~14_combout\ & ((\Corr_Main_1|Add18~13\) # (GND)))))
-- \Corr_Main_1|Add18~15\ = CARRY((\Corr_Main_1|Add15~14_combout\ & (!\Corr_Main_1|Add17~14_combout\ & !\Corr_Main_1|Add18~13\)) # (!\Corr_Main_1|Add15~14_combout\ & ((!\Corr_Main_1|Add18~13\) # (!\Corr_Main_1|Add17~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add15~14_combout\,
	datab => \Corr_Main_1|Add17~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~13\,
	combout => \Corr_Main_1|Add18~14_combout\,
	cout => \Corr_Main_1|Add18~15\);

-- Location: LCCOMB_X20_Y8_N18
\Corr_Main_1|Add18~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~16_combout\ = ((\Corr_Main_1|Add15~16_combout\ $ (\Corr_Main_1|Add17~16_combout\ $ (!\Corr_Main_1|Add18~15\)))) # (GND)
-- \Corr_Main_1|Add18~17\ = CARRY((\Corr_Main_1|Add15~16_combout\ & ((\Corr_Main_1|Add17~16_combout\) # (!\Corr_Main_1|Add18~15\))) # (!\Corr_Main_1|Add15~16_combout\ & (\Corr_Main_1|Add17~16_combout\ & !\Corr_Main_1|Add18~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add15~16_combout\,
	datab => \Corr_Main_1|Add17~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~15\,
	combout => \Corr_Main_1|Add18~16_combout\,
	cout => \Corr_Main_1|Add18~17\);

-- Location: LCCOMB_X20_Y8_N20
\Corr_Main_1|Add18~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~18_combout\ = (\Corr_Main_1|Add17~18_combout\ & ((\Corr_Main_1|Add15~18_combout\ & (\Corr_Main_1|Add18~17\ & VCC)) # (!\Corr_Main_1|Add15~18_combout\ & (!\Corr_Main_1|Add18~17\)))) # (!\Corr_Main_1|Add17~18_combout\ & 
-- ((\Corr_Main_1|Add15~18_combout\ & (!\Corr_Main_1|Add18~17\)) # (!\Corr_Main_1|Add15~18_combout\ & ((\Corr_Main_1|Add18~17\) # (GND)))))
-- \Corr_Main_1|Add18~19\ = CARRY((\Corr_Main_1|Add17~18_combout\ & (!\Corr_Main_1|Add15~18_combout\ & !\Corr_Main_1|Add18~17\)) # (!\Corr_Main_1|Add17~18_combout\ & ((!\Corr_Main_1|Add18~17\) # (!\Corr_Main_1|Add15~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add17~18_combout\,
	datab => \Corr_Main_1|Add15~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~17\,
	combout => \Corr_Main_1|Add18~18_combout\,
	cout => \Corr_Main_1|Add18~19\);

-- Location: LCCOMB_X20_Y8_N22
\Corr_Main_1|Add18~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~20_combout\ = ((\Corr_Main_1|Add17~20_combout\ $ (\Corr_Main_1|Add15~20_combout\ $ (!\Corr_Main_1|Add18~19\)))) # (GND)
-- \Corr_Main_1|Add18~21\ = CARRY((\Corr_Main_1|Add17~20_combout\ & ((\Corr_Main_1|Add15~20_combout\) # (!\Corr_Main_1|Add18~19\))) # (!\Corr_Main_1|Add17~20_combout\ & (\Corr_Main_1|Add15~20_combout\ & !\Corr_Main_1|Add18~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add17~20_combout\,
	datab => \Corr_Main_1|Add15~20_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~19\,
	combout => \Corr_Main_1|Add18~20_combout\,
	cout => \Corr_Main_1|Add18~21\);

-- Location: LCCOMB_X20_Y8_N24
\Corr_Main_1|Add18~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~22_combout\ = (\Corr_Main_1|Add17~22_combout\ & ((\Corr_Main_1|Add15~22_combout\ & (\Corr_Main_1|Add18~21\ & VCC)) # (!\Corr_Main_1|Add15~22_combout\ & (!\Corr_Main_1|Add18~21\)))) # (!\Corr_Main_1|Add17~22_combout\ & 
-- ((\Corr_Main_1|Add15~22_combout\ & (!\Corr_Main_1|Add18~21\)) # (!\Corr_Main_1|Add15~22_combout\ & ((\Corr_Main_1|Add18~21\) # (GND)))))
-- \Corr_Main_1|Add18~23\ = CARRY((\Corr_Main_1|Add17~22_combout\ & (!\Corr_Main_1|Add15~22_combout\ & !\Corr_Main_1|Add18~21\)) # (!\Corr_Main_1|Add17~22_combout\ & ((!\Corr_Main_1|Add18~21\) # (!\Corr_Main_1|Add15~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add17~22_combout\,
	datab => \Corr_Main_1|Add15~22_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~21\,
	combout => \Corr_Main_1|Add18~22_combout\,
	cout => \Corr_Main_1|Add18~23\);

-- Location: LCCOMB_X19_Y7_N22
\Corr_Main_1|PREAMBULE_FOUND~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|PREAMBULE_FOUND~0_combout\ = (\Corr_Main_1|Equal5~0_combout\ & ((\Corr_Main_1|Add18~20_combout\) # ((\Corr_Main_1|Add18~22_combout\) # (\Corr_Main_1|Add18~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add18~20_combout\,
	datab => \Corr_Main_1|Equal5~0_combout\,
	datac => \Corr_Main_1|Add18~22_combout\,
	datad => \Corr_Main_1|Add18~18_combout\,
	combout => \Corr_Main_1|PREAMBULE_FOUND~0_combout\);

-- Location: LCCOMB_X20_Y8_N26
\Corr_Main_1|Add18~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~24_combout\ = !\Corr_Main_1|Add18~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|Add18~23\,
	combout => \Corr_Main_1|Add18~24_combout\);

-- Location: LCCOMB_X19_Y7_N6
\Corr_Main_1|PREAMBULE_FOUND~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|PREAMBULE_FOUND~3_combout\ = (\Corr_Main_1|PREAMBULE_FOUND~0_combout\) # ((\Corr_Main_1|Equal5~0_combout\ & ((\Corr_Main_1|PREAMBULE_FOUND~2_combout\) # (\Corr_Main_1|Add18~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|PREAMBULE_FOUND~2_combout\,
	datab => \Corr_Main_1|PREAMBULE_FOUND~0_combout\,
	datac => \Corr_Main_1|Equal5~0_combout\,
	datad => \Corr_Main_1|Add18~24_combout\,
	combout => \Corr_Main_1|PREAMBULE_FOUND~3_combout\);

-- Location: LCCOMB_X15_Y7_N12
\Corr_Main_1|PREAMBULE_FOUND~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|PREAMBULE_FOUND~feeder_combout\ = \Corr_Main_1|PREAMBULE_FOUND~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|PREAMBULE_FOUND~3_combout\,
	combout => \Corr_Main_1|PREAMBULE_FOUND~feeder_combout\);

-- Location: LCFF_X15_Y7_N13
\Corr_Main_1|PREAMBULE_FOUND\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|PREAMBULE_FOUND~feeder_combout\,
	sdata => \~GND~combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	sload => \this_read_adc_manager|ADC_BIT_VALID~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|PREAMBULE_FOUND~regout\);

-- Location: LCCOMB_X20_Y11_N8
\this_mram_controller|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|counter~1_combout\ = (\this_mram_controller|curr_state.idle~regout\ & !\this_mram_controller|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|curr_state.idle~regout\,
	datac => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|counter~1_combout\);

-- Location: LCFF_X20_Y11_N9
\this_mram_controller|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|counter\(0));

-- Location: LCCOMB_X20_Y11_N24
\this_mram_controller|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux25~0_combout\ = (!\this_mram_controller|counter\(0) & \Corr_Main_1|Add18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|counter\(0),
	datac => \Corr_Main_1|Add18~0_combout\,
	combout => \this_mram_controller|Mux25~0_combout\);

-- Location: LCCOMB_X20_Y11_N2
\this_mram_controller|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Add0~0_combout\ = \this_mram_controller|counter\(2) $ (((\this_mram_controller|counter\(1) & \this_mram_controller|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(1),
	datab => \this_mram_controller|counter\(0),
	datac => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|Add0~0_combout\);

-- Location: LCFF_X20_Y11_N3
\this_mram_controller|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Add0~0_combout\,
	sclr => \this_mram_controller|ALT_INV_curr_state.idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|counter\(2));

-- Location: LCCOMB_X20_Y11_N26
\this_mram_controller|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Add0~1_combout\ = \this_mram_controller|counter\(3) $ (((\this_mram_controller|counter\(1) & (\this_mram_controller|counter\(0) & \this_mram_controller|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(1),
	datab => \this_mram_controller|counter\(0),
	datac => \this_mram_controller|counter\(3),
	datad => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|Add0~1_combout\);

-- Location: LCFF_X20_Y11_N27
\this_mram_controller|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Add0~1_combout\,
	sclr => \this_mram_controller|ALT_INV_curr_state.idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|counter\(3));

-- Location: LCCOMB_X20_Y11_N30
\this_mram_controller|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux5~0_combout\ = (!\this_mram_controller|counter\(3) & !\this_mram_controller|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|counter\(3),
	datac => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y11_N28
\this_mram_controller|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector21~0_combout\ = ((!\this_mram_controller|counter\(1) & (!\this_mram_controller|counter\(2) & \this_mram_controller|Mux5~0_combout\))) # (!\this_mram_controller|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(1),
	datab => \this_mram_controller|counter\(2),
	datac => \this_mram_controller|curr_state.idle~regout\,
	datad => \this_mram_controller|Mux5~0_combout\,
	combout => \this_mram_controller|Selector21~0_combout\);

-- Location: LCFF_X20_Y11_N25
\this_mram_controller|MRAM_D[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux25~0_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[0]~reg0_regout\);

-- Location: LCCOMB_X17_Y7_N18
\this_mram_controller|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|counter~0_combout\ = (\this_mram_controller|curr_state.idle~regout\ & (\this_mram_controller|counter\(1) $ (\this_mram_controller|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|curr_state.idle~regout\,
	datac => \this_mram_controller|counter\(1),
	datad => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|counter~0_combout\);

-- Location: LCFF_X17_Y7_N19
\this_mram_controller|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|counter\(1));

-- Location: LCCOMB_X19_Y11_N4
\this_mram_controller|Mux42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux42~0_combout\ = (!\this_mram_controller|counter\(3) & (!\this_mram_controller|counter\(1) & (!\this_mram_controller|counter\(0) & !\this_mram_controller|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(3),
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|counter\(0),
	datad => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|Mux42~0_combout\);

-- Location: LCCOMB_X19_Y11_N30
\this_mram_controller|curr_state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~8_combout\ = (\this_mram_controller|curr_state.writing~regout\ & (((\this_mram_controller|counter\(1)) # (!\this_mram_controller|Mux5~0_combout\)) # (!\this_mram_controller|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(2),
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|curr_state.writing~regout\,
	datad => \this_mram_controller|Mux5~0_combout\,
	combout => \this_mram_controller|curr_state~8_combout\);

-- Location: LCFF_X19_Y11_N31
\this_mram_controller|curr_state.writing\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|curr_state~8_combout\,
	sdata => \Corr_Main_1|MRAM_WRITE_DATA~regout\,
	sload => \this_mram_controller|ALT_INV_curr_state.idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|curr_state.writing~regout\);

-- Location: LCCOMB_X19_Y11_N22
\this_mram_controller|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector6~0_combout\ = (\this_mram_controller|curr_state.writing~regout\) # ((\this_mram_controller|curr_state.reading~regout\ & !\this_mram_controller|Mux42~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_mram_controller|Mux42~0_combout\,
	datad => \this_mram_controller|curr_state.writing~regout\,
	combout => \this_mram_controller|Selector6~0_combout\);

-- Location: LCCOMB_X20_Y12_N12
\this_mram_controller|MRAM_D[0]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[0]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[0]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N13
\this_mram_controller|MRAM_D[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[0]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[0]~en_regout\);

-- Location: LCCOMB_X20_Y11_N14
\this_mram_controller|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux27~0_combout\ = (\Corr_Main_1|Add18~2_combout\ & !\this_mram_controller|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add18~2_combout\,
	datac => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|Mux27~0_combout\);

-- Location: LCFF_X20_Y11_N15
\this_mram_controller|MRAM_D[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux27~0_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[1]~reg0_regout\);

-- Location: LCCOMB_X20_Y12_N18
\this_mram_controller|MRAM_D[1]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[1]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[1]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N19
\this_mram_controller|MRAM_D[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[1]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[1]~en_regout\);

-- Location: LCCOMB_X20_Y11_N10
\this_mram_controller|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux28~0_combout\ = (!\this_mram_controller|counter\(0) & \Corr_Main_1|Add18~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|counter\(0),
	datac => \Corr_Main_1|Add18~4_combout\,
	combout => \this_mram_controller|Mux28~0_combout\);

-- Location: LCFF_X20_Y11_N11
\this_mram_controller|MRAM_D[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux28~0_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[2]~reg0_regout\);

-- Location: LCCOMB_X20_Y12_N28
\this_mram_controller|MRAM_D[2]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[2]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[2]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N29
\this_mram_controller|MRAM_D[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[2]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[2]~en_regout\);

-- Location: LCCOMB_X19_Y11_N6
\this_mram_controller|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux29~0_combout\ = (\Corr_Main_1|Add18~6_combout\ & !\this_mram_controller|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add18~6_combout\,
	datac => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|Mux29~0_combout\);

-- Location: LCFF_X19_Y11_N7
\this_mram_controller|MRAM_D[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux29~0_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[3]~reg0_regout\);

-- Location: LCCOMB_X20_Y12_N30
\this_mram_controller|MRAM_D[3]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[3]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[3]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N31
\this_mram_controller|MRAM_D[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[3]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[3]~en_regout\);

-- Location: LCCOMB_X19_Y11_N8
\this_mram_controller|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux30~0_combout\ = (!\this_mram_controller|counter\(0) & \Corr_Main_1|Add18~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|counter\(0),
	datac => \Corr_Main_1|Add18~8_combout\,
	combout => \this_mram_controller|Mux30~0_combout\);

-- Location: LCFF_X19_Y11_N9
\this_mram_controller|MRAM_D[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux30~0_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[4]~reg0_regout\);

-- Location: LCCOMB_X20_Y12_N20
\this_mram_controller|MRAM_D[4]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[4]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[4]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N21
\this_mram_controller|MRAM_D[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[4]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[4]~en_regout\);

-- Location: LCCOMB_X20_Y11_N18
\this_mram_controller|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux31~0_combout\ = (!\this_mram_controller|counter\(0) & \Corr_Main_1|Add18~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|counter\(0),
	datac => \Corr_Main_1|Add18~10_combout\,
	combout => \this_mram_controller|Mux31~0_combout\);

-- Location: LCFF_X20_Y11_N19
\this_mram_controller|MRAM_D[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux31~0_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[5]~reg0_regout\);

-- Location: LCCOMB_X20_Y12_N10
\this_mram_controller|MRAM_D[5]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[5]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[5]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N11
\this_mram_controller|MRAM_D[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[5]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[5]~en_regout\);

-- Location: LCCOMB_X20_Y11_N22
\this_mram_controller|Mux32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux32~0_combout\ = (!\this_mram_controller|counter\(0) & \Corr_Main_1|Add18~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|counter\(0),
	datac => \Corr_Main_1|Add18~12_combout\,
	combout => \this_mram_controller|Mux32~0_combout\);

-- Location: LCFF_X20_Y11_N23
\this_mram_controller|MRAM_D[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux32~0_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[6]~reg0_regout\);

-- Location: LCCOMB_X20_Y12_N24
\this_mram_controller|MRAM_D[6]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[6]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[6]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N25
\this_mram_controller|MRAM_D[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[6]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[6]~en_regout\);

-- Location: LCCOMB_X20_Y11_N4
\this_mram_controller|Mux33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux33~0_combout\ = (\Corr_Main_1|Add18~14_combout\ & !\this_mram_controller|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add18~14_combout\,
	datac => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|Mux33~0_combout\);

-- Location: LCFF_X20_Y11_N5
\this_mram_controller|MRAM_D[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux33~0_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[7]~reg0_regout\);

-- Location: LCFF_X19_Y11_N23
\this_mram_controller|MRAM_D[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Selector6~0_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[7]~en_regout\);

-- Location: LCCOMB_X20_Y11_N6
\this_mram_controller|Mux34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux34~0_combout\ = (!\this_mram_controller|counter\(0) & \Corr_Main_1|Add18~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|counter\(0),
	datac => \Corr_Main_1|Add18~16_combout\,
	combout => \this_mram_controller|Mux34~0_combout\);

-- Location: LCFF_X20_Y11_N7
\this_mram_controller|MRAM_D[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux34~0_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[8]~reg0_regout\);

-- Location: LCCOMB_X20_Y12_N22
\this_mram_controller|MRAM_D[8]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[8]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[8]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N23
\this_mram_controller|MRAM_D[8]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[8]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[8]~en_regout\);

-- Location: LCCOMB_X19_Y11_N18
\this_mram_controller|Mux35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux35~0_combout\ = (!\this_mram_controller|counter\(0) & \Corr_Main_1|Add18~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|counter\(0),
	datac => \Corr_Main_1|Add18~18_combout\,
	combout => \this_mram_controller|Mux35~0_combout\);

-- Location: LCFF_X19_Y11_N19
\this_mram_controller|MRAM_D[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux35~0_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[9]~reg0_regout\);

-- Location: LCCOMB_X20_Y12_N2
\this_mram_controller|MRAM_D[9]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[9]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[9]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N3
\this_mram_controller|MRAM_D[9]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[9]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[9]~en_regout\);

-- Location: LCCOMB_X20_Y8_N28
\this_mram_controller|Mux36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux36~0_combout\ = (\Corr_Main_1|Add18~20_combout\ & !\this_mram_controller|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add18~20_combout\,
	datad => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|Mux36~0_combout\);

-- Location: LCFF_X20_Y8_N29
\this_mram_controller|MRAM_D[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux36~0_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[10]~reg0_regout\);

-- Location: LCCOMB_X20_Y12_N4
\this_mram_controller|MRAM_D[10]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[10]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[10]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N5
\this_mram_controller|MRAM_D[10]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[10]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[10]~en_regout\);

-- Location: LCCOMB_X20_Y11_N12
\this_mram_controller|Mux37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux37~0_combout\ = (!\this_mram_controller|counter\(0) & \Corr_Main_1|Add18~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|counter\(0),
	datac => \Corr_Main_1|Add18~22_combout\,
	combout => \this_mram_controller|Mux37~0_combout\);

-- Location: LCFF_X20_Y11_N13
\this_mram_controller|MRAM_D[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux37~0_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[11]~reg0_regout\);

-- Location: LCCOMB_X20_Y12_N16
\this_mram_controller|MRAM_D[11]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[11]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[11]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N17
\this_mram_controller|MRAM_D[11]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[11]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[11]~en_regout\);

-- Location: LCCOMB_X20_Y12_N26
\this_mram_controller|MRAM_D[12]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[12]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[12]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N27
\this_mram_controller|MRAM_D[12]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[12]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[12]~en_regout\);

-- Location: LCCOMB_X20_Y12_N14
\this_mram_controller|MRAM_D[13]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[13]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[13]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N15
\this_mram_controller|MRAM_D[13]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[13]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[13]~en_regout\);

-- Location: LCCOMB_X20_Y12_N6
\this_mram_controller|MRAM_D[14]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[14]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[14]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N7
\this_mram_controller|MRAM_D[14]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[14]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[14]~en_regout\);

-- Location: LCCOMB_X20_Y12_N8
\this_mram_controller|MRAM_D[15]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[15]~enfeeder_combout\ = \this_mram_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector6~0_combout\,
	combout => \this_mram_controller|MRAM_D[15]~enfeeder_combout\);

-- Location: LCFF_X20_Y12_N9
\this_mram_controller|MRAM_D[15]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[15]~enfeeder_combout\,
	ena => \this_mram_controller|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[15]~en_regout\);

-- Location: LCCOMB_X19_Y11_N26
\this_mram_controller|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector0~0_combout\ = (\this_mram_controller|curr_state.reading~regout\ & (((!\this_mram_controller|counter\(1)) # (!\this_mram_controller|counter\(2))) # (!\this_mram_controller|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_mram_controller|Mux5~0_combout\,
	datac => \this_mram_controller|counter\(2),
	datad => \this_mram_controller|counter\(1),
	combout => \this_mram_controller|Selector0~0_combout\);

-- Location: LCCOMB_X19_Y11_N14
\this_mram_controller|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector1~0_combout\ = (((\this_mram_controller|counter\(2)) # (\this_mram_controller|counter\(1))) # (!\this_mram_controller|Mux5~0_combout\)) # (!\this_mram_controller|curr_state.reading~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_mram_controller|Mux5~0_combout\,
	datac => \this_mram_controller|counter\(2),
	datad => \this_mram_controller|counter\(1),
	combout => \this_mram_controller|Selector1~0_combout\);

-- Location: LCCOMB_X20_Y11_N16
\this_mram_controller|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector1~1_combout\ = (\this_mram_controller|curr_state.writing~regout\ & (((\this_mram_controller|MRAM_OUTPUT_EN~regout\) # (!\this_mram_controller|Selector1~0_combout\)))) # (!\this_mram_controller|curr_state.writing~regout\ & 
-- (\this_mram_controller|Selector0~0_combout\ & ((\this_mram_controller|MRAM_OUTPUT_EN~regout\) # (!\this_mram_controller|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.writing~regout\,
	datab => \this_mram_controller|Selector0~0_combout\,
	datac => \this_mram_controller|MRAM_OUTPUT_EN~regout\,
	datad => \this_mram_controller|Selector1~0_combout\,
	combout => \this_mram_controller|Selector1~1_combout\);

-- Location: LCFF_X20_Y11_N17
\this_mram_controller|MRAM_OUTPUT_EN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_OUTPUT_EN~regout\);

-- Location: LCFF_X18_Y12_N17
\this_write_out_mram_manager|address_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[0]~17_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(0));

-- Location: LCCOMB_X18_Y12_N0
\MRAM_ADDRESS_IN_COMBINED[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(0) = (\this_write_out_mram_manager|address_counter\(0)) # (\Corr_Main_1|address_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_write_out_mram_manager|address_counter\(0),
	datad => \Corr_Main_1|address_counter\(0),
	combout => MRAM_ADDRESS_IN_COMBINED(0));

-- Location: LCCOMB_X18_Y12_N10
\MRAM_ADDRESS_IN_COMBINED[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(1) = (\Corr_Main_1|address_counter\(1)) # (\this_write_out_mram_manager|address_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(1),
	datad => \this_write_out_mram_manager|address_counter\(1),
	combout => MRAM_ADDRESS_IN_COMBINED(1));

-- Location: LCFF_X17_Y12_N21
\Corr_Main_1|address_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[2]~22_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(2));

-- Location: LCFF_X18_Y12_N21
\this_write_out_mram_manager|address_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[2]~22_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(2));

-- Location: LCCOMB_X18_Y12_N8
\MRAM_ADDRESS_IN_COMBINED[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(2) = (\Corr_Main_1|address_counter\(2)) # (\this_write_out_mram_manager|address_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(2),
	datac => \this_write_out_mram_manager|address_counter\(2),
	combout => MRAM_ADDRESS_IN_COMBINED(2));

-- Location: LCCOMB_X18_Y12_N2
\MRAM_ADDRESS_IN_COMBINED[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(3) = (\Corr_Main_1|address_counter\(3)) # (\this_write_out_mram_manager|address_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(3),
	datad => \this_write_out_mram_manager|address_counter\(3),
	combout => MRAM_ADDRESS_IN_COMBINED(3));

-- Location: LCCOMB_X18_Y12_N12
\MRAM_ADDRESS_IN_COMBINED[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(4) = (\this_write_out_mram_manager|address_counter\(4)) # (\Corr_Main_1|address_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_write_out_mram_manager|address_counter\(4),
	datad => \Corr_Main_1|address_counter\(4),
	combout => MRAM_ADDRESS_IN_COMBINED(4));

-- Location: LCCOMB_X17_Y12_N4
\MRAM_ADDRESS_IN_COMBINED[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(5) = (\this_write_out_mram_manager|address_counter\(5)) # (\Corr_Main_1|address_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_write_out_mram_manager|address_counter\(5),
	datad => \Corr_Main_1|address_counter\(5),
	combout => MRAM_ADDRESS_IN_COMBINED(5));

-- Location: LCCOMB_X17_Y12_N12
\MRAM_ADDRESS_IN_COMBINED[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(6) = (\Corr_Main_1|address_counter\(6)) # (\this_write_out_mram_manager|address_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(6),
	datad => \this_write_out_mram_manager|address_counter\(6),
	combout => MRAM_ADDRESS_IN_COMBINED(6));

-- Location: LCCOMB_X17_Y12_N6
\MRAM_ADDRESS_IN_COMBINED[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(7) = (\Corr_Main_1|address_counter\(7)) # (\this_write_out_mram_manager|address_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(7),
	datad => \this_write_out_mram_manager|address_counter\(7),
	combout => MRAM_ADDRESS_IN_COMBINED(7));

-- Location: LCCOMB_X18_Y11_N24
\MRAM_ADDRESS_IN_COMBINED[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(8) = (\Corr_Main_1|address_counter\(8)) # (\this_write_out_mram_manager|address_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|address_counter\(8),
	datad => \this_write_out_mram_manager|address_counter\(8),
	combout => MRAM_ADDRESS_IN_COMBINED(8));

-- Location: LCCOMB_X17_Y11_N30
\MRAM_ADDRESS_IN_COMBINED[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(9) = (\Corr_Main_1|address_counter\(9)) # (\this_write_out_mram_manager|address_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(9),
	datad => \this_write_out_mram_manager|address_counter\(9),
	combout => MRAM_ADDRESS_IN_COMBINED(9));

-- Location: LCCOMB_X17_Y11_N26
\MRAM_ADDRESS_IN_COMBINED[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(10) = (\Corr_Main_1|address_counter\(10)) # (\this_write_out_mram_manager|address_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|address_counter\(10),
	datad => \this_write_out_mram_manager|address_counter\(10),
	combout => MRAM_ADDRESS_IN_COMBINED(10));

-- Location: LCFF_X17_Y11_N7
\Corr_Main_1|address_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[11]~40_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(11));

-- Location: LCFF_X18_Y11_N7
\this_write_out_mram_manager|address_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[11]~40_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(11));

-- Location: LCCOMB_X17_Y11_N28
\MRAM_ADDRESS_IN_COMBINED[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(11) = (\Corr_Main_1|address_counter\(11)) # (\this_write_out_mram_manager|address_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(11),
	datad => \this_write_out_mram_manager|address_counter\(11),
	combout => MRAM_ADDRESS_IN_COMBINED(11));

-- Location: LCCOMB_X17_Y11_N20
\MRAM_ADDRESS_IN_COMBINED[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(12) = (\Corr_Main_1|address_counter\(12)) # (\this_write_out_mram_manager|address_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|address_counter\(12),
	datac => \this_write_out_mram_manager|address_counter\(12),
	combout => MRAM_ADDRESS_IN_COMBINED(12));

-- Location: LCFF_X17_Y11_N11
\Corr_Main_1|address_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter[13]~44_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(13));

-- Location: LCFF_X18_Y11_N11
\this_write_out_mram_manager|address_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[13]~44_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(13));

-- Location: LCCOMB_X18_Y11_N26
\MRAM_ADDRESS_IN_COMBINED[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(13) = (\Corr_Main_1|address_counter\(13)) # (\this_write_out_mram_manager|address_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(13),
	datad => \this_write_out_mram_manager|address_counter\(13),
	combout => MRAM_ADDRESS_IN_COMBINED(13));

-- Location: LCCOMB_X18_Y11_N30
\MRAM_ADDRESS_IN_COMBINED[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(14) = (\Corr_Main_1|address_counter\(14)) # (\this_write_out_mram_manager|address_counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(14),
	datad => \this_write_out_mram_manager|address_counter\(14),
	combout => MRAM_ADDRESS_IN_COMBINED(14));

-- Location: LCCOMB_X18_Y11_N18
\MRAM_ADDRESS_IN_COMBINED[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(15) = (\this_write_out_mram_manager|address_counter\(15)) # (\Corr_Main_1|address_counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_write_out_mram_manager|address_counter\(15),
	datad => \Corr_Main_1|address_counter\(15),
	combout => MRAM_ADDRESS_IN_COMBINED(15));

-- Location: LCCOMB_X18_Y11_N16
\this_write_out_mram_manager|address_counter[16]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[16]~50_combout\ = \this_write_out_mram_manager|address_counter\(16) $ (!\this_write_out_mram_manager|address_counter[15]~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(16),
	cin => \this_write_out_mram_manager|address_counter[15]~49\,
	combout => \this_write_out_mram_manager|address_counter[16]~50_combout\);

-- Location: LCFF_X18_Y11_N17
\this_write_out_mram_manager|address_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[16]~50_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(16));

-- Location: LCCOMB_X17_Y11_N24
\MRAM_ADDRESS_IN_COMBINED[16]\ : cycloneii_lcell_comb
-- Equation(s):
-- MRAM_ADDRESS_IN_COMBINED(16) = (\Corr_Main_1|address_counter\(16)) # (\this_write_out_mram_manager|address_counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(16),
	datac => \this_write_out_mram_manager|address_counter\(16),
	combout => MRAM_ADDRESS_IN_COMBINED(16));

-- Location: LCCOMB_X19_Y11_N28
\this_mram_controller|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux5~1_combout\ = (\this_mram_controller|counter\(3)) # ((\this_mram_controller|counter\(0)) # (\this_mram_controller|counter\(1) $ (\this_mram_controller|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(3),
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|counter\(0),
	datad => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|Mux5~1_combout\);

-- Location: LCCOMB_X19_Y11_N20
\this_mram_controller|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector0~2_combout\ = ((\this_mram_controller|Selector0~0_combout\ & ((\this_mram_controller|MRAM_EN~regout\) # (!\this_mram_controller|Mux5~1_combout\)))) # (!\this_mram_controller|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|Selector0~1_combout\,
	datab => \this_mram_controller|Mux5~1_combout\,
	datac => \this_mram_controller|MRAM_EN~regout\,
	datad => \this_mram_controller|Selector0~0_combout\,
	combout => \this_mram_controller|Selector0~2_combout\);

-- Location: LCFF_X19_Y11_N21
\this_mram_controller|MRAM_EN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_EN~regout\);

-- Location: LCCOMB_X20_Y11_N20
\this_mram_controller|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector2~1_combout\ = (\this_mram_controller|counter\(1) & (!\this_mram_controller|counter\(3) & (!\this_mram_controller|counter\(0) & \this_mram_controller|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(1),
	datab => \this_mram_controller|counter\(3),
	datac => \this_mram_controller|counter\(0),
	datad => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|Selector2~1_combout\);

-- Location: LCCOMB_X19_Y11_N24
\this_mram_controller|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux3~0_combout\ = (\this_mram_controller|counter\(3)) # ((\this_mram_controller|counter\(2)) # (\this_mram_controller|counter\(1) $ (\this_mram_controller|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(3),
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|counter\(0),
	datad => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y11_N0
\this_mram_controller|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector2~0_combout\ = ((\this_mram_controller|Mux3~0_combout\ & (!\this_mram_controller|MRAM_WRITE_EN~regout\)) # (!\this_mram_controller|Mux3~0_combout\ & ((\this_mram_controller|counter\(1))))) # 
-- (!\this_mram_controller|curr_state.writing~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|MRAM_WRITE_EN~regout\,
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|Mux3~0_combout\,
	datad => \this_mram_controller|curr_state.writing~regout\,
	combout => \this_mram_controller|Selector2~0_combout\);

-- Location: LCCOMB_X19_Y11_N2
\this_mram_controller|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector2~2_combout\ = ((\this_mram_controller|curr_state.reading~regout\ & (!\this_mram_controller|Selector2~1_combout\ & \this_mram_controller|MRAM_WRITE_EN~regout\))) # (!\this_mram_controller|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_mram_controller|Selector2~1_combout\,
	datac => \this_mram_controller|MRAM_WRITE_EN~regout\,
	datad => \this_mram_controller|Selector2~0_combout\,
	combout => \this_mram_controller|Selector2~2_combout\);

-- Location: LCFF_X19_Y11_N3
\this_mram_controller|MRAM_WRITE_EN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_WRITE_EN~regout\);

-- Location: LCCOMB_X14_Y7_N16
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ = (\UART_Controller_1|fifo_read_req~combout\ & \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_Controller_1|fifo_read_req~combout\,
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\);

-- Location: LCCOMB_X12_Y10_N26
\this_mram_controller|data_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|data_out[0]~feeder_combout\ = \MRAM_D[0]~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[0]~0\,
	combout => \this_mram_controller|data_out[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N16
\this_mram_controller|data_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|data_out[0]~0_combout\ = (\this_mram_controller|curr_state.reading~regout\ & (\this_mram_controller|Mux5~0_combout\ & (\this_mram_controller|counter\(2) & \this_mram_controller|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_mram_controller|Mux5~0_combout\,
	datac => \this_mram_controller|counter\(2),
	datad => \this_mram_controller|counter\(1),
	combout => \this_mram_controller|data_out[0]~0_combout\);

-- Location: LCFF_X12_Y10_N27
\this_mram_controller|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[0]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(0));

-- Location: LCFF_X12_Y10_N11
\this_mram_controller|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[7]~7\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(7));

-- Location: LCCOMB_X12_Y10_N10
\this_write_out_mram_manager|UART_SEND_DATA[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|UART_SEND_DATA[0]~2_combout\ = (\this_write_out_mram_manager|msb~regout\ & (\this_mram_controller|data_out\(0))) # (!\this_write_out_mram_manager|msb~regout\ & ((\this_mram_controller|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|data_out\(0),
	datac => \this_mram_controller|data_out\(7),
	datad => \this_write_out_mram_manager|msb~regout\,
	combout => \this_write_out_mram_manager|UART_SEND_DATA[0]~2_combout\);

-- Location: LCCOMB_X12_Y7_N4
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0) $ (VCC)
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ = CARRY(\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0),
	datad => VCC,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\);

-- Location: LCFF_X12_Y7_N5
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

-- Location: LCCOMB_X12_Y7_N6
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\)) # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
-- ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # (GND)))
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ = CARRY((!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1),
	datad => VCC,
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\);

-- Location: LCFF_X12_Y7_N7
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1));

-- Location: LCCOMB_X12_Y7_N8
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ $ (GND))) # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ & VCC))
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ = CARRY((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & 
-- !\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2),
	datad => VCC,
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\);

-- Location: LCFF_X12_Y7_N9
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2));

-- Location: LCCOMB_X12_Y7_N10
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ $ 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3),
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\);

-- Location: LCFF_X12_Y7_N11
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3));

-- Location: LCCOMB_X10_Y7_N2
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0) $ (VCC)
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ = CARRY(\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0),
	datad => VCC,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\);

-- Location: LCFF_X10_Y7_N3
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

-- Location: LCCOMB_X10_Y7_N4
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\)) # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & 
-- ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\) # (GND)))
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ = CARRY((!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\) # 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1),
	datad => VCC,
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\);

-- Location: LCFF_X10_Y7_N5
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1));

-- Location: LCCOMB_X10_Y7_N6
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ $ (GND))) # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ & VCC))
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ = CARRY((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- !\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2),
	datad => VCC,
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\);

-- Location: LCFF_X10_Y7_N7
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2));

-- Location: LCCOMB_X10_Y7_N8
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) $ 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3),
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\);

-- Location: LCFF_X10_Y7_N9
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3));

-- Location: LCCOMB_X12_Y10_N2
\this_mram_controller|data_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|data_out[1]~feeder_combout\ = \MRAM_D[1]~1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[1]~1\,
	combout => \this_mram_controller|data_out[1]~feeder_combout\);

-- Location: LCFF_X12_Y10_N3
\this_mram_controller|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[1]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(1));

-- Location: LCFF_X12_Y10_N9
\this_mram_controller|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[8]~8\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(8));

-- Location: LCCOMB_X12_Y10_N8
\this_write_out_mram_manager|UART_SEND_DATA[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|UART_SEND_DATA[1]~1_combout\ = (\this_write_out_mram_manager|msb~regout\ & (\this_mram_controller|data_out\(1))) # (!\this_write_out_mram_manager|msb~regout\ & ((\this_mram_controller|data_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|data_out\(1),
	datac => \this_mram_controller|data_out\(8),
	datad => \this_write_out_mram_manager|msb~regout\,
	combout => \this_write_out_mram_manager|UART_SEND_DATA[1]~1_combout\);

-- Location: LCCOMB_X12_Y10_N28
\this_mram_controller|data_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|data_out[2]~feeder_combout\ = \MRAM_D[2]~2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[2]~2\,
	combout => \this_mram_controller|data_out[2]~feeder_combout\);

-- Location: LCFF_X12_Y10_N29
\this_mram_controller|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[2]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(2));

-- Location: LCFF_X12_Y10_N21
\this_mram_controller|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[9]~9\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(9));

-- Location: LCCOMB_X12_Y10_N20
\this_write_out_mram_manager|UART_SEND_DATA[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|UART_SEND_DATA[2]~0_combout\ = (\this_write_out_mram_manager|msb~regout\ & (\this_mram_controller|data_out\(2))) # (!\this_write_out_mram_manager|msb~regout\ & ((\this_mram_controller|data_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|data_out\(2),
	datac => \this_mram_controller|data_out\(9),
	datad => \this_write_out_mram_manager|msb~regout\,
	combout => \this_write_out_mram_manager|UART_SEND_DATA[2]~0_combout\);

-- Location: LCCOMB_X12_Y10_N30
\this_mram_controller|data_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|data_out[3]~feeder_combout\ = \MRAM_D[3]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[3]~3\,
	combout => \this_mram_controller|data_out[3]~feeder_combout\);

-- Location: LCFF_X12_Y10_N31
\this_mram_controller|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[3]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(3));

-- Location: LCFF_X12_Y10_N25
\this_mram_controller|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[10]~10\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(10));

-- Location: LCCOMB_X12_Y10_N24
\this_write_out_mram_manager|UART_SEND_DATA[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|UART_SEND_DATA[3]~3_combout\ = (\this_write_out_mram_manager|msb~regout\ & (\this_mram_controller|data_out\(3))) # (!\this_write_out_mram_manager|msb~regout\ & ((\this_mram_controller|data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|data_out\(3),
	datac => \this_mram_controller|data_out\(10),
	datad => \this_write_out_mram_manager|msb~regout\,
	combout => \this_write_out_mram_manager|UART_SEND_DATA[3]~3_combout\);

-- Location: LCCOMB_X12_Y10_N22
\this_mram_controller|data_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|data_out[4]~feeder_combout\ = \MRAM_D[4]~4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[4]~4\,
	combout => \this_mram_controller|data_out[4]~feeder_combout\);

-- Location: LCFF_X12_Y10_N23
\this_mram_controller|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[4]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(4));

-- Location: LCFF_X12_Y10_N13
\this_mram_controller|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[11]~11\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(11));

-- Location: LCCOMB_X12_Y10_N12
\this_write_out_mram_manager|UART_SEND_DATA[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|UART_SEND_DATA[4]~6_combout\ = (\this_write_out_mram_manager|msb~regout\ & (\this_mram_controller|data_out\(4))) # (!\this_write_out_mram_manager|msb~regout\ & ((\this_mram_controller|data_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|data_out\(4),
	datac => \this_mram_controller|data_out\(11),
	datad => \this_write_out_mram_manager|msb~regout\,
	combout => \this_write_out_mram_manager|UART_SEND_DATA[4]~6_combout\);

-- Location: LCCOMB_X12_Y10_N0
\this_mram_controller|data_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|data_out[5]~feeder_combout\ = \MRAM_D[5]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[5]~5\,
	combout => \this_mram_controller|data_out[5]~feeder_combout\);

-- Location: LCFF_X12_Y10_N1
\this_mram_controller|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[5]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(5));

-- Location: LCFF_X12_Y10_N19
\this_mram_controller|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[12]~12\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(12));

-- Location: LCCOMB_X12_Y10_N18
\this_write_out_mram_manager|UART_SEND_DATA[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|UART_SEND_DATA[5]~5_combout\ = (\this_write_out_mram_manager|msb~regout\ & (\this_mram_controller|data_out\(5))) # (!\this_write_out_mram_manager|msb~regout\ & ((\this_mram_controller|data_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|data_out\(5),
	datac => \this_mram_controller|data_out\(12),
	datad => \this_write_out_mram_manager|msb~regout\,
	combout => \this_write_out_mram_manager|UART_SEND_DATA[5]~5_combout\);

-- Location: LCFF_X12_Y10_N17
\this_mram_controller|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[13]~13\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(13));

-- Location: LCCOMB_X12_Y10_N16
\this_write_out_mram_manager|UART_SEND_DATA[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|UART_SEND_DATA[6]~4_combout\ = (\this_write_out_mram_manager|msb~regout\ & (\this_mram_controller|data_out\(6))) # (!\this_write_out_mram_manager|msb~regout\ & ((\this_mram_controller|data_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|data_out\(6),
	datac => \this_mram_controller|data_out\(13),
	datad => \this_write_out_mram_manager|msb~regout\,
	combout => \this_write_out_mram_manager|UART_SEND_DATA[6]~4_combout\);

-- Location: LCCOMB_X12_Y7_N20
\this_write_out_mram_manager|msb~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|msb~_wirecell_combout\ = !\this_write_out_mram_manager|msb~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_write_out_mram_manager|msb~regout\,
	combout => \this_write_out_mram_manager|msb~_wirecell_combout\);

-- Location: M4K_X11_Y7
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "UART_Controller:UART_Controller_1|UART_FIFO_wizard:uart_fifo|scfifo:scfifo_component|scfifo_ka21:auto_generated|a_dpfifo_rg21:dpfifo|dpram_st01:FIFOram|altsyncram_0sj1:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portbrewe => VCC,
	clk0 => \pl|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \pl|altpll_component|_clk0~clkctrl_outclk\,
	ena0 => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	ena1 => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	portadatain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTADATAIN_bus\,
	portaaddr => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X12_Y7_N18
\UART_Controller_1|uart_tx_1|data_send[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|data_send[6]~feeder_combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(6),
	combout => \UART_Controller_1|uart_tx_1|data_send[6]~feeder_combout\);

-- Location: LCFF_X12_Y7_N19
\UART_Controller_1|uart_tx_1|data_send[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|data_send[6]~feeder_combout\,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(6));

-- Location: LCFF_X12_Y7_N25
\UART_Controller_1|uart_tx_1|data_send[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(7),
	sload => VCC,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(7));

-- Location: LCFF_X12_Y7_N3
\UART_Controller_1|uart_tx_1|data_send[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(4),
	sload => VCC,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(4));

-- Location: LCCOMB_X12_Y7_N26
\UART_Controller_1|uart_tx_1|data_send[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|data_send[5]~feeder_combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(5),
	combout => \UART_Controller_1|uart_tx_1|data_send[5]~feeder_combout\);

-- Location: LCFF_X12_Y7_N27
\UART_Controller_1|uart_tx_1|data_send[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|data_send[5]~feeder_combout\,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(5));

-- Location: LCCOMB_X12_Y7_N2
\UART_Controller_1|uart_tx_1|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Mux0~2_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(1) & (\UART_Controller_1|uart_tx_1|data_index\(0))) # (!\UART_Controller_1|uart_tx_1|data_index\(1) & ((\UART_Controller_1|uart_tx_1|data_index\(0) & 
-- ((\UART_Controller_1|uart_tx_1|data_send\(5)))) # (!\UART_Controller_1|uart_tx_1|data_index\(0) & (\UART_Controller_1|uart_tx_1|data_send\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_index\(1),
	datab => \UART_Controller_1|uart_tx_1|data_index\(0),
	datac => \UART_Controller_1|uart_tx_1|data_send\(4),
	datad => \UART_Controller_1|uart_tx_1|data_send\(5),
	combout => \UART_Controller_1|uart_tx_1|Mux0~2_combout\);

-- Location: LCCOMB_X12_Y7_N24
\UART_Controller_1|uart_tx_1|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Mux0~3_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(1) & ((\UART_Controller_1|uart_tx_1|Mux0~2_combout\ & ((\UART_Controller_1|uart_tx_1|data_send\(7)))) # (!\UART_Controller_1|uart_tx_1|Mux0~2_combout\ & 
-- (\UART_Controller_1|uart_tx_1|data_send\(6))))) # (!\UART_Controller_1|uart_tx_1|data_index\(1) & (((\UART_Controller_1|uart_tx_1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_index\(1),
	datab => \UART_Controller_1|uart_tx_1|data_send\(6),
	datac => \UART_Controller_1|uart_tx_1|data_send\(7),
	datad => \UART_Controller_1|uart_tx_1|Mux0~2_combout\,
	combout => \UART_Controller_1|uart_tx_1|Mux0~3_combout\);

-- Location: LCCOMB_X12_Y6_N28
\UART_Controller_1|uart_tx_1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector2~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.sync~regout\) # ((!\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & \UART_Controller_1|uart_tx_1|curr_state.start~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.start~regout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector2~0_combout\);

-- Location: LCFF_X12_Y6_N29
\UART_Controller_1|uart_tx_1|curr_state.start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|curr_state.start~regout\);

-- Location: LCCOMB_X12_Y7_N28
\UART_Controller_1|uart_tx_1|data_send[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|data_send[2]~feeder_combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(2),
	combout => \UART_Controller_1|uart_tx_1|data_send[2]~feeder_combout\);

-- Location: LCFF_X12_Y7_N29
\UART_Controller_1|uart_tx_1|data_send[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|data_send[2]~feeder_combout\,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(2));

-- Location: LCFF_X12_Y7_N17
\UART_Controller_1|uart_tx_1|data_send[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(3),
	sload => VCC,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(3));

-- Location: LCFF_X12_Y7_N23
\UART_Controller_1|uart_tx_1|data_send[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(0),
	sload => VCC,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(0));

-- Location: LCCOMB_X12_Y7_N0
\UART_Controller_1|uart_tx_1|data_send[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|data_send[1]~feeder_combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(1),
	combout => \UART_Controller_1|uart_tx_1|data_send[1]~feeder_combout\);

-- Location: LCFF_X12_Y7_N1
\UART_Controller_1|uart_tx_1|data_send[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|data_send[1]~feeder_combout\,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(1));

-- Location: LCCOMB_X12_Y7_N22
\UART_Controller_1|uart_tx_1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Mux0~0_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(1) & (\UART_Controller_1|uart_tx_1|data_index\(0))) # (!\UART_Controller_1|uart_tx_1|data_index\(1) & ((\UART_Controller_1|uart_tx_1|data_index\(0) & 
-- ((\UART_Controller_1|uart_tx_1|data_send\(1)))) # (!\UART_Controller_1|uart_tx_1|data_index\(0) & (\UART_Controller_1|uart_tx_1|data_send\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_index\(1),
	datab => \UART_Controller_1|uart_tx_1|data_index\(0),
	datac => \UART_Controller_1|uart_tx_1|data_send\(0),
	datad => \UART_Controller_1|uart_tx_1|data_send\(1),
	combout => \UART_Controller_1|uart_tx_1|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y7_N16
\UART_Controller_1|uart_tx_1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Mux0~1_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(1) & ((\UART_Controller_1|uart_tx_1|Mux0~0_combout\ & ((\UART_Controller_1|uart_tx_1|data_send\(3)))) # (!\UART_Controller_1|uart_tx_1|Mux0~0_combout\ & 
-- (\UART_Controller_1|uart_tx_1|data_send\(2))))) # (!\UART_Controller_1|uart_tx_1|data_index\(1) & (((\UART_Controller_1|uart_tx_1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_index\(1),
	datab => \UART_Controller_1|uart_tx_1|data_send\(2),
	datac => \UART_Controller_1|uart_tx_1|data_send\(3),
	datad => \UART_Controller_1|uart_tx_1|Mux0~0_combout\,
	combout => \UART_Controller_1|uart_tx_1|Mux0~1_combout\);

-- Location: LCCOMB_X12_Y6_N24
\UART_Controller_1|uart_tx_1|TX~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|TX~2_combout\ = ((!\UART_Controller_1|uart_tx_1|data_index\(2) & \UART_Controller_1|uart_tx_1|Mux0~1_combout\)) # (!\UART_Controller_1|uart_tx_1|curr_state.data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|data_index\(2),
	datac => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	datad => \UART_Controller_1|uart_tx_1|Mux0~1_combout\,
	combout => \UART_Controller_1|uart_tx_1|TX~2_combout\);

-- Location: LCCOMB_X12_Y6_N16
\UART_Controller_1|uart_tx_1|TX~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|TX~3_combout\ = (!\UART_Controller_1|uart_tx_1|curr_state.start~regout\ & ((\UART_Controller_1|uart_tx_1|TX~2_combout\) # ((\UART_Controller_1|uart_tx_1|Mux0~3_combout\ & \UART_Controller_1|uart_tx_1|data_index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Mux0~3_combout\,
	datab => \UART_Controller_1|uart_tx_1|curr_state.start~regout\,
	datac => \UART_Controller_1|uart_tx_1|TX~2_combout\,
	datad => \UART_Controller_1|uart_tx_1|data_index\(2),
	combout => \UART_Controller_1|uart_tx_1|TX~3_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SPI_MOSI~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPI_MOSI);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SPI_MISO~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPI_MISO);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SPI_SCLK~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SPI_SCLK);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADC_SPI_SDIN~I\ : cycloneii_io
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
	datain => \adc_spi|tx_buf\(15),
	oe => \adc_spi|SPI_MOSI~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ADC_SPI_SDIN);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SPI_CS~I\ : cycloneii_io
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
	datain => \Corr_Main_1|PREAMBULE_FOUND~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SPI_CS);

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
	datain => \this_mram_controller|ALT_INV_MRAM_D[14]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(14));

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
	datain => \this_mram_controller|ALT_INV_MRAM_D[15]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => MRAM_D(15));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BUTTON~I\ : cycloneii_io
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
	padio => ww_BUTTON);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADC_SHDN~I\ : cycloneii_io
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
	padio => ww_ADC_SHDN);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADC_SYNC~I\ : cycloneii_io
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
	padio => ww_ADC_SYNC);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADC_CLK~I\ : cycloneii_io
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
	datain => \CLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADC_CLK);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_DORB~I\ : cycloneii_io
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
	padio => ww_ADC_DORB);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_DORA~I\ : cycloneii_io
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
	padio => ww_ADC_DORA);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_DCLKB~I\ : cycloneii_io
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
	padio => ww_ADC_DCLKB);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_B[0]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_B(0));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_B[1]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_B(1));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_B[2]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_B(2));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_B[3]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_B(3));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_B[4]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_B(4));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_B[5]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_B(5));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_B[6]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_B(6));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_B[7]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_B(7));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_B[8]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_B(8));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_B[9]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_B(9));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_A[8]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_A(8));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_BIT_A[9]~I\ : cycloneii_io
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
	padio => ww_ADC_BIT_A(9));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADC_SPI_SCLK~I\ : cycloneii_io
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
	datain => \adc_spi|sclk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADC_SPI_SCLK);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADC_SPI_CS~I\ : cycloneii_io
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
	datain => \adc_spi|SPI_CS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADC_SPI_CS);

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
	datain => \this_mram_controller|ALT_INV_MRAM_OUTPUT_EN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_OUTPUT_EN);

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
	datain => MRAM_ADDRESS_IN_COMBINED(0),
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
	datain => MRAM_ADDRESS_IN_COMBINED(1),
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
	datain => MRAM_ADDRESS_IN_COMBINED(2),
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
	datain => MRAM_ADDRESS_IN_COMBINED(3),
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
	datain => MRAM_ADDRESS_IN_COMBINED(4),
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
	datain => MRAM_ADDRESS_IN_COMBINED(5),
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
	datain => MRAM_ADDRESS_IN_COMBINED(6),
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
	datain => MRAM_ADDRESS_IN_COMBINED(7),
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
	datain => MRAM_ADDRESS_IN_COMBINED(8),
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
	datain => MRAM_ADDRESS_IN_COMBINED(9),
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
	datain => MRAM_ADDRESS_IN_COMBINED(10),
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
	datain => MRAM_ADDRESS_IN_COMBINED(11),
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
	datain => MRAM_ADDRESS_IN_COMBINED(12),
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
	datain => MRAM_ADDRESS_IN_COMBINED(13),
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
	datain => MRAM_ADDRESS_IN_COMBINED(14),
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
	datain => MRAM_ADDRESS_IN_COMBINED(15),
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
	datain => MRAM_ADDRESS_IN_COMBINED(16),
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
	datain => \this_mram_controller|ALT_INV_MRAM_EN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_EN);

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
	datain => \this_mram_controller|ALT_INV_MRAM_WRITE_EN~regout\,
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
	datain => \this_mram_controller|ALT_INV_MRAM_EN~regout\,
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
	datain => \this_mram_controller|ALT_INV_MRAM_EN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_LOWER_EN);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UART_RX~I\ : cycloneii_io
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
	padio => ww_UART_RX);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\UART_TX~I\ : cycloneii_io
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
	datain => \UART_Controller_1|uart_tx_1|TX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_UART_TX);
END structure;


