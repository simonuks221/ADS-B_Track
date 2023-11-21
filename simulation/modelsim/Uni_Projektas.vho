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

-- DATE "09/29/2023 21:15:07"

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
-- ADC_BIT_A[0]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[1]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- ADC_BIT_A[9]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[8]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[7]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[6]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[5]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[4]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[3]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[2]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pl|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Corr_Main_1|corr_buffer_update~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pl|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \pl|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[6]~26_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter[2]~9_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~8_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~10_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~12_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~17\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~19\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~18_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~20_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~1\ : std_logic;
SIGNAL \adc_spi_controller|Add0~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~3\ : std_logic;
SIGNAL \adc_spi_controller|Add0~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~5\ : std_logic;
SIGNAL \adc_spi_controller|Add0~4_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~7\ : std_logic;
SIGNAL \adc_spi_controller|Add0~6_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~15\ : std_logic;
SIGNAL \Corr_Main_1|Add3~17\ : std_logic;
SIGNAL \Corr_Main_1|Add3~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~15\ : std_logic;
SIGNAL \Corr_Main_1|Add4~17\ : std_logic;
SIGNAL \Corr_Main_1|Add4~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~19\ : std_logic;
SIGNAL \Corr_Main_1|Add4~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~17\ : std_logic;
SIGNAL \Corr_Main_1|Add5~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~17\ : std_logic;
SIGNAL \Corr_Main_1|Add6~19\ : std_logic;
SIGNAL \Corr_Main_1|Add6~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~21\ : std_logic;
SIGNAL \Corr_Main_1|Add17~22_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add10~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add10~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add10~5\ : std_logic;
SIGNAL \Corr_Main_1|Add10~7\ : std_logic;
SIGNAL \Corr_Main_1|Add10~6_combout\ : std_logic;
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
SIGNAL \Corr_Main_1|Add13~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~21\ : std_logic;
SIGNAL \Corr_Main_1|Add13~23\ : std_logic;
SIGNAL \Corr_Main_1|Add13~22_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~24_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~22_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~22_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~24_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ : std_logic;
SIGNAL \this_state_manager|Add0~16_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~20_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~24_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~42_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~44_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~48_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~52_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~1_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|Selector5~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector1~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector22~1_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux18~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector2~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Equal0~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector17~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|Equal0~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|Equal0~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector11~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector5~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector6~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector9~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|cs_up_counter~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|cs_up_counter~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|cs_up_counter~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ : std_logic;
SIGNAL \this_state_manager|process_1~1_combout\ : std_logic;
SIGNAL \this_state_manager|Equal0~0_combout\ : std_logic;
SIGNAL \this_state_manager|Equal0~8_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|PREAMBULE_FOUND~4_combout\ : std_logic;
SIGNAL \this_read_adc_manager|process_0~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter~1_combout\ : std_logic;
SIGNAL \this_read_adc_manager|read_counter~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector13~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector14~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector15~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector16~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector17~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector18~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector19~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector20~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector21~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector22~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector23~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector24~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector25~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector26~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|data_send[2]~feeder_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|data_send[1]~feeder_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|data_send[4]~feeder_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|data_send[7]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b1[6]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b1[4]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b1[2]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b1[0]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b2[6]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b2[5]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b2[4]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b2[1]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b2[0]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[3]~feeder_combout\ : std_logic;
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
SIGNAL \this_setup_manager|config_command_counter[3]~21\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[4]~23\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[5]~24_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[4]~22_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal12~0_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[10]~36\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[11]~38\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[12]~39_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[12]~40\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[13]~41_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[1]~16_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[7]~29_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal10~2_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[13]~42\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[14]~43_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[14]~44\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[15]~45_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[15]~46\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[16]~47_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[9]~33_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[11]~37_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal10~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal10~1_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal10~3_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[6]~28_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[5]~25\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[6]~27\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[7]~30\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[8]~31_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[8]~32\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[9]~34\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[10]~35_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal12~1_combout\ : std_logic;
SIGNAL \this_setup_manager|SETUP_DONE~regout\ : std_logic;
SIGNAL \this_state_manager|curr_state.setup~0_combout\ : std_logic;
SIGNAL \this_state_manager|curr_state.setup~regout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[0]~49_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[1]~17\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[2]~18_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[2]~19\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[3]~20_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~4_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~5_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal8~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal10~4_combout\ : std_logic;
SIGNAL \this_setup_manager|Selector8~2_combout\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_irq~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|Selector6~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|tx_send_irq~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector2~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|curr_state.running~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter[0]~6\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter[1]~7_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter[1]~8\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter[2]~10\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter[3]~11_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter[3]~12\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter[4]~13_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter[0]~5_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Equal1~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Equal1~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector11~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector10~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~1\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector9~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~3\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~4_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector8~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~5\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~6_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector7~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~7\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~8_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector6~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Equal0~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector3~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|curr_state.done~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector0~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|curr_state.idle~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector1~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector5~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SEND_DONE~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector2~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|curr_state.waiting~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector4~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|curr_state.cs_up~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector0~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|curr_state.idle~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector1~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|curr_state.reading_fifo~regout\ : std_logic;
SIGNAL \adc_spi_controller|curr_state.transmiting~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|curr_state.transmiting~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector7~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|fifo_rdreq~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~7_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~6_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~8_combout\ : std_logic;
SIGNAL \this_setup_manager|WideNor0~2_combout\ : std_logic;
SIGNAL \this_setup_manager|WideNor0~3_combout\ : std_logic;
SIGNAL \this_setup_manager|WideOr1~2_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~3_combout\ : std_logic;
SIGNAL \this_setup_manager|Selector7~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \this_setup_manager|Selector1~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal4~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Selector4~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Selector2~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal2~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Selector0~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector12~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|sclk~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector4~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|sclk~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector11~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Selector11~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|is_read~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|is_read~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SPI_MOSI~1_combout\ : std_logic;
SIGNAL \ADC_DCLKA~combout\ : std_logic;
SIGNAL \this_read_adc_manager|last_state~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|last_state~regout\ : std_logic;
SIGNAL \this_read_adc_manager|read_counter~1_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|getting_data~0_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~1\ : std_logic;
SIGNAL \this_state_manager|Add0~2_combout\ : std_logic;
SIGNAL \this_state_manager|Selector2~0_combout\ : std_logic;
SIGNAL \this_state_manager|curr_state.wait_1~regout\ : std_logic;
SIGNAL \this_state_manager|Add0~3\ : std_logic;
SIGNAL \this_state_manager|Add0~4_combout\ : std_logic;
SIGNAL \this_state_manager|counter~2_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~5\ : std_logic;
SIGNAL \this_state_manager|Add0~7\ : std_logic;
SIGNAL \this_state_manager|Add0~8_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~9\ : std_logic;
SIGNAL \this_state_manager|Add0~10_combout\ : std_logic;
SIGNAL \this_state_manager|counter~1_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~11\ : std_logic;
SIGNAL \this_state_manager|Add0~12_combout\ : std_logic;
SIGNAL \this_state_manager|counter~0_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~13\ : std_logic;
SIGNAL \this_state_manager|Add0~14_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~15\ : std_logic;
SIGNAL \this_state_manager|Add0~17\ : std_logic;
SIGNAL \this_state_manager|Add0~18_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~19\ : std_logic;
SIGNAL \this_state_manager|Add0~21\ : std_logic;
SIGNAL \this_state_manager|Add0~22_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~23\ : std_logic;
SIGNAL \this_state_manager|Add0~25\ : std_logic;
SIGNAL \this_state_manager|Add0~26_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~27\ : std_logic;
SIGNAL \this_state_manager|Add0~28_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~29\ : std_logic;
SIGNAL \this_state_manager|Add0~30_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~31\ : std_logic;
SIGNAL \this_state_manager|Add0~32_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~33\ : std_logic;
SIGNAL \this_state_manager|Add0~34_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~35\ : std_logic;
SIGNAL \this_state_manager|Add0~36_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~37\ : std_logic;
SIGNAL \this_state_manager|Add0~39\ : std_logic;
SIGNAL \this_state_manager|Add0~40_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~41\ : std_logic;
SIGNAL \this_state_manager|Add0~43\ : std_logic;
SIGNAL \this_state_manager|Add0~45\ : std_logic;
SIGNAL \this_state_manager|Add0~46_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~47\ : std_logic;
SIGNAL \this_state_manager|Add0~49\ : std_logic;
SIGNAL \this_state_manager|Add0~50_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~51\ : std_logic;
SIGNAL \this_state_manager|Add0~53\ : std_logic;
SIGNAL \this_state_manager|Add0~54_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~55\ : std_logic;
SIGNAL \this_state_manager|Add0~56_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~57\ : std_logic;
SIGNAL \this_state_manager|Add0~58_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~59\ : std_logic;
SIGNAL \this_state_manager|Add0~60_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~61\ : std_logic;
SIGNAL \this_state_manager|Add0~62_combout\ : std_logic;
SIGNAL \this_state_manager|Equal0~9_combout\ : std_logic;
SIGNAL \this_state_manager|Equal0~1_combout\ : std_logic;
SIGNAL \this_state_manager|Equal0~3_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~0_combout\ : std_logic;
SIGNAL \this_state_manager|counter~3_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~6_combout\ : std_logic;
SIGNAL \this_state_manager|Equal0~2_combout\ : std_logic;
SIGNAL \this_state_manager|Equal0~4_combout\ : std_logic;
SIGNAL \this_state_manager|Equal0~6_combout\ : std_logic;
SIGNAL \this_state_manager|Add0~38_combout\ : std_logic;
SIGNAL \this_state_manager|Equal0~5_combout\ : std_logic;
SIGNAL \this_state_manager|Equal0~7_combout\ : std_logic;
SIGNAL \this_state_manager|Equal0~10_combout\ : std_logic;
SIGNAL \this_state_manager|Selector3~0_combout\ : std_logic;
SIGNAL \this_state_manager|curr_state.write_out_mram~regout\ : std_logic;
SIGNAL \this_write_out_mram_manager|getting_data~regout\ : std_logic;
SIGNAL \this_write_out_mram_manager|msb~0_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|MRAM_READ_DATA~feeder_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|MRAM_READ_DATA~regout\ : std_logic;
SIGNAL \this_mram_controller|Add0~1_combout\ : std_logic;
SIGNAL \this_mram_controller|Add0~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Add0~2_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux60~0_combout\ : std_logic;
SIGNAL \this_mram_controller|counter~0_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~7_combout\ : std_logic;
SIGNAL \Corr_Main_1|read_counter~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|read_counter~1_combout\ : std_logic;
SIGNAL \Corr_Main_1|read_counter~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|read_counter~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|read_counter~3_combout\ : std_logic;
SIGNAL \Corr_Main_1|Equal4~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|MRAM_WRITE_DATA~regout\ : std_logic;
SIGNAL \this_mram_controller|curr_state.writing~regout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~8_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~9_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state.idle~regout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|Add0~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter~2_combout\ : std_logic;
SIGNAL \this_read_adc_manager|Add0~1_combout\ : std_logic;
SIGNAL \this_read_adc_manager|Add0~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add20~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|address_counter~1_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add20~1_combout\ : std_logic;
SIGNAL \this_state_manager|process_1~0_combout\ : std_logic;
SIGNAL \this_state_manager|process_1~2_combout\ : std_logic;
SIGNAL \this_state_manager|Selector1~0_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[0]~4_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter~6_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[0]~5\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[1]~7_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[1]~8\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[2]~9_combout\ : std_logic;
SIGNAL \this_state_manager|Selector1~1_combout\ : std_logic;
SIGNAL \this_state_manager|Selector1~2_combout\ : std_logic;
SIGNAL \this_state_manager|curr_state.read_adc~regout\ : std_logic;
SIGNAL \this_read_adc_manager|read_counter~2_combout\ : std_logic;
SIGNAL \this_read_adc_manager|read_counter~3_combout\ : std_logic;
SIGNAL \this_read_adc_manager|Equal1~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|ADC_BIT_VALID~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|ADC_BIT_VALID~regout\ : std_logic;
SIGNAL \Corr_Main_1|corr_buffer_update~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|corr_buffer_update~regout\ : std_logic;
SIGNAL \Corr_Main_1|corr_buffer_update~clkctrl_outclk\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[2]~feeder_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[9]~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[9]~1_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b0[0]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[0]~9_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[0]~feeder_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[3]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b0[1]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[0]~10\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[1]~11_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b0[2]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[1]~12\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[2]~13_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[5]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b0[3]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[2]~14\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[3]~15_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[6]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[3]~16\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[4]~17_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[7]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b0[5]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[4]~18\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[5]~19_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[8]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[5]~20\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[6]~21_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b0[7]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buf_b1[7]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[6]~22\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[7]~23_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[7]~24\ : std_logic;
SIGNAL \Corr_Main_1|buff|diff[8]~25_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a35\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a8\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a45\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a46\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a47\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_2[4]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a48\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_3[4]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a49\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a50\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_5[4]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a51\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a52\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a53\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a43\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a34\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a42\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a33\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a6\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a41\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a32\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a40\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a31\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a4\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_4[34]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a39\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_3[9]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a30\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a38\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_2[9]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a29\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_2[14]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a2\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_2[34]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a37\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_1[9]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a28\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_1[34]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a36\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0[9]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27~portbdataout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0[34]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a7\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a6\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a4\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_4[44]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_3[44]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_2[44]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_1[44]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0[44]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a26\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a25\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a24\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a23\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_5[39]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a22\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_4[39]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a21\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a20\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_2[39]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a19\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_1[39]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a18\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a44\ : std_logic;
SIGNAL \Corr_Main_1|Add1~1_cout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~3\ : std_logic;
SIGNAL \Corr_Main_1|Add1~5\ : std_logic;
SIGNAL \Corr_Main_1|Add1~7\ : std_logic;
SIGNAL \Corr_Main_1|Add1~9\ : std_logic;
SIGNAL \Corr_Main_1|Add1~11\ : std_logic;
SIGNAL \Corr_Main_1|Add1~13\ : std_logic;
SIGNAL \Corr_Main_1|Add1~15\ : std_logic;
SIGNAL \Corr_Main_1|Add1~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~1\ : std_logic;
SIGNAL \Corr_Main_1|Add2~3\ : std_logic;
SIGNAL \Corr_Main_1|Add2~5\ : std_logic;
SIGNAL \Corr_Main_1|Add2~7\ : std_logic;
SIGNAL \Corr_Main_1|Add2~9\ : std_logic;
SIGNAL \Corr_Main_1|Add2~11\ : std_logic;
SIGNAL \Corr_Main_1|Add2~13\ : std_logic;
SIGNAL \Corr_Main_1|Add2~15\ : std_logic;
SIGNAL \Corr_Main_1|Add2~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add10~1\ : std_logic;
SIGNAL \Corr_Main_1|Add10~3\ : std_logic;
SIGNAL \Corr_Main_1|Add10~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~1\ : std_logic;
SIGNAL \Corr_Main_1|Add13~3\ : std_logic;
SIGNAL \Corr_Main_1|Add13~5\ : std_logic;
SIGNAL \Corr_Main_1|Add13~7\ : std_logic;
SIGNAL \Corr_Main_1|Add13~9\ : std_logic;
SIGNAL \Corr_Main_1|Add13~11\ : std_logic;
SIGNAL \Corr_Main_1|Add13~13\ : std_logic;
SIGNAL \Corr_Main_1|Add13~15\ : std_logic;
SIGNAL \Corr_Main_1|Add13~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~1\ : std_logic;
SIGNAL \Corr_Main_1|Add12~3\ : std_logic;
SIGNAL \Corr_Main_1|Add12~5\ : std_logic;
SIGNAL \Corr_Main_1|Add12~7\ : std_logic;
SIGNAL \Corr_Main_1|Add12~9\ : std_logic;
SIGNAL \Corr_Main_1|Add12~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~1\ : std_logic;
SIGNAL \Corr_Main_1|Add16~3\ : std_logic;
SIGNAL \Corr_Main_1|Add16~5\ : std_logic;
SIGNAL \Corr_Main_1|Add16~7\ : std_logic;
SIGNAL \Corr_Main_1|Add16~9\ : std_logic;
SIGNAL \Corr_Main_1|Add16~11\ : std_logic;
SIGNAL \Corr_Main_1|Add16~13\ : std_logic;
SIGNAL \Corr_Main_1|Add16~15\ : std_logic;
SIGNAL \Corr_Main_1|Add16~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~1_cout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~3\ : std_logic;
SIGNAL \Corr_Main_1|Add3~5\ : std_logic;
SIGNAL \Corr_Main_1|Add3~7\ : std_logic;
SIGNAL \Corr_Main_1|Add3~9\ : std_logic;
SIGNAL \Corr_Main_1|Add3~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~1\ : std_logic;
SIGNAL \Corr_Main_1|Add4~3\ : std_logic;
SIGNAL \Corr_Main_1|Add4~5\ : std_logic;
SIGNAL \Corr_Main_1|Add4~7\ : std_logic;
SIGNAL \Corr_Main_1|Add4~9\ : std_logic;
SIGNAL \Corr_Main_1|Add4~11\ : std_logic;
SIGNAL \Corr_Main_1|Add4~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~1\ : std_logic;
SIGNAL \Corr_Main_1|Add8~3\ : std_logic;
SIGNAL \Corr_Main_1|Add8~5\ : std_logic;
SIGNAL \Corr_Main_1|Add8~7\ : std_logic;
SIGNAL \Corr_Main_1|Add8~9\ : std_logic;
SIGNAL \Corr_Main_1|Add8~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~1\ : std_logic;
SIGNAL \Corr_Main_1|Add14~3\ : std_logic;
SIGNAL \Corr_Main_1|Add14~5\ : std_logic;
SIGNAL \Corr_Main_1|Add14~7\ : std_logic;
SIGNAL \Corr_Main_1|Add14~9\ : std_logic;
SIGNAL \Corr_Main_1|Add14~11\ : std_logic;
SIGNAL \Corr_Main_1|Add14~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~1_cout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~3\ : std_logic;
SIGNAL \Corr_Main_1|Add5~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~1\ : std_logic;
SIGNAL \Corr_Main_1|Add6~3\ : std_logic;
SIGNAL \Corr_Main_1|Add6~5\ : std_logic;
SIGNAL \Corr_Main_1|Add6~7\ : std_logic;
SIGNAL \Corr_Main_1|Add6~9\ : std_logic;
SIGNAL \Corr_Main_1|Add6~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\ : std_logic;
SIGNAL \Corr_Main_1|Add9~1\ : std_logic;
SIGNAL \Corr_Main_1|Add9~3\ : std_logic;
SIGNAL \Corr_Main_1|Add9~5\ : std_logic;
SIGNAL \Corr_Main_1|Add9~7\ : std_logic;
SIGNAL \Corr_Main_1|Add9~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add9~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~1\ : std_logic;
SIGNAL \Corr_Main_1|Add17~3\ : std_logic;
SIGNAL \Corr_Main_1|Add17~5\ : std_logic;
SIGNAL \Corr_Main_1|Add17~7\ : std_logic;
SIGNAL \Corr_Main_1|Add17~9\ : std_logic;
SIGNAL \Corr_Main_1|Add17~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~1\ : std_logic;
SIGNAL \Corr_Main_1|Add18~3\ : std_logic;
SIGNAL \Corr_Main_1|Add18~5\ : std_logic;
SIGNAL \Corr_Main_1|Add18~7\ : std_logic;
SIGNAL \Corr_Main_1|Add18~9\ : std_logic;
SIGNAL \Corr_Main_1|Add18~11\ : std_logic;
SIGNAL \Corr_Main_1|Add18~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~10_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~1_cout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~3_cout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~5\ : std_logic;
SIGNAL \Corr_Main_1|Add19~7\ : std_logic;
SIGNAL \Corr_Main_1|Add19~9\ : std_logic;
SIGNAL \Corr_Main_1|Add19~11\ : std_logic;
SIGNAL \Corr_Main_1|Add19~13\ : std_logic;
SIGNAL \Corr_Main_1|Add19~15\ : std_logic;
SIGNAL \Corr_Main_1|Add19~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~6_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~8_combout\ : std_logic;
SIGNAL \Corr_Main_1|PREAMBULE_FOUND~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|PREAMBULE_FOUND~3_combout\ : std_logic;
SIGNAL \Corr_Main_1|check_corr~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|check_corr~3_combout\ : std_logic;
SIGNAL \Corr_Main_1|check_corr~1_combout\ : std_logic;
SIGNAL \Corr_Main_1|check_corr~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|check_corr~4_combout\ : std_logic;
SIGNAL \Corr_Main_1|PREAMBULE_FOUND~1_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add12~11\ : std_logic;
SIGNAL \Corr_Main_1|Add12~13\ : std_logic;
SIGNAL \Corr_Main_1|Add12~15\ : std_logic;
SIGNAL \Corr_Main_1|Add12~17\ : std_logic;
SIGNAL \Corr_Main_1|Add12~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add1~17\ : std_logic;
SIGNAL \Corr_Main_1|Add1~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~17\ : std_logic;
SIGNAL \Corr_Main_1|Add2~19\ : std_logic;
SIGNAL \Corr_Main_1|Add2~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add2~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add13~17\ : std_logic;
SIGNAL \Corr_Main_1|Add13~19\ : std_logic;
SIGNAL \Corr_Main_1|Add13~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~17\ : std_logic;
SIGNAL \Corr_Main_1|Add16~19\ : std_logic;
SIGNAL \Corr_Main_1|Add16~21\ : std_logic;
SIGNAL \Corr_Main_1|Add16~23\ : std_logic;
SIGNAL \Corr_Main_1|Add16~24_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~11\ : std_logic;
SIGNAL \Corr_Main_1|Add8~13\ : std_logic;
SIGNAL \Corr_Main_1|Add8~15\ : std_logic;
SIGNAL \Corr_Main_1|Add8~17\ : std_logic;
SIGNAL \Corr_Main_1|Add8~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add8~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add3~11\ : std_logic;
SIGNAL \Corr_Main_1|Add3~13\ : std_logic;
SIGNAL \Corr_Main_1|Add3~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add4~13\ : std_logic;
SIGNAL \Corr_Main_1|Add4~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~13\ : std_logic;
SIGNAL \Corr_Main_1|Add14~15\ : std_logic;
SIGNAL \Corr_Main_1|Add14~17\ : std_logic;
SIGNAL \Corr_Main_1|Add14~19\ : std_logic;
SIGNAL \Corr_Main_1|Add14~21\ : std_logic;
SIGNAL \Corr_Main_1|Add14~23\ : std_logic;
SIGNAL \Corr_Main_1|Add14~24_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~22_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a17\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_8[49]~feeder_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a16\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\ : std_logic;
SIGNAL \Corr_Main_1|Add9~9\ : std_logic;
SIGNAL \Corr_Main_1|Add9~11\ : std_logic;
SIGNAL \Corr_Main_1|Add9~13\ : std_logic;
SIGNAL \Corr_Main_1|Add9~15\ : std_logic;
SIGNAL \Corr_Main_1|Add9~17\ : std_logic;
SIGNAL \Corr_Main_1|Add9~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add5~5\ : std_logic;
SIGNAL \Corr_Main_1|Add5~7\ : std_logic;
SIGNAL \Corr_Main_1|Add5~9\ : std_logic;
SIGNAL \Corr_Main_1|Add5~11\ : std_logic;
SIGNAL \Corr_Main_1|Add5~13\ : std_logic;
SIGNAL \Corr_Main_1|Add5~15\ : std_logic;
SIGNAL \Corr_Main_1|Add5~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~11\ : std_logic;
SIGNAL \Corr_Main_1|Add6~13\ : std_logic;
SIGNAL \Corr_Main_1|Add6~15\ : std_logic;
SIGNAL \Corr_Main_1|Add6~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add6~12_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~11\ : std_logic;
SIGNAL \Corr_Main_1|Add17~13\ : std_logic;
SIGNAL \Corr_Main_1|Add17~15\ : std_logic;
SIGNAL \Corr_Main_1|Add17~17\ : std_logic;
SIGNAL \Corr_Main_1|Add17~19\ : std_logic;
SIGNAL \Corr_Main_1|Add17~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add14~16_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add17~14_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~13\ : std_logic;
SIGNAL \Corr_Main_1|Add18~15\ : std_logic;
SIGNAL \Corr_Main_1|Add18~17\ : std_logic;
SIGNAL \Corr_Main_1|Add18~19\ : std_logic;
SIGNAL \Corr_Main_1|Add18~21\ : std_logic;
SIGNAL \Corr_Main_1|Add18~23\ : std_logic;
SIGNAL \Corr_Main_1|Add18~24_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add18~22_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~20_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add16~18_combout\ : std_logic;
SIGNAL \Corr_Main_1|Add19~17\ : std_logic;
SIGNAL \Corr_Main_1|Add19~19\ : std_logic;
SIGNAL \Corr_Main_1|Add19~21\ : std_logic;
SIGNAL \Corr_Main_1|Add19~23\ : std_logic;
SIGNAL \Corr_Main_1|Add19~25\ : std_logic;
SIGNAL \Corr_Main_1|Add19~26_combout\ : std_logic;
SIGNAL \Corr_Main_1|PREAMBULE_FOUND~0_combout\ : std_logic;
SIGNAL \Corr_Main_1|PREAMBULE_FOUND~5_combout\ : std_logic;
SIGNAL \Corr_Main_1|PREAMBULE_FOUND~regout\ : std_logic;
SIGNAL \this_mram_controller|Mux61~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux79~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux78~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector39~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[0]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|Mux62~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector24~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[0]~en_regout\ : std_logic;
SIGNAL \Corr_Main_1|MRAM_DATA_OUT[1]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux64~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[1]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[1]~en_regout\ : std_logic;
SIGNAL \Corr_Main_1|MRAM_DATA_OUT[2]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux65~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[2]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[2]~en_regout\ : std_logic;
SIGNAL \Corr_Main_1|Add20~2_combout\ : std_logic;
SIGNAL \Corr_Main_1|MRAM_DATA_OUT[3]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux66~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[3]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[3]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[3]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[4]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[4]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[5]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[5]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[6]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[6]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[7]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[7]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[8]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[8]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[9]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[9]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[10]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[10]~en_regout\ : std_logic;
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
SIGNAL \this_setup_manager|WideNor0~4_combout\ : std_logic;
SIGNAL \this_setup_manager|Selector9~0_combout\ : std_logic;
SIGNAL \this_setup_manager|ADC_SYNC~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector5~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|SPI_CS~regout\ : std_logic;
SIGNAL \this_mram_controller|Mux41~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector0~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector1~1_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_OUTPUT_EN~regout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~6_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state.reading~regout\ : std_logic;
SIGNAL \this_mram_controller|Selector22~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector22~2_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector21~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector20~0_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[2]~10\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[3]~11_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector19~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux21~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector0~1_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector0~2_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_EN~regout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~5_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector2~1_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_WRITE_EN~regout\ : std_logic;
SIGNAL \this_mram_controller|Selector4~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector4~1_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_LOWER_EN~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector3~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|curr_state.data~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector18~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector18~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector4~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector4~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|curr_state.stop~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|curr_state.idle~regout\ : std_logic;
SIGNAL \UART_Controller_1|Selector4~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.waiting~regout\ : std_logic;
SIGNAL \UART_Controller_1|fifo_read_req~combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|have_data~0_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|have_data~regout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_DATA_IRQ~0_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_DATA_IRQ~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ : std_logic;
SIGNAL \UART_Controller_1|Selector1~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.idle~regout\ : std_logic;
SIGNAL \UART_Controller_1|Selector2~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.reading_fifo~regout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.transmiting~feeder_combout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.transmiting~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector1~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|curr_state.sync~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector15~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~1\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector14~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~3\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~4_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector13~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~5\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~6_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector12~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Equal0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector9~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector10~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~7\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~9\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~11\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~13\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~15\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~16_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector7~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~14_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector8~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Equal0~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Equal0~3_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector17~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector16~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector16~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[0]~0_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[0]~1_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|msb~1_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|msb~regout\ : std_logic;
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
SIGNAL \this_write_out_mram_manager|UART_SEND_DATA[1]~1_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_SEND_DATA[2]~0_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_SEND_DATA[3]~3_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_SEND_DATA[4]~6_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_SEND_DATA[5]~5_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_SEND_DATA[6]~4_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|msb~_wirecell_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector17~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Mux0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Mux0~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|TX~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector2~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|curr_state.start~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Mux0~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Mux0~3_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|TX~3_combout\ : std_logic;
SIGNAL \Corr_Main_1|buff|buffer_7\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_1\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_6\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_5\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|check_corr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buf_b2\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_8\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_2\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|diff\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buf_b0\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Corr_Main_1|MRAM_DATA_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Corr_Main_1|address_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Corr_Main_1|read_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_3\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buf_b1\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ADC_BIT_A~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_4\ : std_logic_vector(49 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \this_mram_controller|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \this_mram_controller|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \this_mram_controller|MRAM_A\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \this_state_manager|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \this_setup_manager|config_command_counter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \this_setup_manager|SPI_send_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \this_read_adc_manager|read_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \this_read_adc_manager|address_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \this_write_out_mram_manager|address_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|cs_up_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_tx_component|bits_sent\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_tx_1|data_send\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_tx_1|data_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_tx_1|counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[15]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[14]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[13]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[12]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[11]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[10]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[9]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[8]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[7]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[6]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[5]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[4]~en_regout\ : std_logic;
SIGNAL \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\ : std_logic;
SIGNAL \this_state_manager|ALT_INV_curr_state.read_adc~regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_curr_state.idle~regout\ : std_logic;
SIGNAL \this_state_manager|ALT_INV_curr_state.setup~regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_LOWER_EN~regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_WRITE_EN~regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_EN~regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_OUTPUT_EN~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|ALT_INV_sclk~regout\ : std_logic;

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

\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTADATAIN_bus\ <= (\this_write_out_mram_manager|msb~_wirecell_combout\ & \this_write_out_mram_manager|UART_SEND_DATA[6]~4_combout\ & 
\this_write_out_mram_manager|UART_SEND_DATA[5]~5_combout\ & \this_write_out_mram_manager|UART_SEND_DATA[4]~6_combout\ & \this_write_out_mram_manager|UART_SEND_DATA[3]~3_combout\ & \this_write_out_mram_manager|UART_SEND_DATA[2]~0_combout\ & 
\this_write_out_mram_manager|UART_SEND_DATA[1]~1_combout\ & \this_write_out_mram_manager|UART_SEND_DATA[0]~2_combout\);

\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3) & 
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) & 
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & 
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(0) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(0);
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(1) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(1);
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(2) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(2);
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(3) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(3);
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(4) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(4);
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(5) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(5);
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(6) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(6);
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(7) <= \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(7);

\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\ <= (\Corr_Main_1|buff|buffer_8\(14) & \Corr_Main_1|buff|buffer_7\(14) & \Corr_Main_1|buff|buffer_6\(14) & \Corr_Main_1|buff|buffer_5\(14) & 
\Corr_Main_1|buff|buffer_4\(14) & \Corr_Main_1|buff|buffer_3\(14) & \Corr_Main_1|buff|buffer_2\(14) & \Corr_Main_1|buff|buffer_1\(14) & \Corr_Main_1|buff|buffer_0\(14));

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
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a8\ <= \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(8);

\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\ <= (\Corr_Main_1|buff|buffer_8\(4) & \Corr_Main_1|buff|buffer_7\(4) & \Corr_Main_1|buff|buffer_6\(4) & \Corr_Main_1|buff|buffer_5\(4) & 
\Corr_Main_1|buff|buffer_4\(4) & \Corr_Main_1|buff|buffer_3\(4) & \Corr_Main_1|buff|buffer_2\(4) & \Corr_Main_1|buff|buffer_1\(4) & \Corr_Main_1|buff|buffer_0\(4) & \Corr_Main_1|buff|buffer_8\(34) & \Corr_Main_1|buff|buffer_7\(34) & 
\Corr_Main_1|buff|buffer_6\(34) & \Corr_Main_1|buff|buffer_5\(34) & \Corr_Main_1|buff|buffer_4\(34) & \Corr_Main_1|buff|buffer_3\(34) & \Corr_Main_1|buff|buffer_2\(34) & \Corr_Main_1|buff|buffer_1\(34) & \Corr_Main_1|buff|buffer_0\(34) & 
\Corr_Main_1|buff|buffer_8\(44) & \Corr_Main_1|buff|buffer_7\(44) & \Corr_Main_1|buff|buffer_6\(44) & \Corr_Main_1|buff|buffer_5\(44) & \Corr_Main_1|buff|buffer_4\(44) & \Corr_Main_1|buff|buffer_3\(44) & \Corr_Main_1|buff|buffer_2\(44) & 
\Corr_Main_1|buff|buffer_1\(44) & \Corr_Main_1|buff|buffer_0\(44) & \Corr_Main_1|buff|buffer_8\(39) & \Corr_Main_1|buff|buffer_7\(39) & \Corr_Main_1|buff|buffer_6\(39) & \Corr_Main_1|buff|buffer_5\(39) & \Corr_Main_1|buff|buffer_4\(39) & 
\Corr_Main_1|buff|buffer_3\(39) & \Corr_Main_1|buff|buffer_2\(39) & \Corr_Main_1|buff|buffer_1\(39) & \Corr_Main_1|buff|buffer_0\(39));

\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\(0) <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(0);

\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\(0) <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(0);

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
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a16\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(16);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a17\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(17);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a18\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(18);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a19\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(19);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a20\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(20);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a21\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(21);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a22\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(22);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a23\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(23);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a24\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(24);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a25\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(25);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a26\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(26);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a36\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(27);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a37\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(28);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a38\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(29);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a39\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(30);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a40\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(31);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a41\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(32);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a42\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(33);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a43\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(34);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a44\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(35);

\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTADATAIN_bus\ <= (\Corr_Main_1|buff|diff\(8) & \Corr_Main_1|buff|diff\(7) & \Corr_Main_1|buff|diff\(6) & \Corr_Main_1|buff|diff\(5) & \Corr_Main_1|buff|diff\(4) & 
\Corr_Main_1|buff|diff\(3) & \Corr_Main_1|buff|diff\(2) & \Corr_Main_1|buff|diff\(1) & \Corr_Main_1|buff|diff\(0) & \Corr_Main_1|buff|buffer_8\(9) & \Corr_Main_1|buff|buffer_7\(9) & \Corr_Main_1|buff|buffer_6\(9) & 
\Corr_Main_1|buff|buffer_5\(9) & \Corr_Main_1|buff|buffer_4\(9) & \Corr_Main_1|buff|buffer_3\(9) & \Corr_Main_1|buff|buffer_2\(9) & \Corr_Main_1|buff|buffer_1\(9) & \Corr_Main_1|buff|buffer_0\(9));

\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTAADDR_bus\(0) <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(0);

\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBADDR_bus\(0) <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(0);

\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27~portbdataout\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(0);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a28\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(1);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a29\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(2);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a30\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(3);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a31\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(4);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a32\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(5);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a33\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(6);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a34\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(7);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a35\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(8);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a45\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(9);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a46\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(10);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a47\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(11);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a48\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(12);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a49\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(13);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a50\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(14);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a51\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(15);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a52\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(16);
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a53\ <= \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\(17);

\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTADATAIN_bus\ <= (\this_setup_manager|SPI_send_data\(15) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\this_setup_manager|SPI_send_data\(11) & \this_setup_manager|SPI_send_data\(10) & \this_setup_manager|SPI_send_data\(10) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \this_setup_manager|SPI_send_data\(4) & 
\this_setup_manager|SPI_send_data\(11) & \~GND~combout\ & \this_setup_manager|SPI_send_data\(0) & \this_setup_manager|SPI_send_data\(0));

\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTAADDR_bus\ <= (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3) & 
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBADDR_bus\ <= (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) & 
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & 
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(0) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(0);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(1) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(1);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(2) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(2);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(3) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(3);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(4) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(4);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(5) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(5);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(6) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(6);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(7) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(7);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(8) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(8);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(9) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(9);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(10) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(10);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(11) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(11);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(12) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(12);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(13) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(13);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(14) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(14);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(15) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\(15);

\pl|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \pl|altpll_component|_clk0\);

\Corr_Main_1|corr_buffer_update~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Corr_Main_1|corr_buffer_update~regout\);
\this_mram_controller|ALT_INV_MRAM_D[15]~en_regout\ <= NOT \this_mram_controller|MRAM_D[15]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[14]~en_regout\ <= NOT \this_mram_controller|MRAM_D[14]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[13]~en_regout\ <= NOT \this_mram_controller|MRAM_D[13]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[12]~en_regout\ <= NOT \this_mram_controller|MRAM_D[12]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[11]~en_regout\ <= NOT \this_mram_controller|MRAM_D[11]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[10]~en_regout\ <= NOT \this_mram_controller|MRAM_D[10]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[9]~en_regout\ <= NOT \this_mram_controller|MRAM_D[9]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[8]~en_regout\ <= NOT \this_mram_controller|MRAM_D[8]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[7]~en_regout\ <= NOT \this_mram_controller|MRAM_D[7]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[6]~en_regout\ <= NOT \this_mram_controller|MRAM_D[6]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[5]~en_regout\ <= NOT \this_mram_controller|MRAM_D[5]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[4]~en_regout\ <= NOT \this_mram_controller|MRAM_D[4]~en_regout\;
\this_state_manager|ALT_INV_curr_state.write_out_mram~regout\ <= NOT \this_state_manager|curr_state.write_out_mram~regout\;
\this_state_manager|ALT_INV_curr_state.read_adc~regout\ <= NOT \this_state_manager|curr_state.read_adc~regout\;
\this_mram_controller|ALT_INV_curr_state.idle~regout\ <= NOT \this_mram_controller|curr_state.idle~regout\;
\this_state_manager|ALT_INV_curr_state.setup~regout\ <= NOT \this_state_manager|curr_state.setup~regout\;
\this_mram_controller|ALT_INV_MRAM_LOWER_EN~regout\ <= NOT \this_mram_controller|MRAM_LOWER_EN~regout\;
\this_mram_controller|ALT_INV_MRAM_WRITE_EN~regout\ <= NOT \this_mram_controller|MRAM_WRITE_EN~regout\;
\this_mram_controller|ALT_INV_MRAM_EN~regout\ <= NOT \this_mram_controller|MRAM_EN~regout\;
\this_mram_controller|ALT_INV_MRAM_OUTPUT_EN~regout\ <= NOT \this_mram_controller|MRAM_OUTPUT_EN~regout\;
\adc_spi_controller|spi_tx_component|ALT_INV_sclk~regout\ <= NOT \adc_spi_controller|spi_tx_component|sclk~regout\;

-- Location: LCFF_X17_Y7_N11
\this_setup_manager|config_command_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[6]~26_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(6));

-- Location: LCFF_X20_Y6_N21
\adc_spi_controller|spi_tx_component|clk_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter[2]~9_combout\,
	sclr => \adc_spi_controller|spi_tx_component|Equal1~1_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(2));

-- Location: M4K_X23_Y12
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "UART_Controller:UART_Controller_1|UART_FIFO_wizard:uart_fifo|scfifo:scfifo_component|scfifo_ka21:auto_generated|a_dpfifo_rg21:dpfifo|dpram_st01:FIFOram|altsyncram_0sj1:altsyncram1|ALTSYNCRAM",
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
	portadatain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portaaddr => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X17_Y7_N10
\this_setup_manager|config_command_counter[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[6]~26_combout\ = (\this_setup_manager|config_command_counter\(6) & (!\this_setup_manager|config_command_counter[5]~25\)) # (!\this_setup_manager|config_command_counter\(6) & 
-- ((\this_setup_manager|config_command_counter[5]~25\) # (GND)))
-- \this_setup_manager|config_command_counter[6]~27\ = CARRY((!\this_setup_manager|config_command_counter[5]~25\) # (!\this_setup_manager|config_command_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(6),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[5]~25\,
	combout => \this_setup_manager|config_command_counter[6]~26_combout\,
	cout => \this_setup_manager|config_command_counter[6]~27\);

-- Location: LCCOMB_X20_Y6_N20
\adc_spi_controller|spi_tx_component|clk_counter[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter[2]~9_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(2) & (\adc_spi_controller|spi_tx_component|clk_counter[1]~8\ $ (GND))) # (!\adc_spi_controller|spi_tx_component|clk_counter\(2) & 
-- (!\adc_spi_controller|spi_tx_component|clk_counter[1]~8\ & VCC))
-- \adc_spi_controller|spi_tx_component|clk_counter[2]~10\ = CARRY((\adc_spi_controller|spi_tx_component|clk_counter\(2) & !\adc_spi_controller|spi_tx_component|clk_counter[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(2),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|clk_counter[1]~8\,
	combout => \adc_spi_controller|spi_tx_component|clk_counter[2]~9_combout\,
	cout => \adc_spi_controller|spi_tx_component|clk_counter[2]~10\);

-- Location: LCCOMB_X19_Y12_N8
\UART_Controller_1|uart_tx_1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~8_combout\ = (\UART_Controller_1|uart_tx_1|counter\(4) & (\UART_Controller_1|uart_tx_1|Add0~7\ $ (GND))) # (!\UART_Controller_1|uart_tx_1|counter\(4) & (!\UART_Controller_1|uart_tx_1|Add0~7\ & VCC))
-- \UART_Controller_1|uart_tx_1|Add0~9\ = CARRY((\UART_Controller_1|uart_tx_1|counter\(4) & !\UART_Controller_1|uart_tx_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|counter\(4),
	datad => VCC,
	cin => \UART_Controller_1|uart_tx_1|Add0~7\,
	combout => \UART_Controller_1|uart_tx_1|Add0~8_combout\,
	cout => \UART_Controller_1|uart_tx_1|Add0~9\);

-- Location: LCCOMB_X19_Y12_N10
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

-- Location: LCCOMB_X19_Y12_N12
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

-- Location: LCCOMB_X19_Y12_N16
\UART_Controller_1|uart_tx_1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~16_combout\ = (\UART_Controller_1|uart_tx_1|counter\(8) & (\UART_Controller_1|uart_tx_1|Add0~15\ $ (GND))) # (!\UART_Controller_1|uart_tx_1|counter\(8) & (!\UART_Controller_1|uart_tx_1|Add0~15\ & VCC))
-- \UART_Controller_1|uart_tx_1|Add0~17\ = CARRY((\UART_Controller_1|uart_tx_1|counter\(8) & !\UART_Controller_1|uart_tx_1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|counter\(8),
	datad => VCC,
	cin => \UART_Controller_1|uart_tx_1|Add0~15\,
	combout => \UART_Controller_1|uart_tx_1|Add0~16_combout\,
	cout => \UART_Controller_1|uart_tx_1|Add0~17\);

-- Location: LCCOMB_X19_Y12_N18
\UART_Controller_1|uart_tx_1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~18_combout\ = (\UART_Controller_1|uart_tx_1|counter\(9) & (!\UART_Controller_1|uart_tx_1|Add0~17\)) # (!\UART_Controller_1|uart_tx_1|counter\(9) & ((\UART_Controller_1|uart_tx_1|Add0~17\) # (GND)))
-- \UART_Controller_1|uart_tx_1|Add0~19\ = CARRY((!\UART_Controller_1|uart_tx_1|Add0~17\) # (!\UART_Controller_1|uart_tx_1|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|counter\(9),
	datad => VCC,
	cin => \UART_Controller_1|uart_tx_1|Add0~17\,
	combout => \UART_Controller_1|uart_tx_1|Add0~18_combout\,
	cout => \UART_Controller_1|uart_tx_1|Add0~19\);

-- Location: LCCOMB_X19_Y12_N20
\UART_Controller_1|uart_tx_1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~20_combout\ = \UART_Controller_1|uart_tx_1|counter\(10) $ (!\UART_Controller_1|uart_tx_1|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|counter\(10),
	cin => \UART_Controller_1|uart_tx_1|Add0~19\,
	combout => \UART_Controller_1|uart_tx_1|Add0~20_combout\);

-- Location: LCCOMB_X19_Y5_N18
\adc_spi_controller|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Add0~0_combout\ = \adc_spi_controller|cs_up_counter\(0) $ (VCC)
-- \adc_spi_controller|Add0~1\ = CARRY(\adc_spi_controller|cs_up_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|cs_up_counter\(0),
	datad => VCC,
	combout => \adc_spi_controller|Add0~0_combout\,
	cout => \adc_spi_controller|Add0~1\);

-- Location: LCCOMB_X19_Y5_N20
\adc_spi_controller|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Add0~2_combout\ = (\adc_spi_controller|cs_up_counter\(1) & (!\adc_spi_controller|Add0~1\)) # (!\adc_spi_controller|cs_up_counter\(1) & ((\adc_spi_controller|Add0~1\) # (GND)))
-- \adc_spi_controller|Add0~3\ = CARRY((!\adc_spi_controller|Add0~1\) # (!\adc_spi_controller|cs_up_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|cs_up_counter\(1),
	datad => VCC,
	cin => \adc_spi_controller|Add0~1\,
	combout => \adc_spi_controller|Add0~2_combout\,
	cout => \adc_spi_controller|Add0~3\);

-- Location: LCCOMB_X19_Y5_N22
\adc_spi_controller|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Add0~4_combout\ = (\adc_spi_controller|cs_up_counter\(2) & (\adc_spi_controller|Add0~3\ $ (GND))) # (!\adc_spi_controller|cs_up_counter\(2) & (!\adc_spi_controller|Add0~3\ & VCC))
-- \adc_spi_controller|Add0~5\ = CARRY((\adc_spi_controller|cs_up_counter\(2) & !\adc_spi_controller|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|cs_up_counter\(2),
	datad => VCC,
	cin => \adc_spi_controller|Add0~3\,
	combout => \adc_spi_controller|Add0~4_combout\,
	cout => \adc_spi_controller|Add0~5\);

-- Location: LCCOMB_X19_Y5_N24
\adc_spi_controller|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Add0~6_combout\ = (\adc_spi_controller|cs_up_counter\(3) & (!\adc_spi_controller|Add0~5\)) # (!\adc_spi_controller|cs_up_counter\(3) & ((\adc_spi_controller|Add0~5\) # (GND)))
-- \adc_spi_controller|Add0~7\ = CARRY((!\adc_spi_controller|Add0~5\) # (!\adc_spi_controller|cs_up_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|cs_up_counter\(3),
	datad => VCC,
	cin => \adc_spi_controller|Add0~5\,
	combout => \adc_spi_controller|Add0~6_combout\,
	cout => \adc_spi_controller|Add0~7\);

-- Location: LCCOMB_X19_Y5_N26
\adc_spi_controller|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Add0~8_combout\ = \adc_spi_controller|Add0~7\ $ (!\adc_spi_controller|cs_up_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|cs_up_counter\(4),
	cin => \adc_spi_controller|Add0~7\,
	combout => \adc_spi_controller|Add0~8_combout\);

-- Location: LCFF_X21_Y5_N11
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3));

-- Location: LCFF_X24_Y11_N11
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2));

-- Location: LCFF_X24_Y11_N7
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0));

-- Location: LCCOMB_X6_Y6_N20
\Corr_Main_1|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~12_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a6\ & (!\Corr_Main_1|Add3~11\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a6\ & (\Corr_Main_1|Add3~11\ $ (GND)))
-- \Corr_Main_1|Add3~13\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a6\ & !\Corr_Main_1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a6\,
	datad => VCC,
	cin => \Corr_Main_1|Add3~11\,
	combout => \Corr_Main_1|Add3~12_combout\,
	cout => \Corr_Main_1|Add3~13\);

-- Location: LCCOMB_X6_Y6_N22
\Corr_Main_1|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~14_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\ & ((\Corr_Main_1|Add3~13\) # (GND))) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\ & (!\Corr_Main_1|Add3~13\))
-- \Corr_Main_1|Add3~15\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\) # (!\Corr_Main_1|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\,
	datad => VCC,
	cin => \Corr_Main_1|Add3~13\,
	combout => \Corr_Main_1|Add3~14_combout\,
	cout => \Corr_Main_1|Add3~15\);

-- Location: LCCOMB_X6_Y6_N24
\Corr_Main_1|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~16_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a8\ & (!\Corr_Main_1|Add3~15\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a8\ & (\Corr_Main_1|Add3~15\ $ (GND)))
-- \Corr_Main_1|Add3~17\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a8\ & !\Corr_Main_1|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a8\,
	datad => VCC,
	cin => \Corr_Main_1|Add3~15\,
	combout => \Corr_Main_1|Add3~16_combout\,
	cout => \Corr_Main_1|Add3~17\);

-- Location: LCCOMB_X6_Y6_N26
\Corr_Main_1|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~18_combout\ = \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a8\ $ (!\Corr_Main_1|Add3~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a8\,
	cin => \Corr_Main_1|Add3~17\,
	combout => \Corr_Main_1|Add3~18_combout\);

-- Location: LCCOMB_X7_Y6_N2
\Corr_Main_1|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~0_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\ & ((GND) # (!\Corr_Main_1|buff|buffer_0\(34)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\ & (\Corr_Main_1|buff|buffer_0\(34) $ (GND)))
-- \Corr_Main_1|Add4~1\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\) # (!\Corr_Main_1|buff|buffer_0\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	datab => \Corr_Main_1|buff|buffer_0\(34),
	datad => VCC,
	combout => \Corr_Main_1|Add4~0_combout\,
	cout => \Corr_Main_1|Add4~1\);

-- Location: LCCOMB_X7_Y6_N4
\Corr_Main_1|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~2_combout\ = (\Corr_Main_1|buff|buffer_1\(34) & ((\Corr_Main_1|Add3~2_combout\ & (!\Corr_Main_1|Add4~1\)) # (!\Corr_Main_1|Add3~2_combout\ & ((\Corr_Main_1|Add4~1\) # (GND))))) # (!\Corr_Main_1|buff|buffer_1\(34) & 
-- ((\Corr_Main_1|Add3~2_combout\ & (\Corr_Main_1|Add4~1\ & VCC)) # (!\Corr_Main_1|Add3~2_combout\ & (!\Corr_Main_1|Add4~1\))))
-- \Corr_Main_1|Add4~3\ = CARRY((\Corr_Main_1|buff|buffer_1\(34) & ((!\Corr_Main_1|Add4~1\) # (!\Corr_Main_1|Add3~2_combout\))) # (!\Corr_Main_1|buff|buffer_1\(34) & (!\Corr_Main_1|Add3~2_combout\ & !\Corr_Main_1|Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_1\(34),
	datab => \Corr_Main_1|Add3~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add4~1\,
	combout => \Corr_Main_1|Add4~2_combout\,
	cout => \Corr_Main_1|Add4~3\);

-- Location: LCCOMB_X7_Y6_N10
\Corr_Main_1|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~8_combout\ = ((\Corr_Main_1|buff|buffer_4\(34) $ (\Corr_Main_1|Add3~8_combout\ $ (\Corr_Main_1|Add4~7\)))) # (GND)
-- \Corr_Main_1|Add4~9\ = CARRY((\Corr_Main_1|buff|buffer_4\(34) & (\Corr_Main_1|Add3~8_combout\ & !\Corr_Main_1|Add4~7\)) # (!\Corr_Main_1|buff|buffer_4\(34) & ((\Corr_Main_1|Add3~8_combout\) # (!\Corr_Main_1|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_4\(34),
	datab => \Corr_Main_1|Add3~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add4~7\,
	combout => \Corr_Main_1|Add4~8_combout\,
	cout => \Corr_Main_1|Add4~9\);

-- Location: LCCOMB_X7_Y6_N12
\Corr_Main_1|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~10_combout\ = (\Corr_Main_1|buff|buffer_5\(34) & ((\Corr_Main_1|Add3~10_combout\ & (!\Corr_Main_1|Add4~9\)) # (!\Corr_Main_1|Add3~10_combout\ & ((\Corr_Main_1|Add4~9\) # (GND))))) # (!\Corr_Main_1|buff|buffer_5\(34) & 
-- ((\Corr_Main_1|Add3~10_combout\ & (\Corr_Main_1|Add4~9\ & VCC)) # (!\Corr_Main_1|Add3~10_combout\ & (!\Corr_Main_1|Add4~9\))))
-- \Corr_Main_1|Add4~11\ = CARRY((\Corr_Main_1|buff|buffer_5\(34) & ((!\Corr_Main_1|Add4~9\) # (!\Corr_Main_1|Add3~10_combout\))) # (!\Corr_Main_1|buff|buffer_5\(34) & (!\Corr_Main_1|Add3~10_combout\ & !\Corr_Main_1|Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_5\(34),
	datab => \Corr_Main_1|Add3~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add4~9\,
	combout => \Corr_Main_1|Add4~10_combout\,
	cout => \Corr_Main_1|Add4~11\);

-- Location: LCCOMB_X7_Y6_N16
\Corr_Main_1|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~14_combout\ = (\Corr_Main_1|buff|buffer_7\(34) & ((\Corr_Main_1|Add3~14_combout\ & (!\Corr_Main_1|Add4~13\)) # (!\Corr_Main_1|Add3~14_combout\ & ((\Corr_Main_1|Add4~13\) # (GND))))) # (!\Corr_Main_1|buff|buffer_7\(34) & 
-- ((\Corr_Main_1|Add3~14_combout\ & (\Corr_Main_1|Add4~13\ & VCC)) # (!\Corr_Main_1|Add3~14_combout\ & (!\Corr_Main_1|Add4~13\))))
-- \Corr_Main_1|Add4~15\ = CARRY((\Corr_Main_1|buff|buffer_7\(34) & ((!\Corr_Main_1|Add4~13\) # (!\Corr_Main_1|Add3~14_combout\))) # (!\Corr_Main_1|buff|buffer_7\(34) & (!\Corr_Main_1|Add3~14_combout\ & !\Corr_Main_1|Add4~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_7\(34),
	datab => \Corr_Main_1|Add3~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add4~13\,
	combout => \Corr_Main_1|Add4~14_combout\,
	cout => \Corr_Main_1|Add4~15\);

-- Location: LCCOMB_X7_Y6_N18
\Corr_Main_1|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~16_combout\ = ((\Corr_Main_1|Add3~16_combout\ $ (\Corr_Main_1|buff|buffer_8\(34) $ (\Corr_Main_1|Add4~15\)))) # (GND)
-- \Corr_Main_1|Add4~17\ = CARRY((\Corr_Main_1|Add3~16_combout\ & ((!\Corr_Main_1|Add4~15\) # (!\Corr_Main_1|buff|buffer_8\(34)))) # (!\Corr_Main_1|Add3~16_combout\ & (!\Corr_Main_1|buff|buffer_8\(34) & !\Corr_Main_1|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add3~16_combout\,
	datab => \Corr_Main_1|buff|buffer_8\(34),
	datad => VCC,
	cin => \Corr_Main_1|Add4~15\,
	combout => \Corr_Main_1|Add4~16_combout\,
	cout => \Corr_Main_1|Add4~17\);

-- Location: LCCOMB_X7_Y6_N20
\Corr_Main_1|Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~18_combout\ = (\Corr_Main_1|buff|buffer_8\(34) & ((\Corr_Main_1|Add3~18_combout\ & (!\Corr_Main_1|Add4~17\)) # (!\Corr_Main_1|Add3~18_combout\ & ((\Corr_Main_1|Add4~17\) # (GND))))) # (!\Corr_Main_1|buff|buffer_8\(34) & 
-- ((\Corr_Main_1|Add3~18_combout\ & (\Corr_Main_1|Add4~17\ & VCC)) # (!\Corr_Main_1|Add3~18_combout\ & (!\Corr_Main_1|Add4~17\))))
-- \Corr_Main_1|Add4~19\ = CARRY((\Corr_Main_1|buff|buffer_8\(34) & ((!\Corr_Main_1|Add4~17\) # (!\Corr_Main_1|Add3~18_combout\))) # (!\Corr_Main_1|buff|buffer_8\(34) & (!\Corr_Main_1|Add3~18_combout\ & !\Corr_Main_1|Add4~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_8\(34),
	datab => \Corr_Main_1|Add3~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add4~17\,
	combout => \Corr_Main_1|Add4~18_combout\,
	cout => \Corr_Main_1|Add4~19\);

-- Location: LCCOMB_X7_Y6_N22
\Corr_Main_1|Add4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~20_combout\ = \Corr_Main_1|Add3~18_combout\ $ (\Corr_Main_1|Add4~19\ $ (\Corr_Main_1|buff|buffer_8\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add3~18_combout\,
	datad => \Corr_Main_1|buff|buffer_8\(34),
	cin => \Corr_Main_1|Add4~19\,
	combout => \Corr_Main_1|Add4~20_combout\);

-- Location: LCCOMB_X8_Y8_N4
\Corr_Main_1|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~4_combout\ = ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a20\ $ (\Corr_Main_1|buff|buffer_2\(39) $ (!\Corr_Main_1|Add8~3\)))) # (GND)
-- \Corr_Main_1|Add8~5\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a20\ & ((\Corr_Main_1|buff|buffer_2\(39)) # (!\Corr_Main_1|Add8~3\))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a20\ & 
-- (\Corr_Main_1|buff|buffer_2\(39) & !\Corr_Main_1|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a20\,
	datab => \Corr_Main_1|buff|buffer_2\(39),
	datad => VCC,
	cin => \Corr_Main_1|Add8~3\,
	combout => \Corr_Main_1|Add8~4_combout\,
	cout => \Corr_Main_1|Add8~5\);

-- Location: LCCOMB_X8_Y8_N6
\Corr_Main_1|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~6_combout\ = (\Corr_Main_1|buff|buffer_3\(39) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a21\ & (\Corr_Main_1|Add8~5\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a21\ & 
-- (!\Corr_Main_1|Add8~5\)))) # (!\Corr_Main_1|buff|buffer_3\(39) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a21\ & (!\Corr_Main_1|Add8~5\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a21\ & 
-- ((\Corr_Main_1|Add8~5\) # (GND)))))
-- \Corr_Main_1|Add8~7\ = CARRY((\Corr_Main_1|buff|buffer_3\(39) & (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a21\ & !\Corr_Main_1|Add8~5\)) # (!\Corr_Main_1|buff|buffer_3\(39) & ((!\Corr_Main_1|Add8~5\) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_3\(39),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a21\,
	datad => VCC,
	cin => \Corr_Main_1|Add8~5\,
	combout => \Corr_Main_1|Add8~6_combout\,
	cout => \Corr_Main_1|Add8~7\);

-- Location: LCCOMB_X8_Y8_N12
\Corr_Main_1|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~12_combout\ = ((\Corr_Main_1|buff|buffer_6\(39) $ (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a24\ $ (!\Corr_Main_1|Add8~11\)))) # (GND)
-- \Corr_Main_1|Add8~13\ = CARRY((\Corr_Main_1|buff|buffer_6\(39) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a24\) # (!\Corr_Main_1|Add8~11\))) # (!\Corr_Main_1|buff|buffer_6\(39) & 
-- (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a24\ & !\Corr_Main_1|Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_6\(39),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a24\,
	datad => VCC,
	cin => \Corr_Main_1|Add8~11\,
	combout => \Corr_Main_1|Add8~12_combout\,
	cout => \Corr_Main_1|Add8~13\);

-- Location: LCCOMB_X8_Y8_N14
\Corr_Main_1|Add8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~14_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a25\ & ((\Corr_Main_1|buff|buffer_7\(39) & (\Corr_Main_1|Add8~13\ & VCC)) # (!\Corr_Main_1|buff|buffer_7\(39) & (!\Corr_Main_1|Add8~13\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a25\ & ((\Corr_Main_1|buff|buffer_7\(39) & (!\Corr_Main_1|Add8~13\)) # (!\Corr_Main_1|buff|buffer_7\(39) & ((\Corr_Main_1|Add8~13\) # (GND)))))
-- \Corr_Main_1|Add8~15\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a25\ & (!\Corr_Main_1|buff|buffer_7\(39) & !\Corr_Main_1|Add8~13\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a25\ & 
-- ((!\Corr_Main_1|Add8~13\) # (!\Corr_Main_1|buff|buffer_7\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a25\,
	datab => \Corr_Main_1|buff|buffer_7\(39),
	datad => VCC,
	cin => \Corr_Main_1|Add8~13\,
	combout => \Corr_Main_1|Add8~14_combout\,
	cout => \Corr_Main_1|Add8~15\);

-- Location: LCCOMB_X8_Y6_N6
\Corr_Main_1|Add14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~4_combout\ = ((\Corr_Main_1|Add8~4_combout\ $ (\Corr_Main_1|Add4~4_combout\ $ (!\Corr_Main_1|Add14~3\)))) # (GND)
-- \Corr_Main_1|Add14~5\ = CARRY((\Corr_Main_1|Add8~4_combout\ & ((\Corr_Main_1|Add4~4_combout\) # (!\Corr_Main_1|Add14~3\))) # (!\Corr_Main_1|Add8~4_combout\ & (\Corr_Main_1|Add4~4_combout\ & !\Corr_Main_1|Add14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add8~4_combout\,
	datab => \Corr_Main_1|Add4~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~3\,
	combout => \Corr_Main_1|Add14~4_combout\,
	cout => \Corr_Main_1|Add14~5\);

-- Location: LCCOMB_X8_Y6_N8
\Corr_Main_1|Add14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~6_combout\ = (\Corr_Main_1|Add8~6_combout\ & ((\Corr_Main_1|Add4~6_combout\ & (\Corr_Main_1|Add14~5\ & VCC)) # (!\Corr_Main_1|Add4~6_combout\ & (!\Corr_Main_1|Add14~5\)))) # (!\Corr_Main_1|Add8~6_combout\ & 
-- ((\Corr_Main_1|Add4~6_combout\ & (!\Corr_Main_1|Add14~5\)) # (!\Corr_Main_1|Add4~6_combout\ & ((\Corr_Main_1|Add14~5\) # (GND)))))
-- \Corr_Main_1|Add14~7\ = CARRY((\Corr_Main_1|Add8~6_combout\ & (!\Corr_Main_1|Add4~6_combout\ & !\Corr_Main_1|Add14~5\)) # (!\Corr_Main_1|Add8~6_combout\ & ((!\Corr_Main_1|Add14~5\) # (!\Corr_Main_1|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add8~6_combout\,
	datab => \Corr_Main_1|Add4~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~5\,
	combout => \Corr_Main_1|Add14~6_combout\,
	cout => \Corr_Main_1|Add14~7\);

-- Location: LCCOMB_X8_Y6_N10
\Corr_Main_1|Add14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~8_combout\ = ((\Corr_Main_1|Add4~8_combout\ $ (\Corr_Main_1|Add8~8_combout\ $ (!\Corr_Main_1|Add14~7\)))) # (GND)
-- \Corr_Main_1|Add14~9\ = CARRY((\Corr_Main_1|Add4~8_combout\ & ((\Corr_Main_1|Add8~8_combout\) # (!\Corr_Main_1|Add14~7\))) # (!\Corr_Main_1|Add4~8_combout\ & (\Corr_Main_1|Add8~8_combout\ & !\Corr_Main_1|Add14~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~8_combout\,
	datab => \Corr_Main_1|Add8~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~7\,
	combout => \Corr_Main_1|Add14~8_combout\,
	cout => \Corr_Main_1|Add14~9\);

-- Location: LCCOMB_X8_Y6_N12
\Corr_Main_1|Add14~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~10_combout\ = (\Corr_Main_1|Add4~10_combout\ & ((\Corr_Main_1|Add8~10_combout\ & (\Corr_Main_1|Add14~9\ & VCC)) # (!\Corr_Main_1|Add8~10_combout\ & (!\Corr_Main_1|Add14~9\)))) # (!\Corr_Main_1|Add4~10_combout\ & 
-- ((\Corr_Main_1|Add8~10_combout\ & (!\Corr_Main_1|Add14~9\)) # (!\Corr_Main_1|Add8~10_combout\ & ((\Corr_Main_1|Add14~9\) # (GND)))))
-- \Corr_Main_1|Add14~11\ = CARRY((\Corr_Main_1|Add4~10_combout\ & (!\Corr_Main_1|Add8~10_combout\ & !\Corr_Main_1|Add14~9\)) # (!\Corr_Main_1|Add4~10_combout\ & ((!\Corr_Main_1|Add14~9\) # (!\Corr_Main_1|Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~10_combout\,
	datab => \Corr_Main_1|Add8~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~9\,
	combout => \Corr_Main_1|Add14~10_combout\,
	cout => \Corr_Main_1|Add14~11\);

-- Location: LCCOMB_X8_Y6_N16
\Corr_Main_1|Add14~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~14_combout\ = (\Corr_Main_1|Add8~14_combout\ & ((\Corr_Main_1|Add4~14_combout\ & (\Corr_Main_1|Add14~13\ & VCC)) # (!\Corr_Main_1|Add4~14_combout\ & (!\Corr_Main_1|Add14~13\)))) # (!\Corr_Main_1|Add8~14_combout\ & 
-- ((\Corr_Main_1|Add4~14_combout\ & (!\Corr_Main_1|Add14~13\)) # (!\Corr_Main_1|Add4~14_combout\ & ((\Corr_Main_1|Add14~13\) # (GND)))))
-- \Corr_Main_1|Add14~15\ = CARRY((\Corr_Main_1|Add8~14_combout\ & (!\Corr_Main_1|Add4~14_combout\ & !\Corr_Main_1|Add14~13\)) # (!\Corr_Main_1|Add8~14_combout\ & ((!\Corr_Main_1|Add14~13\) # (!\Corr_Main_1|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add8~14_combout\,
	datab => \Corr_Main_1|Add4~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~13\,
	combout => \Corr_Main_1|Add14~14_combout\,
	cout => \Corr_Main_1|Add14~15\);

-- Location: LCCOMB_X8_Y6_N22
\Corr_Main_1|Add14~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~20_combout\ = ((\Corr_Main_1|Add4~20_combout\ $ (\Corr_Main_1|Add8~18_combout\ $ (!\Corr_Main_1|Add14~19\)))) # (GND)
-- \Corr_Main_1|Add14~21\ = CARRY((\Corr_Main_1|Add4~20_combout\ & ((\Corr_Main_1|Add8~18_combout\) # (!\Corr_Main_1|Add14~19\))) # (!\Corr_Main_1|Add4~20_combout\ & (\Corr_Main_1|Add8~18_combout\ & !\Corr_Main_1|Add14~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~20_combout\,
	datab => \Corr_Main_1|Add8~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~19\,
	combout => \Corr_Main_1|Add14~20_combout\,
	cout => \Corr_Main_1|Add14~21\);

-- Location: LCCOMB_X10_Y8_N16
\Corr_Main_1|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~6_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\ & ((\Corr_Main_1|Add5~5\) # (GND))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\ & (!\Corr_Main_1|Add5~5\))
-- \Corr_Main_1|Add5~7\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\) # (!\Corr_Main_1|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\,
	datad => VCC,
	cin => \Corr_Main_1|Add5~5\,
	combout => \Corr_Main_1|Add5~6_combout\,
	cout => \Corr_Main_1|Add5~7\);

-- Location: LCCOMB_X10_Y8_N18
\Corr_Main_1|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~8_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a4\ & (!\Corr_Main_1|Add5~7\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a4\ & (\Corr_Main_1|Add5~7\ $ (GND)))
-- \Corr_Main_1|Add5~9\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a4\ & !\Corr_Main_1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a4\,
	datad => VCC,
	cin => \Corr_Main_1|Add5~7\,
	combout => \Corr_Main_1|Add5~8_combout\,
	cout => \Corr_Main_1|Add5~9\);

-- Location: LCCOMB_X10_Y8_N20
\Corr_Main_1|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~10_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\ & ((\Corr_Main_1|Add5~9\) # (GND))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\ & (!\Corr_Main_1|Add5~9\))
-- \Corr_Main_1|Add5~11\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\) # (!\Corr_Main_1|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\,
	datad => VCC,
	cin => \Corr_Main_1|Add5~9\,
	combout => \Corr_Main_1|Add5~10_combout\,
	cout => \Corr_Main_1|Add5~11\);

-- Location: LCCOMB_X10_Y8_N22
\Corr_Main_1|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~12_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a6\ & (!\Corr_Main_1|Add5~11\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a6\ & (\Corr_Main_1|Add5~11\ $ (GND)))
-- \Corr_Main_1|Add5~13\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a6\ & !\Corr_Main_1|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a6\,
	datad => VCC,
	cin => \Corr_Main_1|Add5~11\,
	combout => \Corr_Main_1|Add5~12_combout\,
	cout => \Corr_Main_1|Add5~13\);

-- Location: LCCOMB_X10_Y8_N24
\Corr_Main_1|Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~14_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a7\ & ((\Corr_Main_1|Add5~13\) # (GND))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a7\ & (!\Corr_Main_1|Add5~13\))
-- \Corr_Main_1|Add5~15\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a7\) # (!\Corr_Main_1|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a7\,
	datad => VCC,
	cin => \Corr_Main_1|Add5~13\,
	combout => \Corr_Main_1|Add5~14_combout\,
	cout => \Corr_Main_1|Add5~15\);

-- Location: LCCOMB_X10_Y8_N26
\Corr_Main_1|Add5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~16_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\ & (!\Corr_Main_1|Add5~15\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\ & (\Corr_Main_1|Add5~15\ $ (GND)))
-- \Corr_Main_1|Add5~17\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\ & !\Corr_Main_1|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\,
	datad => VCC,
	cin => \Corr_Main_1|Add5~15\,
	combout => \Corr_Main_1|Add5~16_combout\,
	cout => \Corr_Main_1|Add5~17\);

-- Location: LCCOMB_X10_Y8_N28
\Corr_Main_1|Add5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~18_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\ $ (!\Corr_Main_1|Add5~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\,
	cin => \Corr_Main_1|Add5~17\,
	combout => \Corr_Main_1|Add5~18_combout\);

-- Location: LCCOMB_X10_Y7_N10
\Corr_Main_1|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~0_combout\ = (\Corr_Main_1|buff|buffer_0\(44) & (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\ $ (VCC))) # (!\Corr_Main_1|buff|buffer_0\(44) & 
-- ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\) # (GND)))
-- \Corr_Main_1|Add6~1\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\) # (!\Corr_Main_1|buff|buffer_0\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0\(44),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	datad => VCC,
	combout => \Corr_Main_1|Add6~0_combout\,
	cout => \Corr_Main_1|Add6~1\);

-- Location: LCCOMB_X10_Y7_N14
\Corr_Main_1|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~4_combout\ = ((\Corr_Main_1|buff|buffer_2\(44) $ (\Corr_Main_1|Add5~4_combout\ $ (\Corr_Main_1|Add6~3\)))) # (GND)
-- \Corr_Main_1|Add6~5\ = CARRY((\Corr_Main_1|buff|buffer_2\(44) & (\Corr_Main_1|Add5~4_combout\ & !\Corr_Main_1|Add6~3\)) # (!\Corr_Main_1|buff|buffer_2\(44) & ((\Corr_Main_1|Add5~4_combout\) # (!\Corr_Main_1|Add6~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_2\(44),
	datab => \Corr_Main_1|Add5~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add6~3\,
	combout => \Corr_Main_1|Add6~4_combout\,
	cout => \Corr_Main_1|Add6~5\);

-- Location: LCCOMB_X10_Y7_N18
\Corr_Main_1|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~8_combout\ = ((\Corr_Main_1|Add5~8_combout\ $ (\Corr_Main_1|buff|buffer_4\(44) $ (\Corr_Main_1|Add6~7\)))) # (GND)
-- \Corr_Main_1|Add6~9\ = CARRY((\Corr_Main_1|Add5~8_combout\ & ((!\Corr_Main_1|Add6~7\) # (!\Corr_Main_1|buff|buffer_4\(44)))) # (!\Corr_Main_1|Add5~8_combout\ & (!\Corr_Main_1|buff|buffer_4\(44) & !\Corr_Main_1|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add5~8_combout\,
	datab => \Corr_Main_1|buff|buffer_4\(44),
	datad => VCC,
	cin => \Corr_Main_1|Add6~7\,
	combout => \Corr_Main_1|Add6~8_combout\,
	cout => \Corr_Main_1|Add6~9\);

-- Location: LCCOMB_X10_Y7_N26
\Corr_Main_1|Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~16_combout\ = ((\Corr_Main_1|buff|buffer_8\(44) $ (\Corr_Main_1|Add5~16_combout\ $ (\Corr_Main_1|Add6~15\)))) # (GND)
-- \Corr_Main_1|Add6~17\ = CARRY((\Corr_Main_1|buff|buffer_8\(44) & (\Corr_Main_1|Add5~16_combout\ & !\Corr_Main_1|Add6~15\)) # (!\Corr_Main_1|buff|buffer_8\(44) & ((\Corr_Main_1|Add5~16_combout\) # (!\Corr_Main_1|Add6~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_8\(44),
	datab => \Corr_Main_1|Add5~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add6~15\,
	combout => \Corr_Main_1|Add6~16_combout\,
	cout => \Corr_Main_1|Add6~17\);

-- Location: LCCOMB_X10_Y7_N28
\Corr_Main_1|Add6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~18_combout\ = (\Corr_Main_1|Add5~18_combout\ & ((\Corr_Main_1|buff|buffer_8\(44) & (!\Corr_Main_1|Add6~17\)) # (!\Corr_Main_1|buff|buffer_8\(44) & (\Corr_Main_1|Add6~17\ & VCC)))) # (!\Corr_Main_1|Add5~18_combout\ & 
-- ((\Corr_Main_1|buff|buffer_8\(44) & ((\Corr_Main_1|Add6~17\) # (GND))) # (!\Corr_Main_1|buff|buffer_8\(44) & (!\Corr_Main_1|Add6~17\))))
-- \Corr_Main_1|Add6~19\ = CARRY((\Corr_Main_1|Add5~18_combout\ & (\Corr_Main_1|buff|buffer_8\(44) & !\Corr_Main_1|Add6~17\)) # (!\Corr_Main_1|Add5~18_combout\ & ((\Corr_Main_1|buff|buffer_8\(44)) # (!\Corr_Main_1|Add6~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add5~18_combout\,
	datab => \Corr_Main_1|buff|buffer_8\(44),
	datad => VCC,
	cin => \Corr_Main_1|Add6~17\,
	combout => \Corr_Main_1|Add6~18_combout\,
	cout => \Corr_Main_1|Add6~19\);

-- Location: LCCOMB_X10_Y7_N30
\Corr_Main_1|Add6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~20_combout\ = \Corr_Main_1|Add5~18_combout\ $ (\Corr_Main_1|Add6~19\ $ (\Corr_Main_1|buff|buffer_8\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add5~18_combout\,
	datad => \Corr_Main_1|buff|buffer_8\(44),
	cin => \Corr_Main_1|Add6~19\,
	combout => \Corr_Main_1|Add6~20_combout\);

-- Location: LCCOMB_X12_Y7_N12
\Corr_Main_1|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~2_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\ & ((\Corr_Main_1|buff|buffer_1\(49) & (\Corr_Main_1|Add9~1\ & VCC)) # (!\Corr_Main_1|buff|buffer_1\(49) & (!\Corr_Main_1|Add9~1\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\ & ((\Corr_Main_1|buff|buffer_1\(49) & (!\Corr_Main_1|Add9~1\)) # (!\Corr_Main_1|buff|buffer_1\(49) & ((\Corr_Main_1|Add9~1\) # (GND)))))
-- \Corr_Main_1|Add9~3\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\ & (!\Corr_Main_1|buff|buffer_1\(49) & !\Corr_Main_1|Add9~1\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\ & 
-- ((!\Corr_Main_1|Add9~1\) # (!\Corr_Main_1|buff|buffer_1\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\,
	datab => \Corr_Main_1|buff|buffer_1\(49),
	datad => VCC,
	cin => \Corr_Main_1|Add9~1\,
	combout => \Corr_Main_1|Add9~2_combout\,
	cout => \Corr_Main_1|Add9~3\);

-- Location: LCCOMB_X12_Y7_N16
\Corr_Main_1|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~6_combout\ = (\Corr_Main_1|buff|buffer_3\(49) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\ & (\Corr_Main_1|Add9~5\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\ & 
-- (!\Corr_Main_1|Add9~5\)))) # (!\Corr_Main_1|buff|buffer_3\(49) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\ & (!\Corr_Main_1|Add9~5\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\ & 
-- ((\Corr_Main_1|Add9~5\) # (GND)))))
-- \Corr_Main_1|Add9~7\ = CARRY((\Corr_Main_1|buff|buffer_3\(49) & (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\ & !\Corr_Main_1|Add9~5\)) # (!\Corr_Main_1|buff|buffer_3\(49) & ((!\Corr_Main_1|Add9~5\) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_3\(49),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\,
	datad => VCC,
	cin => \Corr_Main_1|Add9~5\,
	combout => \Corr_Main_1|Add9~6_combout\,
	cout => \Corr_Main_1|Add9~7\);

-- Location: LCCOMB_X12_Y7_N20
\Corr_Main_1|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~10_combout\ = (\Corr_Main_1|buff|buffer_5\(49) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\ & (\Corr_Main_1|Add9~9\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\ 
-- & (!\Corr_Main_1|Add9~9\)))) # (!\Corr_Main_1|buff|buffer_5\(49) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\ & (!\Corr_Main_1|Add9~9\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\ & 
-- ((\Corr_Main_1|Add9~9\) # (GND)))))
-- \Corr_Main_1|Add9~11\ = CARRY((\Corr_Main_1|buff|buffer_5\(49) & (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\ & !\Corr_Main_1|Add9~9\)) # (!\Corr_Main_1|buff|buffer_5\(49) & ((!\Corr_Main_1|Add9~9\) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_5\(49),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\,
	datad => VCC,
	cin => \Corr_Main_1|Add9~9\,
	combout => \Corr_Main_1|Add9~10_combout\,
	cout => \Corr_Main_1|Add9~11\);

-- Location: LCCOMB_X12_Y7_N22
\Corr_Main_1|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~12_combout\ = ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\ $ (\Corr_Main_1|buff|buffer_6\(49) $ (!\Corr_Main_1|Add9~11\)))) # (GND)
-- \Corr_Main_1|Add9~13\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\ & ((\Corr_Main_1|buff|buffer_6\(49)) # (!\Corr_Main_1|Add9~11\))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\ & 
-- (\Corr_Main_1|buff|buffer_6\(49) & !\Corr_Main_1|Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\,
	datab => \Corr_Main_1|buff|buffer_6\(49),
	datad => VCC,
	cin => \Corr_Main_1|Add9~11\,
	combout => \Corr_Main_1|Add9~12_combout\,
	cout => \Corr_Main_1|Add9~13\);

-- Location: LCCOMB_X12_Y7_N24
\Corr_Main_1|Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~14_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a16\ & ((\Corr_Main_1|buff|buffer_7\(49) & (\Corr_Main_1|Add9~13\ & VCC)) # (!\Corr_Main_1|buff|buffer_7\(49) & (!\Corr_Main_1|Add9~13\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a16\ & ((\Corr_Main_1|buff|buffer_7\(49) & (!\Corr_Main_1|Add9~13\)) # (!\Corr_Main_1|buff|buffer_7\(49) & ((\Corr_Main_1|Add9~13\) # (GND)))))
-- \Corr_Main_1|Add9~15\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a16\ & (!\Corr_Main_1|buff|buffer_7\(49) & !\Corr_Main_1|Add9~13\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a16\ & 
-- ((!\Corr_Main_1|Add9~13\) # (!\Corr_Main_1|buff|buffer_7\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a16\,
	datab => \Corr_Main_1|buff|buffer_7\(49),
	datad => VCC,
	cin => \Corr_Main_1|Add9~13\,
	combout => \Corr_Main_1|Add9~14_combout\,
	cout => \Corr_Main_1|Add9~15\);

-- Location: LCCOMB_X12_Y7_N26
\Corr_Main_1|Add9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~16_combout\ = ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a17\ $ (\Corr_Main_1|buff|buffer_8\(49) $ (!\Corr_Main_1|Add9~15\)))) # (GND)
-- \Corr_Main_1|Add9~17\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a17\ & ((\Corr_Main_1|buff|buffer_8\(49)) # (!\Corr_Main_1|Add9~15\))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a17\ & 
-- (\Corr_Main_1|buff|buffer_8\(49) & !\Corr_Main_1|Add9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a17\,
	datab => \Corr_Main_1|buff|buffer_8\(49),
	datad => VCC,
	cin => \Corr_Main_1|Add9~15\,
	combout => \Corr_Main_1|Add9~16_combout\,
	cout => \Corr_Main_1|Add9~17\);

-- Location: LCCOMB_X9_Y7_N6
\Corr_Main_1|Add17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~0_combout\ = (\Corr_Main_1|Add6~0_combout\ & (\Corr_Main_1|Add9~0_combout\ $ (VCC))) # (!\Corr_Main_1|Add6~0_combout\ & (\Corr_Main_1|Add9~0_combout\ & VCC))
-- \Corr_Main_1|Add17~1\ = CARRY((\Corr_Main_1|Add6~0_combout\ & \Corr_Main_1|Add9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add6~0_combout\,
	datab => \Corr_Main_1|Add9~0_combout\,
	datad => VCC,
	combout => \Corr_Main_1|Add17~0_combout\,
	cout => \Corr_Main_1|Add17~1\);

-- Location: LCCOMB_X9_Y7_N8
\Corr_Main_1|Add17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~2_combout\ = (\Corr_Main_1|Add9~2_combout\ & ((\Corr_Main_1|Add6~2_combout\ & (\Corr_Main_1|Add17~1\ & VCC)) # (!\Corr_Main_1|Add6~2_combout\ & (!\Corr_Main_1|Add17~1\)))) # (!\Corr_Main_1|Add9~2_combout\ & 
-- ((\Corr_Main_1|Add6~2_combout\ & (!\Corr_Main_1|Add17~1\)) # (!\Corr_Main_1|Add6~2_combout\ & ((\Corr_Main_1|Add17~1\) # (GND)))))
-- \Corr_Main_1|Add17~3\ = CARRY((\Corr_Main_1|Add9~2_combout\ & (!\Corr_Main_1|Add6~2_combout\ & !\Corr_Main_1|Add17~1\)) # (!\Corr_Main_1|Add9~2_combout\ & ((!\Corr_Main_1|Add17~1\) # (!\Corr_Main_1|Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add9~2_combout\,
	datab => \Corr_Main_1|Add6~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~1\,
	combout => \Corr_Main_1|Add17~2_combout\,
	cout => \Corr_Main_1|Add17~3\);

-- Location: LCCOMB_X9_Y7_N18
\Corr_Main_1|Add17~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~12_combout\ = ((\Corr_Main_1|Add9~12_combout\ $ (\Corr_Main_1|Add6~12_combout\ $ (!\Corr_Main_1|Add17~11\)))) # (GND)
-- \Corr_Main_1|Add17~13\ = CARRY((\Corr_Main_1|Add9~12_combout\ & ((\Corr_Main_1|Add6~12_combout\) # (!\Corr_Main_1|Add17~11\))) # (!\Corr_Main_1|Add9~12_combout\ & (\Corr_Main_1|Add6~12_combout\ & !\Corr_Main_1|Add17~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add9~12_combout\,
	datab => \Corr_Main_1|Add6~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~11\,
	combout => \Corr_Main_1|Add17~12_combout\,
	cout => \Corr_Main_1|Add17~13\);

-- Location: LCCOMB_X9_Y7_N22
\Corr_Main_1|Add17~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~16_combout\ = ((\Corr_Main_1|Add9~16_combout\ $ (\Corr_Main_1|Add6~16_combout\ $ (!\Corr_Main_1|Add17~15\)))) # (GND)
-- \Corr_Main_1|Add17~17\ = CARRY((\Corr_Main_1|Add9~16_combout\ & ((\Corr_Main_1|Add6~16_combout\) # (!\Corr_Main_1|Add17~15\))) # (!\Corr_Main_1|Add9~16_combout\ & (\Corr_Main_1|Add6~16_combout\ & !\Corr_Main_1|Add17~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add9~16_combout\,
	datab => \Corr_Main_1|Add6~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~15\,
	combout => \Corr_Main_1|Add17~16_combout\,
	cout => \Corr_Main_1|Add17~17\);

-- Location: LCCOMB_X9_Y7_N24
\Corr_Main_1|Add17~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~18_combout\ = (\Corr_Main_1|Add6~18_combout\ & ((\Corr_Main_1|Add9~18_combout\ & (\Corr_Main_1|Add17~17\ & VCC)) # (!\Corr_Main_1|Add9~18_combout\ & (!\Corr_Main_1|Add17~17\)))) # (!\Corr_Main_1|Add6~18_combout\ & 
-- ((\Corr_Main_1|Add9~18_combout\ & (!\Corr_Main_1|Add17~17\)) # (!\Corr_Main_1|Add9~18_combout\ & ((\Corr_Main_1|Add17~17\) # (GND)))))
-- \Corr_Main_1|Add17~19\ = CARRY((\Corr_Main_1|Add6~18_combout\ & (!\Corr_Main_1|Add9~18_combout\ & !\Corr_Main_1|Add17~17\)) # (!\Corr_Main_1|Add6~18_combout\ & ((!\Corr_Main_1|Add17~17\) # (!\Corr_Main_1|Add9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add6~18_combout\,
	datab => \Corr_Main_1|Add9~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~17\,
	combout => \Corr_Main_1|Add17~18_combout\,
	cout => \Corr_Main_1|Add17~19\);

-- Location: LCCOMB_X9_Y7_N26
\Corr_Main_1|Add17~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~20_combout\ = ((\Corr_Main_1|Add6~20_combout\ $ (\Corr_Main_1|Add9~18_combout\ $ (!\Corr_Main_1|Add17~19\)))) # (GND)
-- \Corr_Main_1|Add17~21\ = CARRY((\Corr_Main_1|Add6~20_combout\ & ((\Corr_Main_1|Add9~18_combout\) # (!\Corr_Main_1|Add17~19\))) # (!\Corr_Main_1|Add6~20_combout\ & (\Corr_Main_1|Add9~18_combout\ & !\Corr_Main_1|Add17~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add6~20_combout\,
	datab => \Corr_Main_1|Add9~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~19\,
	combout => \Corr_Main_1|Add17~20_combout\,
	cout => \Corr_Main_1|Add17~21\);

-- Location: LCCOMB_X9_Y7_N28
\Corr_Main_1|Add17~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~22_combout\ = \Corr_Main_1|Add6~20_combout\ $ (\Corr_Main_1|Add9~18_combout\ $ (\Corr_Main_1|Add17~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add6~20_combout\,
	datab => \Corr_Main_1|Add9~18_combout\,
	cin => \Corr_Main_1|Add17~21\,
	combout => \Corr_Main_1|Add17~22_combout\);

-- Location: LCCOMB_X9_Y6_N2
\Corr_Main_1|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~0_combout\ = (\Corr_Main_1|Add17~0_combout\ & (\Corr_Main_1|Add14~0_combout\ $ (VCC))) # (!\Corr_Main_1|Add17~0_combout\ & (\Corr_Main_1|Add14~0_combout\ & VCC))
-- \Corr_Main_1|Add18~1\ = CARRY((\Corr_Main_1|Add17~0_combout\ & \Corr_Main_1|Add14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add17~0_combout\,
	datab => \Corr_Main_1|Add14~0_combout\,
	datad => VCC,
	combout => \Corr_Main_1|Add18~0_combout\,
	cout => \Corr_Main_1|Add18~1\);

-- Location: LCCOMB_X9_Y6_N4
\Corr_Main_1|Add18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~2_combout\ = (\Corr_Main_1|Add17~2_combout\ & ((\Corr_Main_1|Add14~2_combout\ & (\Corr_Main_1|Add18~1\ & VCC)) # (!\Corr_Main_1|Add14~2_combout\ & (!\Corr_Main_1|Add18~1\)))) # (!\Corr_Main_1|Add17~2_combout\ & 
-- ((\Corr_Main_1|Add14~2_combout\ & (!\Corr_Main_1|Add18~1\)) # (!\Corr_Main_1|Add14~2_combout\ & ((\Corr_Main_1|Add18~1\) # (GND)))))
-- \Corr_Main_1|Add18~3\ = CARRY((\Corr_Main_1|Add17~2_combout\ & (!\Corr_Main_1|Add14~2_combout\ & !\Corr_Main_1|Add18~1\)) # (!\Corr_Main_1|Add17~2_combout\ & ((!\Corr_Main_1|Add18~1\) # (!\Corr_Main_1|Add14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add17~2_combout\,
	datab => \Corr_Main_1|Add14~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~1\,
	combout => \Corr_Main_1|Add18~2_combout\,
	cout => \Corr_Main_1|Add18~3\);

-- Location: LCCOMB_X9_Y6_N6
\Corr_Main_1|Add18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~4_combout\ = ((\Corr_Main_1|Add14~4_combout\ $ (\Corr_Main_1|Add17~4_combout\ $ (!\Corr_Main_1|Add18~3\)))) # (GND)
-- \Corr_Main_1|Add18~5\ = CARRY((\Corr_Main_1|Add14~4_combout\ & ((\Corr_Main_1|Add17~4_combout\) # (!\Corr_Main_1|Add18~3\))) # (!\Corr_Main_1|Add14~4_combout\ & (\Corr_Main_1|Add17~4_combout\ & !\Corr_Main_1|Add18~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add14~4_combout\,
	datab => \Corr_Main_1|Add17~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~3\,
	combout => \Corr_Main_1|Add18~4_combout\,
	cout => \Corr_Main_1|Add18~5\);

-- Location: LCCOMB_X9_Y6_N8
\Corr_Main_1|Add18~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~6_combout\ = (\Corr_Main_1|Add14~6_combout\ & ((\Corr_Main_1|Add17~6_combout\ & (\Corr_Main_1|Add18~5\ & VCC)) # (!\Corr_Main_1|Add17~6_combout\ & (!\Corr_Main_1|Add18~5\)))) # (!\Corr_Main_1|Add14~6_combout\ & 
-- ((\Corr_Main_1|Add17~6_combout\ & (!\Corr_Main_1|Add18~5\)) # (!\Corr_Main_1|Add17~6_combout\ & ((\Corr_Main_1|Add18~5\) # (GND)))))
-- \Corr_Main_1|Add18~7\ = CARRY((\Corr_Main_1|Add14~6_combout\ & (!\Corr_Main_1|Add17~6_combout\ & !\Corr_Main_1|Add18~5\)) # (!\Corr_Main_1|Add14~6_combout\ & ((!\Corr_Main_1|Add18~5\) # (!\Corr_Main_1|Add17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add14~6_combout\,
	datab => \Corr_Main_1|Add17~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~5\,
	combout => \Corr_Main_1|Add18~6_combout\,
	cout => \Corr_Main_1|Add18~7\);

-- Location: LCCOMB_X9_Y6_N16
\Corr_Main_1|Add18~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~14_combout\ = (\Corr_Main_1|Add14~14_combout\ & ((\Corr_Main_1|Add17~14_combout\ & (\Corr_Main_1|Add18~13\ & VCC)) # (!\Corr_Main_1|Add17~14_combout\ & (!\Corr_Main_1|Add18~13\)))) # (!\Corr_Main_1|Add14~14_combout\ & 
-- ((\Corr_Main_1|Add17~14_combout\ & (!\Corr_Main_1|Add18~13\)) # (!\Corr_Main_1|Add17~14_combout\ & ((\Corr_Main_1|Add18~13\) # (GND)))))
-- \Corr_Main_1|Add18~15\ = CARRY((\Corr_Main_1|Add14~14_combout\ & (!\Corr_Main_1|Add17~14_combout\ & !\Corr_Main_1|Add18~13\)) # (!\Corr_Main_1|Add14~14_combout\ & ((!\Corr_Main_1|Add18~13\) # (!\Corr_Main_1|Add17~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add14~14_combout\,
	datab => \Corr_Main_1|Add17~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~13\,
	combout => \Corr_Main_1|Add18~14_combout\,
	cout => \Corr_Main_1|Add18~15\);

-- Location: LCCOMB_X9_Y6_N18
\Corr_Main_1|Add18~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~16_combout\ = ((\Corr_Main_1|Add17~16_combout\ $ (\Corr_Main_1|Add14~16_combout\ $ (!\Corr_Main_1|Add18~15\)))) # (GND)
-- \Corr_Main_1|Add18~17\ = CARRY((\Corr_Main_1|Add17~16_combout\ & ((\Corr_Main_1|Add14~16_combout\) # (!\Corr_Main_1|Add18~15\))) # (!\Corr_Main_1|Add17~16_combout\ & (\Corr_Main_1|Add14~16_combout\ & !\Corr_Main_1|Add18~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add17~16_combout\,
	datab => \Corr_Main_1|Add14~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~15\,
	combout => \Corr_Main_1|Add18~16_combout\,
	cout => \Corr_Main_1|Add18~17\);

-- Location: LCCOMB_X9_Y6_N20
\Corr_Main_1|Add18~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~18_combout\ = (\Corr_Main_1|Add17~18_combout\ & ((\Corr_Main_1|Add14~18_combout\ & (\Corr_Main_1|Add18~17\ & VCC)) # (!\Corr_Main_1|Add14~18_combout\ & (!\Corr_Main_1|Add18~17\)))) # (!\Corr_Main_1|Add17~18_combout\ & 
-- ((\Corr_Main_1|Add14~18_combout\ & (!\Corr_Main_1|Add18~17\)) # (!\Corr_Main_1|Add14~18_combout\ & ((\Corr_Main_1|Add18~17\) # (GND)))))
-- \Corr_Main_1|Add18~19\ = CARRY((\Corr_Main_1|Add17~18_combout\ & (!\Corr_Main_1|Add14~18_combout\ & !\Corr_Main_1|Add18~17\)) # (!\Corr_Main_1|Add17~18_combout\ & ((!\Corr_Main_1|Add18~17\) # (!\Corr_Main_1|Add14~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add17~18_combout\,
	datab => \Corr_Main_1|Add14~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~17\,
	combout => \Corr_Main_1|Add18~18_combout\,
	cout => \Corr_Main_1|Add18~19\);

-- Location: LCCOMB_X9_Y6_N22
\Corr_Main_1|Add18~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~20_combout\ = ((\Corr_Main_1|Add14~20_combout\ $ (\Corr_Main_1|Add17~20_combout\ $ (!\Corr_Main_1|Add18~19\)))) # (GND)
-- \Corr_Main_1|Add18~21\ = CARRY((\Corr_Main_1|Add14~20_combout\ & ((\Corr_Main_1|Add17~20_combout\) # (!\Corr_Main_1|Add18~19\))) # (!\Corr_Main_1|Add14~20_combout\ & (\Corr_Main_1|Add17~20_combout\ & !\Corr_Main_1|Add18~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add14~20_combout\,
	datab => \Corr_Main_1|Add17~20_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~19\,
	combout => \Corr_Main_1|Add18~20_combout\,
	cout => \Corr_Main_1|Add18~21\);

-- Location: LCCOMB_X12_Y8_N14
\Corr_Main_1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~2_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a37\ & ((\Corr_Main_1|Add1~1_cout\) # (GND))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a37\ & 
-- (!\Corr_Main_1|Add1~1_cout\))
-- \Corr_Main_1|Add1~3\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a37\) # (!\Corr_Main_1|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a37\,
	datad => VCC,
	cin => \Corr_Main_1|Add1~1_cout\,
	combout => \Corr_Main_1|Add1~2_combout\,
	cout => \Corr_Main_1|Add1~3\);

-- Location: LCCOMB_X12_Y8_N16
\Corr_Main_1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~4_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a38\ & (!\Corr_Main_1|Add1~3\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a38\ & (\Corr_Main_1|Add1~3\ $ (GND)))
-- \Corr_Main_1|Add1~5\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a38\ & !\Corr_Main_1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a38\,
	datad => VCC,
	cin => \Corr_Main_1|Add1~3\,
	combout => \Corr_Main_1|Add1~4_combout\,
	cout => \Corr_Main_1|Add1~5\);

-- Location: LCCOMB_X12_Y8_N18
\Corr_Main_1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~6_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a39\ & ((\Corr_Main_1|Add1~5\) # (GND))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a39\ & (!\Corr_Main_1|Add1~5\))
-- \Corr_Main_1|Add1~7\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a39\) # (!\Corr_Main_1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a39\,
	datad => VCC,
	cin => \Corr_Main_1|Add1~5\,
	combout => \Corr_Main_1|Add1~6_combout\,
	cout => \Corr_Main_1|Add1~7\);

-- Location: LCCOMB_X12_Y8_N20
\Corr_Main_1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~8_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a40\ & (!\Corr_Main_1|Add1~7\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a40\ & (\Corr_Main_1|Add1~7\ $ (GND)))
-- \Corr_Main_1|Add1~9\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a40\ & !\Corr_Main_1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a40\,
	datad => VCC,
	cin => \Corr_Main_1|Add1~7\,
	combout => \Corr_Main_1|Add1~8_combout\,
	cout => \Corr_Main_1|Add1~9\);

-- Location: LCCOMB_X12_Y8_N24
\Corr_Main_1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~12_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a42\ & (!\Corr_Main_1|Add1~11\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a42\ & (\Corr_Main_1|Add1~11\ $ (GND)))
-- \Corr_Main_1|Add1~13\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a42\ & !\Corr_Main_1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a42\,
	datad => VCC,
	cin => \Corr_Main_1|Add1~11\,
	combout => \Corr_Main_1|Add1~12_combout\,
	cout => \Corr_Main_1|Add1~13\);

-- Location: LCCOMB_X13_Y8_N6
\Corr_Main_1|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~4_combout\ = ((\Corr_Main_1|Add1~4_combout\ $ (\Corr_Main_1|buff|buffer_2\(9) $ (\Corr_Main_1|Add2~3\)))) # (GND)
-- \Corr_Main_1|Add2~5\ = CARRY((\Corr_Main_1|Add1~4_combout\ & ((!\Corr_Main_1|Add2~3\) # (!\Corr_Main_1|buff|buffer_2\(9)))) # (!\Corr_Main_1|Add1~4_combout\ & (!\Corr_Main_1|buff|buffer_2\(9) & !\Corr_Main_1|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add1~4_combout\,
	datab => \Corr_Main_1|buff|buffer_2\(9),
	datad => VCC,
	cin => \Corr_Main_1|Add2~3\,
	combout => \Corr_Main_1|Add2~4_combout\,
	cout => \Corr_Main_1|Add2~5\);

-- Location: LCCOMB_X12_Y6_N12
\Corr_Main_1|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~0_combout\ = (\Corr_Main_1|buff|buffer_0\(14) & (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27~portbdataout\ $ (VCC))) # (!\Corr_Main_1|buff|buffer_0\(14) & 
-- (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27~portbdataout\ & VCC))
-- \Corr_Main_1|Add10~1\ = CARRY((\Corr_Main_1|buff|buffer_0\(14) & \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0\(14),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27~portbdataout\,
	datad => VCC,
	combout => \Corr_Main_1|Add10~0_combout\,
	cout => \Corr_Main_1|Add10~1\);

-- Location: LCCOMB_X12_Y6_N14
\Corr_Main_1|Add10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~2_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a28\ & ((\Corr_Main_1|buff|buffer_1\(14) & (\Corr_Main_1|Add10~1\ & VCC)) # (!\Corr_Main_1|buff|buffer_1\(14) & (!\Corr_Main_1|Add10~1\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a28\ & ((\Corr_Main_1|buff|buffer_1\(14) & (!\Corr_Main_1|Add10~1\)) # (!\Corr_Main_1|buff|buffer_1\(14) & ((\Corr_Main_1|Add10~1\) # (GND)))))
-- \Corr_Main_1|Add10~3\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a28\ & (!\Corr_Main_1|buff|buffer_1\(14) & !\Corr_Main_1|Add10~1\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a28\ & 
-- ((!\Corr_Main_1|Add10~1\) # (!\Corr_Main_1|buff|buffer_1\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a28\,
	datab => \Corr_Main_1|buff|buffer_1\(14),
	datad => VCC,
	cin => \Corr_Main_1|Add10~1\,
	combout => \Corr_Main_1|Add10~2_combout\,
	cout => \Corr_Main_1|Add10~3\);

-- Location: LCCOMB_X12_Y6_N16
\Corr_Main_1|Add10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~4_combout\ = ((\Corr_Main_1|buff|buffer_2\(14) $ (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a29\ $ (!\Corr_Main_1|Add10~3\)))) # (GND)
-- \Corr_Main_1|Add10~5\ = CARRY((\Corr_Main_1|buff|buffer_2\(14) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a29\) # (!\Corr_Main_1|Add10~3\))) # (!\Corr_Main_1|buff|buffer_2\(14) & 
-- (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a29\ & !\Corr_Main_1|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_2\(14),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a29\,
	datad => VCC,
	cin => \Corr_Main_1|Add10~3\,
	combout => \Corr_Main_1|Add10~4_combout\,
	cout => \Corr_Main_1|Add10~5\);

-- Location: LCCOMB_X12_Y6_N18
\Corr_Main_1|Add10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~6_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a30\ & ((\Corr_Main_1|buff|buffer_3\(14) & (\Corr_Main_1|Add10~5\ & VCC)) # (!\Corr_Main_1|buff|buffer_3\(14) & (!\Corr_Main_1|Add10~5\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a30\ & ((\Corr_Main_1|buff|buffer_3\(14) & (!\Corr_Main_1|Add10~5\)) # (!\Corr_Main_1|buff|buffer_3\(14) & ((\Corr_Main_1|Add10~5\) # (GND)))))
-- \Corr_Main_1|Add10~7\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a30\ & (!\Corr_Main_1|buff|buffer_3\(14) & !\Corr_Main_1|Add10~5\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a30\ & 
-- ((!\Corr_Main_1|Add10~5\) # (!\Corr_Main_1|buff|buffer_3\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a30\,
	datab => \Corr_Main_1|buff|buffer_3\(14),
	datad => VCC,
	cin => \Corr_Main_1|Add10~5\,
	combout => \Corr_Main_1|Add10~6_combout\,
	cout => \Corr_Main_1|Add10~7\);

-- Location: LCCOMB_X12_Y6_N20
\Corr_Main_1|Add10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~8_combout\ = ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a31\ $ (\Corr_Main_1|buff|buffer_4\(14) $ (!\Corr_Main_1|Add10~7\)))) # (GND)
-- \Corr_Main_1|Add10~9\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a31\ & ((\Corr_Main_1|buff|buffer_4\(14)) # (!\Corr_Main_1|Add10~7\))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a31\ & 
-- (\Corr_Main_1|buff|buffer_4\(14) & !\Corr_Main_1|Add10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a31\,
	datab => \Corr_Main_1|buff|buffer_4\(14),
	datad => VCC,
	cin => \Corr_Main_1|Add10~7\,
	combout => \Corr_Main_1|Add10~8_combout\,
	cout => \Corr_Main_1|Add10~9\);

-- Location: LCCOMB_X12_Y6_N22
\Corr_Main_1|Add10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~10_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a32\ & ((\Corr_Main_1|buff|buffer_5\(14) & (\Corr_Main_1|Add10~9\ & VCC)) # (!\Corr_Main_1|buff|buffer_5\(14) & (!\Corr_Main_1|Add10~9\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a32\ & ((\Corr_Main_1|buff|buffer_5\(14) & (!\Corr_Main_1|Add10~9\)) # (!\Corr_Main_1|buff|buffer_5\(14) & ((\Corr_Main_1|Add10~9\) # (GND)))))
-- \Corr_Main_1|Add10~11\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a32\ & (!\Corr_Main_1|buff|buffer_5\(14) & !\Corr_Main_1|Add10~9\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a32\ & 
-- ((!\Corr_Main_1|Add10~9\) # (!\Corr_Main_1|buff|buffer_5\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a32\,
	datab => \Corr_Main_1|buff|buffer_5\(14),
	datad => VCC,
	cin => \Corr_Main_1|Add10~9\,
	combout => \Corr_Main_1|Add10~10_combout\,
	cout => \Corr_Main_1|Add10~11\);

-- Location: LCCOMB_X12_Y6_N24
\Corr_Main_1|Add10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~12_combout\ = ((\Corr_Main_1|buff|buffer_6\(14) $ (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a33\ $ (!\Corr_Main_1|Add10~11\)))) # (GND)
-- \Corr_Main_1|Add10~13\ = CARRY((\Corr_Main_1|buff|buffer_6\(14) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a33\) # (!\Corr_Main_1|Add10~11\))) # (!\Corr_Main_1|buff|buffer_6\(14) & 
-- (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a33\ & !\Corr_Main_1|Add10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_6\(14),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a33\,
	datad => VCC,
	cin => \Corr_Main_1|Add10~11\,
	combout => \Corr_Main_1|Add10~12_combout\,
	cout => \Corr_Main_1|Add10~13\);

-- Location: LCCOMB_X12_Y6_N26
\Corr_Main_1|Add10~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~14_combout\ = (\Corr_Main_1|buff|buffer_7\(14) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a34\ & (\Corr_Main_1|Add10~13\ & VCC)) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a34\ & (!\Corr_Main_1|Add10~13\)))) # (!\Corr_Main_1|buff|buffer_7\(14) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a34\ & (!\Corr_Main_1|Add10~13\)) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a34\ & ((\Corr_Main_1|Add10~13\) # (GND)))))
-- \Corr_Main_1|Add10~15\ = CARRY((\Corr_Main_1|buff|buffer_7\(14) & (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a34\ & !\Corr_Main_1|Add10~13\)) # (!\Corr_Main_1|buff|buffer_7\(14) & ((!\Corr_Main_1|Add10~13\) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_7\(14),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a34\,
	datad => VCC,
	cin => \Corr_Main_1|Add10~13\,
	combout => \Corr_Main_1|Add10~14_combout\,
	cout => \Corr_Main_1|Add10~15\);

-- Location: LCCOMB_X12_Y6_N28
\Corr_Main_1|Add10~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~16_combout\ = ((\Corr_Main_1|buff|buffer_8\(14) $ (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a35\ $ (!\Corr_Main_1|Add10~15\)))) # (GND)
-- \Corr_Main_1|Add10~17\ = CARRY((\Corr_Main_1|buff|buffer_8\(14) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a35\) # (!\Corr_Main_1|Add10~15\))) # (!\Corr_Main_1|buff|buffer_8\(14) & 
-- (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a35\ & !\Corr_Main_1|Add10~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_8\(14),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a35\,
	datad => VCC,
	cin => \Corr_Main_1|Add10~15\,
	combout => \Corr_Main_1|Add10~16_combout\,
	cout => \Corr_Main_1|Add10~17\);

-- Location: LCCOMB_X12_Y6_N30
\Corr_Main_1|Add10~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add10~18_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a35\ $ (\Corr_Main_1|Add10~17\ $ (\Corr_Main_1|buff|buffer_8\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a35\,
	datad => \Corr_Main_1|buff|buffer_8\(14),
	cin => \Corr_Main_1|Add10~17\,
	combout => \Corr_Main_1|Add10~18_combout\);

-- Location: LCCOMB_X13_Y6_N4
\Corr_Main_1|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~0_combout\ = (\Corr_Main_1|Add10~0_combout\ & (\Corr_Main_1|Add2~0_combout\ $ (VCC))) # (!\Corr_Main_1|Add10~0_combout\ & (\Corr_Main_1|Add2~0_combout\ & VCC))
-- \Corr_Main_1|Add13~1\ = CARRY((\Corr_Main_1|Add10~0_combout\ & \Corr_Main_1|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~0_combout\,
	datab => \Corr_Main_1|Add2~0_combout\,
	datad => VCC,
	combout => \Corr_Main_1|Add13~0_combout\,
	cout => \Corr_Main_1|Add13~1\);

-- Location: LCCOMB_X13_Y6_N6
\Corr_Main_1|Add13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~2_combout\ = (\Corr_Main_1|Add10~2_combout\ & ((\Corr_Main_1|Add2~2_combout\ & (\Corr_Main_1|Add13~1\ & VCC)) # (!\Corr_Main_1|Add2~2_combout\ & (!\Corr_Main_1|Add13~1\)))) # (!\Corr_Main_1|Add10~2_combout\ & 
-- ((\Corr_Main_1|Add2~2_combout\ & (!\Corr_Main_1|Add13~1\)) # (!\Corr_Main_1|Add2~2_combout\ & ((\Corr_Main_1|Add13~1\) # (GND)))))
-- \Corr_Main_1|Add13~3\ = CARRY((\Corr_Main_1|Add10~2_combout\ & (!\Corr_Main_1|Add2~2_combout\ & !\Corr_Main_1|Add13~1\)) # (!\Corr_Main_1|Add10~2_combout\ & ((!\Corr_Main_1|Add13~1\) # (!\Corr_Main_1|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~2_combout\,
	datab => \Corr_Main_1|Add2~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~1\,
	combout => \Corr_Main_1|Add13~2_combout\,
	cout => \Corr_Main_1|Add13~3\);

-- Location: LCCOMB_X13_Y6_N8
\Corr_Main_1|Add13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~4_combout\ = ((\Corr_Main_1|Add2~4_combout\ $ (\Corr_Main_1|Add10~4_combout\ $ (!\Corr_Main_1|Add13~3\)))) # (GND)
-- \Corr_Main_1|Add13~5\ = CARRY((\Corr_Main_1|Add2~4_combout\ & ((\Corr_Main_1|Add10~4_combout\) # (!\Corr_Main_1|Add13~3\))) # (!\Corr_Main_1|Add2~4_combout\ & (\Corr_Main_1|Add10~4_combout\ & !\Corr_Main_1|Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add2~4_combout\,
	datab => \Corr_Main_1|Add10~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~3\,
	combout => \Corr_Main_1|Add13~4_combout\,
	cout => \Corr_Main_1|Add13~5\);

-- Location: LCCOMB_X13_Y6_N14
\Corr_Main_1|Add13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~10_combout\ = (\Corr_Main_1|Add10~10_combout\ & ((\Corr_Main_1|Add2~10_combout\ & (\Corr_Main_1|Add13~9\ & VCC)) # (!\Corr_Main_1|Add2~10_combout\ & (!\Corr_Main_1|Add13~9\)))) # (!\Corr_Main_1|Add10~10_combout\ & 
-- ((\Corr_Main_1|Add2~10_combout\ & (!\Corr_Main_1|Add13~9\)) # (!\Corr_Main_1|Add2~10_combout\ & ((\Corr_Main_1|Add13~9\) # (GND)))))
-- \Corr_Main_1|Add13~11\ = CARRY((\Corr_Main_1|Add10~10_combout\ & (!\Corr_Main_1|Add2~10_combout\ & !\Corr_Main_1|Add13~9\)) # (!\Corr_Main_1|Add10~10_combout\ & ((!\Corr_Main_1|Add13~9\) # (!\Corr_Main_1|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~10_combout\,
	datab => \Corr_Main_1|Add2~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~9\,
	combout => \Corr_Main_1|Add13~10_combout\,
	cout => \Corr_Main_1|Add13~11\);

-- Location: LCCOMB_X13_Y6_N22
\Corr_Main_1|Add13~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~18_combout\ = (\Corr_Main_1|Add10~18_combout\ & ((\Corr_Main_1|Add2~18_combout\ & (\Corr_Main_1|Add13~17\ & VCC)) # (!\Corr_Main_1|Add2~18_combout\ & (!\Corr_Main_1|Add13~17\)))) # (!\Corr_Main_1|Add10~18_combout\ & 
-- ((\Corr_Main_1|Add2~18_combout\ & (!\Corr_Main_1|Add13~17\)) # (!\Corr_Main_1|Add2~18_combout\ & ((\Corr_Main_1|Add13~17\) # (GND)))))
-- \Corr_Main_1|Add13~19\ = CARRY((\Corr_Main_1|Add10~18_combout\ & (!\Corr_Main_1|Add2~18_combout\ & !\Corr_Main_1|Add13~17\)) # (!\Corr_Main_1|Add10~18_combout\ & ((!\Corr_Main_1|Add13~17\) # (!\Corr_Main_1|Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~18_combout\,
	datab => \Corr_Main_1|Add2~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~17\,
	combout => \Corr_Main_1|Add13~18_combout\,
	cout => \Corr_Main_1|Add13~19\);

-- Location: LCCOMB_X13_Y6_N24
\Corr_Main_1|Add13~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~20_combout\ = ((\Corr_Main_1|Add10~18_combout\ $ (\Corr_Main_1|Add2~20_combout\ $ (!\Corr_Main_1|Add13~19\)))) # (GND)
-- \Corr_Main_1|Add13~21\ = CARRY((\Corr_Main_1|Add10~18_combout\ & ((\Corr_Main_1|Add2~20_combout\) # (!\Corr_Main_1|Add13~19\))) # (!\Corr_Main_1|Add10~18_combout\ & (\Corr_Main_1|Add2~20_combout\ & !\Corr_Main_1|Add13~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~18_combout\,
	datab => \Corr_Main_1|Add2~20_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~19\,
	combout => \Corr_Main_1|Add13~20_combout\,
	cout => \Corr_Main_1|Add13~21\);

-- Location: LCCOMB_X13_Y6_N26
\Corr_Main_1|Add13~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~22_combout\ = (\Corr_Main_1|Add10~18_combout\ & ((\Corr_Main_1|Add2~20_combout\ & (\Corr_Main_1|Add13~21\ & VCC)) # (!\Corr_Main_1|Add2~20_combout\ & (!\Corr_Main_1|Add13~21\)))) # (!\Corr_Main_1|Add10~18_combout\ & 
-- ((\Corr_Main_1|Add2~20_combout\ & (!\Corr_Main_1|Add13~21\)) # (!\Corr_Main_1|Add2~20_combout\ & ((\Corr_Main_1|Add13~21\) # (GND)))))
-- \Corr_Main_1|Add13~23\ = CARRY((\Corr_Main_1|Add10~18_combout\ & (!\Corr_Main_1|Add2~20_combout\ & !\Corr_Main_1|Add13~21\)) # (!\Corr_Main_1|Add10~18_combout\ & ((!\Corr_Main_1|Add13~21\) # (!\Corr_Main_1|Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~18_combout\,
	datab => \Corr_Main_1|Add2~20_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~21\,
	combout => \Corr_Main_1|Add13~22_combout\,
	cout => \Corr_Main_1|Add13~23\);

-- Location: LCCOMB_X13_Y6_N28
\Corr_Main_1|Add13~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~24_combout\ = \Corr_Main_1|Add10~18_combout\ $ (\Corr_Main_1|Add13~23\ $ (!\Corr_Main_1|Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~18_combout\,
	datad => \Corr_Main_1|Add2~20_combout\,
	cin => \Corr_Main_1|Add13~23\,
	combout => \Corr_Main_1|Add13~24_combout\);

-- Location: LCCOMB_X15_Y6_N6
\Corr_Main_1|Add12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~6_combout\ = (\Corr_Main_1|buff|buffer_3\(4) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a48\ & (\Corr_Main_1|Add12~5\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a48\ 
-- & (!\Corr_Main_1|Add12~5\)))) # (!\Corr_Main_1|buff|buffer_3\(4) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a48\ & (!\Corr_Main_1|Add12~5\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a48\ & 
-- ((\Corr_Main_1|Add12~5\) # (GND)))))
-- \Corr_Main_1|Add12~7\ = CARRY((\Corr_Main_1|buff|buffer_3\(4) & (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a48\ & !\Corr_Main_1|Add12~5\)) # (!\Corr_Main_1|buff|buffer_3\(4) & ((!\Corr_Main_1|Add12~5\) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a48\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_3\(4),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a48\,
	datad => VCC,
	cin => \Corr_Main_1|Add12~5\,
	combout => \Corr_Main_1|Add12~6_combout\,
	cout => \Corr_Main_1|Add12~7\);

-- Location: LCCOMB_X15_Y6_N8
\Corr_Main_1|Add12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~8_combout\ = ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a49\ $ (\Corr_Main_1|buff|buffer_4\(4) $ (!\Corr_Main_1|Add12~7\)))) # (GND)
-- \Corr_Main_1|Add12~9\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a49\ & ((\Corr_Main_1|buff|buffer_4\(4)) # (!\Corr_Main_1|Add12~7\))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a49\ & 
-- (\Corr_Main_1|buff|buffer_4\(4) & !\Corr_Main_1|Add12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a49\,
	datab => \Corr_Main_1|buff|buffer_4\(4),
	datad => VCC,
	cin => \Corr_Main_1|Add12~7\,
	combout => \Corr_Main_1|Add12~8_combout\,
	cout => \Corr_Main_1|Add12~9\);

-- Location: LCCOMB_X15_Y6_N12
\Corr_Main_1|Add12~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~12_combout\ = ((\Corr_Main_1|buff|buffer_6\(4) $ (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a51\ $ (!\Corr_Main_1|Add12~11\)))) # (GND)
-- \Corr_Main_1|Add12~13\ = CARRY((\Corr_Main_1|buff|buffer_6\(4) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a51\) # (!\Corr_Main_1|Add12~11\))) # (!\Corr_Main_1|buff|buffer_6\(4) & 
-- (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a51\ & !\Corr_Main_1|Add12~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_6\(4),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a51\,
	datad => VCC,
	cin => \Corr_Main_1|Add12~11\,
	combout => \Corr_Main_1|Add12~12_combout\,
	cout => \Corr_Main_1|Add12~13\);

-- Location: LCCOMB_X15_Y6_N14
\Corr_Main_1|Add12~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~14_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a52\ & ((\Corr_Main_1|buff|buffer_7\(4) & (\Corr_Main_1|Add12~13\ & VCC)) # (!\Corr_Main_1|buff|buffer_7\(4) & (!\Corr_Main_1|Add12~13\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a52\ & ((\Corr_Main_1|buff|buffer_7\(4) & (!\Corr_Main_1|Add12~13\)) # (!\Corr_Main_1|buff|buffer_7\(4) & ((\Corr_Main_1|Add12~13\) # (GND)))))
-- \Corr_Main_1|Add12~15\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a52\ & (!\Corr_Main_1|buff|buffer_7\(4) & !\Corr_Main_1|Add12~13\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a52\ & 
-- ((!\Corr_Main_1|Add12~13\) # (!\Corr_Main_1|buff|buffer_7\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a52\,
	datab => \Corr_Main_1|buff|buffer_7\(4),
	datad => VCC,
	cin => \Corr_Main_1|Add12~13\,
	combout => \Corr_Main_1|Add12~14_combout\,
	cout => \Corr_Main_1|Add12~15\);

-- Location: LCCOMB_X15_Y6_N16
\Corr_Main_1|Add12~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~16_combout\ = ((\Corr_Main_1|buff|buffer_8\(4) $ (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a53\ $ (!\Corr_Main_1|Add12~15\)))) # (GND)
-- \Corr_Main_1|Add12~17\ = CARRY((\Corr_Main_1|buff|buffer_8\(4) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a53\) # (!\Corr_Main_1|Add12~15\))) # (!\Corr_Main_1|buff|buffer_8\(4) & 
-- (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a53\ & !\Corr_Main_1|Add12~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_8\(4),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a53\,
	datad => VCC,
	cin => \Corr_Main_1|Add12~15\,
	combout => \Corr_Main_1|Add12~16_combout\,
	cout => \Corr_Main_1|Add12~17\);

-- Location: LCCOMB_X14_Y6_N14
\Corr_Main_1|Add16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~8_combout\ = ((\Corr_Main_1|Add12~8_combout\ $ (\Corr_Main_1|Add13~8_combout\ $ (!\Corr_Main_1|Add16~7\)))) # (GND)
-- \Corr_Main_1|Add16~9\ = CARRY((\Corr_Main_1|Add12~8_combout\ & ((\Corr_Main_1|Add13~8_combout\) # (!\Corr_Main_1|Add16~7\))) # (!\Corr_Main_1|Add12~8_combout\ & (\Corr_Main_1|Add13~8_combout\ & !\Corr_Main_1|Add16~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add12~8_combout\,
	datab => \Corr_Main_1|Add13~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~7\,
	combout => \Corr_Main_1|Add16~8_combout\,
	cout => \Corr_Main_1|Add16~9\);

-- Location: LCCOMB_X14_Y6_N16
\Corr_Main_1|Add16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~10_combout\ = (\Corr_Main_1|Add13~10_combout\ & ((\Corr_Main_1|Add12~10_combout\ & (\Corr_Main_1|Add16~9\ & VCC)) # (!\Corr_Main_1|Add12~10_combout\ & (!\Corr_Main_1|Add16~9\)))) # (!\Corr_Main_1|Add13~10_combout\ & 
-- ((\Corr_Main_1|Add12~10_combout\ & (!\Corr_Main_1|Add16~9\)) # (!\Corr_Main_1|Add12~10_combout\ & ((\Corr_Main_1|Add16~9\) # (GND)))))
-- \Corr_Main_1|Add16~11\ = CARRY((\Corr_Main_1|Add13~10_combout\ & (!\Corr_Main_1|Add12~10_combout\ & !\Corr_Main_1|Add16~9\)) # (!\Corr_Main_1|Add13~10_combout\ & ((!\Corr_Main_1|Add16~9\) # (!\Corr_Main_1|Add12~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add13~10_combout\,
	datab => \Corr_Main_1|Add12~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~9\,
	combout => \Corr_Main_1|Add16~10_combout\,
	cout => \Corr_Main_1|Add16~11\);

-- Location: LCCOMB_X14_Y6_N18
\Corr_Main_1|Add16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~12_combout\ = ((\Corr_Main_1|Add12~12_combout\ $ (\Corr_Main_1|Add13~12_combout\ $ (!\Corr_Main_1|Add16~11\)))) # (GND)
-- \Corr_Main_1|Add16~13\ = CARRY((\Corr_Main_1|Add12~12_combout\ & ((\Corr_Main_1|Add13~12_combout\) # (!\Corr_Main_1|Add16~11\))) # (!\Corr_Main_1|Add12~12_combout\ & (\Corr_Main_1|Add13~12_combout\ & !\Corr_Main_1|Add16~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add12~12_combout\,
	datab => \Corr_Main_1|Add13~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~11\,
	combout => \Corr_Main_1|Add16~12_combout\,
	cout => \Corr_Main_1|Add16~13\);

-- Location: LCCOMB_X14_Y6_N28
\Corr_Main_1|Add16~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~22_combout\ = (\Corr_Main_1|Add13~22_combout\ & ((\Corr_Main_1|Add12~18_combout\ & (\Corr_Main_1|Add16~21\ & VCC)) # (!\Corr_Main_1|Add12~18_combout\ & (!\Corr_Main_1|Add16~21\)))) # (!\Corr_Main_1|Add13~22_combout\ & 
-- ((\Corr_Main_1|Add12~18_combout\ & (!\Corr_Main_1|Add16~21\)) # (!\Corr_Main_1|Add12~18_combout\ & ((\Corr_Main_1|Add16~21\) # (GND)))))
-- \Corr_Main_1|Add16~23\ = CARRY((\Corr_Main_1|Add13~22_combout\ & (!\Corr_Main_1|Add12~18_combout\ & !\Corr_Main_1|Add16~21\)) # (!\Corr_Main_1|Add13~22_combout\ & ((!\Corr_Main_1|Add16~21\) # (!\Corr_Main_1|Add12~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add13~22_combout\,
	datab => \Corr_Main_1|Add12~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~21\,
	combout => \Corr_Main_1|Add16~22_combout\,
	cout => \Corr_Main_1|Add16~23\);

-- Location: LCCOMB_X10_Y6_N12
\Corr_Main_1|Add19~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~10_combout\ = (\Corr_Main_1|Add16~10_combout\ & ((\Corr_Main_1|Add18~10_combout\ & (\Corr_Main_1|Add19~9\ & VCC)) # (!\Corr_Main_1|Add18~10_combout\ & (!\Corr_Main_1|Add19~9\)))) # (!\Corr_Main_1|Add16~10_combout\ & 
-- ((\Corr_Main_1|Add18~10_combout\ & (!\Corr_Main_1|Add19~9\)) # (!\Corr_Main_1|Add18~10_combout\ & ((\Corr_Main_1|Add19~9\) # (GND)))))
-- \Corr_Main_1|Add19~11\ = CARRY((\Corr_Main_1|Add16~10_combout\ & (!\Corr_Main_1|Add18~10_combout\ & !\Corr_Main_1|Add19~9\)) # (!\Corr_Main_1|Add16~10_combout\ & ((!\Corr_Main_1|Add19~9\) # (!\Corr_Main_1|Add18~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add16~10_combout\,
	datab => \Corr_Main_1|Add18~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add19~9\,
	combout => \Corr_Main_1|Add19~10_combout\,
	cout => \Corr_Main_1|Add19~11\);

-- Location: LCCOMB_X10_Y6_N16
\Corr_Main_1|Add19~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~14_combout\ = (\Corr_Main_1|Add18~14_combout\ & ((\Corr_Main_1|Add16~14_combout\ & (\Corr_Main_1|Add19~13\ & VCC)) # (!\Corr_Main_1|Add16~14_combout\ & (!\Corr_Main_1|Add19~13\)))) # (!\Corr_Main_1|Add18~14_combout\ & 
-- ((\Corr_Main_1|Add16~14_combout\ & (!\Corr_Main_1|Add19~13\)) # (!\Corr_Main_1|Add16~14_combout\ & ((\Corr_Main_1|Add19~13\) # (GND)))))
-- \Corr_Main_1|Add19~15\ = CARRY((\Corr_Main_1|Add18~14_combout\ & (!\Corr_Main_1|Add16~14_combout\ & !\Corr_Main_1|Add19~13\)) # (!\Corr_Main_1|Add18~14_combout\ & ((!\Corr_Main_1|Add19~13\) # (!\Corr_Main_1|Add16~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add18~14_combout\,
	datab => \Corr_Main_1|Add16~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add19~13\,
	combout => \Corr_Main_1|Add19~14_combout\,
	cout => \Corr_Main_1|Add19~15\);

-- Location: LCCOMB_X10_Y6_N20
\Corr_Main_1|Add19~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~18_combout\ = (\Corr_Main_1|Add18~18_combout\ & ((\Corr_Main_1|Add16~18_combout\ & (\Corr_Main_1|Add19~17\ & VCC)) # (!\Corr_Main_1|Add16~18_combout\ & (!\Corr_Main_1|Add19~17\)))) # (!\Corr_Main_1|Add18~18_combout\ & 
-- ((\Corr_Main_1|Add16~18_combout\ & (!\Corr_Main_1|Add19~17\)) # (!\Corr_Main_1|Add16~18_combout\ & ((\Corr_Main_1|Add19~17\) # (GND)))))
-- \Corr_Main_1|Add19~19\ = CARRY((\Corr_Main_1|Add18~18_combout\ & (!\Corr_Main_1|Add16~18_combout\ & !\Corr_Main_1|Add19~17\)) # (!\Corr_Main_1|Add18~18_combout\ & ((!\Corr_Main_1|Add19~17\) # (!\Corr_Main_1|Add16~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add18~18_combout\,
	datab => \Corr_Main_1|Add16~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add19~17\,
	combout => \Corr_Main_1|Add19~18_combout\,
	cout => \Corr_Main_1|Add19~19\);

-- Location: LCCOMB_X10_Y6_N22
\Corr_Main_1|Add19~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~20_combout\ = ((\Corr_Main_1|Add18~20_combout\ $ (\Corr_Main_1|Add16~20_combout\ $ (!\Corr_Main_1|Add19~19\)))) # (GND)
-- \Corr_Main_1|Add19~21\ = CARRY((\Corr_Main_1|Add18~20_combout\ & ((\Corr_Main_1|Add16~20_combout\) # (!\Corr_Main_1|Add19~19\))) # (!\Corr_Main_1|Add18~20_combout\ & (\Corr_Main_1|Add16~20_combout\ & !\Corr_Main_1|Add19~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add18~20_combout\,
	datab => \Corr_Main_1|Add16~20_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add19~19\,
	combout => \Corr_Main_1|Add19~20_combout\,
	cout => \Corr_Main_1|Add19~21\);

-- Location: LCCOMB_X10_Y6_N24
\Corr_Main_1|Add19~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~22_combout\ = (\Corr_Main_1|Add16~22_combout\ & ((\Corr_Main_1|Add18~22_combout\ & (\Corr_Main_1|Add19~21\ & VCC)) # (!\Corr_Main_1|Add18~22_combout\ & (!\Corr_Main_1|Add19~21\)))) # (!\Corr_Main_1|Add16~22_combout\ & 
-- ((\Corr_Main_1|Add18~22_combout\ & (!\Corr_Main_1|Add19~21\)) # (!\Corr_Main_1|Add18~22_combout\ & ((\Corr_Main_1|Add19~21\) # (GND)))))
-- \Corr_Main_1|Add19~23\ = CARRY((\Corr_Main_1|Add16~22_combout\ & (!\Corr_Main_1|Add18~22_combout\ & !\Corr_Main_1|Add19~21\)) # (!\Corr_Main_1|Add16~22_combout\ & ((!\Corr_Main_1|Add19~21\) # (!\Corr_Main_1|Add18~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add16~22_combout\,
	datab => \Corr_Main_1|Add18~22_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add19~21\,
	combout => \Corr_Main_1|Add19~22_combout\,
	cout => \Corr_Main_1|Add19~23\);

-- Location: LCCOMB_X10_Y6_N26
\Corr_Main_1|Add19~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~24_combout\ = ((\Corr_Main_1|Add18~24_combout\ $ (\Corr_Main_1|Add16~24_combout\ $ (!\Corr_Main_1|Add19~23\)))) # (GND)
-- \Corr_Main_1|Add19~25\ = CARRY((\Corr_Main_1|Add18~24_combout\ & ((\Corr_Main_1|Add16~24_combout\) # (!\Corr_Main_1|Add19~23\))) # (!\Corr_Main_1|Add18~24_combout\ & (\Corr_Main_1|Add16~24_combout\ & !\Corr_Main_1|Add19~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add18~24_combout\,
	datab => \Corr_Main_1|Add16~24_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add19~23\,
	combout => \Corr_Main_1|Add19~24_combout\,
	cout => \Corr_Main_1|Add19~25\);

-- Location: LCCOMB_X21_Y5_N8
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ = 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & (((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) & VCC)))) # 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) $ (((VCC) # 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))))
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ = 
-- CARRY((!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datad => VCC,
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X21_Y5_N10
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ = 
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ $ (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\);

-- Location: LCCOMB_X21_Y10_N16
\this_state_manager|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~16_combout\ = (\this_state_manager|counter\(8) & (\this_state_manager|Add0~15\ $ (GND))) # (!\this_state_manager|counter\(8) & (!\this_state_manager|Add0~15\ & VCC))
-- \this_state_manager|Add0~17\ = CARRY((\this_state_manager|counter\(8) & !\this_state_manager|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(8),
	datad => VCC,
	cin => \this_state_manager|Add0~15\,
	combout => \this_state_manager|Add0~16_combout\,
	cout => \this_state_manager|Add0~17\);

-- Location: LCCOMB_X21_Y10_N20
\this_state_manager|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~20_combout\ = (\this_state_manager|counter\(10) & (\this_state_manager|Add0~19\ $ (GND))) # (!\this_state_manager|counter\(10) & (!\this_state_manager|Add0~19\ & VCC))
-- \this_state_manager|Add0~21\ = CARRY((\this_state_manager|counter\(10) & !\this_state_manager|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(10),
	datad => VCC,
	cin => \this_state_manager|Add0~19\,
	combout => \this_state_manager|Add0~20_combout\,
	cout => \this_state_manager|Add0~21\);

-- Location: LCCOMB_X21_Y10_N24
\this_state_manager|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~24_combout\ = (\this_state_manager|counter\(12) & (\this_state_manager|Add0~23\ $ (GND))) # (!\this_state_manager|counter\(12) & (!\this_state_manager|Add0~23\ & VCC))
-- \this_state_manager|Add0~25\ = CARRY((\this_state_manager|counter\(12) & !\this_state_manager|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(12),
	datad => VCC,
	cin => \this_state_manager|Add0~23\,
	combout => \this_state_manager|Add0~24_combout\,
	cout => \this_state_manager|Add0~25\);

-- Location: LCCOMB_X21_Y9_N10
\this_state_manager|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~42_combout\ = (\this_state_manager|counter\(21) & (!\this_state_manager|Add0~41\)) # (!\this_state_manager|counter\(21) & ((\this_state_manager|Add0~41\) # (GND)))
-- \this_state_manager|Add0~43\ = CARRY((!\this_state_manager|Add0~41\) # (!\this_state_manager|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(21),
	datad => VCC,
	cin => \this_state_manager|Add0~41\,
	combout => \this_state_manager|Add0~42_combout\,
	cout => \this_state_manager|Add0~43\);

-- Location: LCCOMB_X21_Y9_N12
\this_state_manager|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~44_combout\ = (\this_state_manager|counter\(22) & (\this_state_manager|Add0~43\ $ (GND))) # (!\this_state_manager|counter\(22) & (!\this_state_manager|Add0~43\ & VCC))
-- \this_state_manager|Add0~45\ = CARRY((\this_state_manager|counter\(22) & !\this_state_manager|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(22),
	datad => VCC,
	cin => \this_state_manager|Add0~43\,
	combout => \this_state_manager|Add0~44_combout\,
	cout => \this_state_manager|Add0~45\);

-- Location: LCCOMB_X21_Y9_N16
\this_state_manager|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~48_combout\ = (\this_state_manager|counter\(24) & (\this_state_manager|Add0~47\ $ (GND))) # (!\this_state_manager|counter\(24) & (!\this_state_manager|Add0~47\ & VCC))
-- \this_state_manager|Add0~49\ = CARRY((\this_state_manager|counter\(24) & !\this_state_manager|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(24),
	datad => VCC,
	cin => \this_state_manager|Add0~47\,
	combout => \this_state_manager|Add0~48_combout\,
	cout => \this_state_manager|Add0~49\);

-- Location: LCCOMB_X21_Y9_N20
\this_state_manager|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~52_combout\ = (\this_state_manager|counter\(26) & (\this_state_manager|Add0~51\ $ (GND))) # (!\this_state_manager|counter\(26) & (!\this_state_manager|Add0~51\ & VCC))
-- \this_state_manager|Add0~53\ = CARRY((\this_state_manager|counter\(26) & !\this_state_manager|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(26),
	datad => VCC,
	cin => \this_state_manager|Add0~51\,
	combout => \this_state_manager|Add0~52_combout\,
	cout => \this_state_manager|Add0~53\);

-- Location: LCCOMB_X24_Y11_N6
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

-- Location: LCCOMB_X24_Y11_N10
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) & ((VCC)))) # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) $ (((VCC) # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))))
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ = CARRY((!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) $ (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X12_Y5_N22
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4) & (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4) & (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ & VCC))
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4) & !\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4),
	datad => VCC,
	cin => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\,
	combout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\,
	cout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X12_Y5_N24
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

-- Location: M4K_X23_Y5
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "SPI_Controller:adc_spi_controller|wizard_spi_fifo:spi_fifo_component|scfifo:scfifo_component|scfifo_3c21:auto_generated|a_dpfifo_ai21:dpfifo|dpram_bv01:FIFOram|altsyncram_0vj1:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 16,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portbrewe => VCC,
	clk0 => \pl|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \pl|altpll_component|_clk0~clkctrl_outclk\,
	ena0 => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	ena1 => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	portadatain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTADATAIN_bus\,
	portaaddr => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X21_Y12_N7
\UART_Controller_1|uart_tx_1|data_send[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|data_send[2]~feeder_combout\,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(2));

-- Location: LCFF_X21_Y12_N21
\UART_Controller_1|uart_tx_1|data_send[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|data_send[1]~feeder_combout\,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(1));

-- Location: LCFF_X21_Y12_N15
\UART_Controller_1|uart_tx_1|data_send[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|data_send[4]~feeder_combout\,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(4));

-- Location: LCFF_X22_Y12_N17
\UART_Controller_1|uart_tx_1|data_send[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|data_send[7]~feeder_combout\,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(7));

-- Location: LCCOMB_X18_Y7_N6
\this_setup_manager|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~1_combout\ = (!\this_setup_manager|config_command_counter\(7) & (!\this_setup_manager|config_command_counter\(10) & (!\this_setup_manager|config_command_counter\(4) & !\this_setup_manager|config_command_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(7),
	datab => \this_setup_manager|config_command_counter\(10),
	datac => \this_setup_manager|config_command_counter\(4),
	datad => \this_setup_manager|config_command_counter\(5),
	combout => \this_setup_manager|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y7_N0
\this_setup_manager|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~2_combout\ = (\this_setup_manager|Equal0~1_combout\ & (!\this_setup_manager|config_command_counter\(13) & (!\this_setup_manager|config_command_counter\(14) & !\this_setup_manager|config_command_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~1_combout\,
	datab => \this_setup_manager|config_command_counter\(13),
	datac => \this_setup_manager|config_command_counter\(14),
	datad => \this_setup_manager|config_command_counter\(8),
	combout => \this_setup_manager|Equal0~2_combout\);

-- Location: LCCOMB_X20_Y5_N12
\adc_spi_controller|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector5~0_combout\ = (\adc_spi_controller|curr_state.reading_fifo~regout\) # (\adc_spi_controller|curr_state.waiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|curr_state.reading_fifo~regout\,
	datad => \adc_spi_controller|curr_state.waiting~regout\,
	combout => \adc_spi_controller|Selector5~0_combout\);

-- Location: LCCOMB_X25_Y12_N6
\this_mram_controller|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector1~0_combout\ = ((\this_mram_controller|counter\(2)) # (!\this_mram_controller|Mux41~0_combout\)) # (!\this_mram_controller|curr_state.reading~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_mram_controller|counter\(2),
	datac => \this_mram_controller|Mux41~0_combout\,
	combout => \this_mram_controller|Selector1~0_combout\);

-- Location: LCCOMB_X26_Y12_N10
\this_mram_controller|Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector22~1_combout\ = (!\this_mram_controller|counter\(1) & !\this_mram_controller|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_mram_controller|counter\(1),
	datad => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|Selector22~1_combout\);

-- Location: LCCOMB_X25_Y12_N10
\this_mram_controller|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux18~0_combout\ = (\this_mram_controller|counter\(1)) # ((\this_mram_controller|counter\(3)) # (\this_mram_controller|counter\(0) $ (\this_mram_controller|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(0),
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|counter\(2),
	datad => \this_mram_controller|counter\(3),
	combout => \this_mram_controller|Mux18~0_combout\);

-- Location: LCCOMB_X25_Y12_N12
\this_mram_controller|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector2~0_combout\ = ((\this_mram_controller|Mux18~0_combout\ & ((!\this_mram_controller|MRAM_WRITE_EN~regout\))) # (!\this_mram_controller|Mux18~0_combout\ & (\this_mram_controller|counter\(2)))) # 
-- (!\this_mram_controller|curr_state.writing~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|Mux18~0_combout\,
	datab => \this_mram_controller|counter\(2),
	datac => \this_mram_controller|MRAM_WRITE_EN~regout\,
	datad => \this_mram_controller|curr_state.writing~regout\,
	combout => \this_mram_controller|Selector2~0_combout\);

-- Location: LCFF_X20_Y12_N5
\UART_Controller_1|uart_tx_1|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(4));

-- Location: LCFF_X20_Y12_N11
\UART_Controller_1|uart_tx_1|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(10));

-- Location: LCFF_X19_Y12_N23
\UART_Controller_1|uart_tx_1|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(9));

-- Location: LCCOMB_X20_Y12_N12
\UART_Controller_1|uart_tx_1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Equal0~2_combout\ = (!\UART_Controller_1|uart_tx_1|counter\(9) & \UART_Controller_1|uart_tx_1|counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|counter\(9),
	datad => \UART_Controller_1|uart_tx_1|counter\(10),
	combout => \UART_Controller_1|uart_tx_1|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y12_N12
\UART_Controller_1|uart_tx_1|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector17~1_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & (((\UART_Controller_1|uart_tx_1|data_index\(2)) # (!\UART_Controller_1|uart_tx_1|Selector17~0_combout\)))) # 
-- (!\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	datab => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datac => \UART_Controller_1|uart_tx_1|data_index\(2),
	datad => \UART_Controller_1|uart_tx_1|Selector17~0_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector17~1_combout\);

-- Location: LCFF_X19_Y5_N13
\adc_spi_controller|cs_up_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|cs_up_counter~0_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(4));

-- Location: LCFF_X19_Y5_N9
\adc_spi_controller|cs_up_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|cs_up_counter~1_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(0));

-- Location: LCFF_X19_Y5_N21
\adc_spi_controller|cs_up_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|Add0~2_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(1));

-- Location: LCCOMB_X19_Y5_N6
\adc_spi_controller|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Equal0~0_combout\ = (!\adc_spi_controller|cs_up_counter\(0) & !\adc_spi_controller|cs_up_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|cs_up_counter\(0),
	datac => \adc_spi_controller|cs_up_counter\(1),
	combout => \adc_spi_controller|Equal0~0_combout\);

-- Location: LCFF_X19_Y5_N3
\adc_spi_controller|cs_up_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|cs_up_counter~2_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(2));

-- Location: LCFF_X19_Y5_N25
\adc_spi_controller|cs_up_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|Add0~6_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(3));

-- Location: LCCOMB_X19_Y5_N14
\adc_spi_controller|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Equal0~1_combout\ = (\adc_spi_controller|Equal0~0_combout\ & (\adc_spi_controller|cs_up_counter\(2) & (!\adc_spi_controller|cs_up_counter\(3) & \adc_spi_controller|cs_up_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Equal0~0_combout\,
	datab => \adc_spi_controller|cs_up_counter\(2),
	datac => \adc_spi_controller|cs_up_counter\(3),
	datad => \adc_spi_controller|cs_up_counter\(4),
	combout => \adc_spi_controller|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y12_N4
\UART_Controller_1|uart_tx_1|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector11~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & (!\UART_Controller_1|uart_tx_1|curr_state.sync~regout\ & (\UART_Controller_1|uart_tx_1|Add0~8_combout\ & 
-- !\UART_Controller_1|uart_tx_1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	datac => \UART_Controller_1|uart_tx_1|Add0~8_combout\,
	datad => \UART_Controller_1|uart_tx_1|Equal0~3_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector11~0_combout\);

-- Location: LCCOMB_X20_Y12_N10
\UART_Controller_1|uart_tx_1|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector5~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & (!\UART_Controller_1|uart_tx_1|Equal0~3_combout\ & (\UART_Controller_1|uart_tx_1|Add0~20_combout\ & 
-- !\UART_Controller_1|uart_tx_1|curr_state.sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|Equal0~3_combout\,
	datac => \UART_Controller_1|uart_tx_1|Add0~20_combout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector5~0_combout\);

-- Location: LCCOMB_X19_Y12_N22
\UART_Controller_1|uart_tx_1|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector6~0_combout\ = (\UART_Controller_1|uart_tx_1|Add0~18_combout\ & (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & !\UART_Controller_1|uart_tx_1|curr_state.sync~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|Add0~18_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector6~0_combout\);

-- Location: LCFF_X22_Y12_N25
\this_mram_controller|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[0]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(0));

-- Location: LCFF_X22_Y12_N21
\this_mram_controller|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[3]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(3));

-- Location: LCFF_X18_Y12_N3
\this_mram_controller|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[6]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(6));

-- Location: LCFF_X22_Y12_N13
\this_mram_controller|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[4]~4\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(4));

-- Location: LCCOMB_X20_Y6_N12
\adc_spi_controller|spi_tx_component|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector9~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.done~regout\) # ((\adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\) # ((!\adc_spi_controller|spi_tx_component|Equal1~1_combout\ 
-- & \adc_spi_controller|spi_tx_component|curr_state.running~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|curr_state.done~regout\,
	datab => \adc_spi_controller|spi_tx_component|Equal1~1_combout\,
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datad => \adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\,
	combout => \adc_spi_controller|spi_tx_component|Selector9~0_combout\);

-- Location: LCCOMB_X19_Y5_N12
\adc_spi_controller|cs_up_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|cs_up_counter~0_combout\ = (\adc_spi_controller|Add0~8_combout\ & !\adc_spi_controller|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|Add0~8_combout\,
	datac => \adc_spi_controller|Equal0~1_combout\,
	combout => \adc_spi_controller|cs_up_counter~0_combout\);

-- Location: LCCOMB_X19_Y5_N8
\adc_spi_controller|cs_up_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|cs_up_counter~1_combout\ = (\adc_spi_controller|Add0~0_combout\ & !\adc_spi_controller|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|Add0~0_combout\,
	datac => \adc_spi_controller|Equal0~1_combout\,
	combout => \adc_spi_controller|cs_up_counter~1_combout\);

-- Location: LCCOMB_X19_Y5_N2
\adc_spi_controller|cs_up_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|cs_up_counter~2_combout\ = (\adc_spi_controller|Add0~4_combout\ & !\adc_spi_controller|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|Add0~4_combout\,
	datac => \adc_spi_controller|Equal0~1_combout\,
	combout => \adc_spi_controller|cs_up_counter~2_combout\);

-- Location: LCCOMB_X21_Y5_N24
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\) # 
-- (\this_setup_manager|SPI_send_irq~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datac => \this_setup_manager|SPI_send_irq~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\);

-- Location: LCCOMB_X27_Y10_N6
\this_state_manager|process_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|process_1~1_combout\ = (\Corr_Main_1|address_counter\(3) & \this_read_adc_manager|address_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|address_counter\(3),
	datad => \this_read_adc_manager|address_counter\(1),
	combout => \this_state_manager|process_1~1_combout\);

-- Location: LCFF_X21_Y10_N21
\this_state_manager|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~20_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(10));

-- Location: LCFF_X21_Y10_N17
\this_state_manager|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~16_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(8));

-- Location: LCCOMB_X20_Y10_N10
\this_state_manager|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal0~0_combout\ = (!\this_state_manager|counter\(10) & (!\this_state_manager|counter\(11) & (!\this_state_manager|counter\(8) & !\this_state_manager|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(10),
	datab => \this_state_manager|counter\(11),
	datac => \this_state_manager|counter\(8),
	datad => \this_state_manager|counter\(9),
	combout => \this_state_manager|Equal0~0_combout\);

-- Location: LCFF_X21_Y10_N25
\this_state_manager|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~24_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(12));

-- Location: LCFF_X21_Y9_N11
\this_state_manager|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~42_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(21));

-- Location: LCFF_X21_Y9_N13
\this_state_manager|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~44_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(22));

-- Location: LCFF_X21_Y9_N17
\this_state_manager|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~48_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(24));

-- Location: LCFF_X21_Y9_N21
\this_state_manager|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~52_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(26));

-- Location: LCCOMB_X20_Y9_N6
\this_state_manager|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal0~8_combout\ = (!\this_state_manager|counter\(27) & (!\this_state_manager|counter\(26) & (!\this_state_manager|counter\(24) & !\this_state_manager|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(27),
	datab => \this_state_manager|counter\(26),
	datac => \this_state_manager|counter\(24),
	datad => \this_state_manager|counter\(25),
	combout => \this_state_manager|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y11_N20
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) & 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) & 
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\);

-- Location: LCFF_X12_Y7_N21
\Corr_Main_1|buff|buffer_5[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a14\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(49));

-- Location: LCFF_X12_Y7_N19
\Corr_Main_1|buff|buffer_4[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(49));

-- Location: LCFF_X12_Y7_N17
\Corr_Main_1|buff|buffer_3[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a12\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(49));

-- Location: LCCOMB_X10_Y6_N30
\Corr_Main_1|PREAMBULE_FOUND~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|PREAMBULE_FOUND~4_combout\ = (\Corr_Main_1|Add19~22_combout\) # ((\Corr_Main_1|Add19~24_combout\) # ((\Corr_Main_1|Add19~18_combout\) # (\Corr_Main_1|Add19~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add19~22_combout\,
	datab => \Corr_Main_1|Add19~24_combout\,
	datac => \Corr_Main_1|Add19~18_combout\,
	datad => \Corr_Main_1|Add19~20_combout\,
	combout => \Corr_Main_1|PREAMBULE_FOUND~4_combout\);

-- Location: LCCOMB_X27_Y6_N14
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

-- Location: LCCOMB_X27_Y6_N12
\this_read_adc_manager|address_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter~1_combout\ = (!\this_mram_controller|curr_state.idle~regout\ & !\this_read_adc_manager|last_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.idle~regout\,
	datad => \this_read_adc_manager|last_state~regout\,
	combout => \this_read_adc_manager|address_counter~1_combout\);

-- Location: LCFF_X24_Y5_N17
\adc_spi_controller|spi_tx_component|tx_buf[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector13~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(13));

-- Location: LCCOMB_X27_Y6_N20
\this_read_adc_manager|read_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|read_counter~0_combout\ = (\this_read_adc_manager|read_counter\(1) & ((\this_read_adc_manager|read_counter\(0) $ (\this_read_adc_manager|read_counter\(2))))) # (!\this_read_adc_manager|read_counter\(1) & 
-- (\this_read_adc_manager|read_counter\(2) & ((\this_mram_controller|curr_state.idle~regout\) # (\this_read_adc_manager|read_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.idle~regout\,
	datab => \this_read_adc_manager|read_counter\(1),
	datac => \this_read_adc_manager|read_counter\(0),
	datad => \this_read_adc_manager|read_counter\(2),
	combout => \this_read_adc_manager|read_counter~0_combout\);

-- Location: LCFF_X24_Y5_N21
\adc_spi_controller|spi_tx_component|tx_buf[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector14~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(12));

-- Location: LCCOMB_X24_Y5_N16
\adc_spi_controller|spi_tx_component|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector13~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & (\adc_spi_controller|spi_tx_component|tx_buf\(12))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf\(12),
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(13),
	combout => \adc_spi_controller|spi_tx_component|Selector13~0_combout\);

-- Location: LCFF_X25_Y5_N9
\Corr_Main_1|buff|buf_b2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b2[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b2\(6));

-- Location: LCFF_X27_Y5_N17
\Corr_Main_1|buff|buf_b2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b2[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b2\(5));

-- Location: LCFF_X25_Y5_N11
\Corr_Main_1|buff|buf_b2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b2[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b2\(4));

-- Location: LCFF_X26_Y5_N15
\Corr_Main_1|buff|buf_b2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buf_b1\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b2\(2));

-- Location: LCFF_X25_Y5_N15
\Corr_Main_1|buff|buf_b2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b2\(1));

-- Location: LCFF_X25_Y5_N31
\Corr_Main_1|buff|buf_b2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b2\(0));

-- Location: LCFF_X24_Y5_N13
\adc_spi_controller|spi_tx_component|tx_buf[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector15~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(11));

-- Location: LCCOMB_X24_Y5_N20
\adc_spi_controller|spi_tx_component|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector14~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & (\adc_spi_controller|spi_tx_component|tx_buf\(11))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf\(11),
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(12),
	combout => \adc_spi_controller|spi_tx_component|Selector14~0_combout\);

-- Location: LCFF_X25_Y5_N23
\Corr_Main_1|buff|buf_b1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b1[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b1\(6));

-- Location: LCFF_X27_Y5_N3
\Corr_Main_1|buff|buf_b1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buf_b0\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b1\(5));

-- Location: LCFF_X25_Y5_N3
\Corr_Main_1|buff|buf_b1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b1[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b1\(4));

-- Location: LCFF_X26_Y5_N1
\Corr_Main_1|buff|buf_b1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b1\(2));

-- Location: LCFF_X25_Y5_N7
\Corr_Main_1|buff|buf_b1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buf_b0\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b1\(1));

-- Location: LCFF_X25_Y5_N13
\Corr_Main_1|buff|buf_b1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b1\(0));

-- Location: LCFF_X24_Y5_N31
\adc_spi_controller|spi_tx_component|tx_buf[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector16~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(10));

-- Location: LCCOMB_X24_Y5_N12
\adc_spi_controller|spi_tx_component|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector15~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & (\adc_spi_controller|spi_tx_component|tx_buf\(10))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|tx_buf\(10),
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(11),
	combout => \adc_spi_controller|spi_tx_component|Selector15~0_combout\);

-- Location: LCFF_X24_Y5_N19
\adc_spi_controller|spi_tx_component|tx_buf[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector17~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(9));

-- Location: LCCOMB_X24_Y5_N30
\adc_spi_controller|spi_tx_component|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector16~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & (\adc_spi_controller|spi_tx_component|tx_buf\(9))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|tx_buf\(9),
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(10),
	combout => \adc_spi_controller|spi_tx_component|Selector16~0_combout\);

-- Location: LCFF_X24_Y5_N9
\adc_spi_controller|spi_tx_component|tx_buf[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector18~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(8));

-- Location: LCCOMB_X24_Y5_N18
\adc_spi_controller|spi_tx_component|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector17~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & ((\adc_spi_controller|spi_tx_component|tx_buf\(8)))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(9),
	datab => \adc_spi_controller|spi_tx_component|tx_buf\(8),
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	combout => \adc_spi_controller|spi_tx_component|Selector17~0_combout\);

-- Location: LCFF_X24_Y5_N3
\adc_spi_controller|spi_tx_component|tx_buf[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector19~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(7));

-- Location: LCCOMB_X24_Y5_N8
\adc_spi_controller|spi_tx_component|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector18~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & (\adc_spi_controller|spi_tx_component|tx_buf\(7))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|tx_buf\(7),
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(8),
	combout => \adc_spi_controller|spi_tx_component|Selector18~0_combout\);

-- Location: LCFF_X24_Y5_N15
\adc_spi_controller|spi_tx_component|tx_buf[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector20~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(6));

-- Location: LCCOMB_X24_Y5_N2
\adc_spi_controller|spi_tx_component|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector19~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & (\adc_spi_controller|spi_tx_component|tx_buf\(6))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|tx_buf\(6),
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(7),
	combout => \adc_spi_controller|spi_tx_component|Selector19~0_combout\);

-- Location: LCFF_X24_Y5_N29
\adc_spi_controller|spi_tx_component|tx_buf[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector21~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(5));

-- Location: LCCOMB_X24_Y5_N14
\adc_spi_controller|spi_tx_component|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector20~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & ((\adc_spi_controller|spi_tx_component|tx_buf\(5)))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(6),
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf\(5),
	combout => \adc_spi_controller|spi_tx_component|Selector20~0_combout\);

-- Location: LCFF_X24_Y5_N27
\adc_spi_controller|spi_tx_component|tx_buf[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector22~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(4));

-- Location: LCCOMB_X24_Y5_N28
\adc_spi_controller|spi_tx_component|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector21~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & (\adc_spi_controller|spi_tx_component|tx_buf\(4))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|tx_buf\(4),
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(5),
	combout => \adc_spi_controller|spi_tx_component|Selector21~0_combout\);

-- Location: LCFF_X24_Y5_N7
\adc_spi_controller|spi_tx_component|tx_buf[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector23~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(3));

-- Location: LCCOMB_X24_Y5_N26
\adc_spi_controller|spi_tx_component|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector22~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & (\adc_spi_controller|spi_tx_component|tx_buf\(3))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf\(3),
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(4),
	combout => \adc_spi_controller|spi_tx_component|Selector22~0_combout\);

-- Location: LCFF_X24_Y5_N5
\adc_spi_controller|spi_tx_component|tx_buf[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector24~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(2));

-- Location: LCCOMB_X24_Y5_N6
\adc_spi_controller|spi_tx_component|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector23~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & ((\adc_spi_controller|spi_tx_component|tx_buf\(2)))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(3),
	datab => \adc_spi_controller|spi_tx_component|tx_buf\(2),
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	combout => \adc_spi_controller|spi_tx_component|Selector23~0_combout\);

-- Location: LCFF_X24_Y5_N23
\adc_spi_controller|spi_tx_component|tx_buf[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector25~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(1));

-- Location: LCCOMB_X24_Y5_N4
\adc_spi_controller|spi_tx_component|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector24~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & (\adc_spi_controller|spi_tx_component|tx_buf\(1))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datab => \adc_spi_controller|spi_tx_component|tx_buf\(1),
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(2),
	combout => \adc_spi_controller|spi_tx_component|Selector24~0_combout\);

-- Location: LCFF_X24_Y5_N25
\adc_spi_controller|spi_tx_component|tx_buf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector26~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(0));

-- Location: LCCOMB_X24_Y5_N22
\adc_spi_controller|spi_tx_component|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector25~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & (\adc_spi_controller|spi_tx_component|tx_buf\(0))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf\(0),
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(1),
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	combout => \adc_spi_controller|spi_tx_component|Selector25~0_combout\);

-- Location: LCCOMB_X24_Y5_N24
\adc_spi_controller|spi_tx_component|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector26~0_combout\ = (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(0),
	combout => \adc_spi_controller|spi_tx_component|Selector26~0_combout\);

-- Location: LCCOMB_X21_Y12_N6
\UART_Controller_1|uart_tx_1|data_send[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|data_send[2]~feeder_combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(2),
	combout => \UART_Controller_1|uart_tx_1|data_send[2]~feeder_combout\);

-- Location: LCCOMB_X21_Y12_N20
\UART_Controller_1|uart_tx_1|data_send[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|data_send[1]~feeder_combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(1),
	combout => \UART_Controller_1|uart_tx_1|data_send[1]~feeder_combout\);

-- Location: LCCOMB_X21_Y12_N14
\UART_Controller_1|uart_tx_1|data_send[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|data_send[4]~feeder_combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(4),
	combout => \UART_Controller_1|uart_tx_1|data_send[4]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N16
\UART_Controller_1|uart_tx_1|data_send[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|data_send[7]~feeder_combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(7),
	combout => \UART_Controller_1|uart_tx_1|data_send[7]~feeder_combout\);

-- Location: LCCOMB_X25_Y5_N22
\Corr_Main_1|buff|buf_b1[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b1[6]~feeder_combout\ = \Corr_Main_1|buff|buf_b0\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buf_b0\(6),
	combout => \Corr_Main_1|buff|buf_b1[6]~feeder_combout\);

-- Location: LCCOMB_X25_Y5_N2
\Corr_Main_1|buff|buf_b1[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b1[4]~feeder_combout\ = \Corr_Main_1|buff|buf_b0\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buf_b0\(4),
	combout => \Corr_Main_1|buff|buf_b1[4]~feeder_combout\);

-- Location: LCCOMB_X26_Y5_N0
\Corr_Main_1|buff|buf_b1[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b1[2]~feeder_combout\ = \Corr_Main_1|buff|buf_b0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buf_b0\(2),
	combout => \Corr_Main_1|buff|buf_b1[2]~feeder_combout\);

-- Location: LCCOMB_X25_Y5_N12
\Corr_Main_1|buff|buf_b1[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b1[0]~feeder_combout\ = \Corr_Main_1|buff|buf_b0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buf_b0\(0),
	combout => \Corr_Main_1|buff|buf_b1[0]~feeder_combout\);

-- Location: LCCOMB_X25_Y5_N8
\Corr_Main_1|buff|buf_b2[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b2[6]~feeder_combout\ = \Corr_Main_1|buff|buf_b1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buf_b1\(6),
	combout => \Corr_Main_1|buff|buf_b2[6]~feeder_combout\);

-- Location: LCCOMB_X27_Y5_N16
\Corr_Main_1|buff|buf_b2[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b2[5]~feeder_combout\ = \Corr_Main_1|buff|buf_b1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buf_b1\(5),
	combout => \Corr_Main_1|buff|buf_b2[5]~feeder_combout\);

-- Location: LCCOMB_X25_Y5_N10
\Corr_Main_1|buff|buf_b2[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b2[4]~feeder_combout\ = \Corr_Main_1|buff|buf_b1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buf_b1\(4),
	combout => \Corr_Main_1|buff|buf_b2[4]~feeder_combout\);

-- Location: LCCOMB_X25_Y5_N14
\Corr_Main_1|buff|buf_b2[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b2[1]~feeder_combout\ = \Corr_Main_1|buff|buf_b1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buf_b1\(1),
	combout => \Corr_Main_1|buff|buf_b2[1]~feeder_combout\);

-- Location: LCCOMB_X25_Y5_N30
\Corr_Main_1|buff|buf_b2[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b2[0]~feeder_combout\ = \Corr_Main_1|buff|buf_b1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buf_b1\(0),
	combout => \Corr_Main_1|buff|buf_b2[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y12_N24
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

-- Location: LCCOMB_X22_Y12_N20
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

-- Location: LCCOMB_X18_Y12_N2
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \this_mram_controller|ALT_INV_MRAM_D[4]~en_regout\,
	oe => VCC,
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
	datain => \this_mram_controller|ALT_INV_MRAM_D[5]~en_regout\,
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \this_mram_controller|ALT_INV_MRAM_D[6]~en_regout\,
	oe => VCC,
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
	datain => \this_mram_controller|ALT_INV_MRAM_D[7]~en_regout\,
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
	datain => \this_mram_controller|ALT_INV_MRAM_D[8]~en_regout\,
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
	datain => \this_mram_controller|ALT_INV_MRAM_D[9]~en_regout\,
	oe => VCC,
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \this_mram_controller|ALT_INV_MRAM_D[10]~en_regout\,
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
	datain => \this_mram_controller|ALT_INV_MRAM_D[11]~en_regout\,
	oe => VCC,
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

-- Location: LCCOMB_X17_Y7_N4
\this_setup_manager|config_command_counter[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[3]~20_combout\ = (\this_setup_manager|config_command_counter\(3) & (\this_setup_manager|config_command_counter[2]~19\ $ (GND))) # (!\this_setup_manager|config_command_counter\(3) & 
-- (!\this_setup_manager|config_command_counter[2]~19\ & VCC))
-- \this_setup_manager|config_command_counter[3]~21\ = CARRY((\this_setup_manager|config_command_counter\(3) & !\this_setup_manager|config_command_counter[2]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(3),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[2]~19\,
	combout => \this_setup_manager|config_command_counter[3]~20_combout\,
	cout => \this_setup_manager|config_command_counter[3]~21\);

-- Location: LCCOMB_X17_Y7_N6
\this_setup_manager|config_command_counter[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[4]~22_combout\ = (\this_setup_manager|config_command_counter\(4) & (!\this_setup_manager|config_command_counter[3]~21\)) # (!\this_setup_manager|config_command_counter\(4) & 
-- ((\this_setup_manager|config_command_counter[3]~21\) # (GND)))
-- \this_setup_manager|config_command_counter[4]~23\ = CARRY((!\this_setup_manager|config_command_counter[3]~21\) # (!\this_setup_manager|config_command_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(4),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[3]~21\,
	combout => \this_setup_manager|config_command_counter[4]~22_combout\,
	cout => \this_setup_manager|config_command_counter[4]~23\);

-- Location: LCCOMB_X17_Y7_N8
\this_setup_manager|config_command_counter[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[5]~24_combout\ = (\this_setup_manager|config_command_counter\(5) & (\this_setup_manager|config_command_counter[4]~23\ $ (GND))) # (!\this_setup_manager|config_command_counter\(5) & 
-- (!\this_setup_manager|config_command_counter[4]~23\ & VCC))
-- \this_setup_manager|config_command_counter[5]~25\ = CARRY((\this_setup_manager|config_command_counter\(5) & !\this_setup_manager|config_command_counter[4]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(5),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[4]~23\,
	combout => \this_setup_manager|config_command_counter[5]~24_combout\,
	cout => \this_setup_manager|config_command_counter[5]~25\);

-- Location: LCFF_X17_Y7_N7
\this_setup_manager|config_command_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[4]~22_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(4));

-- Location: LCCOMB_X18_Y7_N16
\this_setup_manager|Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal12~0_combout\ = (!\this_setup_manager|config_command_counter\(0) & (!\this_setup_manager|config_command_counter\(3) & (\this_setup_manager|config_command_counter\(4) & !\this_setup_manager|config_command_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(0),
	datab => \this_setup_manager|config_command_counter\(3),
	datac => \this_setup_manager|config_command_counter\(4),
	datad => \this_setup_manager|config_command_counter\(5),
	combout => \this_setup_manager|Equal12~0_combout\);

-- Location: LCCOMB_X17_Y7_N18
\this_setup_manager|config_command_counter[10]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[10]~35_combout\ = (\this_setup_manager|config_command_counter\(10) & (!\this_setup_manager|config_command_counter[9]~34\)) # (!\this_setup_manager|config_command_counter\(10) & 
-- ((\this_setup_manager|config_command_counter[9]~34\) # (GND)))
-- \this_setup_manager|config_command_counter[10]~36\ = CARRY((!\this_setup_manager|config_command_counter[9]~34\) # (!\this_setup_manager|config_command_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(10),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[9]~34\,
	combout => \this_setup_manager|config_command_counter[10]~35_combout\,
	cout => \this_setup_manager|config_command_counter[10]~36\);

-- Location: LCCOMB_X17_Y7_N20
\this_setup_manager|config_command_counter[11]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[11]~37_combout\ = (\this_setup_manager|config_command_counter\(11) & (\this_setup_manager|config_command_counter[10]~36\ $ (GND))) # (!\this_setup_manager|config_command_counter\(11) & 
-- (!\this_setup_manager|config_command_counter[10]~36\ & VCC))
-- \this_setup_manager|config_command_counter[11]~38\ = CARRY((\this_setup_manager|config_command_counter\(11) & !\this_setup_manager|config_command_counter[10]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(11),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[10]~36\,
	combout => \this_setup_manager|config_command_counter[11]~37_combout\,
	cout => \this_setup_manager|config_command_counter[11]~38\);

-- Location: LCCOMB_X17_Y7_N22
\this_setup_manager|config_command_counter[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[12]~39_combout\ = (\this_setup_manager|config_command_counter\(12) & (!\this_setup_manager|config_command_counter[11]~38\)) # (!\this_setup_manager|config_command_counter\(12) & 
-- ((\this_setup_manager|config_command_counter[11]~38\) # (GND)))
-- \this_setup_manager|config_command_counter[12]~40\ = CARRY((!\this_setup_manager|config_command_counter[11]~38\) # (!\this_setup_manager|config_command_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(12),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[11]~38\,
	combout => \this_setup_manager|config_command_counter[12]~39_combout\,
	cout => \this_setup_manager|config_command_counter[12]~40\);

-- Location: LCFF_X17_Y7_N23
\this_setup_manager|config_command_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[12]~39_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(12));

-- Location: LCCOMB_X17_Y7_N24
\this_setup_manager|config_command_counter[13]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[13]~41_combout\ = (\this_setup_manager|config_command_counter\(13) & (\this_setup_manager|config_command_counter[12]~40\ $ (GND))) # (!\this_setup_manager|config_command_counter\(13) & 
-- (!\this_setup_manager|config_command_counter[12]~40\ & VCC))
-- \this_setup_manager|config_command_counter[13]~42\ = CARRY((\this_setup_manager|config_command_counter\(13) & !\this_setup_manager|config_command_counter[12]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(13),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[12]~40\,
	combout => \this_setup_manager|config_command_counter[13]~41_combout\,
	cout => \this_setup_manager|config_command_counter[13]~42\);

-- Location: LCFF_X17_Y7_N25
\this_setup_manager|config_command_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[13]~41_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(13));

-- Location: LCCOMB_X17_Y7_N0
\this_setup_manager|config_command_counter[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[1]~16_combout\ = (\this_setup_manager|config_command_counter\(1) & (\this_setup_manager|config_command_counter\(0) $ (VCC))) # (!\this_setup_manager|config_command_counter\(1) & 
-- (\this_setup_manager|config_command_counter\(0) & VCC))
-- \this_setup_manager|config_command_counter[1]~17\ = CARRY((\this_setup_manager|config_command_counter\(1) & \this_setup_manager|config_command_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(1),
	datab => \this_setup_manager|config_command_counter\(0),
	datad => VCC,
	combout => \this_setup_manager|config_command_counter[1]~16_combout\,
	cout => \this_setup_manager|config_command_counter[1]~17\);

-- Location: LCFF_X17_Y7_N1
\this_setup_manager|config_command_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[1]~16_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(1));

-- Location: LCCOMB_X17_Y7_N12
\this_setup_manager|config_command_counter[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[7]~29_combout\ = (\this_setup_manager|config_command_counter\(7) & (\this_setup_manager|config_command_counter[6]~27\ $ (GND))) # (!\this_setup_manager|config_command_counter\(7) & 
-- (!\this_setup_manager|config_command_counter[6]~27\ & VCC))
-- \this_setup_manager|config_command_counter[7]~30\ = CARRY((\this_setup_manager|config_command_counter\(7) & !\this_setup_manager|config_command_counter[6]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(7),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[6]~27\,
	combout => \this_setup_manager|config_command_counter[7]~29_combout\,
	cout => \this_setup_manager|config_command_counter[7]~30\);

-- Location: LCFF_X17_Y7_N13
\this_setup_manager|config_command_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[7]~29_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(7));

-- Location: LCCOMB_X18_Y7_N8
\this_setup_manager|Equal10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal10~2_combout\ = (\this_setup_manager|config_command_counter\(8) & (!\this_setup_manager|config_command_counter\(2) & (!\this_setup_manager|config_command_counter\(1) & \this_setup_manager|config_command_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(8),
	datab => \this_setup_manager|config_command_counter\(2),
	datac => \this_setup_manager|config_command_counter\(1),
	datad => \this_setup_manager|config_command_counter\(7),
	combout => \this_setup_manager|Equal10~2_combout\);

-- Location: LCCOMB_X17_Y7_N26
\this_setup_manager|config_command_counter[14]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[14]~43_combout\ = (\this_setup_manager|config_command_counter\(14) & (!\this_setup_manager|config_command_counter[13]~42\)) # (!\this_setup_manager|config_command_counter\(14) & 
-- ((\this_setup_manager|config_command_counter[13]~42\) # (GND)))
-- \this_setup_manager|config_command_counter[14]~44\ = CARRY((!\this_setup_manager|config_command_counter[13]~42\) # (!\this_setup_manager|config_command_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(14),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[13]~42\,
	combout => \this_setup_manager|config_command_counter[14]~43_combout\,
	cout => \this_setup_manager|config_command_counter[14]~44\);

-- Location: LCFF_X17_Y7_N27
\this_setup_manager|config_command_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[14]~43_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(14));

-- Location: LCCOMB_X17_Y7_N28
\this_setup_manager|config_command_counter[15]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[15]~45_combout\ = (\this_setup_manager|config_command_counter\(15) & (\this_setup_manager|config_command_counter[14]~44\ $ (GND))) # (!\this_setup_manager|config_command_counter\(15) & 
-- (!\this_setup_manager|config_command_counter[14]~44\ & VCC))
-- \this_setup_manager|config_command_counter[15]~46\ = CARRY((\this_setup_manager|config_command_counter\(15) & !\this_setup_manager|config_command_counter[14]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(15),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[14]~44\,
	combout => \this_setup_manager|config_command_counter[15]~45_combout\,
	cout => \this_setup_manager|config_command_counter[15]~46\);

-- Location: LCFF_X17_Y7_N29
\this_setup_manager|config_command_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[15]~45_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(15));

-- Location: LCCOMB_X17_Y7_N30
\this_setup_manager|config_command_counter[16]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[16]~47_combout\ = \this_setup_manager|config_command_counter[15]~46\ $ (\this_setup_manager|config_command_counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \this_setup_manager|config_command_counter\(16),
	cin => \this_setup_manager|config_command_counter[15]~46\,
	combout => \this_setup_manager|config_command_counter[16]~47_combout\);

-- Location: LCFF_X17_Y7_N31
\this_setup_manager|config_command_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[16]~47_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(16));

-- Location: LCCOMB_X17_Y7_N16
\this_setup_manager|config_command_counter[9]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[9]~33_combout\ = (\this_setup_manager|config_command_counter\(9) & (\this_setup_manager|config_command_counter[8]~32\ $ (GND))) # (!\this_setup_manager|config_command_counter\(9) & 
-- (!\this_setup_manager|config_command_counter[8]~32\ & VCC))
-- \this_setup_manager|config_command_counter[9]~34\ = CARRY((\this_setup_manager|config_command_counter\(9) & !\this_setup_manager|config_command_counter[8]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(9),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[8]~32\,
	combout => \this_setup_manager|config_command_counter[9]~33_combout\,
	cout => \this_setup_manager|config_command_counter[9]~34\);

-- Location: LCFF_X17_Y7_N17
\this_setup_manager|config_command_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[9]~33_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(9));

-- Location: LCFF_X17_Y7_N21
\this_setup_manager|config_command_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[11]~37_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(11));

-- Location: LCCOMB_X18_Y7_N26
\this_setup_manager|Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal10~0_combout\ = (!\this_setup_manager|config_command_counter\(6) & (!\this_setup_manager|config_command_counter\(9) & (!\this_setup_manager|config_command_counter\(11) & !\this_setup_manager|config_command_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(6),
	datab => \this_setup_manager|config_command_counter\(9),
	datac => \this_setup_manager|config_command_counter\(11),
	datad => \this_setup_manager|config_command_counter\(12),
	combout => \this_setup_manager|Equal10~0_combout\);

-- Location: LCCOMB_X18_Y7_N18
\this_setup_manager|Equal10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal10~1_combout\ = (!\this_setup_manager|config_command_counter\(15) & (!\this_setup_manager|config_command_counter\(16) & \this_setup_manager|Equal10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(15),
	datac => \this_setup_manager|config_command_counter\(16),
	datad => \this_setup_manager|Equal10~0_combout\,
	combout => \this_setup_manager|Equal10~1_combout\);

-- Location: LCCOMB_X18_Y7_N10
\this_setup_manager|Equal10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal10~3_combout\ = (\this_setup_manager|config_command_counter\(14) & (\this_setup_manager|config_command_counter\(13) & (\this_setup_manager|Equal10~2_combout\ & \this_setup_manager|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(14),
	datab => \this_setup_manager|config_command_counter\(13),
	datac => \this_setup_manager|Equal10~2_combout\,
	datad => \this_setup_manager|Equal10~1_combout\,
	combout => \this_setup_manager|Equal10~3_combout\);

-- Location: LCCOMB_X18_Y7_N14
\this_setup_manager|config_command_counter[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[6]~28_combout\ = (!\this_state_manager|curr_state.setup~regout\ & (((!\this_setup_manager|Equal10~3_combout\) # (!\this_setup_manager|Equal12~0_combout\)) # (!\this_setup_manager|config_command_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|curr_state.setup~regout\,
	datab => \this_setup_manager|config_command_counter\(10),
	datac => \this_setup_manager|Equal12~0_combout\,
	datad => \this_setup_manager|Equal10~3_combout\,
	combout => \this_setup_manager|config_command_counter[6]~28_combout\);

-- Location: LCFF_X17_Y7_N9
\this_setup_manager|config_command_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[5]~24_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(5));

-- Location: LCCOMB_X17_Y7_N14
\this_setup_manager|config_command_counter[8]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[8]~31_combout\ = (\this_setup_manager|config_command_counter\(8) & (!\this_setup_manager|config_command_counter[7]~30\)) # (!\this_setup_manager|config_command_counter\(8) & 
-- ((\this_setup_manager|config_command_counter[7]~30\) # (GND)))
-- \this_setup_manager|config_command_counter[8]~32\ = CARRY((!\this_setup_manager|config_command_counter[7]~30\) # (!\this_setup_manager|config_command_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(8),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[7]~30\,
	combout => \this_setup_manager|config_command_counter[8]~31_combout\,
	cout => \this_setup_manager|config_command_counter[8]~32\);

-- Location: LCFF_X17_Y7_N15
\this_setup_manager|config_command_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[8]~31_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(8));

-- Location: LCFF_X17_Y7_N19
\this_setup_manager|config_command_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[10]~35_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(10));

-- Location: LCCOMB_X18_Y7_N20
\this_setup_manager|Equal12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal12~1_combout\ = (\this_setup_manager|config_command_counter\(10) & (\this_setup_manager|Equal12~0_combout\ & \this_setup_manager|Equal10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(10),
	datac => \this_setup_manager|Equal12~0_combout\,
	datad => \this_setup_manager|Equal10~3_combout\,
	combout => \this_setup_manager|Equal12~1_combout\);

-- Location: LCFF_X19_Y7_N13
\this_setup_manager|SETUP_DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \this_setup_manager|Equal12~1_combout\,
	sload => VCC,
	ena => \this_state_manager|ALT_INV_curr_state.setup~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SETUP_DONE~regout\);

-- Location: LCCOMB_X20_Y10_N12
\this_state_manager|curr_state.setup~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|curr_state.setup~0_combout\ = (\this_setup_manager|SETUP_DONE~regout\) # (\this_state_manager|curr_state.setup~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|SETUP_DONE~regout\,
	datac => \this_state_manager|curr_state.setup~regout\,
	combout => \this_state_manager|curr_state.setup~0_combout\);

-- Location: LCFF_X20_Y10_N13
\this_state_manager|curr_state.setup\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|curr_state.setup~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|curr_state.setup~regout\);

-- Location: LCCOMB_X19_Y7_N16
\this_setup_manager|config_command_counter[0]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[0]~49_combout\ = \this_setup_manager|config_command_counter\(0) $ (((!\this_setup_manager|Equal12~1_combout\ & !\this_state_manager|curr_state.setup~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal12~1_combout\,
	datac => \this_setup_manager|config_command_counter\(0),
	datad => \this_state_manager|curr_state.setup~regout\,
	combout => \this_setup_manager|config_command_counter[0]~49_combout\);

-- Location: LCFF_X19_Y7_N17
\this_setup_manager|config_command_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(0));

-- Location: LCCOMB_X17_Y7_N2
\this_setup_manager|config_command_counter[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[2]~18_combout\ = (\this_setup_manager|config_command_counter\(2) & (!\this_setup_manager|config_command_counter[1]~17\)) # (!\this_setup_manager|config_command_counter\(2) & 
-- ((\this_setup_manager|config_command_counter[1]~17\) # (GND)))
-- \this_setup_manager|config_command_counter[2]~19\ = CARRY((!\this_setup_manager|config_command_counter[1]~17\) # (!\this_setup_manager|config_command_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(2),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[1]~17\,
	combout => \this_setup_manager|config_command_counter[2]~18_combout\,
	cout => \this_setup_manager|config_command_counter[2]~19\);

-- Location: LCFF_X17_Y7_N3
\this_setup_manager|config_command_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[2]~18_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(2));

-- Location: LCFF_X17_Y7_N5
\this_setup_manager|config_command_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[3]~20_combout\,
	ena => \this_setup_manager|config_command_counter[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(3));

-- Location: LCCOMB_X18_Y7_N4
\this_setup_manager|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~4_combout\ = (\this_setup_manager|config_command_counter\(14)) # ((\this_setup_manager|config_command_counter\(15)) # ((\this_setup_manager|config_command_counter\(16)) # (\this_setup_manager|config_command_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(14),
	datab => \this_setup_manager|config_command_counter\(15),
	datac => \this_setup_manager|config_command_counter\(16),
	datad => \this_setup_manager|config_command_counter\(13),
	combout => \this_setup_manager|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y7_N28
\this_setup_manager|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~5_combout\ = (\this_setup_manager|Equal0~1_combout\ & (\this_setup_manager|Equal10~0_combout\ & (!\this_setup_manager|Equal0~4_combout\ & !\this_setup_manager|config_command_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~1_combout\,
	datab => \this_setup_manager|Equal10~0_combout\,
	datac => \this_setup_manager|Equal0~4_combout\,
	datad => \this_setup_manager|config_command_counter\(8),
	combout => \this_setup_manager|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y7_N14
\this_setup_manager|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal8~0_combout\ = (\this_setup_manager|Equal0~3_combout\ & (\this_setup_manager|config_command_counter\(3) & (!\this_setup_manager|config_command_counter\(0) & \this_setup_manager|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~3_combout\,
	datab => \this_setup_manager|config_command_counter\(3),
	datac => \this_setup_manager|config_command_counter\(0),
	datad => \this_setup_manager|Equal0~5_combout\,
	combout => \this_setup_manager|Equal8~0_combout\);

-- Location: LCCOMB_X18_Y7_N22
\this_setup_manager|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~0_combout\ = (!\this_setup_manager|config_command_counter\(4) & !\this_setup_manager|config_command_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_setup_manager|config_command_counter\(4),
	datad => \this_setup_manager|config_command_counter\(10),
	combout => \this_setup_manager|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y7_N12
\this_setup_manager|Equal10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal10~4_combout\ = (\this_setup_manager|config_command_counter\(5) & (\this_setup_manager|Equal0~0_combout\ & (\this_setup_manager|config_command_counter\(3) & \this_setup_manager|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(5),
	datab => \this_setup_manager|Equal0~0_combout\,
	datac => \this_setup_manager|config_command_counter\(3),
	datad => \this_setup_manager|Equal10~3_combout\,
	combout => \this_setup_manager|Equal10~4_combout\);

-- Location: LCCOMB_X19_Y7_N20
\this_setup_manager|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector8~2_combout\ = (\this_setup_manager|Equal0~8_combout\) # ((\this_setup_manager|Equal8~0_combout\) # ((\this_setup_manager|SPI_send_irq~regout\ & \this_setup_manager|Equal10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~8_combout\,
	datab => \this_setup_manager|Equal8~0_combout\,
	datac => \this_setup_manager|SPI_send_irq~regout\,
	datad => \this_setup_manager|Equal10~4_combout\,
	combout => \this_setup_manager|Selector8~2_combout\);

-- Location: LCFF_X19_Y7_N21
\this_setup_manager|SPI_send_irq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|Selector8~2_combout\,
	ena => \this_state_manager|ALT_INV_curr_state.setup~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_irq~regout\);

-- Location: LCCOMB_X21_Y5_N12
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ = (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ & \this_setup_manager|SPI_send_irq~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datac => \this_setup_manager|SPI_send_irq~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\);

-- Location: LCCOMB_X21_Y5_N4
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) $ (((VCC) # 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ = CARRY(\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datad => VCC,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X21_Y5_N6
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ = 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ & (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) $ 
-- (((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\) # (VCC))))) # (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1)) # ((GND))))
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ = CARRY((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) $ 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)) # (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\);

-- Location: LCFF_X21_Y5_N7
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1));

-- Location: LCCOMB_X21_Y5_N28
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) & 
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\);

-- Location: LCFF_X21_Y5_N9
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2));

-- Location: LCCOMB_X21_Y5_N22
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3) & 
-- (\this_setup_manager|SPI_send_irq~regout\ & (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) & 
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	datab => \this_setup_manager|SPI_send_irq~regout\,
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\);

-- Location: LCCOMB_X21_Y5_N20
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ = (!\adc_spi_controller|fifo_rdreq~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\) # ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ & 
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|fifo_rdreq~regout\,
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\,
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\);

-- Location: LCFF_X21_Y5_N21
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\);

-- Location: LCCOMB_X21_Y5_N26
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ = (\adc_spi_controller|fifo_rdreq~regout\ & (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ 
-- $ (((\this_setup_manager|SPI_send_irq~regout\ & !\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\))))) # (!\adc_spi_controller|fifo_rdreq~regout\ & (\this_setup_manager|SPI_send_irq~regout\ & 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|fifo_rdreq~regout\,
	datab => \this_setup_manager|SPI_send_irq~regout\,
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\);

-- Location: LCFF_X21_Y5_N5
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0));

-- Location: LCCOMB_X20_Y5_N0
\adc_spi_controller|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector6~0_combout\ = (\adc_spi_controller|curr_state.transmiting~regout\) # ((\adc_spi_controller|curr_state.reading_fifo~regout\ & \adc_spi_controller|tx_send_irq~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|curr_state.reading_fifo~regout\,
	datac => \adc_spi_controller|tx_send_irq~regout\,
	datad => \adc_spi_controller|curr_state.transmiting~regout\,
	combout => \adc_spi_controller|Selector6~0_combout\);

-- Location: LCFF_X20_Y5_N1
\adc_spi_controller|tx_send_irq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|tx_send_irq~regout\);

-- Location: LCCOMB_X21_Y6_N16
\adc_spi_controller|spi_tx_component|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector2~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\) # ((\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & ((!\adc_spi_controller|spi_tx_component|bits_sent\(4)) # 
-- (!\adc_spi_controller|spi_tx_component|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|Equal0~0_combout\,
	datab => \adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\,
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datad => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	combout => \adc_spi_controller|spi_tx_component|Selector2~0_combout\);

-- Location: LCFF_X21_Y6_N17
\adc_spi_controller|spi_tx_component|curr_state.running\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|curr_state.running~regout\);

-- Location: LCCOMB_X20_Y6_N16
\adc_spi_controller|spi_tx_component|clk_counter[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter[0]~5_combout\ = \adc_spi_controller|spi_tx_component|clk_counter\(0) $ (VCC)
-- \adc_spi_controller|spi_tx_component|clk_counter[0]~6\ = CARRY(\adc_spi_controller|spi_tx_component|clk_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(0),
	datad => VCC,
	combout => \adc_spi_controller|spi_tx_component|clk_counter[0]~5_combout\,
	cout => \adc_spi_controller|spi_tx_component|clk_counter[0]~6\);

-- Location: LCCOMB_X20_Y6_N18
\adc_spi_controller|spi_tx_component|clk_counter[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter[1]~7_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(1) & (!\adc_spi_controller|spi_tx_component|clk_counter[0]~6\)) # (!\adc_spi_controller|spi_tx_component|clk_counter\(1) & 
-- ((\adc_spi_controller|spi_tx_component|clk_counter[0]~6\) # (GND)))
-- \adc_spi_controller|spi_tx_component|clk_counter[1]~8\ = CARRY((!\adc_spi_controller|spi_tx_component|clk_counter[0]~6\) # (!\adc_spi_controller|spi_tx_component|clk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|clk_counter\(1),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|clk_counter[0]~6\,
	combout => \adc_spi_controller|spi_tx_component|clk_counter[1]~7_combout\,
	cout => \adc_spi_controller|spi_tx_component|clk_counter[1]~8\);

-- Location: LCFF_X20_Y6_N19
\adc_spi_controller|spi_tx_component|clk_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter[1]~7_combout\,
	sclr => \adc_spi_controller|spi_tx_component|Equal1~1_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(1));

-- Location: LCCOMB_X20_Y6_N22
\adc_spi_controller|spi_tx_component|clk_counter[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter[3]~11_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(3) & (!\adc_spi_controller|spi_tx_component|clk_counter[2]~10\)) # (!\adc_spi_controller|spi_tx_component|clk_counter\(3) & 
-- ((\adc_spi_controller|spi_tx_component|clk_counter[2]~10\) # (GND)))
-- \adc_spi_controller|spi_tx_component|clk_counter[3]~12\ = CARRY((!\adc_spi_controller|spi_tx_component|clk_counter[2]~10\) # (!\adc_spi_controller|spi_tx_component|clk_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|clk_counter\(3),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|clk_counter[2]~10\,
	combout => \adc_spi_controller|spi_tx_component|clk_counter[3]~11_combout\,
	cout => \adc_spi_controller|spi_tx_component|clk_counter[3]~12\);

-- Location: LCFF_X20_Y6_N23
\adc_spi_controller|spi_tx_component|clk_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter[3]~11_combout\,
	sclr => \adc_spi_controller|spi_tx_component|Equal1~1_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(3));

-- Location: LCCOMB_X20_Y6_N24
\adc_spi_controller|spi_tx_component|clk_counter[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter[4]~13_combout\ = \adc_spi_controller|spi_tx_component|clk_counter\(4) $ (!\adc_spi_controller|spi_tx_component|clk_counter[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(4),
	cin => \adc_spi_controller|spi_tx_component|clk_counter[3]~12\,
	combout => \adc_spi_controller|spi_tx_component|clk_counter[4]~13_combout\);

-- Location: LCFF_X20_Y6_N25
\adc_spi_controller|spi_tx_component|clk_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter[4]~13_combout\,
	sclr => \adc_spi_controller|spi_tx_component|Equal1~1_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(4));

-- Location: LCFF_X20_Y6_N17
\adc_spi_controller|spi_tx_component|clk_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter[0]~5_combout\,
	sclr => \adc_spi_controller|spi_tx_component|Equal1~1_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(0));

-- Location: LCCOMB_X20_Y6_N6
\adc_spi_controller|spi_tx_component|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Equal1~0_combout\ = (!\adc_spi_controller|spi_tx_component|clk_counter\(0) & \adc_spi_controller|spi_tx_component|clk_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_spi_controller|spi_tx_component|clk_counter\(0),
	datad => \adc_spi_controller|spi_tx_component|clk_counter\(1),
	combout => \adc_spi_controller|spi_tx_component|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y6_N14
\adc_spi_controller|spi_tx_component|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Equal1~1_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(2) & (\adc_spi_controller|spi_tx_component|clk_counter\(3) & (\adc_spi_controller|spi_tx_component|clk_counter\(4) & 
-- \adc_spi_controller|spi_tx_component|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(2),
	datab => \adc_spi_controller|spi_tx_component|clk_counter\(3),
	datac => \adc_spi_controller|spi_tx_component|clk_counter\(4),
	datad => \adc_spi_controller|spi_tx_component|Equal1~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|Equal1~1_combout\);

-- Location: LCCOMB_X21_Y6_N30
\adc_spi_controller|spi_tx_component|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector11~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & \adc_spi_controller|spi_tx_component|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datad => \adc_spi_controller|spi_tx_component|Equal1~1_combout\,
	combout => \adc_spi_controller|spi_tx_component|Selector11~0_combout\);

-- Location: LCCOMB_X21_Y6_N6
\adc_spi_controller|spi_tx_component|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~0_combout\ = (\adc_spi_controller|spi_tx_component|sclk~regout\ & (\adc_spi_controller|spi_tx_component|bits_sent\(0) & VCC)) # (!\adc_spi_controller|spi_tx_component|sclk~regout\ & 
-- (\adc_spi_controller|spi_tx_component|bits_sent\(0) $ (VCC)))
-- \adc_spi_controller|spi_tx_component|Add0~1\ = CARRY((!\adc_spi_controller|spi_tx_component|sclk~regout\ & \adc_spi_controller|spi_tx_component|bits_sent\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(0),
	datad => VCC,
	combout => \adc_spi_controller|spi_tx_component|Add0~0_combout\,
	cout => \adc_spi_controller|spi_tx_component|Add0~1\);

-- Location: LCCOMB_X21_Y6_N28
\adc_spi_controller|spi_tx_component|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector10~0_combout\ = (\adc_spi_controller|spi_tx_component|Selector9~0_combout\ & ((\adc_spi_controller|spi_tx_component|bits_sent\(0)) # ((\adc_spi_controller|spi_tx_component|Selector11~0_combout\ & 
-- \adc_spi_controller|spi_tx_component|Add0~0_combout\)))) # (!\adc_spi_controller|spi_tx_component|Selector9~0_combout\ & (\adc_spi_controller|spi_tx_component|Selector11~0_combout\ & ((\adc_spi_controller|spi_tx_component|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|Selector9~0_combout\,
	datab => \adc_spi_controller|spi_tx_component|Selector11~0_combout\,
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(0),
	datad => \adc_spi_controller|spi_tx_component|Add0~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|Selector10~0_combout\);

-- Location: LCFF_X21_Y6_N29
\adc_spi_controller|spi_tx_component|bits_sent[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(0));

-- Location: LCCOMB_X21_Y6_N8
\adc_spi_controller|spi_tx_component|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~2_combout\ = (\adc_spi_controller|spi_tx_component|bits_sent\(1) & (!\adc_spi_controller|spi_tx_component|Add0~1\)) # (!\adc_spi_controller|spi_tx_component|bits_sent\(1) & 
-- ((\adc_spi_controller|spi_tx_component|Add0~1\) # (GND)))
-- \adc_spi_controller|spi_tx_component|Add0~3\ = CARRY((!\adc_spi_controller|spi_tx_component|Add0~1\) # (!\adc_spi_controller|spi_tx_component|bits_sent\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(1),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|Add0~1\,
	combout => \adc_spi_controller|spi_tx_component|Add0~2_combout\,
	cout => \adc_spi_controller|spi_tx_component|Add0~3\);

-- Location: LCCOMB_X21_Y6_N18
\adc_spi_controller|spi_tx_component|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector9~1_combout\ = (\adc_spi_controller|spi_tx_component|Selector9~0_combout\ & ((\adc_spi_controller|spi_tx_component|bits_sent\(1)) # ((\adc_spi_controller|spi_tx_component|Add0~2_combout\ & 
-- \adc_spi_controller|spi_tx_component|Selector11~0_combout\)))) # (!\adc_spi_controller|spi_tx_component|Selector9~0_combout\ & (\adc_spi_controller|spi_tx_component|Add0~2_combout\ & ((\adc_spi_controller|spi_tx_component|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|Selector9~0_combout\,
	datab => \adc_spi_controller|spi_tx_component|Add0~2_combout\,
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(1),
	datad => \adc_spi_controller|spi_tx_component|Selector11~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|Selector9~1_combout\);

-- Location: LCFF_X21_Y6_N19
\adc_spi_controller|spi_tx_component|bits_sent[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(1));

-- Location: LCCOMB_X21_Y6_N10
\adc_spi_controller|spi_tx_component|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~4_combout\ = (\adc_spi_controller|spi_tx_component|bits_sent\(2) & (\adc_spi_controller|spi_tx_component|Add0~3\ $ (GND))) # (!\adc_spi_controller|spi_tx_component|bits_sent\(2) & 
-- (!\adc_spi_controller|spi_tx_component|Add0~3\ & VCC))
-- \adc_spi_controller|spi_tx_component|Add0~5\ = CARRY((\adc_spi_controller|spi_tx_component|bits_sent\(2) & !\adc_spi_controller|spi_tx_component|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(2),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|Add0~3\,
	combout => \adc_spi_controller|spi_tx_component|Add0~4_combout\,
	cout => \adc_spi_controller|spi_tx_component|Add0~5\);

-- Location: LCCOMB_X21_Y6_N2
\adc_spi_controller|spi_tx_component|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector8~0_combout\ = (\adc_spi_controller|spi_tx_component|Selector9~0_combout\ & ((\adc_spi_controller|spi_tx_component|bits_sent\(2)) # ((\adc_spi_controller|spi_tx_component|Selector11~0_combout\ & 
-- \adc_spi_controller|spi_tx_component|Add0~4_combout\)))) # (!\adc_spi_controller|spi_tx_component|Selector9~0_combout\ & (\adc_spi_controller|spi_tx_component|Selector11~0_combout\ & ((\adc_spi_controller|spi_tx_component|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|Selector9~0_combout\,
	datab => \adc_spi_controller|spi_tx_component|Selector11~0_combout\,
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(2),
	datad => \adc_spi_controller|spi_tx_component|Add0~4_combout\,
	combout => \adc_spi_controller|spi_tx_component|Selector8~0_combout\);

-- Location: LCFF_X21_Y6_N3
\adc_spi_controller|spi_tx_component|bits_sent[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(2));

-- Location: LCCOMB_X21_Y6_N12
\adc_spi_controller|spi_tx_component|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~6_combout\ = (\adc_spi_controller|spi_tx_component|bits_sent\(3) & (!\adc_spi_controller|spi_tx_component|Add0~5\)) # (!\adc_spi_controller|spi_tx_component|bits_sent\(3) & 
-- ((\adc_spi_controller|spi_tx_component|Add0~5\) # (GND)))
-- \adc_spi_controller|spi_tx_component|Add0~7\ = CARRY((!\adc_spi_controller|spi_tx_component|Add0~5\) # (!\adc_spi_controller|spi_tx_component|bits_sent\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(3),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|Add0~5\,
	combout => \adc_spi_controller|spi_tx_component|Add0~6_combout\,
	cout => \adc_spi_controller|spi_tx_component|Add0~7\);

-- Location: LCCOMB_X21_Y6_N22
\adc_spi_controller|spi_tx_component|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector7~0_combout\ = (\adc_spi_controller|spi_tx_component|Selector9~0_combout\ & ((\adc_spi_controller|spi_tx_component|bits_sent\(3)) # ((\adc_spi_controller|spi_tx_component|Selector11~0_combout\ & 
-- \adc_spi_controller|spi_tx_component|Add0~6_combout\)))) # (!\adc_spi_controller|spi_tx_component|Selector9~0_combout\ & (\adc_spi_controller|spi_tx_component|Selector11~0_combout\ & ((\adc_spi_controller|spi_tx_component|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|Selector9~0_combout\,
	datab => \adc_spi_controller|spi_tx_component|Selector11~0_combout\,
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(3),
	datad => \adc_spi_controller|spi_tx_component|Add0~6_combout\,
	combout => \adc_spi_controller|spi_tx_component|Selector7~0_combout\);

-- Location: LCFF_X21_Y6_N23
\adc_spi_controller|spi_tx_component|bits_sent[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(3));

-- Location: LCCOMB_X21_Y6_N14
\adc_spi_controller|spi_tx_component|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~8_combout\ = \adc_spi_controller|spi_tx_component|Add0~7\ $ (!\adc_spi_controller|spi_tx_component|bits_sent\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	cin => \adc_spi_controller|spi_tx_component|Add0~7\,
	combout => \adc_spi_controller|spi_tx_component|Add0~8_combout\);

-- Location: LCCOMB_X21_Y6_N26
\adc_spi_controller|spi_tx_component|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector6~0_combout\ = (\adc_spi_controller|spi_tx_component|Selector9~0_combout\ & ((\adc_spi_controller|spi_tx_component|bits_sent\(4)) # ((\adc_spi_controller|spi_tx_component|Add0~8_combout\ & 
-- \adc_spi_controller|spi_tx_component|Selector11~0_combout\)))) # (!\adc_spi_controller|spi_tx_component|Selector9~0_combout\ & (\adc_spi_controller|spi_tx_component|Add0~8_combout\ & ((\adc_spi_controller|spi_tx_component|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|Selector9~0_combout\,
	datab => \adc_spi_controller|spi_tx_component|Add0~8_combout\,
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	datad => \adc_spi_controller|spi_tx_component|Selector11~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|Selector6~0_combout\);

-- Location: LCFF_X21_Y6_N27
\adc_spi_controller|spi_tx_component|bits_sent[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(4));

-- Location: LCCOMB_X21_Y6_N24
\adc_spi_controller|spi_tx_component|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Equal0~0_combout\ = (!\adc_spi_controller|spi_tx_component|bits_sent\(2) & (!\adc_spi_controller|spi_tx_component|bits_sent\(3) & (!\adc_spi_controller|spi_tx_component|bits_sent\(0) & 
-- !\adc_spi_controller|spi_tx_component|bits_sent\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|bits_sent\(2),
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(3),
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(0),
	datad => \adc_spi_controller|spi_tx_component|bits_sent\(1),
	combout => \adc_spi_controller|spi_tx_component|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y6_N4
\adc_spi_controller|spi_tx_component|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector3~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & (\adc_spi_controller|spi_tx_component|bits_sent\(4) & \adc_spi_controller|spi_tx_component|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	datac => \adc_spi_controller|spi_tx_component|Equal0~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|Selector3~0_combout\);

-- Location: LCFF_X21_Y6_N5
\adc_spi_controller|spi_tx_component|curr_state.done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|curr_state.done~regout\);

-- Location: LCCOMB_X20_Y6_N28
\adc_spi_controller|spi_tx_component|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector0~0_combout\ = (!\adc_spi_controller|spi_tx_component|curr_state.done~regout\ & ((\adc_spi_controller|tx_send_irq~regout\) # (\adc_spi_controller|spi_tx_component|curr_state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|tx_send_irq~regout\,
	datac => \adc_spi_controller|spi_tx_component|curr_state.idle~regout\,
	datad => \adc_spi_controller|spi_tx_component|curr_state.done~regout\,
	combout => \adc_spi_controller|spi_tx_component|Selector0~0_combout\);

-- Location: LCFF_X20_Y6_N29
\adc_spi_controller|spi_tx_component|curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|curr_state.idle~regout\);

-- Location: LCCOMB_X20_Y6_N26
\adc_spi_controller|spi_tx_component|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector1~0_combout\ = (\adc_spi_controller|tx_send_irq~regout\ & !\adc_spi_controller|spi_tx_component|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|tx_send_irq~regout\,
	datad => \adc_spi_controller|spi_tx_component|curr_state.idle~regout\,
	combout => \adc_spi_controller|spi_tx_component|Selector1~0_combout\);

-- Location: LCFF_X20_Y6_N27
\adc_spi_controller|spi_tx_component|curr_state.latch_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\);

-- Location: LCCOMB_X20_Y6_N4
\adc_spi_controller|spi_tx_component|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector5~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.done~regout\) # ((\adc_spi_controller|spi_tx_component|SEND_DONE~regout\ & ((\adc_spi_controller|spi_tx_component|curr_state.running~regout\) # 
-- (\adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datab => \adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\,
	datac => \adc_spi_controller|spi_tx_component|SEND_DONE~regout\,
	datad => \adc_spi_controller|spi_tx_component|curr_state.done~regout\,
	combout => \adc_spi_controller|spi_tx_component|Selector5~0_combout\);

-- Location: LCFF_X20_Y6_N5
\adc_spi_controller|spi_tx_component|SEND_DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|SEND_DONE~regout\);

-- Location: LCCOMB_X20_Y5_N22
\adc_spi_controller|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector2~0_combout\ = (\adc_spi_controller|curr_state.transmiting~regout\) # ((\adc_spi_controller|curr_state.waiting~regout\ & !\adc_spi_controller|spi_tx_component|SEND_DONE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|curr_state.transmiting~regout\,
	datac => \adc_spi_controller|curr_state.waiting~regout\,
	datad => \adc_spi_controller|spi_tx_component|SEND_DONE~regout\,
	combout => \adc_spi_controller|Selector2~0_combout\);

-- Location: LCFF_X20_Y5_N23
\adc_spi_controller|curr_state.waiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|curr_state.waiting~regout\);

-- Location: LCCOMB_X20_Y5_N30
\adc_spi_controller|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector4~0_combout\ = (\adc_spi_controller|Equal0~1_combout\ & (\adc_spi_controller|curr_state.waiting~regout\ & ((\adc_spi_controller|spi_tx_component|SEND_DONE~regout\)))) # (!\adc_spi_controller|Equal0~1_combout\ & 
-- ((\adc_spi_controller|curr_state.cs_up~regout\) # ((\adc_spi_controller|curr_state.waiting~regout\ & \adc_spi_controller|spi_tx_component|SEND_DONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Equal0~1_combout\,
	datab => \adc_spi_controller|curr_state.waiting~regout\,
	datac => \adc_spi_controller|curr_state.cs_up~regout\,
	datad => \adc_spi_controller|spi_tx_component|SEND_DONE~regout\,
	combout => \adc_spi_controller|Selector4~0_combout\);

-- Location: LCFF_X20_Y5_N31
\adc_spi_controller|curr_state.cs_up\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|curr_state.cs_up~regout\);

-- Location: LCCOMB_X20_Y5_N2
\adc_spi_controller|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector0~0_combout\ = (\adc_spi_controller|Equal0~1_combout\ & (!\adc_spi_controller|curr_state.cs_up~regout\ & ((\adc_spi_controller|curr_state.idle~regout\) # 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)))) # (!\adc_spi_controller|Equal0~1_combout\ & (((\adc_spi_controller|curr_state.idle~regout\) # 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Equal0~1_combout\,
	datab => \adc_spi_controller|curr_state.cs_up~regout\,
	datac => \adc_spi_controller|curr_state.idle~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \adc_spi_controller|Selector0~0_combout\);

-- Location: LCFF_X20_Y5_N3
\adc_spi_controller|curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|curr_state.idle~regout\);

-- Location: LCCOMB_X20_Y5_N6
\adc_spi_controller|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector1~0_combout\ = (!\adc_spi_controller|curr_state.idle~regout\ & \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|curr_state.idle~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \adc_spi_controller|Selector1~0_combout\);

-- Location: LCFF_X20_Y5_N7
\adc_spi_controller|curr_state.reading_fifo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|curr_state.reading_fifo~regout\);

-- Location: LCCOMB_X20_Y5_N10
\adc_spi_controller|curr_state.transmiting~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|curr_state.transmiting~feeder_combout\ = \adc_spi_controller|curr_state.reading_fifo~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|curr_state.reading_fifo~regout\,
	combout => \adc_spi_controller|curr_state.transmiting~feeder_combout\);

-- Location: LCFF_X20_Y5_N11
\adc_spi_controller|curr_state.transmiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|curr_state.transmiting~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|curr_state.transmiting~regout\);

-- Location: LCCOMB_X20_Y5_N14
\adc_spi_controller|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector7~0_combout\ = (\adc_spi_controller|curr_state.reading_fifo~regout\) # ((\adc_spi_controller|fifo_rdreq~regout\ & !\adc_spi_controller|curr_state.transmiting~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|curr_state.reading_fifo~regout\,
	datac => \adc_spi_controller|fifo_rdreq~regout\,
	datad => \adc_spi_controller|curr_state.transmiting~regout\,
	combout => \adc_spi_controller|Selector7~0_combout\);

-- Location: LCFF_X20_Y5_N15
\adc_spi_controller|fifo_rdreq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|fifo_rdreq~regout\);

-- Location: LCCOMB_X21_Y5_N2
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3)) # 
-- (((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2)) # (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1))) # 
-- (!\adc_spi_controller|fifo_rdreq~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	datab => \adc_spi_controller|fifo_rdreq~regout\,
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\);

-- Location: LCCOMB_X21_Y5_N30
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\) # 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\) # 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\,
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\);

-- Location: LCFF_X21_Y5_N31
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\);

-- Location: LCCOMB_X21_Y5_N14
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ = (\adc_spi_controller|fifo_rdreq~regout\ & \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|fifo_rdreq~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\);

-- Location: LCCOMB_X18_Y7_N2
\this_setup_manager|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~7_combout\ = (!\this_setup_manager|config_command_counter\(8) & (!\this_setup_manager|config_command_counter\(3) & !\this_setup_manager|config_command_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(8),
	datab => \this_setup_manager|config_command_counter\(3),
	datac => \this_setup_manager|config_command_counter\(0),
	combout => \this_setup_manager|Equal0~7_combout\);

-- Location: LCCOMB_X18_Y7_N24
\this_setup_manager|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~6_combout\ = (!\this_setup_manager|config_command_counter\(14) & (!\this_setup_manager|config_command_counter\(15) & (!\this_setup_manager|config_command_counter\(16) & !\this_setup_manager|config_command_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(14),
	datab => \this_setup_manager|config_command_counter\(15),
	datac => \this_setup_manager|config_command_counter\(16),
	datad => \this_setup_manager|config_command_counter\(13),
	combout => \this_setup_manager|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y7_N30
\this_setup_manager|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~8_combout\ = (\this_setup_manager|Equal0~1_combout\ & (\this_setup_manager|Equal0~7_combout\ & (\this_setup_manager|Equal0~6_combout\ & \this_setup_manager|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~1_combout\,
	datab => \this_setup_manager|Equal0~7_combout\,
	datac => \this_setup_manager|Equal0~6_combout\,
	datad => \this_setup_manager|Equal10~0_combout\,
	combout => \this_setup_manager|Equal0~8_combout\);

-- Location: LCCOMB_X19_Y7_N6
\this_setup_manager|WideNor0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|WideNor0~2_combout\ = (\this_setup_manager|config_command_counter\(0) & (((\this_setup_manager|Equal0~3_combout\ & \this_setup_manager|Equal0~5_combout\)) # (!\this_setup_manager|config_command_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~3_combout\,
	datab => \this_setup_manager|config_command_counter\(3),
	datac => \this_setup_manager|config_command_counter\(0),
	datad => \this_setup_manager|Equal0~5_combout\,
	combout => \this_setup_manager|WideNor0~2_combout\);

-- Location: LCCOMB_X19_Y7_N30
\this_setup_manager|WideNor0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|WideNor0~3_combout\ = ((!\this_setup_manager|config_command_counter\(3) & ((!\this_setup_manager|Equal10~1_combout\) # (!\this_setup_manager|Equal0~2_combout\)))) # (!\this_setup_manager|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~2_combout\,
	datab => \this_setup_manager|Equal10~1_combout\,
	datac => \this_setup_manager|config_command_counter\(3),
	datad => \this_setup_manager|WideNor0~2_combout\,
	combout => \this_setup_manager|WideNor0~3_combout\);

-- Location: LCCOMB_X19_Y7_N22
\this_setup_manager|WideOr1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|WideOr1~2_combout\ = (\this_setup_manager|Equal10~4_combout\) # (((!\this_setup_manager|Equal8~0_combout\ & !\this_setup_manager|Equal0~8_combout\)) # (!\this_setup_manager|WideNor0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal10~4_combout\,
	datab => \this_setup_manager|Equal8~0_combout\,
	datac => \this_setup_manager|Equal0~8_combout\,
	datad => \this_setup_manager|WideNor0~3_combout\,
	combout => \this_setup_manager|WideOr1~2_combout\);

-- Location: LCCOMB_X19_Y7_N12
\this_setup_manager|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~3_combout\ = (!\this_setup_manager|config_command_counter\(1) & !\this_setup_manager|config_command_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(1),
	datad => \this_setup_manager|config_command_counter\(2),
	combout => \this_setup_manager|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y7_N18
\this_setup_manager|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector7~0_combout\ = (\this_setup_manager|Equal0~8_combout\ & ((\this_setup_manager|Equal0~3_combout\) # ((\this_setup_manager|WideOr1~2_combout\ & \this_setup_manager|SPI_send_data\(0))))) # (!\this_setup_manager|Equal0~8_combout\ & 
-- (\this_setup_manager|WideOr1~2_combout\ & (\this_setup_manager|SPI_send_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~8_combout\,
	datab => \this_setup_manager|WideOr1~2_combout\,
	datac => \this_setup_manager|SPI_send_data\(0),
	datad => \this_setup_manager|Equal0~3_combout\,
	combout => \this_setup_manager|Selector7~0_combout\);

-- Location: LCFF_X19_Y7_N19
\this_setup_manager|SPI_send_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|Selector7~0_combout\,
	ena => \this_state_manager|ALT_INV_curr_state.setup~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data\(0));

-- Location: LCCOMB_X22_Y5_N0
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0) $ (VCC)
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ = CARRY(\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0),
	datad => VCC,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\);

-- Location: LCFF_X22_Y5_N1
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

-- Location: LCCOMB_X22_Y5_N2
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\)) # (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # (GND)))
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ = CARRY((!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1),
	datad => VCC,
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\);

-- Location: LCFF_X22_Y5_N3
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1));

-- Location: LCCOMB_X22_Y5_N4
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ $ (GND))) # (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ & VCC))
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ = CARRY((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & 
-- !\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2),
	datad => VCC,
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\);

-- Location: LCFF_X22_Y5_N5
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2));

-- Location: LCCOMB_X22_Y5_N6
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ $ 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3),
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\);

-- Location: LCFF_X22_Y5_N7
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3));

-- Location: LCCOMB_X22_Y5_N24
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0) $ (VCC)
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ = CARRY(\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0),
	datad => VCC,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\);

-- Location: LCFF_X22_Y5_N25
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

-- Location: LCCOMB_X22_Y5_N26
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\)) # (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\) # (GND)))
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ = CARRY((!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\) # 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1),
	datad => VCC,
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\);

-- Location: LCFF_X22_Y5_N27
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1));

-- Location: LCCOMB_X22_Y5_N28
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ $ (GND))) # (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ & VCC))
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ = CARRY((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- !\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2),
	datad => VCC,
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\);

-- Location: LCFF_X22_Y5_N29
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2));

-- Location: LCCOMB_X22_Y5_N30
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ $ 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3),
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\);

-- Location: LCFF_X22_Y5_N31
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3));

-- Location: LCCOMB_X12_Y5_N8
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

-- Location: LCCOMB_X19_Y7_N24
\this_setup_manager|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector1~0_combout\ = (\this_setup_manager|Equal8~0_combout\) # ((\this_setup_manager|SPI_send_data\(11) & \this_setup_manager|WideOr1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|Equal8~0_combout\,
	datac => \this_setup_manager|SPI_send_data\(11),
	datad => \this_setup_manager|WideOr1~2_combout\,
	combout => \this_setup_manager|Selector1~0_combout\);

-- Location: LCFF_X19_Y7_N25
\this_setup_manager|SPI_send_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|Selector1~0_combout\,
	ena => \this_state_manager|ALT_INV_curr_state.setup~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data\(11));

-- Location: LCCOMB_X19_Y7_N0
\this_setup_manager|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal4~0_combout\ = (!\this_setup_manager|config_command_counter\(1) & \this_setup_manager|config_command_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_setup_manager|config_command_counter\(1),
	datad => \this_setup_manager|config_command_counter\(2),
	combout => \this_setup_manager|Equal4~0_combout\);

-- Location: LCCOMB_X19_Y7_N10
\this_setup_manager|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector4~0_combout\ = (\this_setup_manager|Equal0~8_combout\ & ((\this_setup_manager|Equal4~0_combout\) # ((\this_setup_manager|SPI_send_data\(4) & \this_setup_manager|WideOr1~2_combout\)))) # (!\this_setup_manager|Equal0~8_combout\ & 
-- (((\this_setup_manager|SPI_send_data\(4) & \this_setup_manager|WideOr1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~8_combout\,
	datab => \this_setup_manager|Equal4~0_combout\,
	datac => \this_setup_manager|SPI_send_data\(4),
	datad => \this_setup_manager|WideOr1~2_combout\,
	combout => \this_setup_manager|Selector4~0_combout\);

-- Location: LCFF_X19_Y7_N11
\this_setup_manager|SPI_send_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|Selector4~0_combout\,
	ena => \this_state_manager|ALT_INV_curr_state.setup~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data\(4));

-- Location: LCCOMB_X19_Y7_N28
\this_setup_manager|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector2~0_combout\ = (\this_setup_manager|Equal0~8_combout\ & ((\this_setup_manager|config_command_counter\(2)) # ((\this_setup_manager|WideOr1~2_combout\ & \this_setup_manager|SPI_send_data\(10))))) # 
-- (!\this_setup_manager|Equal0~8_combout\ & (\this_setup_manager|WideOr1~2_combout\ & (\this_setup_manager|SPI_send_data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~8_combout\,
	datab => \this_setup_manager|WideOr1~2_combout\,
	datac => \this_setup_manager|SPI_send_data\(10),
	datad => \this_setup_manager|config_command_counter\(2),
	combout => \this_setup_manager|Selector2~0_combout\);

-- Location: LCFF_X19_Y7_N29
\this_setup_manager|SPI_send_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|Selector2~0_combout\,
	ena => \this_state_manager|ALT_INV_curr_state.setup~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data\(10));

-- Location: LCCOMB_X19_Y7_N8
\this_setup_manager|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal2~0_combout\ = (!\this_setup_manager|config_command_counter\(0) & (!\this_setup_manager|config_command_counter\(3) & (\this_setup_manager|config_command_counter\(1) & \this_setup_manager|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(0),
	datab => \this_setup_manager|config_command_counter\(3),
	datac => \this_setup_manager|config_command_counter\(1),
	datad => \this_setup_manager|Equal0~5_combout\,
	combout => \this_setup_manager|Equal2~0_combout\);

-- Location: LCCOMB_X19_Y7_N26
\this_setup_manager|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector0~0_combout\ = (\this_setup_manager|Equal2~0_combout\) # ((\this_setup_manager|SPI_send_data\(15) & \this_setup_manager|WideOr1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|Equal2~0_combout\,
	datac => \this_setup_manager|SPI_send_data\(15),
	datad => \this_setup_manager|WideOr1~2_combout\,
	combout => \this_setup_manager|Selector0~0_combout\);

-- Location: LCFF_X19_Y7_N27
\this_setup_manager|SPI_send_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|Selector0~0_combout\,
	ena => \this_state_manager|ALT_INV_curr_state.setup~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data\(15));

-- Location: LCCOMB_X24_Y5_N10
\adc_spi_controller|spi_tx_component|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector12~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & (\adc_spi_controller|spi_tx_component|tx_buf\(13))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf\(13),
	datac => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(14),
	combout => \adc_spi_controller|spi_tx_component|Selector12~0_combout\);

-- Location: LCCOMB_X20_Y6_N2
\adc_spi_controller|spi_tx_component|sclk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|sclk~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\) # (\adc_spi_controller|spi_tx_component|curr_state.done~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\,
	datad => \adc_spi_controller|spi_tx_component|curr_state.done~regout\,
	combout => \adc_spi_controller|spi_tx_component|sclk~0_combout\);

-- Location: LCCOMB_X20_Y6_N30
\adc_spi_controller|spi_tx_component|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector4~0_combout\ = (\adc_spi_controller|spi_tx_component|sclk~regout\ & (((!\adc_spi_controller|spi_tx_component|Equal1~1_combout\)) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\))) # 
-- (!\adc_spi_controller|spi_tx_component|sclk~regout\ & (!\adc_spi_controller|spi_tx_component|sclk~0_combout\ & ((\adc_spi_controller|spi_tx_component|Equal1~1_combout\) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datab => \adc_spi_controller|spi_tx_component|Equal1~1_combout\,
	datac => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datad => \adc_spi_controller|spi_tx_component|sclk~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|Selector4~0_combout\);

-- Location: LCFF_X20_Y6_N31
\adc_spi_controller|spi_tx_component|sclk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|sclk~regout\);

-- Location: LCCOMB_X20_Y6_N0
\adc_spi_controller|spi_tx_component|Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector11~2_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & (((\adc_spi_controller|spi_tx_component|Equal1~1_combout\ & !\adc_spi_controller|spi_tx_component|sclk~regout\)))) # 
-- (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & (\adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datab => \adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\,
	datac => \adc_spi_controller|spi_tx_component|Equal1~1_combout\,
	datad => \adc_spi_controller|spi_tx_component|sclk~regout\,
	combout => \adc_spi_controller|spi_tx_component|Selector11~2_combout\);

-- Location: LCFF_X24_Y5_N11
\adc_spi_controller|spi_tx_component|tx_buf[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector12~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(14));

-- Location: LCCOMB_X24_Y5_N0
\adc_spi_controller|spi_tx_component|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Selector11~1_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & ((\adc_spi_controller|spi_tx_component|tx_buf\(14)))) # (!\adc_spi_controller|spi_tx_component|curr_state.running~regout\ & 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|curr_state.running~regout\,
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(15),
	datad => \adc_spi_controller|spi_tx_component|tx_buf\(14),
	combout => \adc_spi_controller|spi_tx_component|Selector11~1_combout\);

-- Location: LCFF_X24_Y5_N1
\adc_spi_controller|spi_tx_component|tx_buf[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Selector11~1_combout\,
	ena => \adc_spi_controller|spi_tx_component|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf\(15));

-- Location: LCCOMB_X21_Y6_N20
\adc_spi_controller|spi_tx_component|is_read~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|is_read~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\ & ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(15)))) # 
-- (!\adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\ & (\adc_spi_controller|spi_tx_component|is_read~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|curr_state.latch_data~regout\,
	datac => \adc_spi_controller|spi_tx_component|is_read~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(15),
	combout => \adc_spi_controller|spi_tx_component|is_read~0_combout\);

-- Location: LCFF_X21_Y6_N21
\adc_spi_controller|spi_tx_component|is_read\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|is_read~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|is_read~regout\);

-- Location: LCCOMB_X21_Y6_N0
\adc_spi_controller|spi_tx_component|SPI_MOSI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|SPI_MOSI~1_combout\ = ((!\adc_spi_controller|spi_tx_component|bits_sent\(4) & !\adc_spi_controller|spi_tx_component|bits_sent\(3))) # (!\adc_spi_controller|spi_tx_component|is_read~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	datac => \adc_spi_controller|spi_tx_component|is_read~regout\,
	datad => \adc_spi_controller|spi_tx_component|bits_sent\(3),
	combout => \adc_spi_controller|spi_tx_component|SPI_MOSI~1_combout\);

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

-- Location: LCCOMB_X27_Y6_N2
\this_read_adc_manager|last_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|last_state~0_combout\ = (\this_state_manager|curr_state.read_adc~regout\ & \ADC_DCLKA~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|curr_state.read_adc~regout\,
	datac => \ADC_DCLKA~combout\,
	combout => \this_read_adc_manager|last_state~0_combout\);

-- Location: LCFF_X27_Y6_N3
\this_read_adc_manager|last_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|last_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|last_state~regout\);

-- Location: LCCOMB_X27_Y6_N26
\this_read_adc_manager|read_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|read_counter~1_combout\ = (\ADC_DCLKA~combout\ & ((\this_read_adc_manager|last_state~regout\ & ((\this_read_adc_manager|read_counter\(2)))) # (!\this_read_adc_manager|last_state~regout\ & 
-- (\this_read_adc_manager|read_counter~0_combout\)))) # (!\ADC_DCLKA~combout\ & (((\this_read_adc_manager|read_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|read_counter~0_combout\,
	datab => \ADC_DCLKA~combout\,
	datac => \this_read_adc_manager|read_counter\(2),
	datad => \this_read_adc_manager|last_state~regout\,
	combout => \this_read_adc_manager|read_counter~1_combout\);

-- Location: LCCOMB_X25_Y11_N28
\this_write_out_mram_manager|getting_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|getting_data~0_combout\ = \this_write_out_mram_manager|getting_data~regout\ $ (((!\this_write_out_mram_manager|have_data~regout\ & !\this_mram_controller|curr_state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|have_data~regout\,
	datac => \this_write_out_mram_manager|getting_data~regout\,
	datad => \this_mram_controller|curr_state.idle~regout\,
	combout => \this_write_out_mram_manager|getting_data~0_combout\);

-- Location: LCCOMB_X21_Y10_N0
\this_state_manager|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~0_combout\ = \this_state_manager|counter\(0) $ (VCC)
-- \this_state_manager|Add0~1\ = CARRY(\this_state_manager|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(0),
	datad => VCC,
	combout => \this_state_manager|Add0~0_combout\,
	cout => \this_state_manager|Add0~1\);

-- Location: LCCOMB_X21_Y10_N2
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

-- Location: LCCOMB_X20_Y10_N26
\this_state_manager|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector2~0_combout\ = (\this_state_manager|curr_state.read_adc~regout\ & ((\this_state_manager|process_1~2_combout\) # ((!\this_state_manager|Equal0~10_combout\ & \this_state_manager|curr_state.wait_1~regout\)))) # 
-- (!\this_state_manager|curr_state.read_adc~regout\ & (!\this_state_manager|Equal0~10_combout\ & (\this_state_manager|curr_state.wait_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|curr_state.read_adc~regout\,
	datab => \this_state_manager|Equal0~10_combout\,
	datac => \this_state_manager|curr_state.wait_1~regout\,
	datad => \this_state_manager|process_1~2_combout\,
	combout => \this_state_manager|Selector2~0_combout\);

-- Location: LCFF_X20_Y10_N27
\this_state_manager|curr_state.wait_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|curr_state.wait_1~regout\);

-- Location: LCFF_X21_Y10_N3
\this_state_manager|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~2_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(1));

-- Location: LCCOMB_X21_Y10_N4
\this_state_manager|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~4_combout\ = (\this_state_manager|counter\(2) & (\this_state_manager|Add0~3\ $ (GND))) # (!\this_state_manager|counter\(2) & (!\this_state_manager|Add0~3\ & VCC))
-- \this_state_manager|Add0~5\ = CARRY((\this_state_manager|counter\(2) & !\this_state_manager|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(2),
	datad => VCC,
	cin => \this_state_manager|Add0~3\,
	combout => \this_state_manager|Add0~4_combout\,
	cout => \this_state_manager|Add0~5\);

-- Location: LCCOMB_X20_Y10_N28
\this_state_manager|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|counter~2_combout\ = (!\this_state_manager|Equal0~10_combout\ & \this_state_manager|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|Equal0~10_combout\,
	datad => \this_state_manager|Add0~4_combout\,
	combout => \this_state_manager|counter~2_combout\);

-- Location: LCFF_X20_Y10_N29
\this_state_manager|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|counter~2_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(2));

-- Location: LCCOMB_X21_Y10_N6
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

-- Location: LCCOMB_X21_Y10_N8
\this_state_manager|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~8_combout\ = (\this_state_manager|counter\(4) & (\this_state_manager|Add0~7\ $ (GND))) # (!\this_state_manager|counter\(4) & (!\this_state_manager|Add0~7\ & VCC))
-- \this_state_manager|Add0~9\ = CARRY((\this_state_manager|counter\(4) & !\this_state_manager|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(4),
	datad => VCC,
	cin => \this_state_manager|Add0~7\,
	combout => \this_state_manager|Add0~8_combout\,
	cout => \this_state_manager|Add0~9\);

-- Location: LCFF_X21_Y10_N9
\this_state_manager|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~8_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(4));

-- Location: LCCOMB_X21_Y10_N10
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

-- Location: LCCOMB_X20_Y10_N18
\this_state_manager|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|counter~1_combout\ = (\this_state_manager|Add0~10_combout\ & !\this_state_manager|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_state_manager|Add0~10_combout\,
	datad => \this_state_manager|Equal0~10_combout\,
	combout => \this_state_manager|counter~1_combout\);

-- Location: LCFF_X20_Y10_N19
\this_state_manager|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|counter~1_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(5));

-- Location: LCCOMB_X21_Y10_N12
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

-- Location: LCCOMB_X20_Y10_N6
\this_state_manager|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|counter~0_combout\ = (\this_state_manager|Add0~12_combout\ & !\this_state_manager|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_state_manager|Add0~12_combout\,
	datad => \this_state_manager|Equal0~10_combout\,
	combout => \this_state_manager|counter~0_combout\);

-- Location: LCFF_X20_Y10_N7
\this_state_manager|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|counter~0_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(6));

-- Location: LCCOMB_X21_Y10_N14
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

-- Location: LCFF_X21_Y10_N15
\this_state_manager|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~14_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(7));

-- Location: LCCOMB_X21_Y10_N18
\this_state_manager|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~18_combout\ = (\this_state_manager|counter\(9) & (!\this_state_manager|Add0~17\)) # (!\this_state_manager|counter\(9) & ((\this_state_manager|Add0~17\) # (GND)))
-- \this_state_manager|Add0~19\ = CARRY((!\this_state_manager|Add0~17\) # (!\this_state_manager|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(9),
	datad => VCC,
	cin => \this_state_manager|Add0~17\,
	combout => \this_state_manager|Add0~18_combout\,
	cout => \this_state_manager|Add0~19\);

-- Location: LCFF_X21_Y10_N19
\this_state_manager|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~18_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(9));

-- Location: LCCOMB_X21_Y10_N22
\this_state_manager|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~22_combout\ = (\this_state_manager|counter\(11) & (!\this_state_manager|Add0~21\)) # (!\this_state_manager|counter\(11) & ((\this_state_manager|Add0~21\) # (GND)))
-- \this_state_manager|Add0~23\ = CARRY((!\this_state_manager|Add0~21\) # (!\this_state_manager|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(11),
	datad => VCC,
	cin => \this_state_manager|Add0~21\,
	combout => \this_state_manager|Add0~22_combout\,
	cout => \this_state_manager|Add0~23\);

-- Location: LCFF_X21_Y10_N23
\this_state_manager|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~22_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(11));

-- Location: LCCOMB_X21_Y10_N26
\this_state_manager|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~26_combout\ = (\this_state_manager|counter\(13) & (!\this_state_manager|Add0~25\)) # (!\this_state_manager|counter\(13) & ((\this_state_manager|Add0~25\) # (GND)))
-- \this_state_manager|Add0~27\ = CARRY((!\this_state_manager|Add0~25\) # (!\this_state_manager|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(13),
	datad => VCC,
	cin => \this_state_manager|Add0~25\,
	combout => \this_state_manager|Add0~26_combout\,
	cout => \this_state_manager|Add0~27\);

-- Location: LCFF_X21_Y10_N27
\this_state_manager|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~26_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(13));

-- Location: LCCOMB_X21_Y10_N28
\this_state_manager|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~28_combout\ = (\this_state_manager|counter\(14) & (\this_state_manager|Add0~27\ $ (GND))) # (!\this_state_manager|counter\(14) & (!\this_state_manager|Add0~27\ & VCC))
-- \this_state_manager|Add0~29\ = CARRY((\this_state_manager|counter\(14) & !\this_state_manager|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(14),
	datad => VCC,
	cin => \this_state_manager|Add0~27\,
	combout => \this_state_manager|Add0~28_combout\,
	cout => \this_state_manager|Add0~29\);

-- Location: LCFF_X21_Y10_N29
\this_state_manager|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~28_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(14));

-- Location: LCCOMB_X21_Y10_N30
\this_state_manager|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~30_combout\ = (\this_state_manager|counter\(15) & (!\this_state_manager|Add0~29\)) # (!\this_state_manager|counter\(15) & ((\this_state_manager|Add0~29\) # (GND)))
-- \this_state_manager|Add0~31\ = CARRY((!\this_state_manager|Add0~29\) # (!\this_state_manager|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(15),
	datad => VCC,
	cin => \this_state_manager|Add0~29\,
	combout => \this_state_manager|Add0~30_combout\,
	cout => \this_state_manager|Add0~31\);

-- Location: LCFF_X21_Y10_N31
\this_state_manager|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~30_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(15));

-- Location: LCCOMB_X21_Y9_N0
\this_state_manager|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~32_combout\ = (\this_state_manager|counter\(16) & (\this_state_manager|Add0~31\ $ (GND))) # (!\this_state_manager|counter\(16) & (!\this_state_manager|Add0~31\ & VCC))
-- \this_state_manager|Add0~33\ = CARRY((\this_state_manager|counter\(16) & !\this_state_manager|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(16),
	datad => VCC,
	cin => \this_state_manager|Add0~31\,
	combout => \this_state_manager|Add0~32_combout\,
	cout => \this_state_manager|Add0~33\);

-- Location: LCFF_X21_Y9_N1
\this_state_manager|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~32_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(16));

-- Location: LCCOMB_X21_Y9_N2
\this_state_manager|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~34_combout\ = (\this_state_manager|counter\(17) & (!\this_state_manager|Add0~33\)) # (!\this_state_manager|counter\(17) & ((\this_state_manager|Add0~33\) # (GND)))
-- \this_state_manager|Add0~35\ = CARRY((!\this_state_manager|Add0~33\) # (!\this_state_manager|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(17),
	datad => VCC,
	cin => \this_state_manager|Add0~33\,
	combout => \this_state_manager|Add0~34_combout\,
	cout => \this_state_manager|Add0~35\);

-- Location: LCFF_X21_Y9_N3
\this_state_manager|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~34_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(17));

-- Location: LCCOMB_X21_Y9_N4
\this_state_manager|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~36_combout\ = (\this_state_manager|counter\(18) & (\this_state_manager|Add0~35\ $ (GND))) # (!\this_state_manager|counter\(18) & (!\this_state_manager|Add0~35\ & VCC))
-- \this_state_manager|Add0~37\ = CARRY((\this_state_manager|counter\(18) & !\this_state_manager|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(18),
	datad => VCC,
	cin => \this_state_manager|Add0~35\,
	combout => \this_state_manager|Add0~36_combout\,
	cout => \this_state_manager|Add0~37\);

-- Location: LCFF_X21_Y9_N5
\this_state_manager|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~36_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(18));

-- Location: LCCOMB_X21_Y9_N6
\this_state_manager|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~38_combout\ = (\this_state_manager|counter\(19) & (!\this_state_manager|Add0~37\)) # (!\this_state_manager|counter\(19) & ((\this_state_manager|Add0~37\) # (GND)))
-- \this_state_manager|Add0~39\ = CARRY((!\this_state_manager|Add0~37\) # (!\this_state_manager|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(19),
	datad => VCC,
	cin => \this_state_manager|Add0~37\,
	combout => \this_state_manager|Add0~38_combout\,
	cout => \this_state_manager|Add0~39\);

-- Location: LCCOMB_X21_Y9_N8
\this_state_manager|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~40_combout\ = (\this_state_manager|counter\(20) & (\this_state_manager|Add0~39\ $ (GND))) # (!\this_state_manager|counter\(20) & (!\this_state_manager|Add0~39\ & VCC))
-- \this_state_manager|Add0~41\ = CARRY((\this_state_manager|counter\(20) & !\this_state_manager|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(20),
	datad => VCC,
	cin => \this_state_manager|Add0~39\,
	combout => \this_state_manager|Add0~40_combout\,
	cout => \this_state_manager|Add0~41\);

-- Location: LCFF_X21_Y9_N9
\this_state_manager|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~40_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(20));

-- Location: LCCOMB_X21_Y9_N14
\this_state_manager|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~46_combout\ = (\this_state_manager|counter\(23) & (!\this_state_manager|Add0~45\)) # (!\this_state_manager|counter\(23) & ((\this_state_manager|Add0~45\) # (GND)))
-- \this_state_manager|Add0~47\ = CARRY((!\this_state_manager|Add0~45\) # (!\this_state_manager|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(23),
	datad => VCC,
	cin => \this_state_manager|Add0~45\,
	combout => \this_state_manager|Add0~46_combout\,
	cout => \this_state_manager|Add0~47\);

-- Location: LCFF_X21_Y9_N15
\this_state_manager|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~46_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(23));

-- Location: LCCOMB_X21_Y9_N18
\this_state_manager|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~50_combout\ = (\this_state_manager|counter\(25) & (!\this_state_manager|Add0~49\)) # (!\this_state_manager|counter\(25) & ((\this_state_manager|Add0~49\) # (GND)))
-- \this_state_manager|Add0~51\ = CARRY((!\this_state_manager|Add0~49\) # (!\this_state_manager|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(25),
	datad => VCC,
	cin => \this_state_manager|Add0~49\,
	combout => \this_state_manager|Add0~50_combout\,
	cout => \this_state_manager|Add0~51\);

-- Location: LCFF_X21_Y9_N19
\this_state_manager|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~50_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(25));

-- Location: LCCOMB_X21_Y9_N22
\this_state_manager|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~54_combout\ = (\this_state_manager|counter\(27) & (!\this_state_manager|Add0~53\)) # (!\this_state_manager|counter\(27) & ((\this_state_manager|Add0~53\) # (GND)))
-- \this_state_manager|Add0~55\ = CARRY((!\this_state_manager|Add0~53\) # (!\this_state_manager|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(27),
	datad => VCC,
	cin => \this_state_manager|Add0~53\,
	combout => \this_state_manager|Add0~54_combout\,
	cout => \this_state_manager|Add0~55\);

-- Location: LCFF_X21_Y9_N23
\this_state_manager|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~54_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(27));

-- Location: LCCOMB_X21_Y9_N24
\this_state_manager|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~56_combout\ = (\this_state_manager|counter\(28) & (\this_state_manager|Add0~55\ $ (GND))) # (!\this_state_manager|counter\(28) & (!\this_state_manager|Add0~55\ & VCC))
-- \this_state_manager|Add0~57\ = CARRY((\this_state_manager|counter\(28) & !\this_state_manager|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(28),
	datad => VCC,
	cin => \this_state_manager|Add0~55\,
	combout => \this_state_manager|Add0~56_combout\,
	cout => \this_state_manager|Add0~57\);

-- Location: LCFF_X21_Y9_N25
\this_state_manager|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~56_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(28));

-- Location: LCCOMB_X21_Y9_N26
\this_state_manager|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~58_combout\ = (\this_state_manager|counter\(29) & (!\this_state_manager|Add0~57\)) # (!\this_state_manager|counter\(29) & ((\this_state_manager|Add0~57\) # (GND)))
-- \this_state_manager|Add0~59\ = CARRY((!\this_state_manager|Add0~57\) # (!\this_state_manager|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(29),
	datad => VCC,
	cin => \this_state_manager|Add0~57\,
	combout => \this_state_manager|Add0~58_combout\,
	cout => \this_state_manager|Add0~59\);

-- Location: LCFF_X21_Y9_N27
\this_state_manager|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~58_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(29));

-- Location: LCCOMB_X21_Y9_N28
\this_state_manager|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~60_combout\ = (\this_state_manager|counter\(30) & (\this_state_manager|Add0~59\ $ (GND))) # (!\this_state_manager|counter\(30) & (!\this_state_manager|Add0~59\ & VCC))
-- \this_state_manager|Add0~61\ = CARRY((\this_state_manager|counter\(30) & !\this_state_manager|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|counter\(30),
	datad => VCC,
	cin => \this_state_manager|Add0~59\,
	combout => \this_state_manager|Add0~60_combout\,
	cout => \this_state_manager|Add0~61\);

-- Location: LCFF_X21_Y9_N29
\this_state_manager|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~60_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(30));

-- Location: LCCOMB_X21_Y9_N30
\this_state_manager|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Add0~62_combout\ = \this_state_manager|Add0~61\ $ (\this_state_manager|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \this_state_manager|counter\(31),
	cin => \this_state_manager|Add0~61\,
	combout => \this_state_manager|Add0~62_combout\);

-- Location: LCFF_X21_Y9_N31
\this_state_manager|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~62_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(31));

-- Location: LCCOMB_X20_Y9_N2
\this_state_manager|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal0~9_combout\ = (!\this_state_manager|counter\(30) & (!\this_state_manager|counter\(28) & (!\this_state_manager|counter\(29) & !\this_state_manager|counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(30),
	datab => \this_state_manager|counter\(28),
	datac => \this_state_manager|counter\(29),
	datad => \this_state_manager|counter\(31),
	combout => \this_state_manager|Equal0~9_combout\);

-- Location: LCCOMB_X20_Y10_N4
\this_state_manager|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal0~1_combout\ = (\this_state_manager|counter\(6) & (!\this_state_manager|counter\(7) & (!\this_state_manager|counter\(4) & \this_state_manager|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(6),
	datab => \this_state_manager|counter\(7),
	datac => \this_state_manager|counter\(4),
	datad => \this_state_manager|counter\(5),
	combout => \this_state_manager|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y10_N8
\this_state_manager|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal0~3_combout\ = (!\this_state_manager|counter\(12) & (!\this_state_manager|counter\(15) & (!\this_state_manager|counter\(13) & !\this_state_manager|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(12),
	datab => \this_state_manager|counter\(15),
	datac => \this_state_manager|counter\(13),
	datad => \this_state_manager|counter\(14),
	combout => \this_state_manager|Equal0~3_combout\);

-- Location: LCCOMB_X20_Y10_N30
\this_state_manager|counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|counter~3_combout\ = (\this_state_manager|Add0~0_combout\ & !\this_state_manager|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_state_manager|Add0~0_combout\,
	datad => \this_state_manager|Equal0~10_combout\,
	combout => \this_state_manager|counter~3_combout\);

-- Location: LCFF_X20_Y10_N31
\this_state_manager|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|counter~3_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(0));

-- Location: LCFF_X21_Y10_N7
\this_state_manager|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~6_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(3));

-- Location: LCCOMB_X20_Y10_N2
\this_state_manager|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal0~2_combout\ = (!\this_state_manager|counter\(1) & (\this_state_manager|counter\(2) & (!\this_state_manager|counter\(0) & !\this_state_manager|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(1),
	datab => \this_state_manager|counter\(2),
	datac => \this_state_manager|counter\(0),
	datad => \this_state_manager|counter\(3),
	combout => \this_state_manager|Equal0~2_combout\);

-- Location: LCCOMB_X20_Y10_N16
\this_state_manager|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal0~4_combout\ = (\this_state_manager|Equal0~0_combout\ & (\this_state_manager|Equal0~1_combout\ & (\this_state_manager|Equal0~3_combout\ & \this_state_manager|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|Equal0~0_combout\,
	datab => \this_state_manager|Equal0~1_combout\,
	datac => \this_state_manager|Equal0~3_combout\,
	datad => \this_state_manager|Equal0~2_combout\,
	combout => \this_state_manager|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y9_N18
\this_state_manager|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal0~6_combout\ = (!\this_state_manager|counter\(21) & !\this_state_manager|counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(21),
	datad => \this_state_manager|counter\(20),
	combout => \this_state_manager|Equal0~6_combout\);

-- Location: LCFF_X21_Y9_N7
\this_state_manager|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Add0~38_combout\,
	ena => \this_state_manager|curr_state.wait_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|counter\(19));

-- Location: LCCOMB_X22_Y9_N8
\this_state_manager|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal0~5_combout\ = (!\this_state_manager|counter\(16) & (!\this_state_manager|counter\(19) & (!\this_state_manager|counter\(18) & !\this_state_manager|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(16),
	datab => \this_state_manager|counter\(19),
	datac => \this_state_manager|counter\(18),
	datad => \this_state_manager|counter\(17),
	combout => \this_state_manager|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y9_N10
\this_state_manager|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal0~7_combout\ = (!\this_state_manager|counter\(22) & (\this_state_manager|Equal0~6_combout\ & (\this_state_manager|Equal0~5_combout\ & !\this_state_manager|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|counter\(22),
	datab => \this_state_manager|Equal0~6_combout\,
	datac => \this_state_manager|Equal0~5_combout\,
	datad => \this_state_manager|counter\(23),
	combout => \this_state_manager|Equal0~7_combout\);

-- Location: LCCOMB_X20_Y9_N0
\this_state_manager|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Equal0~10_combout\ = (\this_state_manager|Equal0~8_combout\ & (\this_state_manager|Equal0~9_combout\ & (\this_state_manager|Equal0~4_combout\ & \this_state_manager|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|Equal0~8_combout\,
	datab => \this_state_manager|Equal0~9_combout\,
	datac => \this_state_manager|Equal0~4_combout\,
	datad => \this_state_manager|Equal0~7_combout\,
	combout => \this_state_manager|Equal0~10_combout\);

-- Location: LCCOMB_X20_Y10_N0
\this_state_manager|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector3~0_combout\ = (\this_state_manager|Selector1~1_combout\ & (\this_state_manager|Equal0~10_combout\ & ((\this_state_manager|curr_state.wait_1~regout\)))) # (!\this_state_manager|Selector1~1_combout\ & 
-- ((\this_state_manager|curr_state.write_out_mram~regout\) # ((\this_state_manager|Equal0~10_combout\ & \this_state_manager|curr_state.wait_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|Selector1~1_combout\,
	datab => \this_state_manager|Equal0~10_combout\,
	datac => \this_state_manager|curr_state.write_out_mram~regout\,
	datad => \this_state_manager|curr_state.wait_1~regout\,
	combout => \this_state_manager|Selector3~0_combout\);

-- Location: LCFF_X20_Y10_N1
\this_state_manager|curr_state.write_out_mram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|curr_state.write_out_mram~regout\);

-- Location: LCFF_X25_Y11_N29
\this_write_out_mram_manager|getting_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|getting_data~0_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|getting_data~regout\);

-- Location: LCCOMB_X25_Y11_N22
\this_write_out_mram_manager|msb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|msb~0_combout\ = (!\this_write_out_mram_manager|have_data~regout\ & (!\this_mram_controller|curr_state.idle~regout\ & !\this_write_out_mram_manager|getting_data~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|have_data~regout\,
	datac => \this_mram_controller|curr_state.idle~regout\,
	datad => \this_write_out_mram_manager|getting_data~regout\,
	combout => \this_write_out_mram_manager|msb~0_combout\);

-- Location: LCCOMB_X25_Y11_N2
\this_write_out_mram_manager|MRAM_READ_DATA~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|MRAM_READ_DATA~feeder_combout\ = \this_write_out_mram_manager|msb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_write_out_mram_manager|msb~0_combout\,
	combout => \this_write_out_mram_manager|MRAM_READ_DATA~feeder_combout\);

-- Location: LCFF_X25_Y11_N3
\this_write_out_mram_manager|MRAM_READ_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|MRAM_READ_DATA~feeder_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|MRAM_READ_DATA~regout\);

-- Location: LCCOMB_X25_Y12_N30
\this_mram_controller|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Add0~1_combout\ = \this_mram_controller|counter\(0) $ (\this_mram_controller|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(0),
	datac => \this_mram_controller|counter\(1),
	combout => \this_mram_controller|Add0~1_combout\);

-- Location: LCFF_X25_Y12_N31
\this_mram_controller|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Add0~1_combout\,
	sclr => \this_mram_controller|ALT_INV_curr_state.idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|counter\(1));

-- Location: LCCOMB_X25_Y12_N14
\this_mram_controller|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Add0~0_combout\ = \this_mram_controller|counter\(2) $ (((\this_mram_controller|counter\(0) & \this_mram_controller|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(0),
	datac => \this_mram_controller|counter\(2),
	datad => \this_mram_controller|counter\(1),
	combout => \this_mram_controller|Add0~0_combout\);

-- Location: LCFF_X25_Y12_N15
\this_mram_controller|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Add0~0_combout\,
	sclr => \this_mram_controller|ALT_INV_curr_state.idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|counter\(2));

-- Location: LCCOMB_X25_Y12_N18
\this_mram_controller|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Add0~2_combout\ = \this_mram_controller|counter\(3) $ (((\this_mram_controller|counter\(0) & (\this_mram_controller|counter\(2) & \this_mram_controller|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(0),
	datab => \this_mram_controller|counter\(2),
	datac => \this_mram_controller|counter\(3),
	datad => \this_mram_controller|counter\(1),
	combout => \this_mram_controller|Add0~2_combout\);

-- Location: LCFF_X25_Y12_N19
\this_mram_controller|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Add0~2_combout\,
	sclr => \this_mram_controller|ALT_INV_curr_state.idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|counter\(3));

-- Location: LCCOMB_X26_Y12_N30
\this_mram_controller|Mux60~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux60~0_combout\ = (!\this_mram_controller|counter\(3) & (\this_mram_controller|counter\(1) & \this_mram_controller|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|counter\(3),
	datac => \this_mram_controller|counter\(1),
	datad => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|Mux60~0_combout\);

-- Location: LCCOMB_X25_Y11_N16
\this_mram_controller|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|counter~0_combout\ = (\this_mram_controller|curr_state.idle~regout\ & !\this_mram_controller|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.idle~regout\,
	datac => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|counter~0_combout\);

-- Location: LCFF_X25_Y11_N17
\this_mram_controller|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|counter\(0));

-- Location: LCCOMB_X26_Y12_N26
\this_mram_controller|curr_state~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~7_combout\ = (\this_mram_controller|curr_state.writing~regout\ & ((\this_mram_controller|counter\(0)) # (!\this_mram_controller|Mux60~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(0),
	datac => \this_mram_controller|curr_state.writing~regout\,
	datad => \this_mram_controller|Mux60~0_combout\,
	combout => \this_mram_controller|curr_state~7_combout\);

-- Location: LCCOMB_X26_Y10_N10
\Corr_Main_1|read_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|read_counter~0_combout\ = (\Corr_Main_1|read_counter\(1) & ((\Corr_Main_1|read_counter\(2) & (!\Corr_Main_1|read_counter\(3) & \Corr_Main_1|read_counter\(0))) # (!\Corr_Main_1|read_counter\(2) & (\Corr_Main_1|read_counter\(3))))) # 
-- (!\Corr_Main_1|read_counter\(1) & (((\Corr_Main_1|read_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|read_counter\(1),
	datab => \Corr_Main_1|read_counter\(2),
	datac => \Corr_Main_1|read_counter\(3),
	datad => \Corr_Main_1|read_counter\(0),
	combout => \Corr_Main_1|read_counter~0_combout\);

-- Location: LCCOMB_X26_Y10_N16
\Corr_Main_1|read_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|read_counter~1_combout\ = ((!\this_mram_controller|curr_state.idle~regout\) # (!\this_state_manager|curr_state.read_adc~regout\)) # (!\Corr_Main_1|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Equal4~0_combout\,
	datac => \this_state_manager|curr_state.read_adc~regout\,
	datad => \this_mram_controller|curr_state.idle~regout\,
	combout => \Corr_Main_1|read_counter~1_combout\);

-- Location: LCFF_X26_Y10_N11
\Corr_Main_1|read_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|read_counter~0_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|read_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|read_counter\(3));

-- Location: LCCOMB_X26_Y10_N2
\Corr_Main_1|read_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|read_counter~2_combout\ = (\Corr_Main_1|read_counter\(1) & ((\Corr_Main_1|read_counter\(0) & (!\Corr_Main_1|read_counter\(2))) # (!\Corr_Main_1|read_counter\(0) & (\Corr_Main_1|read_counter\(2) & !\Corr_Main_1|read_counter\(3))))) # 
-- (!\Corr_Main_1|read_counter\(1) & (((\Corr_Main_1|read_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|read_counter\(1),
	datab => \Corr_Main_1|read_counter\(0),
	datac => \Corr_Main_1|read_counter\(2),
	datad => \Corr_Main_1|read_counter\(3),
	combout => \Corr_Main_1|read_counter~2_combout\);

-- Location: LCFF_X26_Y10_N3
\Corr_Main_1|read_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|read_counter~2_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|read_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|read_counter\(2));

-- Location: LCCOMB_X26_Y10_N22
\Corr_Main_1|read_counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|read_counter~4_combout\ = (!\Corr_Main_1|read_counter\(0) & (((!\Corr_Main_1|read_counter\(3)) # (!\Corr_Main_1|read_counter\(2))) # (!\Corr_Main_1|read_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|read_counter\(1),
	datab => \Corr_Main_1|read_counter\(2),
	datac => \Corr_Main_1|read_counter\(0),
	datad => \Corr_Main_1|read_counter\(3),
	combout => \Corr_Main_1|read_counter~4_combout\);

-- Location: LCFF_X26_Y10_N23
\Corr_Main_1|read_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|read_counter~4_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|read_counter\(0));

-- Location: LCCOMB_X26_Y10_N6
\Corr_Main_1|read_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|read_counter~3_combout\ = (\Corr_Main_1|read_counter\(1) & (!\Corr_Main_1|read_counter\(0) & ((!\Corr_Main_1|read_counter\(2)) # (!\Corr_Main_1|read_counter\(3))))) # (!\Corr_Main_1|read_counter\(1) & (((\Corr_Main_1|read_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|read_counter\(3),
	datab => \Corr_Main_1|read_counter\(2),
	datac => \Corr_Main_1|read_counter\(1),
	datad => \Corr_Main_1|read_counter\(0),
	combout => \Corr_Main_1|read_counter~3_combout\);

-- Location: LCFF_X26_Y10_N7
\Corr_Main_1|read_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|read_counter~3_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|read_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|read_counter\(1));

-- Location: LCCOMB_X26_Y10_N26
\Corr_Main_1|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Equal4~0_combout\ = (\Corr_Main_1|read_counter\(3) & (!\Corr_Main_1|read_counter\(0) & (\Corr_Main_1|read_counter\(1) & \Corr_Main_1|read_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|read_counter\(3),
	datab => \Corr_Main_1|read_counter\(0),
	datac => \Corr_Main_1|read_counter\(1),
	datad => \Corr_Main_1|read_counter\(2),
	combout => \Corr_Main_1|Equal4~0_combout\);

-- Location: LCCOMB_X26_Y10_N12
\Corr_Main_1|address_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter~2_combout\ = (\Corr_Main_1|Equal4~0_combout\ & !\this_mram_controller|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Equal4~0_combout\,
	datad => \this_mram_controller|curr_state.idle~regout\,
	combout => \Corr_Main_1|address_counter~2_combout\);

-- Location: LCFF_X26_Y10_N13
\Corr_Main_1|MRAM_WRITE_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter~2_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|MRAM_WRITE_DATA~regout\);

-- Location: LCFF_X26_Y12_N27
\this_mram_controller|curr_state.writing\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|curr_state~7_combout\,
	sdata => \Corr_Main_1|MRAM_WRITE_DATA~regout\,
	sload => \this_mram_controller|ALT_INV_curr_state.idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|curr_state.writing~regout\);

-- Location: LCCOMB_X26_Y12_N22
\this_mram_controller|curr_state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~8_combout\ = ((\this_mram_controller|counter\(0) & (!\this_mram_controller|curr_state.reading~regout\)) # (!\this_mram_controller|counter\(0) & ((!\this_mram_controller|curr_state.writing~regout\)))) # 
-- (!\this_mram_controller|Mux60~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_mram_controller|Mux60~0_combout\,
	datac => \this_mram_controller|counter\(0),
	datad => \this_mram_controller|curr_state.writing~regout\,
	combout => \this_mram_controller|curr_state~8_combout\);

-- Location: LCCOMB_X26_Y12_N12
\this_mram_controller|curr_state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~9_combout\ = (\this_mram_controller|curr_state.idle~regout\ & (((\this_mram_controller|curr_state~8_combout\)))) # (!\this_mram_controller|curr_state.idle~regout\ & ((\Corr_Main_1|MRAM_WRITE_DATA~regout\) # 
-- ((\this_write_out_mram_manager|MRAM_READ_DATA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|MRAM_WRITE_DATA~regout\,
	datab => \this_write_out_mram_manager|MRAM_READ_DATA~regout\,
	datac => \this_mram_controller|curr_state.idle~regout\,
	datad => \this_mram_controller|curr_state~8_combout\,
	combout => \this_mram_controller|curr_state~9_combout\);

-- Location: LCFF_X26_Y12_N13
\this_mram_controller|curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|curr_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|curr_state.idle~regout\);

-- Location: LCCOMB_X27_Y6_N10
\this_read_adc_manager|address_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter~0_combout\ = \this_read_adc_manager|address_counter\(0) $ (((!\this_read_adc_manager|process_0~0_combout\ & (\this_read_adc_manager|Equal1~0_combout\ & !\this_mram_controller|curr_state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|process_0~0_combout\,
	datab => \this_read_adc_manager|Equal1~0_combout\,
	datac => \this_read_adc_manager|address_counter\(0),
	datad => \this_mram_controller|curr_state.idle~regout\,
	combout => \this_read_adc_manager|address_counter~0_combout\);

-- Location: LCFF_X27_Y6_N11
\this_read_adc_manager|address_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|address_counter~0_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(0));

-- Location: LCCOMB_X27_Y6_N22
\this_read_adc_manager|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|Add0~0_combout\ = \this_read_adc_manager|address_counter\(1) $ (\this_read_adc_manager|address_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_read_adc_manager|address_counter\(1),
	datad => \this_read_adc_manager|address_counter\(0),
	combout => \this_read_adc_manager|Add0~0_combout\);

-- Location: LCCOMB_X27_Y6_N4
\this_read_adc_manager|address_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter~2_combout\ = ((\this_read_adc_manager|address_counter~1_combout\ & (\this_read_adc_manager|Equal1~0_combout\ & \ADC_DCLKA~combout\))) # (!\this_state_manager|curr_state.read_adc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter~1_combout\,
	datab => \this_read_adc_manager|Equal1~0_combout\,
	datac => \ADC_DCLKA~combout\,
	datad => \this_state_manager|curr_state.read_adc~regout\,
	combout => \this_read_adc_manager|address_counter~2_combout\);

-- Location: LCFF_X27_Y6_N23
\this_read_adc_manager|address_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|Add0~0_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(1));

-- Location: LCCOMB_X27_Y6_N28
\this_read_adc_manager|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|Add0~1_combout\ = \this_read_adc_manager|address_counter\(3) $ (((\this_read_adc_manager|address_counter\(2) & (\this_read_adc_manager|address_counter\(1) & \this_read_adc_manager|address_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(2),
	datab => \this_read_adc_manager|address_counter\(1),
	datac => \this_read_adc_manager|address_counter\(3),
	datad => \this_read_adc_manager|address_counter\(0),
	combout => \this_read_adc_manager|Add0~1_combout\);

-- Location: LCFF_X27_Y6_N29
\this_read_adc_manager|address_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|Add0~1_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(3));

-- Location: LCCOMB_X27_Y6_N24
\this_read_adc_manager|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|Add0~2_combout\ = \this_read_adc_manager|address_counter\(2) $ (((\this_read_adc_manager|address_counter\(0) & \this_read_adc_manager|address_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(0),
	datac => \this_read_adc_manager|address_counter\(2),
	datad => \this_read_adc_manager|address_counter\(1),
	combout => \this_read_adc_manager|Add0~2_combout\);

-- Location: LCFF_X27_Y6_N25
\this_read_adc_manager|address_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|Add0~2_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(2));

-- Location: LCCOMB_X26_Y10_N0
\Corr_Main_1|address_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter~0_combout\ = \Corr_Main_1|address_counter\(0) $ (((\Corr_Main_1|Equal4~0_combout\ & !\this_mram_controller|curr_state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Equal4~0_combout\,
	datac => \Corr_Main_1|address_counter\(0),
	datad => \this_mram_controller|curr_state.idle~regout\,
	combout => \Corr_Main_1|address_counter~0_combout\);

-- Location: LCFF_X26_Y10_N1
\Corr_Main_1|address_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|address_counter~0_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(0));

-- Location: LCCOMB_X27_Y10_N12
\Corr_Main_1|Add20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add20~0_combout\ = \Corr_Main_1|address_counter\(0) $ (\Corr_Main_1|address_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(0),
	datac => \Corr_Main_1|address_counter\(1),
	combout => \Corr_Main_1|Add20~0_combout\);

-- Location: LCCOMB_X26_Y10_N8
\Corr_Main_1|address_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|address_counter~1_combout\ = ((\Corr_Main_1|Equal4~0_combout\ & !\this_mram_controller|curr_state.idle~regout\)) # (!\this_state_manager|curr_state.read_adc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Equal4~0_combout\,
	datac => \this_state_manager|curr_state.read_adc~regout\,
	datad => \this_mram_controller|curr_state.idle~regout\,
	combout => \Corr_Main_1|address_counter~1_combout\);

-- Location: LCFF_X27_Y10_N13
\Corr_Main_1|address_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|Add20~0_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(1));

-- Location: LCCOMB_X27_Y10_N0
\Corr_Main_1|Add20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add20~1_combout\ = \Corr_Main_1|address_counter\(2) $ (((\Corr_Main_1|address_counter\(0) & \Corr_Main_1|address_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(0),
	datac => \Corr_Main_1|address_counter\(2),
	datad => \Corr_Main_1|address_counter\(1),
	combout => \Corr_Main_1|Add20~1_combout\);

-- Location: LCFF_X27_Y10_N1
\Corr_Main_1|address_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|Add20~1_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(2));

-- Location: LCCOMB_X27_Y10_N2
\this_state_manager|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|process_1~0_combout\ = (\Corr_Main_1|address_counter\(1) & (!\this_read_adc_manager|address_counter\(0) & (!\Corr_Main_1|address_counter\(0) & !\Corr_Main_1|address_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(1),
	datab => \this_read_adc_manager|address_counter\(0),
	datac => \Corr_Main_1|address_counter\(0),
	datad => \Corr_Main_1|address_counter\(2),
	combout => \this_state_manager|process_1~0_combout\);

-- Location: LCCOMB_X27_Y10_N16
\this_state_manager|process_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|process_1~2_combout\ = (\this_state_manager|process_1~1_combout\ & (\this_read_adc_manager|address_counter\(3) & (!\this_read_adc_manager|address_counter\(2) & \this_state_manager|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|process_1~1_combout\,
	datab => \this_read_adc_manager|address_counter\(3),
	datac => \this_read_adc_manager|address_counter\(2),
	datad => \this_state_manager|process_1~0_combout\,
	combout => \this_state_manager|process_1~2_combout\);

-- Location: LCCOMB_X20_Y10_N22
\this_state_manager|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector1~0_combout\ = (\this_state_manager|curr_state.setup~regout\ & (((\this_state_manager|curr_state.read_adc~regout\ & !\this_state_manager|process_1~2_combout\)))) # (!\this_state_manager|curr_state.setup~regout\ & 
-- ((\this_setup_manager|SETUP_DONE~regout\) # ((\this_state_manager|curr_state.read_adc~regout\ & !\this_state_manager|process_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|curr_state.setup~regout\,
	datab => \this_setup_manager|SETUP_DONE~regout\,
	datac => \this_state_manager|curr_state.read_adc~regout\,
	datad => \this_state_manager|process_1~2_combout\,
	combout => \this_state_manager|Selector1~0_combout\);

-- Location: LCCOMB_X26_Y11_N14
\this_write_out_mram_manager|address_counter[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[0]~4_combout\ = (\this_write_out_mram_manager|msb~regout\ & (\this_write_out_mram_manager|address_counter\(0) $ (VCC))) # (!\this_write_out_mram_manager|msb~regout\ & 
-- (\this_write_out_mram_manager|address_counter\(0) & VCC))
-- \this_write_out_mram_manager|address_counter[0]~5\ = CARRY((\this_write_out_mram_manager|msb~regout\ & \this_write_out_mram_manager|address_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|msb~regout\,
	datab => \this_write_out_mram_manager|address_counter\(0),
	datad => VCC,
	combout => \this_write_out_mram_manager|address_counter[0]~4_combout\,
	cout => \this_write_out_mram_manager|address_counter[0]~5\);

-- Location: LCCOMB_X25_Y11_N14
\this_write_out_mram_manager|address_counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter~6_combout\ = ((!\this_write_out_mram_manager|have_data~regout\ & (!\this_mram_controller|curr_state.idle~regout\ & !\this_write_out_mram_manager|getting_data~regout\))) # 
-- (!\this_state_manager|curr_state.write_out_mram~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|have_data~regout\,
	datab => \this_state_manager|curr_state.write_out_mram~regout\,
	datac => \this_mram_controller|curr_state.idle~regout\,
	datad => \this_write_out_mram_manager|getting_data~regout\,
	combout => \this_write_out_mram_manager|address_counter~6_combout\);

-- Location: LCFF_X26_Y11_N15
\this_write_out_mram_manager|address_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[0]~4_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(0));

-- Location: LCCOMB_X26_Y11_N16
\this_write_out_mram_manager|address_counter[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[1]~7_combout\ = (\this_write_out_mram_manager|address_counter\(1) & (!\this_write_out_mram_manager|address_counter[0]~5\)) # (!\this_write_out_mram_manager|address_counter\(1) & 
-- ((\this_write_out_mram_manager|address_counter[0]~5\) # (GND)))
-- \this_write_out_mram_manager|address_counter[1]~8\ = CARRY((!\this_write_out_mram_manager|address_counter[0]~5\) # (!\this_write_out_mram_manager|address_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(1),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[0]~5\,
	combout => \this_write_out_mram_manager|address_counter[1]~7_combout\,
	cout => \this_write_out_mram_manager|address_counter[1]~8\);

-- Location: LCFF_X26_Y11_N17
\this_write_out_mram_manager|address_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[1]~7_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(1));

-- Location: LCCOMB_X26_Y11_N18
\this_write_out_mram_manager|address_counter[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[2]~9_combout\ = (\this_write_out_mram_manager|address_counter\(2) & (\this_write_out_mram_manager|address_counter[1]~8\ $ (GND))) # (!\this_write_out_mram_manager|address_counter\(2) & 
-- (!\this_write_out_mram_manager|address_counter[1]~8\ & VCC))
-- \this_write_out_mram_manager|address_counter[2]~10\ = CARRY((\this_write_out_mram_manager|address_counter\(2) & !\this_write_out_mram_manager|address_counter[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(2),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[1]~8\,
	combout => \this_write_out_mram_manager|address_counter[2]~9_combout\,
	cout => \this_write_out_mram_manager|address_counter[2]~10\);

-- Location: LCFF_X26_Y11_N19
\this_write_out_mram_manager|address_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[2]~9_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(2));

-- Location: LCCOMB_X26_Y11_N4
\this_state_manager|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector1~1_combout\ = (\this_write_out_mram_manager|address_counter\(3) & (\this_write_out_mram_manager|address_counter\(0) & (!\this_write_out_mram_manager|address_counter\(1) & !\this_write_out_mram_manager|address_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(3),
	datab => \this_write_out_mram_manager|address_counter\(0),
	datac => \this_write_out_mram_manager|address_counter\(1),
	datad => \this_write_out_mram_manager|address_counter\(2),
	combout => \this_state_manager|Selector1~1_combout\);

-- Location: LCCOMB_X20_Y10_N20
\this_state_manager|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector1~2_combout\ = (\this_state_manager|Selector1~0_combout\) # ((\this_state_manager|Selector1~1_combout\ & \this_state_manager|curr_state.write_out_mram~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|Selector1~0_combout\,
	datac => \this_state_manager|Selector1~1_combout\,
	datad => \this_state_manager|curr_state.write_out_mram~regout\,
	combout => \this_state_manager|Selector1~2_combout\);

-- Location: LCFF_X20_Y10_N21
\this_state_manager|curr_state.read_adc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_state_manager|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|curr_state.read_adc~regout\);

-- Location: LCFF_X27_Y6_N27
\this_read_adc_manager|read_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|read_counter~1_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|read_counter\(2));

-- Location: LCCOMB_X27_Y6_N8
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

-- Location: LCFF_X27_Y6_N9
\this_read_adc_manager|read_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|read_counter~2_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|read_counter\(0));

-- Location: LCCOMB_X27_Y6_N18
\this_read_adc_manager|read_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|read_counter~3_combout\ = \this_read_adc_manager|read_counter\(1) $ (((\ADC_DCLKA~combout\ & (\this_read_adc_manager|read_counter\(0) & !\this_read_adc_manager|last_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DCLKA~combout\,
	datab => \this_read_adc_manager|read_counter\(0),
	datac => \this_read_adc_manager|read_counter\(1),
	datad => \this_read_adc_manager|last_state~regout\,
	combout => \this_read_adc_manager|read_counter~3_combout\);

-- Location: LCFF_X27_Y6_N19
\this_read_adc_manager|read_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|read_counter~3_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|read_counter\(1));

-- Location: LCCOMB_X27_Y6_N0
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

-- Location: LCCOMB_X27_Y6_N6
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

-- Location: LCFF_X27_Y6_N7
\this_read_adc_manager|ADC_BIT_VALID\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|ADC_BIT_VALID~0_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|ADC_BIT_VALID~regout\);

-- Location: LCCOMB_X27_Y6_N30
\Corr_Main_1|corr_buffer_update~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|corr_buffer_update~feeder_combout\ = \this_read_adc_manager|ADC_BIT_VALID~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|ADC_BIT_VALID~regout\,
	combout => \Corr_Main_1|corr_buffer_update~feeder_combout\);

-- Location: LCFF_X27_Y6_N31
\Corr_Main_1|corr_buffer_update\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|corr_buffer_update~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|corr_buffer_update~regout\);

-- Location: CLKCTRL_G6
\Corr_Main_1|corr_buffer_update~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Corr_Main_1|corr_buffer_update~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y6_N4
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0~combout\ = !\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(0),
	combout => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0~combout\);

-- Location: LCFF_X12_Y6_N13
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|counter_comb_bita0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|cntr1|safe_q\(0));

-- Location: LCCOMB_X12_Y5_N14
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

-- Location: LCCOMB_X12_Y5_N16
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1) & (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\)) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1) & ((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # (GND)))
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1),
	datad => VCC,
	cin => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\,
	combout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	cout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X12_Y5_N18
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2) & (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2) & (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ & VCC))
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2) & !\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2),
	datad => VCC,
	cin => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\,
	combout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	cout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\);

-- Location: LCFF_X12_Y5_N19
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2));

-- Location: LCFF_X12_Y5_N17
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1));

-- Location: LCCOMB_X12_Y5_N20
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3) & (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\)) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3) & ((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # (GND)))
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3),
	datad => VCC,
	cin => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\,
	combout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	cout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\);

-- Location: LCFF_X12_Y5_N23
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_reg_bit4a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4));

-- Location: LCCOMB_X12_Y5_N2
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\ = (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3) & (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2) & 
-- (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1) & \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3),
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(2),
	datac => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(1),
	datad => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(4),
	combout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X12_Y5_N6
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~0_combout\) # ((!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(0) & 
-- \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita4~0_combout\,
	datac => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(0),
	datad => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cmpr5|aneb_result_wire[0]~0_combout\,
	combout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\);

-- Location: LCFF_X12_Y5_N15
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(0));

-- Location: LCFF_X12_Y5_N21
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|cntr1|safe_q\(3));

-- Location: LCFF_X13_Y8_N19
\Corr_Main_1|buff|buffer_8[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a44\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_8\(9));

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

-- Location: LCCOMB_X27_Y5_N22
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

-- Location: LCCOMB_X27_Y6_N16
\this_read_adc_manager|MRAM_DATA_OUT[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[9]~0_combout\ = (\this_state_manager|curr_state.read_adc~regout\ & !\this_mram_controller|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_state_manager|curr_state.read_adc~regout\,
	datad => \this_mram_controller|curr_state.idle~regout\,
	combout => \this_read_adc_manager|MRAM_DATA_OUT[9]~0_combout\);

-- Location: LCCOMB_X27_Y5_N24
\this_read_adc_manager|MRAM_DATA_OUT[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[9]~1_combout\ = (\this_read_adc_manager|Equal1~0_combout\ & (!\this_read_adc_manager|last_state~regout\ & (\ADC_DCLKA~combout\ & \this_read_adc_manager|MRAM_DATA_OUT[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|Equal1~0_combout\,
	datab => \this_read_adc_manager|last_state~regout\,
	datac => \ADC_DCLKA~combout\,
	datad => \this_read_adc_manager|MRAM_DATA_OUT[9]~0_combout\,
	combout => \this_read_adc_manager|MRAM_DATA_OUT[9]~1_combout\);

-- Location: LCFF_X27_Y5_N23
\this_read_adc_manager|MRAM_DATA_OUT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[2]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(2));

-- Location: LCCOMB_X26_Y5_N30
\Corr_Main_1|buff|buf_b0[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b0[0]~feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(2),
	combout => \Corr_Main_1|buff|buf_b0[0]~feeder_combout\);

-- Location: LCFF_X26_Y5_N31
\Corr_Main_1|buff|buf_b0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b0[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b0\(0));

-- Location: LCCOMB_X26_Y5_N2
\Corr_Main_1|buff|diff[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|diff[0]~9_combout\ = (\Corr_Main_1|buff|buf_b2\(0) & (\Corr_Main_1|buff|buf_b0\(0) $ (VCC))) # (!\Corr_Main_1|buff|buf_b2\(0) & ((\Corr_Main_1|buff|buf_b0\(0)) # (GND)))
-- \Corr_Main_1|buff|diff[0]~10\ = CARRY((\Corr_Main_1|buff|buf_b0\(0)) # (!\Corr_Main_1|buff|buf_b2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buf_b2\(0),
	datab => \Corr_Main_1|buff|buf_b0\(0),
	datad => VCC,
	combout => \Corr_Main_1|buff|diff[0]~9_combout\,
	cout => \Corr_Main_1|buff|diff[0]~10\);

-- Location: LCCOMB_X18_Y5_N10
\Corr_Main_1|buff|diff[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|diff[0]~feeder_combout\ = \Corr_Main_1|buff|diff[0]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|diff[0]~9_combout\,
	combout => \Corr_Main_1|buff|diff[0]~feeder_combout\);

-- Location: LCFF_X18_Y5_N11
\Corr_Main_1|buff|diff[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|diff[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(0));

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

-- Location: LCCOMB_X27_Y5_N28
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

-- Location: LCFF_X27_Y5_N29
\this_read_adc_manager|MRAM_DATA_OUT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[3]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(3));

-- Location: LCCOMB_X26_Y5_N26
\Corr_Main_1|buff|buf_b0[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b0[1]~feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(3),
	combout => \Corr_Main_1|buff|buf_b0[1]~feeder_combout\);

-- Location: LCFF_X26_Y5_N27
\Corr_Main_1|buff|buf_b0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b0[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b0\(1));

-- Location: LCCOMB_X26_Y5_N4
\Corr_Main_1|buff|diff[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|diff[1]~11_combout\ = (\Corr_Main_1|buff|buf_b2\(1) & ((\Corr_Main_1|buff|buf_b0\(1) & (!\Corr_Main_1|buff|diff[0]~10\)) # (!\Corr_Main_1|buff|buf_b0\(1) & ((\Corr_Main_1|buff|diff[0]~10\) # (GND))))) # (!\Corr_Main_1|buff|buf_b2\(1) & 
-- ((\Corr_Main_1|buff|buf_b0\(1) & (\Corr_Main_1|buff|diff[0]~10\ & VCC)) # (!\Corr_Main_1|buff|buf_b0\(1) & (!\Corr_Main_1|buff|diff[0]~10\))))
-- \Corr_Main_1|buff|diff[1]~12\ = CARRY((\Corr_Main_1|buff|buf_b2\(1) & ((!\Corr_Main_1|buff|diff[0]~10\) # (!\Corr_Main_1|buff|buf_b0\(1)))) # (!\Corr_Main_1|buff|buf_b2\(1) & (!\Corr_Main_1|buff|buf_b0\(1) & !\Corr_Main_1|buff|diff[0]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buf_b2\(1),
	datab => \Corr_Main_1|buff|buf_b0\(1),
	datad => VCC,
	cin => \Corr_Main_1|buff|diff[0]~10\,
	combout => \Corr_Main_1|buff|diff[1]~11_combout\,
	cout => \Corr_Main_1|buff|diff[1]~12\);

-- Location: LCFF_X26_Y5_N5
\Corr_Main_1|buff|diff[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|diff[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(1));

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

-- Location: LCFF_X27_Y5_N7
\this_read_adc_manager|MRAM_DATA_OUT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \ADC_BIT_A~combout\(4),
	sload => VCC,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(4));

-- Location: LCCOMB_X27_Y5_N30
\Corr_Main_1|buff|buf_b0[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b0[2]~feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(4),
	combout => \Corr_Main_1|buff|buf_b0[2]~feeder_combout\);

-- Location: LCFF_X27_Y5_N31
\Corr_Main_1|buff|buf_b0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b0[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b0\(2));

-- Location: LCCOMB_X26_Y5_N6
\Corr_Main_1|buff|diff[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|diff[2]~13_combout\ = ((\Corr_Main_1|buff|buf_b2\(2) $ (\Corr_Main_1|buff|buf_b0\(2) $ (\Corr_Main_1|buff|diff[1]~12\)))) # (GND)
-- \Corr_Main_1|buff|diff[2]~14\ = CARRY((\Corr_Main_1|buff|buf_b2\(2) & (\Corr_Main_1|buff|buf_b0\(2) & !\Corr_Main_1|buff|diff[1]~12\)) # (!\Corr_Main_1|buff|buf_b2\(2) & ((\Corr_Main_1|buff|buf_b0\(2)) # (!\Corr_Main_1|buff|diff[1]~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buf_b2\(2),
	datab => \Corr_Main_1|buff|buf_b0\(2),
	datad => VCC,
	cin => \Corr_Main_1|buff|diff[1]~12\,
	combout => \Corr_Main_1|buff|diff[2]~13_combout\,
	cout => \Corr_Main_1|buff|diff[2]~14\);

-- Location: LCFF_X26_Y5_N7
\Corr_Main_1|buff|diff[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|diff[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(2));

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

-- Location: LCCOMB_X27_Y5_N0
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

-- Location: LCFF_X27_Y5_N1
\this_read_adc_manager|MRAM_DATA_OUT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[5]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(5));

-- Location: LCCOMB_X27_Y5_N26
\Corr_Main_1|buff|buf_b0[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b0[3]~feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(5),
	combout => \Corr_Main_1|buff|buf_b0[3]~feeder_combout\);

-- Location: LCFF_X27_Y5_N27
\Corr_Main_1|buff|buf_b0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b0[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b0\(3));

-- Location: LCFF_X26_Y5_N21
\Corr_Main_1|buff|buf_b1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buf_b0\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b1\(3));

-- Location: LCFF_X26_Y5_N3
\Corr_Main_1|buff|buf_b2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buf_b1\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b2\(3));

-- Location: LCCOMB_X26_Y5_N8
\Corr_Main_1|buff|diff[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|diff[3]~15_combout\ = (\Corr_Main_1|buff|buf_b0\(3) & ((\Corr_Main_1|buff|buf_b2\(3) & (!\Corr_Main_1|buff|diff[2]~14\)) # (!\Corr_Main_1|buff|buf_b2\(3) & (\Corr_Main_1|buff|diff[2]~14\ & VCC)))) # (!\Corr_Main_1|buff|buf_b0\(3) & 
-- ((\Corr_Main_1|buff|buf_b2\(3) & ((\Corr_Main_1|buff|diff[2]~14\) # (GND))) # (!\Corr_Main_1|buff|buf_b2\(3) & (!\Corr_Main_1|buff|diff[2]~14\))))
-- \Corr_Main_1|buff|diff[3]~16\ = CARRY((\Corr_Main_1|buff|buf_b0\(3) & (\Corr_Main_1|buff|buf_b2\(3) & !\Corr_Main_1|buff|diff[2]~14\)) # (!\Corr_Main_1|buff|buf_b0\(3) & ((\Corr_Main_1|buff|buf_b2\(3)) # (!\Corr_Main_1|buff|diff[2]~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buf_b0\(3),
	datab => \Corr_Main_1|buff|buf_b2\(3),
	datad => VCC,
	cin => \Corr_Main_1|buff|diff[2]~14\,
	combout => \Corr_Main_1|buff|diff[3]~15_combout\,
	cout => \Corr_Main_1|buff|diff[3]~16\);

-- Location: LCFF_X26_Y5_N9
\Corr_Main_1|buff|diff[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|diff[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(3));

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

-- Location: LCCOMB_X27_Y5_N8
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

-- Location: LCFF_X27_Y5_N9
\this_read_adc_manager|MRAM_DATA_OUT[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[6]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(6));

-- Location: LCFF_X26_Y5_N29
\Corr_Main_1|buff|buf_b0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \this_read_adc_manager|MRAM_DATA_OUT\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b0\(4));

-- Location: LCCOMB_X26_Y5_N10
\Corr_Main_1|buff|diff[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|diff[4]~17_combout\ = ((\Corr_Main_1|buff|buf_b2\(4) $ (\Corr_Main_1|buff|buf_b0\(4) $ (\Corr_Main_1|buff|diff[3]~16\)))) # (GND)
-- \Corr_Main_1|buff|diff[4]~18\ = CARRY((\Corr_Main_1|buff|buf_b2\(4) & (\Corr_Main_1|buff|buf_b0\(4) & !\Corr_Main_1|buff|diff[3]~16\)) # (!\Corr_Main_1|buff|buf_b2\(4) & ((\Corr_Main_1|buff|buf_b0\(4)) # (!\Corr_Main_1|buff|diff[3]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buf_b2\(4),
	datab => \Corr_Main_1|buff|buf_b0\(4),
	datad => VCC,
	cin => \Corr_Main_1|buff|diff[3]~16\,
	combout => \Corr_Main_1|buff|diff[4]~17_combout\,
	cout => \Corr_Main_1|buff|diff[4]~18\);

-- Location: LCFF_X26_Y5_N11
\Corr_Main_1|buff|diff[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|diff[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(4));

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

-- Location: LCCOMB_X27_Y5_N18
\this_read_adc_manager|MRAM_DATA_OUT[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[7]~feeder_combout\ = \ADC_BIT_A~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_BIT_A~combout\(7),
	combout => \this_read_adc_manager|MRAM_DATA_OUT[7]~feeder_combout\);

-- Location: LCFF_X27_Y5_N19
\this_read_adc_manager|MRAM_DATA_OUT[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[7]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(7));

-- Location: LCCOMB_X27_Y5_N14
\Corr_Main_1|buff|buf_b0[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b0[5]~feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(7),
	combout => \Corr_Main_1|buff|buf_b0[5]~feeder_combout\);

-- Location: LCFF_X27_Y5_N15
\Corr_Main_1|buff|buf_b0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b0[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b0\(5));

-- Location: LCCOMB_X26_Y5_N12
\Corr_Main_1|buff|diff[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|diff[5]~19_combout\ = (\Corr_Main_1|buff|buf_b2\(5) & ((\Corr_Main_1|buff|buf_b0\(5) & (!\Corr_Main_1|buff|diff[4]~18\)) # (!\Corr_Main_1|buff|buf_b0\(5) & ((\Corr_Main_1|buff|diff[4]~18\) # (GND))))) # (!\Corr_Main_1|buff|buf_b2\(5) & 
-- ((\Corr_Main_1|buff|buf_b0\(5) & (\Corr_Main_1|buff|diff[4]~18\ & VCC)) # (!\Corr_Main_1|buff|buf_b0\(5) & (!\Corr_Main_1|buff|diff[4]~18\))))
-- \Corr_Main_1|buff|diff[5]~20\ = CARRY((\Corr_Main_1|buff|buf_b2\(5) & ((!\Corr_Main_1|buff|diff[4]~18\) # (!\Corr_Main_1|buff|buf_b0\(5)))) # (!\Corr_Main_1|buff|buf_b2\(5) & (!\Corr_Main_1|buff|buf_b0\(5) & !\Corr_Main_1|buff|diff[4]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buf_b2\(5),
	datab => \Corr_Main_1|buff|buf_b0\(5),
	datad => VCC,
	cin => \Corr_Main_1|buff|diff[4]~18\,
	combout => \Corr_Main_1|buff|diff[5]~19_combout\,
	cout => \Corr_Main_1|buff|diff[5]~20\);

-- Location: LCFF_X26_Y5_N13
\Corr_Main_1|buff|diff[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|diff[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(5));

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
	padio => ww_ADC_BIT_A(8),
	combout => \ADC_BIT_A~combout\(8));

-- Location: LCCOMB_X27_Y5_N12
\this_read_adc_manager|MRAM_DATA_OUT[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[8]~feeder_combout\ = \ADC_BIT_A~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_BIT_A~combout\(8),
	combout => \this_read_adc_manager|MRAM_DATA_OUT[8]~feeder_combout\);

-- Location: LCFF_X27_Y5_N13
\this_read_adc_manager|MRAM_DATA_OUT[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[8]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(8));

-- Location: LCFF_X26_Y5_N23
\Corr_Main_1|buff|buf_b0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \this_read_adc_manager|MRAM_DATA_OUT\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b0\(6));

-- Location: LCCOMB_X26_Y5_N14
\Corr_Main_1|buff|diff[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|diff[6]~21_combout\ = ((\Corr_Main_1|buff|buf_b2\(6) $ (\Corr_Main_1|buff|buf_b0\(6) $ (\Corr_Main_1|buff|diff[5]~20\)))) # (GND)
-- \Corr_Main_1|buff|diff[6]~22\ = CARRY((\Corr_Main_1|buff|buf_b2\(6) & (\Corr_Main_1|buff|buf_b0\(6) & !\Corr_Main_1|buff|diff[5]~20\)) # (!\Corr_Main_1|buff|buf_b2\(6) & ((\Corr_Main_1|buff|buf_b0\(6)) # (!\Corr_Main_1|buff|diff[5]~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buf_b2\(6),
	datab => \Corr_Main_1|buff|buf_b0\(6),
	datad => VCC,
	cin => \Corr_Main_1|buff|diff[5]~20\,
	combout => \Corr_Main_1|buff|diff[6]~21_combout\,
	cout => \Corr_Main_1|buff|diff[6]~22\);

-- Location: LCFF_X25_Y5_N5
\Corr_Main_1|buff|diff[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|diff[6]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(6));

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
	padio => ww_ADC_BIT_A(9),
	combout => \ADC_BIT_A~combout\(9));

-- Location: LCFF_X27_Y5_N11
\this_read_adc_manager|MRAM_DATA_OUT[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \ADC_BIT_A~combout\(9),
	sload => VCC,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(9));

-- Location: LCCOMB_X27_Y5_N4
\Corr_Main_1|buff|buf_b0[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b0[7]~feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(9),
	combout => \Corr_Main_1|buff|buf_b0[7]~feeder_combout\);

-- Location: LCFF_X27_Y5_N5
\Corr_Main_1|buff|buf_b0[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b0[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b0\(7));

-- Location: LCCOMB_X26_Y5_N24
\Corr_Main_1|buff|buf_b1[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buf_b1[7]~feeder_combout\ = \Corr_Main_1|buff|buf_b0\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buf_b0\(7),
	combout => \Corr_Main_1|buff|buf_b1[7]~feeder_combout\);

-- Location: LCFF_X26_Y5_N25
\Corr_Main_1|buff|buf_b1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buf_b1[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b1\(7));

-- Location: LCFF_X26_Y5_N17
\Corr_Main_1|buff|buf_b2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buf_b1\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buf_b2\(7));

-- Location: LCCOMB_X26_Y5_N16
\Corr_Main_1|buff|diff[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|diff[7]~23_combout\ = (\Corr_Main_1|buff|buf_b0\(7) & ((\Corr_Main_1|buff|buf_b2\(7) & (!\Corr_Main_1|buff|diff[6]~22\)) # (!\Corr_Main_1|buff|buf_b2\(7) & (\Corr_Main_1|buff|diff[6]~22\ & VCC)))) # (!\Corr_Main_1|buff|buf_b0\(7) & 
-- ((\Corr_Main_1|buff|buf_b2\(7) & ((\Corr_Main_1|buff|diff[6]~22\) # (GND))) # (!\Corr_Main_1|buff|buf_b2\(7) & (!\Corr_Main_1|buff|diff[6]~22\))))
-- \Corr_Main_1|buff|diff[7]~24\ = CARRY((\Corr_Main_1|buff|buf_b0\(7) & (\Corr_Main_1|buff|buf_b2\(7) & !\Corr_Main_1|buff|diff[6]~22\)) # (!\Corr_Main_1|buff|buf_b0\(7) & ((\Corr_Main_1|buff|buf_b2\(7)) # (!\Corr_Main_1|buff|diff[6]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buf_b0\(7),
	datab => \Corr_Main_1|buff|buf_b2\(7),
	datad => VCC,
	cin => \Corr_Main_1|buff|diff[6]~22\,
	combout => \Corr_Main_1|buff|diff[7]~23_combout\,
	cout => \Corr_Main_1|buff|diff[7]~24\);

-- Location: LCFF_X25_Y5_N25
\Corr_Main_1|buff|diff[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|diff[7]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(7));

-- Location: LCCOMB_X26_Y5_N18
\Corr_Main_1|buff|diff[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|diff[8]~25_combout\ = \Corr_Main_1|buff|diff[7]~24\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Corr_Main_1|buff|diff[7]~24\,
	combout => \Corr_Main_1|buff|diff[8]~25_combout\);

-- Location: LCFF_X26_Y5_N19
\Corr_Main_1|buff|diff[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|diff[8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|diff\(8));

-- Location: M4K_X11_Y5
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Corr_Main:Corr_Main_1|Corr_Buffer:buff|altshift_taps:buffer_0_rtl_1|shift_taps_v1m:auto_generated|altsyncram_g981:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 2,
	port_a_logical_ram_width => 54,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 1,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 27,
	port_b_last_address => 1,
	port_b_logical_ram_depth => 2,
	port_b_logical_ram_width => 54,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	portadatain => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTADATAIN_bus\,
	portaaddr => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTAADDR_bus\,
	portbaddr => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27_PORTBDATAOUT_bus\);

-- Location: LCFF_X12_Y6_N29
\Corr_Main_1|buff|buffer_8[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a35\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_8\(14));

-- Location: M4K_X11_Y6
\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Corr_Main:Corr_Main_1|Corr_Buffer:buff|altshift_taps:buffer_0_rtl_0|shift_taps_32m:auto_generated|altsyncram_4a81:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 17,
	port_a_logical_ram_width => 9,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 17,
	port_b_logical_ram_width => 9,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	portadatain => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\,
	portaaddr => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X7_Y6_N19
\Corr_Main_1|buff|buffer_8[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a8\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_8\(34));

-- Location: LCFF_X15_Y6_N27
\Corr_Main_1|buff|buffer_0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a45\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(4));

-- Location: LCFF_X15_Y6_N23
\Corr_Main_1|buff|buffer_1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a46\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(4));

-- Location: LCCOMB_X15_Y6_N24
\Corr_Main_1|buff|buffer_2[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_2[4]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a47\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a47\,
	combout => \Corr_Main_1|buff|buffer_2[4]~feeder_combout\);

-- Location: LCFF_X15_Y6_N25
\Corr_Main_1|buff|buffer_2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_2[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(4));

-- Location: LCCOMB_X15_Y6_N20
\Corr_Main_1|buff|buffer_3[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_3[4]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a48\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a48\,
	combout => \Corr_Main_1|buff|buffer_3[4]~feeder_combout\);

-- Location: LCFF_X15_Y6_N21
\Corr_Main_1|buff|buffer_3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_3[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(4));

-- Location: LCFF_X15_Y6_N29
\Corr_Main_1|buff|buffer_4[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a49\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(4));

-- Location: LCCOMB_X15_Y6_N30
\Corr_Main_1|buff|buffer_5[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_5[4]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a50\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a50\,
	combout => \Corr_Main_1|buff|buffer_5[4]~feeder_combout\);

-- Location: LCFF_X15_Y6_N31
\Corr_Main_1|buff|buffer_5[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_5[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(4));

-- Location: LCFF_X15_Y6_N13
\Corr_Main_1|buff|buffer_6[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a51\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(4));

-- Location: LCFF_X15_Y6_N15
\Corr_Main_1|buff|buffer_7[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a52\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(4));

-- Location: LCFF_X15_Y6_N17
\Corr_Main_1|buff|buffer_8[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a53\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_8\(4));

-- Location: M4K_X11_Y8
\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Corr_Main:Corr_Main_1|Corr_Buffer:buff|altshift_taps:buffer_0_rtl_1|shift_taps_v1m:auto_generated|altsyncram_g981:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 2,
	port_a_logical_ram_width => 54,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 1,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1,
	port_b_logical_ram_depth => 2,
	port_b_logical_ram_width => 54,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	portadatain => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTADATAIN_bus\,
	portaaddr => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X13_Y8_N17
\Corr_Main_1|buff|buffer_7[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a43\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(9));

-- Location: LCFF_X12_Y6_N27
\Corr_Main_1|buff|buffer_7[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a34\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(14));

-- Location: LCFF_X7_Y6_N17
\Corr_Main_1|buff|buffer_7[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a7\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(34));

-- Location: LCFF_X13_Y8_N15
\Corr_Main_1|buff|buffer_6[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a42\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(9));

-- Location: LCFF_X12_Y6_N25
\Corr_Main_1|buff|buffer_6[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a33\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(14));

-- Location: LCFF_X7_Y6_N15
\Corr_Main_1|buff|buffer_6[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a6\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(34));

-- Location: LCFF_X13_Y8_N13
\Corr_Main_1|buff|buffer_5[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a41\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(9));

-- Location: LCFF_X12_Y6_N23
\Corr_Main_1|buff|buffer_5[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a32\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(14));

-- Location: LCFF_X7_Y6_N13
\Corr_Main_1|buff|buffer_5[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(34));

-- Location: LCFF_X13_Y8_N27
\Corr_Main_1|buff|buffer_4[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a40\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(9));

-- Location: LCFF_X12_Y6_N21
\Corr_Main_1|buff|buffer_4[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a31\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(14));

-- Location: LCCOMB_X7_Y6_N30
\Corr_Main_1|buff|buffer_4[34]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_4[34]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a4\,
	combout => \Corr_Main_1|buff|buffer_4[34]~feeder_combout\);

-- Location: LCFF_X7_Y6_N31
\Corr_Main_1|buff|buffer_4[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_4[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(34));

-- Location: LCCOMB_X13_Y8_N30
\Corr_Main_1|buff|buffer_3[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_3[9]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a39\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a39\,
	combout => \Corr_Main_1|buff|buffer_3[9]~feeder_combout\);

-- Location: LCFF_X13_Y8_N31
\Corr_Main_1|buff|buffer_3[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_3[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(9));

-- Location: LCFF_X12_Y6_N1
\Corr_Main_1|buff|buffer_3[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a30\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(14));

-- Location: LCFF_X7_Y6_N29
\Corr_Main_1|buff|buffer_3[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(34));

-- Location: LCCOMB_X13_Y8_N28
\Corr_Main_1|buff|buffer_2[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_2[9]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a38\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a38\,
	combout => \Corr_Main_1|buff|buffer_2[9]~feeder_combout\);

-- Location: LCFF_X13_Y8_N29
\Corr_Main_1|buff|buffer_2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_2[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(9));

-- Location: LCCOMB_X12_Y6_N10
\Corr_Main_1|buff|buffer_2[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_2[14]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a29\,
	combout => \Corr_Main_1|buff|buffer_2[14]~feeder_combout\);

-- Location: LCFF_X12_Y6_N11
\Corr_Main_1|buff|buffer_2[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_2[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(14));

-- Location: LCCOMB_X7_Y6_N24
\Corr_Main_1|buff|buffer_2[34]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_2[34]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a2\,
	combout => \Corr_Main_1|buff|buffer_2[34]~feeder_combout\);

-- Location: LCFF_X7_Y6_N25
\Corr_Main_1|buff|buffer_2[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_2[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(34));

-- Location: LCCOMB_X13_Y8_N24
\Corr_Main_1|buff|buffer_1[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_1[9]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a37\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a37\,
	combout => \Corr_Main_1|buff|buffer_1[9]~feeder_combout\);

-- Location: LCFF_X13_Y8_N25
\Corr_Main_1|buff|buffer_1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_1[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(9));

-- Location: LCFF_X12_Y6_N3
\Corr_Main_1|buff|buffer_1[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a28\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(14));

-- Location: LCCOMB_X7_Y6_N26
\Corr_Main_1|buff|buffer_1[34]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_1[34]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\,
	combout => \Corr_Main_1|buff|buffer_1[34]~feeder_combout\);

-- Location: LCFF_X7_Y6_N27
\Corr_Main_1|buff|buffer_1[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_1[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(34));

-- Location: LCCOMB_X13_Y8_N0
\Corr_Main_1|buff|buffer_0[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0[9]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a36\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a36\,
	combout => \Corr_Main_1|buff|buffer_0[9]~feeder_combout\);

-- Location: LCFF_X13_Y8_N1
\Corr_Main_1|buff|buffer_0[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(9));

-- Location: LCFF_X12_Y6_N5
\Corr_Main_1|buff|buffer_0[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a27~portbdataout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(14));

-- Location: LCCOMB_X7_Y6_N0
\Corr_Main_1|buff|buffer_0[34]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0[34]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	combout => \Corr_Main_1|buff|buffer_0[34]~feeder_combout\);

-- Location: LCFF_X7_Y6_N1
\Corr_Main_1|buff|buffer_0[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(34));

-- Location: LCFF_X10_Y7_N27
\Corr_Main_1|buff|buffer_8[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a8\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_8\(44));

-- Location: LCFF_X10_Y7_N25
\Corr_Main_1|buff|buffer_7[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a7\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(44));

-- Location: LCFF_X10_Y7_N23
\Corr_Main_1|buff|buffer_6[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a6\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(44));

-- Location: LCFF_X10_Y7_N21
\Corr_Main_1|buff|buffer_5[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a5\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(44));

-- Location: LCCOMB_X10_Y7_N0
\Corr_Main_1|buff|buffer_4[44]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_4[44]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a4\,
	combout => \Corr_Main_1|buff|buffer_4[44]~feeder_combout\);

-- Location: LCFF_X10_Y7_N1
\Corr_Main_1|buff|buffer_4[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_4[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(44));

-- Location: LCCOMB_X10_Y7_N8
\Corr_Main_1|buff|buffer_3[44]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_3[44]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a3\,
	combout => \Corr_Main_1|buff|buffer_3[44]~feeder_combout\);

-- Location: LCFF_X10_Y7_N9
\Corr_Main_1|buff|buffer_3[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_3[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(44));

-- Location: LCCOMB_X10_Y7_N4
\Corr_Main_1|buff|buffer_2[44]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_2[44]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\,
	combout => \Corr_Main_1|buff|buffer_2[44]~feeder_combout\);

-- Location: LCFF_X10_Y7_N5
\Corr_Main_1|buff|buffer_2[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_2[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(44));

-- Location: LCCOMB_X10_Y7_N6
\Corr_Main_1|buff|buffer_1[44]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_1[44]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\,
	combout => \Corr_Main_1|buff|buffer_1[44]~feeder_combout\);

-- Location: LCFF_X10_Y7_N7
\Corr_Main_1|buff|buffer_1[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_1[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(44));

-- Location: LCCOMB_X10_Y7_N2
\Corr_Main_1|buff|buffer_0[44]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_0[44]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	combout => \Corr_Main_1|buff|buffer_0[44]~feeder_combout\);

-- Location: LCFF_X10_Y7_N3
\Corr_Main_1|buff|buffer_0[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_0[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(44));

-- Location: LCFF_X8_Y8_N17
\Corr_Main_1|buff|buffer_8[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a26\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_8\(39));

-- Location: LCFF_X8_Y8_N15
\Corr_Main_1|buff|buffer_7[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a25\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(39));

-- Location: LCFF_X8_Y8_N13
\Corr_Main_1|buff|buffer_6[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a24\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(39));

-- Location: LCCOMB_X8_Y8_N20
\Corr_Main_1|buff|buffer_5[39]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_5[39]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a23\,
	combout => \Corr_Main_1|buff|buffer_5[39]~feeder_combout\);

-- Location: LCFF_X8_Y8_N21
\Corr_Main_1|buff|buffer_5[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_5[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_5\(39));

-- Location: LCCOMB_X8_Y8_N30
\Corr_Main_1|buff|buffer_4[39]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_4[39]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a22\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a22\,
	combout => \Corr_Main_1|buff|buffer_4[39]~feeder_combout\);

-- Location: LCFF_X8_Y8_N31
\Corr_Main_1|buff|buffer_4[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_4[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_4\(39));

-- Location: LCFF_X8_Y8_N27
\Corr_Main_1|buff|buffer_3[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a21\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_3\(39));

-- Location: LCCOMB_X8_Y8_N28
\Corr_Main_1|buff|buffer_2[39]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_2[39]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a20\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a20\,
	combout => \Corr_Main_1|buff|buffer_2[39]~feeder_combout\);

-- Location: LCFF_X8_Y8_N29
\Corr_Main_1|buff|buffer_2[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_2[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(39));

-- Location: LCCOMB_X8_Y8_N24
\Corr_Main_1|buff|buffer_1[39]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_1[39]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a19\,
	combout => \Corr_Main_1|buff|buffer_1[39]~feeder_combout\);

-- Location: LCFF_X8_Y8_N25
\Corr_Main_1|buff|buffer_1[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_1[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(39));

-- Location: LCFF_X8_Y8_N23
\Corr_Main_1|buff|buffer_0[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a18\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(39));

-- Location: LCCOMB_X12_Y8_N12
\Corr_Main_1|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~1_cout\ = CARRY(!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a36\,
	datad => VCC,
	cout => \Corr_Main_1|Add1~1_cout\);

-- Location: LCCOMB_X12_Y8_N22
\Corr_Main_1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~10_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a41\ & ((\Corr_Main_1|Add1~9\) # (GND))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a41\ & (!\Corr_Main_1|Add1~9\))
-- \Corr_Main_1|Add1~11\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a41\) # (!\Corr_Main_1|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a41\,
	datad => VCC,
	cin => \Corr_Main_1|Add1~9\,
	combout => \Corr_Main_1|Add1~10_combout\,
	cout => \Corr_Main_1|Add1~11\);

-- Location: LCCOMB_X12_Y8_N26
\Corr_Main_1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~14_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a43\ & ((\Corr_Main_1|Add1~13\) # (GND))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a43\ & (!\Corr_Main_1|Add1~13\))
-- \Corr_Main_1|Add1~15\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a43\) # (!\Corr_Main_1|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a43\,
	datad => VCC,
	cin => \Corr_Main_1|Add1~13\,
	combout => \Corr_Main_1|Add1~14_combout\,
	cout => \Corr_Main_1|Add1~15\);

-- Location: LCCOMB_X12_Y8_N28
\Corr_Main_1|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~16_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a44\ & (!\Corr_Main_1|Add1~15\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a44\ & (\Corr_Main_1|Add1~15\ $ (GND)))
-- \Corr_Main_1|Add1~17\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a44\ & !\Corr_Main_1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a44\,
	datad => VCC,
	cin => \Corr_Main_1|Add1~15\,
	combout => \Corr_Main_1|Add1~16_combout\,
	cout => \Corr_Main_1|Add1~17\);

-- Location: LCCOMB_X13_Y8_N2
\Corr_Main_1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~0_combout\ = (\Corr_Main_1|buff|buffer_0\(9) & (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a36\ $ (VCC))) # (!\Corr_Main_1|buff|buffer_0\(9) & 
-- ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a36\) # (GND)))
-- \Corr_Main_1|Add2~1\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a36\) # (!\Corr_Main_1|buff|buffer_0\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0\(9),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a36\,
	datad => VCC,
	combout => \Corr_Main_1|Add2~0_combout\,
	cout => \Corr_Main_1|Add2~1\);

-- Location: LCCOMB_X13_Y8_N4
\Corr_Main_1|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~2_combout\ = (\Corr_Main_1|Add1~2_combout\ & ((\Corr_Main_1|buff|buffer_1\(9) & (!\Corr_Main_1|Add2~1\)) # (!\Corr_Main_1|buff|buffer_1\(9) & (\Corr_Main_1|Add2~1\ & VCC)))) # (!\Corr_Main_1|Add1~2_combout\ & 
-- ((\Corr_Main_1|buff|buffer_1\(9) & ((\Corr_Main_1|Add2~1\) # (GND))) # (!\Corr_Main_1|buff|buffer_1\(9) & (!\Corr_Main_1|Add2~1\))))
-- \Corr_Main_1|Add2~3\ = CARRY((\Corr_Main_1|Add1~2_combout\ & (\Corr_Main_1|buff|buffer_1\(9) & !\Corr_Main_1|Add2~1\)) # (!\Corr_Main_1|Add1~2_combout\ & ((\Corr_Main_1|buff|buffer_1\(9)) # (!\Corr_Main_1|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add1~2_combout\,
	datab => \Corr_Main_1|buff|buffer_1\(9),
	datad => VCC,
	cin => \Corr_Main_1|Add2~1\,
	combout => \Corr_Main_1|Add2~2_combout\,
	cout => \Corr_Main_1|Add2~3\);

-- Location: LCCOMB_X13_Y8_N8
\Corr_Main_1|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~6_combout\ = (\Corr_Main_1|Add1~6_combout\ & ((\Corr_Main_1|buff|buffer_3\(9) & (!\Corr_Main_1|Add2~5\)) # (!\Corr_Main_1|buff|buffer_3\(9) & (\Corr_Main_1|Add2~5\ & VCC)))) # (!\Corr_Main_1|Add1~6_combout\ & 
-- ((\Corr_Main_1|buff|buffer_3\(9) & ((\Corr_Main_1|Add2~5\) # (GND))) # (!\Corr_Main_1|buff|buffer_3\(9) & (!\Corr_Main_1|Add2~5\))))
-- \Corr_Main_1|Add2~7\ = CARRY((\Corr_Main_1|Add1~6_combout\ & (\Corr_Main_1|buff|buffer_3\(9) & !\Corr_Main_1|Add2~5\)) # (!\Corr_Main_1|Add1~6_combout\ & ((\Corr_Main_1|buff|buffer_3\(9)) # (!\Corr_Main_1|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add1~6_combout\,
	datab => \Corr_Main_1|buff|buffer_3\(9),
	datad => VCC,
	cin => \Corr_Main_1|Add2~5\,
	combout => \Corr_Main_1|Add2~6_combout\,
	cout => \Corr_Main_1|Add2~7\);

-- Location: LCCOMB_X13_Y8_N10
\Corr_Main_1|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~8_combout\ = ((\Corr_Main_1|Add1~8_combout\ $ (\Corr_Main_1|buff|buffer_4\(9) $ (\Corr_Main_1|Add2~7\)))) # (GND)
-- \Corr_Main_1|Add2~9\ = CARRY((\Corr_Main_1|Add1~8_combout\ & ((!\Corr_Main_1|Add2~7\) # (!\Corr_Main_1|buff|buffer_4\(9)))) # (!\Corr_Main_1|Add1~8_combout\ & (!\Corr_Main_1|buff|buffer_4\(9) & !\Corr_Main_1|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add1~8_combout\,
	datab => \Corr_Main_1|buff|buffer_4\(9),
	datad => VCC,
	cin => \Corr_Main_1|Add2~7\,
	combout => \Corr_Main_1|Add2~8_combout\,
	cout => \Corr_Main_1|Add2~9\);

-- Location: LCCOMB_X13_Y8_N12
\Corr_Main_1|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~10_combout\ = (\Corr_Main_1|buff|buffer_5\(9) & ((\Corr_Main_1|Add1~10_combout\ & (!\Corr_Main_1|Add2~9\)) # (!\Corr_Main_1|Add1~10_combout\ & ((\Corr_Main_1|Add2~9\) # (GND))))) # (!\Corr_Main_1|buff|buffer_5\(9) & 
-- ((\Corr_Main_1|Add1~10_combout\ & (\Corr_Main_1|Add2~9\ & VCC)) # (!\Corr_Main_1|Add1~10_combout\ & (!\Corr_Main_1|Add2~9\))))
-- \Corr_Main_1|Add2~11\ = CARRY((\Corr_Main_1|buff|buffer_5\(9) & ((!\Corr_Main_1|Add2~9\) # (!\Corr_Main_1|Add1~10_combout\))) # (!\Corr_Main_1|buff|buffer_5\(9) & (!\Corr_Main_1|Add1~10_combout\ & !\Corr_Main_1|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_5\(9),
	datab => \Corr_Main_1|Add1~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add2~9\,
	combout => \Corr_Main_1|Add2~10_combout\,
	cout => \Corr_Main_1|Add2~11\);

-- Location: LCCOMB_X13_Y8_N14
\Corr_Main_1|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~12_combout\ = ((\Corr_Main_1|Add1~12_combout\ $ (\Corr_Main_1|buff|buffer_6\(9) $ (\Corr_Main_1|Add2~11\)))) # (GND)
-- \Corr_Main_1|Add2~13\ = CARRY((\Corr_Main_1|Add1~12_combout\ & ((!\Corr_Main_1|Add2~11\) # (!\Corr_Main_1|buff|buffer_6\(9)))) # (!\Corr_Main_1|Add1~12_combout\ & (!\Corr_Main_1|buff|buffer_6\(9) & !\Corr_Main_1|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add1~12_combout\,
	datab => \Corr_Main_1|buff|buffer_6\(9),
	datad => VCC,
	cin => \Corr_Main_1|Add2~11\,
	combout => \Corr_Main_1|Add2~12_combout\,
	cout => \Corr_Main_1|Add2~13\);

-- Location: LCCOMB_X13_Y8_N16
\Corr_Main_1|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~14_combout\ = (\Corr_Main_1|buff|buffer_7\(9) & ((\Corr_Main_1|Add1~14_combout\ & (!\Corr_Main_1|Add2~13\)) # (!\Corr_Main_1|Add1~14_combout\ & ((\Corr_Main_1|Add2~13\) # (GND))))) # (!\Corr_Main_1|buff|buffer_7\(9) & 
-- ((\Corr_Main_1|Add1~14_combout\ & (\Corr_Main_1|Add2~13\ & VCC)) # (!\Corr_Main_1|Add1~14_combout\ & (!\Corr_Main_1|Add2~13\))))
-- \Corr_Main_1|Add2~15\ = CARRY((\Corr_Main_1|buff|buffer_7\(9) & ((!\Corr_Main_1|Add2~13\) # (!\Corr_Main_1|Add1~14_combout\))) # (!\Corr_Main_1|buff|buffer_7\(9) & (!\Corr_Main_1|Add1~14_combout\ & !\Corr_Main_1|Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_7\(9),
	datab => \Corr_Main_1|Add1~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add2~13\,
	combout => \Corr_Main_1|Add2~14_combout\,
	cout => \Corr_Main_1|Add2~15\);

-- Location: LCCOMB_X13_Y8_N18
\Corr_Main_1|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~16_combout\ = ((\Corr_Main_1|buff|buffer_8\(9) $ (\Corr_Main_1|Add1~16_combout\ $ (\Corr_Main_1|Add2~15\)))) # (GND)
-- \Corr_Main_1|Add2~17\ = CARRY((\Corr_Main_1|buff|buffer_8\(9) & (\Corr_Main_1|Add1~16_combout\ & !\Corr_Main_1|Add2~15\)) # (!\Corr_Main_1|buff|buffer_8\(9) & ((\Corr_Main_1|Add1~16_combout\) # (!\Corr_Main_1|Add2~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_8\(9),
	datab => \Corr_Main_1|Add1~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add2~15\,
	combout => \Corr_Main_1|Add2~16_combout\,
	cout => \Corr_Main_1|Add2~17\);

-- Location: LCCOMB_X13_Y6_N10
\Corr_Main_1|Add13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~6_combout\ = (\Corr_Main_1|Add10~6_combout\ & ((\Corr_Main_1|Add2~6_combout\ & (\Corr_Main_1|Add13~5\ & VCC)) # (!\Corr_Main_1|Add2~6_combout\ & (!\Corr_Main_1|Add13~5\)))) # (!\Corr_Main_1|Add10~6_combout\ & 
-- ((\Corr_Main_1|Add2~6_combout\ & (!\Corr_Main_1|Add13~5\)) # (!\Corr_Main_1|Add2~6_combout\ & ((\Corr_Main_1|Add13~5\) # (GND)))))
-- \Corr_Main_1|Add13~7\ = CARRY((\Corr_Main_1|Add10~6_combout\ & (!\Corr_Main_1|Add2~6_combout\ & !\Corr_Main_1|Add13~5\)) # (!\Corr_Main_1|Add10~6_combout\ & ((!\Corr_Main_1|Add13~5\) # (!\Corr_Main_1|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~6_combout\,
	datab => \Corr_Main_1|Add2~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~5\,
	combout => \Corr_Main_1|Add13~6_combout\,
	cout => \Corr_Main_1|Add13~7\);

-- Location: LCCOMB_X13_Y6_N12
\Corr_Main_1|Add13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~8_combout\ = ((\Corr_Main_1|Add10~8_combout\ $ (\Corr_Main_1|Add2~8_combout\ $ (!\Corr_Main_1|Add13~7\)))) # (GND)
-- \Corr_Main_1|Add13~9\ = CARRY((\Corr_Main_1|Add10~8_combout\ & ((\Corr_Main_1|Add2~8_combout\) # (!\Corr_Main_1|Add13~7\))) # (!\Corr_Main_1|Add10~8_combout\ & (\Corr_Main_1|Add2~8_combout\ & !\Corr_Main_1|Add13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~8_combout\,
	datab => \Corr_Main_1|Add2~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~7\,
	combout => \Corr_Main_1|Add13~8_combout\,
	cout => \Corr_Main_1|Add13~9\);

-- Location: LCCOMB_X13_Y6_N16
\Corr_Main_1|Add13~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~12_combout\ = ((\Corr_Main_1|Add10~12_combout\ $ (\Corr_Main_1|Add2~12_combout\ $ (!\Corr_Main_1|Add13~11\)))) # (GND)
-- \Corr_Main_1|Add13~13\ = CARRY((\Corr_Main_1|Add10~12_combout\ & ((\Corr_Main_1|Add2~12_combout\) # (!\Corr_Main_1|Add13~11\))) # (!\Corr_Main_1|Add10~12_combout\ & (\Corr_Main_1|Add2~12_combout\ & !\Corr_Main_1|Add13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~12_combout\,
	datab => \Corr_Main_1|Add2~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~11\,
	combout => \Corr_Main_1|Add13~12_combout\,
	cout => \Corr_Main_1|Add13~13\);

-- Location: LCCOMB_X13_Y6_N18
\Corr_Main_1|Add13~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~14_combout\ = (\Corr_Main_1|Add10~14_combout\ & ((\Corr_Main_1|Add2~14_combout\ & (\Corr_Main_1|Add13~13\ & VCC)) # (!\Corr_Main_1|Add2~14_combout\ & (!\Corr_Main_1|Add13~13\)))) # (!\Corr_Main_1|Add10~14_combout\ & 
-- ((\Corr_Main_1|Add2~14_combout\ & (!\Corr_Main_1|Add13~13\)) # (!\Corr_Main_1|Add2~14_combout\ & ((\Corr_Main_1|Add13~13\) # (GND)))))
-- \Corr_Main_1|Add13~15\ = CARRY((\Corr_Main_1|Add10~14_combout\ & (!\Corr_Main_1|Add2~14_combout\ & !\Corr_Main_1|Add13~13\)) # (!\Corr_Main_1|Add10~14_combout\ & ((!\Corr_Main_1|Add13~13\) # (!\Corr_Main_1|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~14_combout\,
	datab => \Corr_Main_1|Add2~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~13\,
	combout => \Corr_Main_1|Add13~14_combout\,
	cout => \Corr_Main_1|Add13~15\);

-- Location: LCCOMB_X13_Y6_N20
\Corr_Main_1|Add13~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add13~16_combout\ = ((\Corr_Main_1|Add10~16_combout\ $ (\Corr_Main_1|Add2~16_combout\ $ (!\Corr_Main_1|Add13~15\)))) # (GND)
-- \Corr_Main_1|Add13~17\ = CARRY((\Corr_Main_1|Add10~16_combout\ & ((\Corr_Main_1|Add2~16_combout\) # (!\Corr_Main_1|Add13~15\))) # (!\Corr_Main_1|Add10~16_combout\ & (\Corr_Main_1|Add2~16_combout\ & !\Corr_Main_1|Add13~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add10~16_combout\,
	datab => \Corr_Main_1|Add2~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add13~15\,
	combout => \Corr_Main_1|Add13~16_combout\,
	cout => \Corr_Main_1|Add13~17\);

-- Location: LCCOMB_X15_Y6_N0
\Corr_Main_1|Add12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~0_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a45\ & (\Corr_Main_1|buff|buffer_0\(4) $ (VCC))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a45\ & 
-- (\Corr_Main_1|buff|buffer_0\(4) & VCC))
-- \Corr_Main_1|Add12~1\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a45\ & \Corr_Main_1|buff|buffer_0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a45\,
	datab => \Corr_Main_1|buff|buffer_0\(4),
	datad => VCC,
	combout => \Corr_Main_1|Add12~0_combout\,
	cout => \Corr_Main_1|Add12~1\);

-- Location: LCCOMB_X15_Y6_N2
\Corr_Main_1|Add12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~2_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a46\ & ((\Corr_Main_1|buff|buffer_1\(4) & (\Corr_Main_1|Add12~1\ & VCC)) # (!\Corr_Main_1|buff|buffer_1\(4) & (!\Corr_Main_1|Add12~1\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a46\ & ((\Corr_Main_1|buff|buffer_1\(4) & (!\Corr_Main_1|Add12~1\)) # (!\Corr_Main_1|buff|buffer_1\(4) & ((\Corr_Main_1|Add12~1\) # (GND)))))
-- \Corr_Main_1|Add12~3\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a46\ & (!\Corr_Main_1|buff|buffer_1\(4) & !\Corr_Main_1|Add12~1\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a46\ & 
-- ((!\Corr_Main_1|Add12~1\) # (!\Corr_Main_1|buff|buffer_1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a46\,
	datab => \Corr_Main_1|buff|buffer_1\(4),
	datad => VCC,
	cin => \Corr_Main_1|Add12~1\,
	combout => \Corr_Main_1|Add12~2_combout\,
	cout => \Corr_Main_1|Add12~3\);

-- Location: LCCOMB_X15_Y6_N4
\Corr_Main_1|Add12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~4_combout\ = ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a47\ $ (\Corr_Main_1|buff|buffer_2\(4) $ (!\Corr_Main_1|Add12~3\)))) # (GND)
-- \Corr_Main_1|Add12~5\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a47\ & ((\Corr_Main_1|buff|buffer_2\(4)) # (!\Corr_Main_1|Add12~3\))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a47\ & 
-- (\Corr_Main_1|buff|buffer_2\(4) & !\Corr_Main_1|Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a47\,
	datab => \Corr_Main_1|buff|buffer_2\(4),
	datad => VCC,
	cin => \Corr_Main_1|Add12~3\,
	combout => \Corr_Main_1|Add12~4_combout\,
	cout => \Corr_Main_1|Add12~5\);

-- Location: LCCOMB_X15_Y6_N10
\Corr_Main_1|Add12~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~10_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a50\ & ((\Corr_Main_1|buff|buffer_5\(4) & (\Corr_Main_1|Add12~9\ & VCC)) # (!\Corr_Main_1|buff|buffer_5\(4) & (!\Corr_Main_1|Add12~9\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a50\ & ((\Corr_Main_1|buff|buffer_5\(4) & (!\Corr_Main_1|Add12~9\)) # (!\Corr_Main_1|buff|buffer_5\(4) & ((\Corr_Main_1|Add12~9\) # (GND)))))
-- \Corr_Main_1|Add12~11\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a50\ & (!\Corr_Main_1|buff|buffer_5\(4) & !\Corr_Main_1|Add12~9\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a50\ & 
-- ((!\Corr_Main_1|Add12~9\) # (!\Corr_Main_1|buff|buffer_5\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a50\,
	datab => \Corr_Main_1|buff|buffer_5\(4),
	datad => VCC,
	cin => \Corr_Main_1|Add12~9\,
	combout => \Corr_Main_1|Add12~10_combout\,
	cout => \Corr_Main_1|Add12~11\);

-- Location: LCCOMB_X14_Y6_N6
\Corr_Main_1|Add16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~0_combout\ = (\Corr_Main_1|Add13~0_combout\ & (\Corr_Main_1|Add12~0_combout\ $ (VCC))) # (!\Corr_Main_1|Add13~0_combout\ & (\Corr_Main_1|Add12~0_combout\ & VCC))
-- \Corr_Main_1|Add16~1\ = CARRY((\Corr_Main_1|Add13~0_combout\ & \Corr_Main_1|Add12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add13~0_combout\,
	datab => \Corr_Main_1|Add12~0_combout\,
	datad => VCC,
	combout => \Corr_Main_1|Add16~0_combout\,
	cout => \Corr_Main_1|Add16~1\);

-- Location: LCCOMB_X14_Y6_N8
\Corr_Main_1|Add16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~2_combout\ = (\Corr_Main_1|Add13~2_combout\ & ((\Corr_Main_1|Add12~2_combout\ & (\Corr_Main_1|Add16~1\ & VCC)) # (!\Corr_Main_1|Add12~2_combout\ & (!\Corr_Main_1|Add16~1\)))) # (!\Corr_Main_1|Add13~2_combout\ & 
-- ((\Corr_Main_1|Add12~2_combout\ & (!\Corr_Main_1|Add16~1\)) # (!\Corr_Main_1|Add12~2_combout\ & ((\Corr_Main_1|Add16~1\) # (GND)))))
-- \Corr_Main_1|Add16~3\ = CARRY((\Corr_Main_1|Add13~2_combout\ & (!\Corr_Main_1|Add12~2_combout\ & !\Corr_Main_1|Add16~1\)) # (!\Corr_Main_1|Add13~2_combout\ & ((!\Corr_Main_1|Add16~1\) # (!\Corr_Main_1|Add12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add13~2_combout\,
	datab => \Corr_Main_1|Add12~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~1\,
	combout => \Corr_Main_1|Add16~2_combout\,
	cout => \Corr_Main_1|Add16~3\);

-- Location: LCCOMB_X14_Y6_N10
\Corr_Main_1|Add16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~4_combout\ = ((\Corr_Main_1|Add13~4_combout\ $ (\Corr_Main_1|Add12~4_combout\ $ (!\Corr_Main_1|Add16~3\)))) # (GND)
-- \Corr_Main_1|Add16~5\ = CARRY((\Corr_Main_1|Add13~4_combout\ & ((\Corr_Main_1|Add12~4_combout\) # (!\Corr_Main_1|Add16~3\))) # (!\Corr_Main_1|Add13~4_combout\ & (\Corr_Main_1|Add12~4_combout\ & !\Corr_Main_1|Add16~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add13~4_combout\,
	datab => \Corr_Main_1|Add12~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~3\,
	combout => \Corr_Main_1|Add16~4_combout\,
	cout => \Corr_Main_1|Add16~5\);

-- Location: LCCOMB_X14_Y6_N12
\Corr_Main_1|Add16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~6_combout\ = (\Corr_Main_1|Add12~6_combout\ & ((\Corr_Main_1|Add13~6_combout\ & (\Corr_Main_1|Add16~5\ & VCC)) # (!\Corr_Main_1|Add13~6_combout\ & (!\Corr_Main_1|Add16~5\)))) # (!\Corr_Main_1|Add12~6_combout\ & 
-- ((\Corr_Main_1|Add13~6_combout\ & (!\Corr_Main_1|Add16~5\)) # (!\Corr_Main_1|Add13~6_combout\ & ((\Corr_Main_1|Add16~5\) # (GND)))))
-- \Corr_Main_1|Add16~7\ = CARRY((\Corr_Main_1|Add12~6_combout\ & (!\Corr_Main_1|Add13~6_combout\ & !\Corr_Main_1|Add16~5\)) # (!\Corr_Main_1|Add12~6_combout\ & ((!\Corr_Main_1|Add16~5\) # (!\Corr_Main_1|Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add12~6_combout\,
	datab => \Corr_Main_1|Add13~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~5\,
	combout => \Corr_Main_1|Add16~6_combout\,
	cout => \Corr_Main_1|Add16~7\);

-- Location: LCCOMB_X14_Y6_N20
\Corr_Main_1|Add16~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~14_combout\ = (\Corr_Main_1|Add12~14_combout\ & ((\Corr_Main_1|Add13~14_combout\ & (\Corr_Main_1|Add16~13\ & VCC)) # (!\Corr_Main_1|Add13~14_combout\ & (!\Corr_Main_1|Add16~13\)))) # (!\Corr_Main_1|Add12~14_combout\ & 
-- ((\Corr_Main_1|Add13~14_combout\ & (!\Corr_Main_1|Add16~13\)) # (!\Corr_Main_1|Add13~14_combout\ & ((\Corr_Main_1|Add16~13\) # (GND)))))
-- \Corr_Main_1|Add16~15\ = CARRY((\Corr_Main_1|Add12~14_combout\ & (!\Corr_Main_1|Add13~14_combout\ & !\Corr_Main_1|Add16~13\)) # (!\Corr_Main_1|Add12~14_combout\ & ((!\Corr_Main_1|Add16~13\) # (!\Corr_Main_1|Add13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add12~14_combout\,
	datab => \Corr_Main_1|Add13~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~13\,
	combout => \Corr_Main_1|Add16~14_combout\,
	cout => \Corr_Main_1|Add16~15\);

-- Location: LCCOMB_X14_Y6_N22
\Corr_Main_1|Add16~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~16_combout\ = ((\Corr_Main_1|Add12~16_combout\ $ (\Corr_Main_1|Add13~16_combout\ $ (!\Corr_Main_1|Add16~15\)))) # (GND)
-- \Corr_Main_1|Add16~17\ = CARRY((\Corr_Main_1|Add12~16_combout\ & ((\Corr_Main_1|Add13~16_combout\) # (!\Corr_Main_1|Add16~15\))) # (!\Corr_Main_1|Add12~16_combout\ & (\Corr_Main_1|Add13~16_combout\ & !\Corr_Main_1|Add16~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add12~16_combout\,
	datab => \Corr_Main_1|Add13~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~15\,
	combout => \Corr_Main_1|Add16~16_combout\,
	cout => \Corr_Main_1|Add16~17\);

-- Location: LCCOMB_X6_Y6_N8
\Corr_Main_1|Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~1_cout\ = CARRY(!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	datad => VCC,
	cout => \Corr_Main_1|Add3~1_cout\);

-- Location: LCCOMB_X6_Y6_N10
\Corr_Main_1|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~2_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\ & ((\Corr_Main_1|Add3~1_cout\) # (GND))) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\ & 
-- (!\Corr_Main_1|Add3~1_cout\))
-- \Corr_Main_1|Add3~3\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\) # (!\Corr_Main_1|Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a1\,
	datad => VCC,
	cin => \Corr_Main_1|Add3~1_cout\,
	combout => \Corr_Main_1|Add3~2_combout\,
	cout => \Corr_Main_1|Add3~3\);

-- Location: LCCOMB_X6_Y6_N12
\Corr_Main_1|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~4_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a2\ & (!\Corr_Main_1|Add3~3\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a2\ & (\Corr_Main_1|Add3~3\ $ (GND)))
-- \Corr_Main_1|Add3~5\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a2\ & !\Corr_Main_1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a2\,
	datad => VCC,
	cin => \Corr_Main_1|Add3~3\,
	combout => \Corr_Main_1|Add3~4_combout\,
	cout => \Corr_Main_1|Add3~5\);

-- Location: LCCOMB_X6_Y6_N14
\Corr_Main_1|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~6_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\ & ((\Corr_Main_1|Add3~5\) # (GND))) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\ & (!\Corr_Main_1|Add3~5\))
-- \Corr_Main_1|Add3~7\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\) # (!\Corr_Main_1|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a3\,
	datad => VCC,
	cin => \Corr_Main_1|Add3~5\,
	combout => \Corr_Main_1|Add3~6_combout\,
	cout => \Corr_Main_1|Add3~7\);

-- Location: LCCOMB_X6_Y6_N16
\Corr_Main_1|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~8_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a4\ & (!\Corr_Main_1|Add3~7\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a4\ & (\Corr_Main_1|Add3~7\ $ (GND)))
-- \Corr_Main_1|Add3~9\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a4\ & !\Corr_Main_1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a4\,
	datad => VCC,
	cin => \Corr_Main_1|Add3~7\,
	combout => \Corr_Main_1|Add3~8_combout\,
	cout => \Corr_Main_1|Add3~9\);

-- Location: LCCOMB_X6_Y6_N18
\Corr_Main_1|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add3~10_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\ & ((\Corr_Main_1|Add3~9\) # (GND))) # (!\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\ & (!\Corr_Main_1|Add3~9\))
-- \Corr_Main_1|Add3~11\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\) # (!\Corr_Main_1|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_0|auto_generated|altsyncram2|ram_block3a5\,
	datad => VCC,
	cin => \Corr_Main_1|Add3~9\,
	combout => \Corr_Main_1|Add3~10_combout\,
	cout => \Corr_Main_1|Add3~11\);

-- Location: LCCOMB_X7_Y6_N6
\Corr_Main_1|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~4_combout\ = ((\Corr_Main_1|buff|buffer_2\(34) $ (\Corr_Main_1|Add3~4_combout\ $ (\Corr_Main_1|Add4~3\)))) # (GND)
-- \Corr_Main_1|Add4~5\ = CARRY((\Corr_Main_1|buff|buffer_2\(34) & (\Corr_Main_1|Add3~4_combout\ & !\Corr_Main_1|Add4~3\)) # (!\Corr_Main_1|buff|buffer_2\(34) & ((\Corr_Main_1|Add3~4_combout\) # (!\Corr_Main_1|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_2\(34),
	datab => \Corr_Main_1|Add3~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add4~3\,
	combout => \Corr_Main_1|Add4~4_combout\,
	cout => \Corr_Main_1|Add4~5\);

-- Location: LCCOMB_X7_Y6_N8
\Corr_Main_1|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~6_combout\ = (\Corr_Main_1|buff|buffer_3\(34) & ((\Corr_Main_1|Add3~6_combout\ & (!\Corr_Main_1|Add4~5\)) # (!\Corr_Main_1|Add3~6_combout\ & ((\Corr_Main_1|Add4~5\) # (GND))))) # (!\Corr_Main_1|buff|buffer_3\(34) & 
-- ((\Corr_Main_1|Add3~6_combout\ & (\Corr_Main_1|Add4~5\ & VCC)) # (!\Corr_Main_1|Add3~6_combout\ & (!\Corr_Main_1|Add4~5\))))
-- \Corr_Main_1|Add4~7\ = CARRY((\Corr_Main_1|buff|buffer_3\(34) & ((!\Corr_Main_1|Add4~5\) # (!\Corr_Main_1|Add3~6_combout\))) # (!\Corr_Main_1|buff|buffer_3\(34) & (!\Corr_Main_1|Add3~6_combout\ & !\Corr_Main_1|Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_3\(34),
	datab => \Corr_Main_1|Add3~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add4~5\,
	combout => \Corr_Main_1|Add4~6_combout\,
	cout => \Corr_Main_1|Add4~7\);

-- Location: LCCOMB_X7_Y6_N14
\Corr_Main_1|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add4~12_combout\ = ((\Corr_Main_1|Add3~12_combout\ $ (\Corr_Main_1|buff|buffer_6\(34) $ (\Corr_Main_1|Add4~11\)))) # (GND)
-- \Corr_Main_1|Add4~13\ = CARRY((\Corr_Main_1|Add3~12_combout\ & ((!\Corr_Main_1|Add4~11\) # (!\Corr_Main_1|buff|buffer_6\(34)))) # (!\Corr_Main_1|Add3~12_combout\ & (!\Corr_Main_1|buff|buffer_6\(34) & !\Corr_Main_1|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add3~12_combout\,
	datab => \Corr_Main_1|buff|buffer_6\(34),
	datad => VCC,
	cin => \Corr_Main_1|Add4~11\,
	combout => \Corr_Main_1|Add4~12_combout\,
	cout => \Corr_Main_1|Add4~13\);

-- Location: LCCOMB_X8_Y8_N0
\Corr_Main_1|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~0_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a18\ & (\Corr_Main_1|buff|buffer_0\(39) $ (VCC))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a18\ & 
-- (\Corr_Main_1|buff|buffer_0\(39) & VCC))
-- \Corr_Main_1|Add8~1\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a18\ & \Corr_Main_1|buff|buffer_0\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a18\,
	datab => \Corr_Main_1|buff|buffer_0\(39),
	datad => VCC,
	combout => \Corr_Main_1|Add8~0_combout\,
	cout => \Corr_Main_1|Add8~1\);

-- Location: LCCOMB_X8_Y8_N2
\Corr_Main_1|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~2_combout\ = (\Corr_Main_1|buff|buffer_1\(39) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a19\ & (\Corr_Main_1|Add8~1\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a19\ & 
-- (!\Corr_Main_1|Add8~1\)))) # (!\Corr_Main_1|buff|buffer_1\(39) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a19\ & (!\Corr_Main_1|Add8~1\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a19\ & 
-- ((\Corr_Main_1|Add8~1\) # (GND)))))
-- \Corr_Main_1|Add8~3\ = CARRY((\Corr_Main_1|buff|buffer_1\(39) & (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a19\ & !\Corr_Main_1|Add8~1\)) # (!\Corr_Main_1|buff|buffer_1\(39) & ((!\Corr_Main_1|Add8~1\) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_1\(39),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a19\,
	datad => VCC,
	cin => \Corr_Main_1|Add8~1\,
	combout => \Corr_Main_1|Add8~2_combout\,
	cout => \Corr_Main_1|Add8~3\);

-- Location: LCCOMB_X8_Y8_N8
\Corr_Main_1|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~8_combout\ = ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a22\ $ (\Corr_Main_1|buff|buffer_4\(39) $ (!\Corr_Main_1|Add8~7\)))) # (GND)
-- \Corr_Main_1|Add8~9\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a22\ & ((\Corr_Main_1|buff|buffer_4\(39)) # (!\Corr_Main_1|Add8~7\))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a22\ & 
-- (\Corr_Main_1|buff|buffer_4\(39) & !\Corr_Main_1|Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a22\,
	datab => \Corr_Main_1|buff|buffer_4\(39),
	datad => VCC,
	cin => \Corr_Main_1|Add8~7\,
	combout => \Corr_Main_1|Add8~8_combout\,
	cout => \Corr_Main_1|Add8~9\);

-- Location: LCCOMB_X8_Y8_N10
\Corr_Main_1|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~10_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a23\ & ((\Corr_Main_1|buff|buffer_5\(39) & (\Corr_Main_1|Add8~9\ & VCC)) # (!\Corr_Main_1|buff|buffer_5\(39) & (!\Corr_Main_1|Add8~9\)))) # 
-- (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a23\ & ((\Corr_Main_1|buff|buffer_5\(39) & (!\Corr_Main_1|Add8~9\)) # (!\Corr_Main_1|buff|buffer_5\(39) & ((\Corr_Main_1|Add8~9\) # (GND)))))
-- \Corr_Main_1|Add8~11\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a23\ & (!\Corr_Main_1|buff|buffer_5\(39) & !\Corr_Main_1|Add8~9\)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a23\ & 
-- ((!\Corr_Main_1|Add8~9\) # (!\Corr_Main_1|buff|buffer_5\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a23\,
	datab => \Corr_Main_1|buff|buffer_5\(39),
	datad => VCC,
	cin => \Corr_Main_1|Add8~9\,
	combout => \Corr_Main_1|Add8~10_combout\,
	cout => \Corr_Main_1|Add8~11\);

-- Location: LCCOMB_X8_Y6_N2
\Corr_Main_1|Add14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~0_combout\ = (\Corr_Main_1|Add4~0_combout\ & (\Corr_Main_1|Add8~0_combout\ $ (VCC))) # (!\Corr_Main_1|Add4~0_combout\ & (\Corr_Main_1|Add8~0_combout\ & VCC))
-- \Corr_Main_1|Add14~1\ = CARRY((\Corr_Main_1|Add4~0_combout\ & \Corr_Main_1|Add8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~0_combout\,
	datab => \Corr_Main_1|Add8~0_combout\,
	datad => VCC,
	combout => \Corr_Main_1|Add14~0_combout\,
	cout => \Corr_Main_1|Add14~1\);

-- Location: LCCOMB_X8_Y6_N4
\Corr_Main_1|Add14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~2_combout\ = (\Corr_Main_1|Add4~2_combout\ & ((\Corr_Main_1|Add8~2_combout\ & (\Corr_Main_1|Add14~1\ & VCC)) # (!\Corr_Main_1|Add8~2_combout\ & (!\Corr_Main_1|Add14~1\)))) # (!\Corr_Main_1|Add4~2_combout\ & 
-- ((\Corr_Main_1|Add8~2_combout\ & (!\Corr_Main_1|Add14~1\)) # (!\Corr_Main_1|Add8~2_combout\ & ((\Corr_Main_1|Add14~1\) # (GND)))))
-- \Corr_Main_1|Add14~3\ = CARRY((\Corr_Main_1|Add4~2_combout\ & (!\Corr_Main_1|Add8~2_combout\ & !\Corr_Main_1|Add14~1\)) # (!\Corr_Main_1|Add4~2_combout\ & ((!\Corr_Main_1|Add14~1\) # (!\Corr_Main_1|Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~2_combout\,
	datab => \Corr_Main_1|Add8~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~1\,
	combout => \Corr_Main_1|Add14~2_combout\,
	cout => \Corr_Main_1|Add14~3\);

-- Location: LCCOMB_X8_Y6_N14
\Corr_Main_1|Add14~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~12_combout\ = ((\Corr_Main_1|Add8~12_combout\ $ (\Corr_Main_1|Add4~12_combout\ $ (!\Corr_Main_1|Add14~11\)))) # (GND)
-- \Corr_Main_1|Add14~13\ = CARRY((\Corr_Main_1|Add8~12_combout\ & ((\Corr_Main_1|Add4~12_combout\) # (!\Corr_Main_1|Add14~11\))) # (!\Corr_Main_1|Add8~12_combout\ & (\Corr_Main_1|Add4~12_combout\ & !\Corr_Main_1|Add14~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add8~12_combout\,
	datab => \Corr_Main_1|Add4~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~11\,
	combout => \Corr_Main_1|Add14~12_combout\,
	cout => \Corr_Main_1|Add14~13\);

-- Location: LCCOMB_X10_Y8_N10
\Corr_Main_1|Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~1_cout\ = CARRY(!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a0~portbdataout\,
	datad => VCC,
	cout => \Corr_Main_1|Add5~1_cout\);

-- Location: LCCOMB_X10_Y8_N12
\Corr_Main_1|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~2_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\ & ((\Corr_Main_1|Add5~1_cout\) # (GND))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\ & 
-- (!\Corr_Main_1|Add5~1_cout\))
-- \Corr_Main_1|Add5~3\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\) # (!\Corr_Main_1|Add5~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a1\,
	datad => VCC,
	cin => \Corr_Main_1|Add5~1_cout\,
	combout => \Corr_Main_1|Add5~2_combout\,
	cout => \Corr_Main_1|Add5~3\);

-- Location: LCCOMB_X10_Y8_N14
\Corr_Main_1|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add5~4_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\ & (!\Corr_Main_1|Add5~3\ & VCC)) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\ & (\Corr_Main_1|Add5~3\ $ (GND)))
-- \Corr_Main_1|Add5~5\ = CARRY((!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\ & !\Corr_Main_1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a2\,
	datad => VCC,
	cin => \Corr_Main_1|Add5~3\,
	combout => \Corr_Main_1|Add5~4_combout\,
	cout => \Corr_Main_1|Add5~5\);

-- Location: LCCOMB_X10_Y7_N12
\Corr_Main_1|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~2_combout\ = (\Corr_Main_1|buff|buffer_1\(44) & ((\Corr_Main_1|Add5~2_combout\ & (!\Corr_Main_1|Add6~1\)) # (!\Corr_Main_1|Add5~2_combout\ & ((\Corr_Main_1|Add6~1\) # (GND))))) # (!\Corr_Main_1|buff|buffer_1\(44) & 
-- ((\Corr_Main_1|Add5~2_combout\ & (\Corr_Main_1|Add6~1\ & VCC)) # (!\Corr_Main_1|Add5~2_combout\ & (!\Corr_Main_1|Add6~1\))))
-- \Corr_Main_1|Add6~3\ = CARRY((\Corr_Main_1|buff|buffer_1\(44) & ((!\Corr_Main_1|Add6~1\) # (!\Corr_Main_1|Add5~2_combout\))) # (!\Corr_Main_1|buff|buffer_1\(44) & (!\Corr_Main_1|Add5~2_combout\ & !\Corr_Main_1|Add6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_1\(44),
	datab => \Corr_Main_1|Add5~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add6~1\,
	combout => \Corr_Main_1|Add6~2_combout\,
	cout => \Corr_Main_1|Add6~3\);

-- Location: LCCOMB_X10_Y7_N16
\Corr_Main_1|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~6_combout\ = (\Corr_Main_1|Add5~6_combout\ & ((\Corr_Main_1|buff|buffer_3\(44) & (!\Corr_Main_1|Add6~5\)) # (!\Corr_Main_1|buff|buffer_3\(44) & (\Corr_Main_1|Add6~5\ & VCC)))) # (!\Corr_Main_1|Add5~6_combout\ & 
-- ((\Corr_Main_1|buff|buffer_3\(44) & ((\Corr_Main_1|Add6~5\) # (GND))) # (!\Corr_Main_1|buff|buffer_3\(44) & (!\Corr_Main_1|Add6~5\))))
-- \Corr_Main_1|Add6~7\ = CARRY((\Corr_Main_1|Add5~6_combout\ & (\Corr_Main_1|buff|buffer_3\(44) & !\Corr_Main_1|Add6~5\)) # (!\Corr_Main_1|Add5~6_combout\ & ((\Corr_Main_1|buff|buffer_3\(44)) # (!\Corr_Main_1|Add6~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add5~6_combout\,
	datab => \Corr_Main_1|buff|buffer_3\(44),
	datad => VCC,
	cin => \Corr_Main_1|Add6~5\,
	combout => \Corr_Main_1|Add6~6_combout\,
	cout => \Corr_Main_1|Add6~7\);

-- Location: LCCOMB_X10_Y7_N20
\Corr_Main_1|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~10_combout\ = (\Corr_Main_1|Add5~10_combout\ & ((\Corr_Main_1|buff|buffer_5\(44) & (!\Corr_Main_1|Add6~9\)) # (!\Corr_Main_1|buff|buffer_5\(44) & (\Corr_Main_1|Add6~9\ & VCC)))) # (!\Corr_Main_1|Add5~10_combout\ & 
-- ((\Corr_Main_1|buff|buffer_5\(44) & ((\Corr_Main_1|Add6~9\) # (GND))) # (!\Corr_Main_1|buff|buffer_5\(44) & (!\Corr_Main_1|Add6~9\))))
-- \Corr_Main_1|Add6~11\ = CARRY((\Corr_Main_1|Add5~10_combout\ & (\Corr_Main_1|buff|buffer_5\(44) & !\Corr_Main_1|Add6~9\)) # (!\Corr_Main_1|Add5~10_combout\ & ((\Corr_Main_1|buff|buffer_5\(44)) # (!\Corr_Main_1|Add6~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add5~10_combout\,
	datab => \Corr_Main_1|buff|buffer_5\(44),
	datad => VCC,
	cin => \Corr_Main_1|Add6~9\,
	combout => \Corr_Main_1|Add6~10_combout\,
	cout => \Corr_Main_1|Add6~11\);

-- Location: LCFF_X12_Y7_N15
\Corr_Main_1|buff|buffer_2[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_2\(49));

-- Location: LCFF_X12_Y7_N13
\Corr_Main_1|buff|buffer_1[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a10\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_1\(49));

-- Location: LCFF_X12_Y7_N11
\Corr_Main_1|buff|buffer_0[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_0\(49));

-- Location: LCCOMB_X12_Y7_N10
\Corr_Main_1|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~0_combout\ = (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\ & (\Corr_Main_1|buff|buffer_0\(49) $ (VCC))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\ & 
-- (\Corr_Main_1|buff|buffer_0\(49) & VCC))
-- \Corr_Main_1|Add9~1\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\ & \Corr_Main_1|buff|buffer_0\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a9\,
	datab => \Corr_Main_1|buff|buffer_0\(49),
	datad => VCC,
	combout => \Corr_Main_1|Add9~0_combout\,
	cout => \Corr_Main_1|Add9~1\);

-- Location: LCCOMB_X12_Y7_N14
\Corr_Main_1|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~4_combout\ = ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\ $ (\Corr_Main_1|buff|buffer_2\(49) $ (!\Corr_Main_1|Add9~3\)))) # (GND)
-- \Corr_Main_1|Add9~5\ = CARRY((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\ & ((\Corr_Main_1|buff|buffer_2\(49)) # (!\Corr_Main_1|Add9~3\))) # (!\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\ & 
-- (\Corr_Main_1|buff|buffer_2\(49) & !\Corr_Main_1|Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a11\,
	datab => \Corr_Main_1|buff|buffer_2\(49),
	datad => VCC,
	cin => \Corr_Main_1|Add9~3\,
	combout => \Corr_Main_1|Add9~4_combout\,
	cout => \Corr_Main_1|Add9~5\);

-- Location: LCCOMB_X12_Y7_N18
\Corr_Main_1|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~8_combout\ = ((\Corr_Main_1|buff|buffer_4\(49) $ (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\ $ (!\Corr_Main_1|Add9~7\)))) # (GND)
-- \Corr_Main_1|Add9~9\ = CARRY((\Corr_Main_1|buff|buffer_4\(49) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\) # (!\Corr_Main_1|Add9~7\))) # (!\Corr_Main_1|buff|buffer_4\(49) & 
-- (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\ & !\Corr_Main_1|Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_4\(49),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a13\,
	datad => VCC,
	cin => \Corr_Main_1|Add9~7\,
	combout => \Corr_Main_1|Add9~8_combout\,
	cout => \Corr_Main_1|Add9~9\);

-- Location: LCCOMB_X9_Y7_N10
\Corr_Main_1|Add17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~4_combout\ = ((\Corr_Main_1|Add6~4_combout\ $ (\Corr_Main_1|Add9~4_combout\ $ (!\Corr_Main_1|Add17~3\)))) # (GND)
-- \Corr_Main_1|Add17~5\ = CARRY((\Corr_Main_1|Add6~4_combout\ & ((\Corr_Main_1|Add9~4_combout\) # (!\Corr_Main_1|Add17~3\))) # (!\Corr_Main_1|Add6~4_combout\ & (\Corr_Main_1|Add9~4_combout\ & !\Corr_Main_1|Add17~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add6~4_combout\,
	datab => \Corr_Main_1|Add9~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~3\,
	combout => \Corr_Main_1|Add17~4_combout\,
	cout => \Corr_Main_1|Add17~5\);

-- Location: LCCOMB_X9_Y7_N12
\Corr_Main_1|Add17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~6_combout\ = (\Corr_Main_1|Add9~6_combout\ & ((\Corr_Main_1|Add6~6_combout\ & (\Corr_Main_1|Add17~5\ & VCC)) # (!\Corr_Main_1|Add6~6_combout\ & (!\Corr_Main_1|Add17~5\)))) # (!\Corr_Main_1|Add9~6_combout\ & 
-- ((\Corr_Main_1|Add6~6_combout\ & (!\Corr_Main_1|Add17~5\)) # (!\Corr_Main_1|Add6~6_combout\ & ((\Corr_Main_1|Add17~5\) # (GND)))))
-- \Corr_Main_1|Add17~7\ = CARRY((\Corr_Main_1|Add9~6_combout\ & (!\Corr_Main_1|Add6~6_combout\ & !\Corr_Main_1|Add17~5\)) # (!\Corr_Main_1|Add9~6_combout\ & ((!\Corr_Main_1|Add17~5\) # (!\Corr_Main_1|Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add9~6_combout\,
	datab => \Corr_Main_1|Add6~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~5\,
	combout => \Corr_Main_1|Add17~6_combout\,
	cout => \Corr_Main_1|Add17~7\);

-- Location: LCCOMB_X9_Y7_N14
\Corr_Main_1|Add17~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~8_combout\ = ((\Corr_Main_1|Add6~8_combout\ $ (\Corr_Main_1|Add9~8_combout\ $ (!\Corr_Main_1|Add17~7\)))) # (GND)
-- \Corr_Main_1|Add17~9\ = CARRY((\Corr_Main_1|Add6~8_combout\ & ((\Corr_Main_1|Add9~8_combout\) # (!\Corr_Main_1|Add17~7\))) # (!\Corr_Main_1|Add6~8_combout\ & (\Corr_Main_1|Add9~8_combout\ & !\Corr_Main_1|Add17~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add6~8_combout\,
	datab => \Corr_Main_1|Add9~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~7\,
	combout => \Corr_Main_1|Add17~8_combout\,
	cout => \Corr_Main_1|Add17~9\);

-- Location: LCCOMB_X9_Y7_N16
\Corr_Main_1|Add17~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~10_combout\ = (\Corr_Main_1|Add9~10_combout\ & ((\Corr_Main_1|Add6~10_combout\ & (\Corr_Main_1|Add17~9\ & VCC)) # (!\Corr_Main_1|Add6~10_combout\ & (!\Corr_Main_1|Add17~9\)))) # (!\Corr_Main_1|Add9~10_combout\ & 
-- ((\Corr_Main_1|Add6~10_combout\ & (!\Corr_Main_1|Add17~9\)) # (!\Corr_Main_1|Add6~10_combout\ & ((\Corr_Main_1|Add17~9\) # (GND)))))
-- \Corr_Main_1|Add17~11\ = CARRY((\Corr_Main_1|Add9~10_combout\ & (!\Corr_Main_1|Add6~10_combout\ & !\Corr_Main_1|Add17~9\)) # (!\Corr_Main_1|Add9~10_combout\ & ((!\Corr_Main_1|Add17~9\) # (!\Corr_Main_1|Add6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add9~10_combout\,
	datab => \Corr_Main_1|Add6~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~9\,
	combout => \Corr_Main_1|Add17~10_combout\,
	cout => \Corr_Main_1|Add17~11\);

-- Location: LCCOMB_X9_Y6_N10
\Corr_Main_1|Add18~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~8_combout\ = ((\Corr_Main_1|Add14~8_combout\ $ (\Corr_Main_1|Add17~8_combout\ $ (!\Corr_Main_1|Add18~7\)))) # (GND)
-- \Corr_Main_1|Add18~9\ = CARRY((\Corr_Main_1|Add14~8_combout\ & ((\Corr_Main_1|Add17~8_combout\) # (!\Corr_Main_1|Add18~7\))) # (!\Corr_Main_1|Add14~8_combout\ & (\Corr_Main_1|Add17~8_combout\ & !\Corr_Main_1|Add18~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add14~8_combout\,
	datab => \Corr_Main_1|Add17~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~7\,
	combout => \Corr_Main_1|Add18~8_combout\,
	cout => \Corr_Main_1|Add18~9\);

-- Location: LCCOMB_X9_Y6_N12
\Corr_Main_1|Add18~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~10_combout\ = (\Corr_Main_1|Add14~10_combout\ & ((\Corr_Main_1|Add17~10_combout\ & (\Corr_Main_1|Add18~9\ & VCC)) # (!\Corr_Main_1|Add17~10_combout\ & (!\Corr_Main_1|Add18~9\)))) # (!\Corr_Main_1|Add14~10_combout\ & 
-- ((\Corr_Main_1|Add17~10_combout\ & (!\Corr_Main_1|Add18~9\)) # (!\Corr_Main_1|Add17~10_combout\ & ((\Corr_Main_1|Add18~9\) # (GND)))))
-- \Corr_Main_1|Add18~11\ = CARRY((\Corr_Main_1|Add14~10_combout\ & (!\Corr_Main_1|Add17~10_combout\ & !\Corr_Main_1|Add18~9\)) # (!\Corr_Main_1|Add14~10_combout\ & ((!\Corr_Main_1|Add18~9\) # (!\Corr_Main_1|Add17~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add14~10_combout\,
	datab => \Corr_Main_1|Add17~10_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~9\,
	combout => \Corr_Main_1|Add18~10_combout\,
	cout => \Corr_Main_1|Add18~11\);

-- Location: LCCOMB_X9_Y6_N14
\Corr_Main_1|Add18~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~12_combout\ = ((\Corr_Main_1|Add17~12_combout\ $ (\Corr_Main_1|Add14~12_combout\ $ (!\Corr_Main_1|Add18~11\)))) # (GND)
-- \Corr_Main_1|Add18~13\ = CARRY((\Corr_Main_1|Add17~12_combout\ & ((\Corr_Main_1|Add14~12_combout\) # (!\Corr_Main_1|Add18~11\))) # (!\Corr_Main_1|Add17~12_combout\ & (\Corr_Main_1|Add14~12_combout\ & !\Corr_Main_1|Add18~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add17~12_combout\,
	datab => \Corr_Main_1|Add14~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~11\,
	combout => \Corr_Main_1|Add18~12_combout\,
	cout => \Corr_Main_1|Add18~13\);

-- Location: LCCOMB_X10_Y6_N2
\Corr_Main_1|Add19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~1_cout\ = CARRY((\Corr_Main_1|Add18~0_combout\ & \Corr_Main_1|Add16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add18~0_combout\,
	datab => \Corr_Main_1|Add16~0_combout\,
	datad => VCC,
	cout => \Corr_Main_1|Add19~1_cout\);

-- Location: LCCOMB_X10_Y6_N4
\Corr_Main_1|Add19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~3_cout\ = CARRY((\Corr_Main_1|Add18~2_combout\ & (!\Corr_Main_1|Add16~2_combout\ & !\Corr_Main_1|Add19~1_cout\)) # (!\Corr_Main_1|Add18~2_combout\ & ((!\Corr_Main_1|Add19~1_cout\) # (!\Corr_Main_1|Add16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add18~2_combout\,
	datab => \Corr_Main_1|Add16~2_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add19~1_cout\,
	cout => \Corr_Main_1|Add19~3_cout\);

-- Location: LCCOMB_X10_Y6_N6
\Corr_Main_1|Add19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~4_combout\ = ((\Corr_Main_1|Add18~4_combout\ $ (\Corr_Main_1|Add16~4_combout\ $ (!\Corr_Main_1|Add19~3_cout\)))) # (GND)
-- \Corr_Main_1|Add19~5\ = CARRY((\Corr_Main_1|Add18~4_combout\ & ((\Corr_Main_1|Add16~4_combout\) # (!\Corr_Main_1|Add19~3_cout\))) # (!\Corr_Main_1|Add18~4_combout\ & (\Corr_Main_1|Add16~4_combout\ & !\Corr_Main_1|Add19~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add18~4_combout\,
	datab => \Corr_Main_1|Add16~4_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add19~3_cout\,
	combout => \Corr_Main_1|Add19~4_combout\,
	cout => \Corr_Main_1|Add19~5\);

-- Location: LCCOMB_X10_Y6_N8
\Corr_Main_1|Add19~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~6_combout\ = (\Corr_Main_1|Add18~6_combout\ & ((\Corr_Main_1|Add16~6_combout\ & (\Corr_Main_1|Add19~5\ & VCC)) # (!\Corr_Main_1|Add16~6_combout\ & (!\Corr_Main_1|Add19~5\)))) # (!\Corr_Main_1|Add18~6_combout\ & 
-- ((\Corr_Main_1|Add16~6_combout\ & (!\Corr_Main_1|Add19~5\)) # (!\Corr_Main_1|Add16~6_combout\ & ((\Corr_Main_1|Add19~5\) # (GND)))))
-- \Corr_Main_1|Add19~7\ = CARRY((\Corr_Main_1|Add18~6_combout\ & (!\Corr_Main_1|Add16~6_combout\ & !\Corr_Main_1|Add19~5\)) # (!\Corr_Main_1|Add18~6_combout\ & ((!\Corr_Main_1|Add19~5\) # (!\Corr_Main_1|Add16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add18~6_combout\,
	datab => \Corr_Main_1|Add16~6_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add19~5\,
	combout => \Corr_Main_1|Add19~6_combout\,
	cout => \Corr_Main_1|Add19~7\);

-- Location: LCCOMB_X10_Y6_N10
\Corr_Main_1|Add19~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~8_combout\ = ((\Corr_Main_1|Add16~8_combout\ $ (\Corr_Main_1|Add18~8_combout\ $ (!\Corr_Main_1|Add19~7\)))) # (GND)
-- \Corr_Main_1|Add19~9\ = CARRY((\Corr_Main_1|Add16~8_combout\ & ((\Corr_Main_1|Add18~8_combout\) # (!\Corr_Main_1|Add19~7\))) # (!\Corr_Main_1|Add16~8_combout\ & (\Corr_Main_1|Add18~8_combout\ & !\Corr_Main_1|Add19~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add16~8_combout\,
	datab => \Corr_Main_1|Add18~8_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add19~7\,
	combout => \Corr_Main_1|Add19~8_combout\,
	cout => \Corr_Main_1|Add19~9\);

-- Location: LCCOMB_X10_Y6_N14
\Corr_Main_1|Add19~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~12_combout\ = ((\Corr_Main_1|Add16~12_combout\ $ (\Corr_Main_1|Add18~12_combout\ $ (!\Corr_Main_1|Add19~11\)))) # (GND)
-- \Corr_Main_1|Add19~13\ = CARRY((\Corr_Main_1|Add16~12_combout\ & ((\Corr_Main_1|Add18~12_combout\) # (!\Corr_Main_1|Add19~11\))) # (!\Corr_Main_1|Add16~12_combout\ & (\Corr_Main_1|Add18~12_combout\ & !\Corr_Main_1|Add19~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add16~12_combout\,
	datab => \Corr_Main_1|Add18~12_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add19~11\,
	combout => \Corr_Main_1|Add19~12_combout\,
	cout => \Corr_Main_1|Add19~13\);

-- Location: LCCOMB_X10_Y6_N18
\Corr_Main_1|Add19~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~16_combout\ = ((\Corr_Main_1|Add18~16_combout\ $ (\Corr_Main_1|Add16~16_combout\ $ (!\Corr_Main_1|Add19~15\)))) # (GND)
-- \Corr_Main_1|Add19~17\ = CARRY((\Corr_Main_1|Add18~16_combout\ & ((\Corr_Main_1|Add16~16_combout\) # (!\Corr_Main_1|Add19~15\))) # (!\Corr_Main_1|Add18~16_combout\ & (\Corr_Main_1|Add16~16_combout\ & !\Corr_Main_1|Add19~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add18~16_combout\,
	datab => \Corr_Main_1|Add16~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add19~15\,
	combout => \Corr_Main_1|Add19~16_combout\,
	cout => \Corr_Main_1|Add19~17\);

-- Location: LCCOMB_X10_Y6_N0
\Corr_Main_1|PREAMBULE_FOUND~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|PREAMBULE_FOUND~2_combout\ = (\Corr_Main_1|Add19~10_combout\) # ((\Corr_Main_1|Add19~8_combout\) # ((\Corr_Main_1|Add19~6_combout\ & \Corr_Main_1|Add19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add19~10_combout\,
	datab => \Corr_Main_1|Add19~6_combout\,
	datac => \Corr_Main_1|Add19~4_combout\,
	datad => \Corr_Main_1|Add19~8_combout\,
	combout => \Corr_Main_1|PREAMBULE_FOUND~2_combout\);

-- Location: LCCOMB_X12_Y6_N6
\Corr_Main_1|PREAMBULE_FOUND~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|PREAMBULE_FOUND~3_combout\ = (\Corr_Main_1|Add19~14_combout\ & (\Corr_Main_1|Add19~16_combout\ & (\Corr_Main_1|Add19~12_combout\ & \Corr_Main_1|PREAMBULE_FOUND~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add19~14_combout\,
	datab => \Corr_Main_1|Add19~16_combout\,
	datac => \Corr_Main_1|Add19~12_combout\,
	datad => \Corr_Main_1|PREAMBULE_FOUND~2_combout\,
	combout => \Corr_Main_1|PREAMBULE_FOUND~3_combout\);

-- Location: LCCOMB_X24_Y6_N8
\Corr_Main_1|check_corr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|check_corr~0_combout\ = (\Corr_Main_1|check_corr\(1) & (!\Corr_Main_1|check_corr\(0) & ((\Corr_Main_1|check_corr\(2)) # (\Corr_Main_1|check_corr\(3))))) # (!\Corr_Main_1|check_corr\(1) & (((\Corr_Main_1|check_corr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|check_corr\(2),
	datab => \Corr_Main_1|check_corr\(3),
	datac => \Corr_Main_1|check_corr\(1),
	datad => \Corr_Main_1|check_corr\(0),
	combout => \Corr_Main_1|check_corr~0_combout\);

-- Location: LCFF_X24_Y6_N9
\Corr_Main_1|check_corr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|check_corr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|check_corr\(1));

-- Location: LCCOMB_X24_Y6_N4
\Corr_Main_1|check_corr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|check_corr~3_combout\ = \Corr_Main_1|check_corr\(3) $ (((\Corr_Main_1|check_corr\(2) & (\Corr_Main_1|check_corr\(1) & \Corr_Main_1|check_corr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|check_corr\(2),
	datab => \Corr_Main_1|check_corr\(1),
	datac => \Corr_Main_1|check_corr\(3),
	datad => \Corr_Main_1|check_corr\(0),
	combout => \Corr_Main_1|check_corr~3_combout\);

-- Location: LCFF_X24_Y6_N5
\Corr_Main_1|check_corr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|check_corr~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|check_corr\(3));

-- Location: LCCOMB_X24_Y6_N30
\Corr_Main_1|check_corr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|check_corr~1_combout\ = (!\Corr_Main_1|check_corr\(1) & \Corr_Main_1|corr_buffer_update~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|check_corr\(1),
	datac => \Corr_Main_1|corr_buffer_update~regout\,
	combout => \Corr_Main_1|check_corr~1_combout\);

-- Location: LCCOMB_X24_Y6_N18
\Corr_Main_1|check_corr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|check_corr~2_combout\ = (!\Corr_Main_1|check_corr\(0) & ((\Corr_Main_1|check_corr\(2)) # ((\Corr_Main_1|check_corr\(3)) # (\Corr_Main_1|check_corr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|check_corr\(2),
	datab => \Corr_Main_1|check_corr\(3),
	datac => \Corr_Main_1|check_corr\(0),
	datad => \Corr_Main_1|check_corr~1_combout\,
	combout => \Corr_Main_1|check_corr~2_combout\);

-- Location: LCFF_X24_Y6_N19
\Corr_Main_1|check_corr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|check_corr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|check_corr\(0));

-- Location: LCCOMB_X24_Y6_N6
\Corr_Main_1|check_corr~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|check_corr~4_combout\ = \Corr_Main_1|check_corr\(2) $ (((\Corr_Main_1|check_corr\(1) & \Corr_Main_1|check_corr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|check_corr\(1),
	datac => \Corr_Main_1|check_corr\(2),
	datad => \Corr_Main_1|check_corr\(0),
	combout => \Corr_Main_1|check_corr~4_combout\);

-- Location: LCFF_X24_Y6_N7
\Corr_Main_1|check_corr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|check_corr~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|check_corr\(2));

-- Location: LCCOMB_X24_Y6_N22
\Corr_Main_1|PREAMBULE_FOUND~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|PREAMBULE_FOUND~1_combout\ = (\Corr_Main_1|check_corr\(1) & (!\Corr_Main_1|check_corr\(0) & (!\Corr_Main_1|check_corr\(3) & !\Corr_Main_1|check_corr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|check_corr\(1),
	datab => \Corr_Main_1|check_corr\(0),
	datac => \Corr_Main_1|check_corr\(3),
	datad => \Corr_Main_1|check_corr\(2),
	combout => \Corr_Main_1|PREAMBULE_FOUND~1_combout\);

-- Location: LCCOMB_X15_Y6_N18
\Corr_Main_1|Add12~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add12~18_combout\ = \Corr_Main_1|buff|buffer_8\(4) $ (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a53\ $ (\Corr_Main_1|Add12~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_8\(4),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a53\,
	cin => \Corr_Main_1|Add12~17\,
	combout => \Corr_Main_1|Add12~18_combout\);

-- Location: LCCOMB_X12_Y8_N30
\Corr_Main_1|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add1~18_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a44\ $ (!\Corr_Main_1|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a44\,
	cin => \Corr_Main_1|Add1~17\,
	combout => \Corr_Main_1|Add1~18_combout\);

-- Location: LCCOMB_X13_Y8_N20
\Corr_Main_1|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~18_combout\ = (\Corr_Main_1|buff|buffer_8\(9) & ((\Corr_Main_1|Add1~18_combout\ & (!\Corr_Main_1|Add2~17\)) # (!\Corr_Main_1|Add1~18_combout\ & ((\Corr_Main_1|Add2~17\) # (GND))))) # (!\Corr_Main_1|buff|buffer_8\(9) & 
-- ((\Corr_Main_1|Add1~18_combout\ & (\Corr_Main_1|Add2~17\ & VCC)) # (!\Corr_Main_1|Add1~18_combout\ & (!\Corr_Main_1|Add2~17\))))
-- \Corr_Main_1|Add2~19\ = CARRY((\Corr_Main_1|buff|buffer_8\(9) & ((!\Corr_Main_1|Add2~17\) # (!\Corr_Main_1|Add1~18_combout\))) # (!\Corr_Main_1|buff|buffer_8\(9) & (!\Corr_Main_1|Add1~18_combout\ & !\Corr_Main_1|Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_8\(9),
	datab => \Corr_Main_1|Add1~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add2~17\,
	combout => \Corr_Main_1|Add2~18_combout\,
	cout => \Corr_Main_1|Add2~19\);

-- Location: LCCOMB_X13_Y8_N22
\Corr_Main_1|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add2~20_combout\ = \Corr_Main_1|Add1~18_combout\ $ (\Corr_Main_1|Add2~19\ $ (\Corr_Main_1|buff|buffer_8\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add1~18_combout\,
	datad => \Corr_Main_1|buff|buffer_8\(9),
	cin => \Corr_Main_1|Add2~19\,
	combout => \Corr_Main_1|Add2~20_combout\);

-- Location: LCCOMB_X14_Y6_N24
\Corr_Main_1|Add16~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~18_combout\ = (\Corr_Main_1|Add13~18_combout\ & ((\Corr_Main_1|Add12~18_combout\ & (\Corr_Main_1|Add16~17\ & VCC)) # (!\Corr_Main_1|Add12~18_combout\ & (!\Corr_Main_1|Add16~17\)))) # (!\Corr_Main_1|Add13~18_combout\ & 
-- ((\Corr_Main_1|Add12~18_combout\ & (!\Corr_Main_1|Add16~17\)) # (!\Corr_Main_1|Add12~18_combout\ & ((\Corr_Main_1|Add16~17\) # (GND)))))
-- \Corr_Main_1|Add16~19\ = CARRY((\Corr_Main_1|Add13~18_combout\ & (!\Corr_Main_1|Add12~18_combout\ & !\Corr_Main_1|Add16~17\)) # (!\Corr_Main_1|Add13~18_combout\ & ((!\Corr_Main_1|Add16~17\) # (!\Corr_Main_1|Add12~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add13~18_combout\,
	datab => \Corr_Main_1|Add12~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~17\,
	combout => \Corr_Main_1|Add16~18_combout\,
	cout => \Corr_Main_1|Add16~19\);

-- Location: LCCOMB_X14_Y6_N26
\Corr_Main_1|Add16~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~20_combout\ = ((\Corr_Main_1|Add12~18_combout\ $ (\Corr_Main_1|Add13~20_combout\ $ (!\Corr_Main_1|Add16~19\)))) # (GND)
-- \Corr_Main_1|Add16~21\ = CARRY((\Corr_Main_1|Add12~18_combout\ & ((\Corr_Main_1|Add13~20_combout\) # (!\Corr_Main_1|Add16~19\))) # (!\Corr_Main_1|Add12~18_combout\ & (\Corr_Main_1|Add13~20_combout\ & !\Corr_Main_1|Add16~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add12~18_combout\,
	datab => \Corr_Main_1|Add13~20_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add16~19\,
	combout => \Corr_Main_1|Add16~20_combout\,
	cout => \Corr_Main_1|Add16~21\);

-- Location: LCCOMB_X14_Y6_N30
\Corr_Main_1|Add16~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add16~24_combout\ = \Corr_Main_1|Add13~24_combout\ $ (\Corr_Main_1|Add12~18_combout\ $ (!\Corr_Main_1|Add16~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add13~24_combout\,
	datab => \Corr_Main_1|Add12~18_combout\,
	cin => \Corr_Main_1|Add16~23\,
	combout => \Corr_Main_1|Add16~24_combout\);

-- Location: LCCOMB_X8_Y8_N16
\Corr_Main_1|Add8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~16_combout\ = ((\Corr_Main_1|buff|buffer_8\(39) $ (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a26\ $ (!\Corr_Main_1|Add8~15\)))) # (GND)
-- \Corr_Main_1|Add8~17\ = CARRY((\Corr_Main_1|buff|buffer_8\(39) & ((\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a26\) # (!\Corr_Main_1|Add8~15\))) # (!\Corr_Main_1|buff|buffer_8\(39) & 
-- (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a26\ & !\Corr_Main_1|Add8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_8\(39),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a26\,
	datad => VCC,
	cin => \Corr_Main_1|Add8~15\,
	combout => \Corr_Main_1|Add8~16_combout\,
	cout => \Corr_Main_1|Add8~17\);

-- Location: LCCOMB_X8_Y8_N18
\Corr_Main_1|Add8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add8~18_combout\ = \Corr_Main_1|buff|buffer_8\(39) $ (\Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a26\ $ (\Corr_Main_1|Add8~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|buff|buffer_8\(39),
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a26\,
	cin => \Corr_Main_1|Add8~17\,
	combout => \Corr_Main_1|Add8~18_combout\);

-- Location: LCCOMB_X8_Y6_N18
\Corr_Main_1|Add14~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~16_combout\ = ((\Corr_Main_1|Add4~16_combout\ $ (\Corr_Main_1|Add8~16_combout\ $ (!\Corr_Main_1|Add14~15\)))) # (GND)
-- \Corr_Main_1|Add14~17\ = CARRY((\Corr_Main_1|Add4~16_combout\ & ((\Corr_Main_1|Add8~16_combout\) # (!\Corr_Main_1|Add14~15\))) # (!\Corr_Main_1|Add4~16_combout\ & (\Corr_Main_1|Add8~16_combout\ & !\Corr_Main_1|Add14~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~16_combout\,
	datab => \Corr_Main_1|Add8~16_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~15\,
	combout => \Corr_Main_1|Add14~16_combout\,
	cout => \Corr_Main_1|Add14~17\);

-- Location: LCCOMB_X8_Y6_N20
\Corr_Main_1|Add14~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~18_combout\ = (\Corr_Main_1|Add4~18_combout\ & ((\Corr_Main_1|Add8~18_combout\ & (\Corr_Main_1|Add14~17\ & VCC)) # (!\Corr_Main_1|Add8~18_combout\ & (!\Corr_Main_1|Add14~17\)))) # (!\Corr_Main_1|Add4~18_combout\ & 
-- ((\Corr_Main_1|Add8~18_combout\ & (!\Corr_Main_1|Add14~17\)) # (!\Corr_Main_1|Add8~18_combout\ & ((\Corr_Main_1|Add14~17\) # (GND)))))
-- \Corr_Main_1|Add14~19\ = CARRY((\Corr_Main_1|Add4~18_combout\ & (!\Corr_Main_1|Add8~18_combout\ & !\Corr_Main_1|Add14~17\)) # (!\Corr_Main_1|Add4~18_combout\ & ((!\Corr_Main_1|Add14~17\) # (!\Corr_Main_1|Add8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~18_combout\,
	datab => \Corr_Main_1|Add8~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~17\,
	combout => \Corr_Main_1|Add14~18_combout\,
	cout => \Corr_Main_1|Add14~19\);

-- Location: LCCOMB_X8_Y6_N24
\Corr_Main_1|Add14~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~22_combout\ = (\Corr_Main_1|Add4~20_combout\ & ((\Corr_Main_1|Add8~18_combout\ & (\Corr_Main_1|Add14~21\ & VCC)) # (!\Corr_Main_1|Add8~18_combout\ & (!\Corr_Main_1|Add14~21\)))) # (!\Corr_Main_1|Add4~20_combout\ & 
-- ((\Corr_Main_1|Add8~18_combout\ & (!\Corr_Main_1|Add14~21\)) # (!\Corr_Main_1|Add8~18_combout\ & ((\Corr_Main_1|Add14~21\) # (GND)))))
-- \Corr_Main_1|Add14~23\ = CARRY((\Corr_Main_1|Add4~20_combout\ & (!\Corr_Main_1|Add8~18_combout\ & !\Corr_Main_1|Add14~21\)) # (!\Corr_Main_1|Add4~20_combout\ & ((!\Corr_Main_1|Add14~21\) # (!\Corr_Main_1|Add8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~20_combout\,
	datab => \Corr_Main_1|Add8~18_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add14~21\,
	combout => \Corr_Main_1|Add14~22_combout\,
	cout => \Corr_Main_1|Add14~23\);

-- Location: LCCOMB_X8_Y6_N26
\Corr_Main_1|Add14~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add14~24_combout\ = \Corr_Main_1|Add4~20_combout\ $ (\Corr_Main_1|Add8~18_combout\ $ (!\Corr_Main_1|Add14~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add4~20_combout\,
	datab => \Corr_Main_1|Add8~18_combout\,
	cin => \Corr_Main_1|Add14~23\,
	combout => \Corr_Main_1|Add14~24_combout\);

-- Location: LCCOMB_X12_Y7_N30
\Corr_Main_1|buff|buffer_8[49]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|buff|buffer_8[49]~feeder_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a17\,
	combout => \Corr_Main_1|buff|buffer_8[49]~feeder_combout\);

-- Location: LCFF_X12_Y7_N31
\Corr_Main_1|buff|buffer_8[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	datain => \Corr_Main_1|buff|buffer_8[49]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_8\(49));

-- Location: LCFF_X12_Y7_N25
\Corr_Main_1|buff|buffer_7[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a16\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_7\(49));

-- Location: LCFF_X12_Y7_N23
\Corr_Main_1|buff|buffer_6[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Corr_Main_1|corr_buffer_update~clkctrl_outclk\,
	sdata => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a15\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|buff|buffer_6\(49));

-- Location: LCCOMB_X12_Y7_N28
\Corr_Main_1|Add9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add9~18_combout\ = \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a17\ $ (\Corr_Main_1|Add9~17\ $ (\Corr_Main_1|buff|buffer_8\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|buff|buffer_0_rtl_1|auto_generated|altsyncram2|ram_block3a17\,
	datad => \Corr_Main_1|buff|buffer_8\(49),
	cin => \Corr_Main_1|Add9~17\,
	combout => \Corr_Main_1|Add9~18_combout\);

-- Location: LCCOMB_X10_Y7_N22
\Corr_Main_1|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~12_combout\ = ((\Corr_Main_1|Add5~12_combout\ $ (\Corr_Main_1|buff|buffer_6\(44) $ (\Corr_Main_1|Add6~11\)))) # (GND)
-- \Corr_Main_1|Add6~13\ = CARRY((\Corr_Main_1|Add5~12_combout\ & ((!\Corr_Main_1|Add6~11\) # (!\Corr_Main_1|buff|buffer_6\(44)))) # (!\Corr_Main_1|Add5~12_combout\ & (!\Corr_Main_1|buff|buffer_6\(44) & !\Corr_Main_1|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add5~12_combout\,
	datab => \Corr_Main_1|buff|buffer_6\(44),
	datad => VCC,
	cin => \Corr_Main_1|Add6~11\,
	combout => \Corr_Main_1|Add6~12_combout\,
	cout => \Corr_Main_1|Add6~13\);

-- Location: LCCOMB_X10_Y7_N24
\Corr_Main_1|Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add6~14_combout\ = (\Corr_Main_1|Add5~14_combout\ & ((\Corr_Main_1|buff|buffer_7\(44) & (!\Corr_Main_1|Add6~13\)) # (!\Corr_Main_1|buff|buffer_7\(44) & (\Corr_Main_1|Add6~13\ & VCC)))) # (!\Corr_Main_1|Add5~14_combout\ & 
-- ((\Corr_Main_1|buff|buffer_7\(44) & ((\Corr_Main_1|Add6~13\) # (GND))) # (!\Corr_Main_1|buff|buffer_7\(44) & (!\Corr_Main_1|Add6~13\))))
-- \Corr_Main_1|Add6~15\ = CARRY((\Corr_Main_1|Add5~14_combout\ & (\Corr_Main_1|buff|buffer_7\(44) & !\Corr_Main_1|Add6~13\)) # (!\Corr_Main_1|Add5~14_combout\ & ((\Corr_Main_1|buff|buffer_7\(44)) # (!\Corr_Main_1|Add6~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add5~14_combout\,
	datab => \Corr_Main_1|buff|buffer_7\(44),
	datad => VCC,
	cin => \Corr_Main_1|Add6~13\,
	combout => \Corr_Main_1|Add6~14_combout\,
	cout => \Corr_Main_1|Add6~15\);

-- Location: LCCOMB_X9_Y7_N20
\Corr_Main_1|Add17~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add17~14_combout\ = (\Corr_Main_1|Add9~14_combout\ & ((\Corr_Main_1|Add6~14_combout\ & (\Corr_Main_1|Add17~13\ & VCC)) # (!\Corr_Main_1|Add6~14_combout\ & (!\Corr_Main_1|Add17~13\)))) # (!\Corr_Main_1|Add9~14_combout\ & 
-- ((\Corr_Main_1|Add6~14_combout\ & (!\Corr_Main_1|Add17~13\)) # (!\Corr_Main_1|Add6~14_combout\ & ((\Corr_Main_1|Add17~13\) # (GND)))))
-- \Corr_Main_1|Add17~15\ = CARRY((\Corr_Main_1|Add9~14_combout\ & (!\Corr_Main_1|Add6~14_combout\ & !\Corr_Main_1|Add17~13\)) # (!\Corr_Main_1|Add9~14_combout\ & ((!\Corr_Main_1|Add17~13\) # (!\Corr_Main_1|Add6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add9~14_combout\,
	datab => \Corr_Main_1|Add6~14_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add17~13\,
	combout => \Corr_Main_1|Add17~14_combout\,
	cout => \Corr_Main_1|Add17~15\);

-- Location: LCCOMB_X9_Y6_N24
\Corr_Main_1|Add18~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~22_combout\ = (\Corr_Main_1|Add17~22_combout\ & ((\Corr_Main_1|Add14~22_combout\ & (\Corr_Main_1|Add18~21\ & VCC)) # (!\Corr_Main_1|Add14~22_combout\ & (!\Corr_Main_1|Add18~21\)))) # (!\Corr_Main_1|Add17~22_combout\ & 
-- ((\Corr_Main_1|Add14~22_combout\ & (!\Corr_Main_1|Add18~21\)) # (!\Corr_Main_1|Add14~22_combout\ & ((\Corr_Main_1|Add18~21\) # (GND)))))
-- \Corr_Main_1|Add18~23\ = CARRY((\Corr_Main_1|Add17~22_combout\ & (!\Corr_Main_1|Add14~22_combout\ & !\Corr_Main_1|Add18~21\)) # (!\Corr_Main_1|Add17~22_combout\ & ((!\Corr_Main_1|Add18~21\) # (!\Corr_Main_1|Add14~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add17~22_combout\,
	datab => \Corr_Main_1|Add14~22_combout\,
	datad => VCC,
	cin => \Corr_Main_1|Add18~21\,
	combout => \Corr_Main_1|Add18~22_combout\,
	cout => \Corr_Main_1|Add18~23\);

-- Location: LCCOMB_X9_Y6_N26
\Corr_Main_1|Add18~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add18~24_combout\ = \Corr_Main_1|Add17~22_combout\ $ (\Corr_Main_1|Add14~24_combout\ $ (!\Corr_Main_1|Add18~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|Add17~22_combout\,
	datab => \Corr_Main_1|Add14~24_combout\,
	cin => \Corr_Main_1|Add18~23\,
	combout => \Corr_Main_1|Add18~24_combout\);

-- Location: LCCOMB_X10_Y6_N28
\Corr_Main_1|Add19~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add19~26_combout\ = \Corr_Main_1|Add16~24_combout\ $ (\Corr_Main_1|Add19~25\ $ (\Corr_Main_1|Add18~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add16~24_combout\,
	datad => \Corr_Main_1|Add18~24_combout\,
	cin => \Corr_Main_1|Add19~25\,
	combout => \Corr_Main_1|Add19~26_combout\);

-- Location: LCCOMB_X12_Y6_N0
\Corr_Main_1|PREAMBULE_FOUND~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|PREAMBULE_FOUND~0_combout\ = (!\Corr_Main_1|Add19~26_combout\ & \this_state_manager|curr_state.read_adc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Corr_Main_1|Add19~26_combout\,
	datad => \this_state_manager|curr_state.read_adc~regout\,
	combout => \Corr_Main_1|PREAMBULE_FOUND~0_combout\);

-- Location: LCCOMB_X12_Y6_N8
\Corr_Main_1|PREAMBULE_FOUND~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|PREAMBULE_FOUND~5_combout\ = (\Corr_Main_1|PREAMBULE_FOUND~1_combout\ & (\Corr_Main_1|PREAMBULE_FOUND~0_combout\ & ((\Corr_Main_1|PREAMBULE_FOUND~4_combout\) # (\Corr_Main_1|PREAMBULE_FOUND~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|PREAMBULE_FOUND~4_combout\,
	datab => \Corr_Main_1|PREAMBULE_FOUND~3_combout\,
	datac => \Corr_Main_1|PREAMBULE_FOUND~1_combout\,
	datad => \Corr_Main_1|PREAMBULE_FOUND~0_combout\,
	combout => \Corr_Main_1|PREAMBULE_FOUND~5_combout\);

-- Location: LCFF_X12_Y6_N9
\Corr_Main_1|PREAMBULE_FOUND\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|PREAMBULE_FOUND~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|PREAMBULE_FOUND~regout\);

-- Location: LCFF_X27_Y11_N11
\Corr_Main_1|MRAM_DATA_OUT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \Corr_Main_1|address_counter\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|MRAM_DATA_OUT\(0));

-- Location: LCCOMB_X27_Y11_N20
\this_mram_controller|Mux61~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux61~0_combout\ = (\this_mram_controller|counter\(0) & \Corr_Main_1|MRAM_DATA_OUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_mram_controller|counter\(0),
	datad => \Corr_Main_1|MRAM_DATA_OUT\(0),
	combout => \this_mram_controller|Mux61~0_combout\);

-- Location: LCCOMB_X26_Y12_N28
\this_mram_controller|Mux79~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux79~0_combout\ = (\this_mram_controller|counter\(3)) # ((\this_mram_controller|counter\(1) & ((\this_mram_controller|counter\(2)) # (!\this_mram_controller|counter\(0)))) # (!\this_mram_controller|counter\(1) & 
-- (\this_mram_controller|counter\(0) $ (\this_mram_controller|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(1),
	datab => \this_mram_controller|counter\(3),
	datac => \this_mram_controller|counter\(0),
	datad => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|Mux79~0_combout\);

-- Location: LCCOMB_X26_Y12_N4
\this_mram_controller|Mux78~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux78~0_combout\ = (\this_mram_controller|counter\(3)) # ((\this_mram_controller|counter\(1) & (\this_mram_controller|counter\(0) $ (!\this_mram_controller|counter\(2)))) # (!\this_mram_controller|counter\(1) & 
-- ((\this_mram_controller|counter\(0)) # (\this_mram_controller|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(1),
	datab => \this_mram_controller|counter\(3),
	datac => \this_mram_controller|counter\(0),
	datad => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|Mux78~0_combout\);

-- Location: LCCOMB_X26_Y12_N0
\this_mram_controller|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector39~0_combout\ = (\this_mram_controller|curr_state.reading~regout\ & (!\this_mram_controller|Mux79~0_combout\ & ((!\this_mram_controller|curr_state.writing~regout\) # (!\this_mram_controller|Mux78~0_combout\)))) # 
-- (!\this_mram_controller|curr_state.reading~regout\ & (((!\this_mram_controller|curr_state.writing~regout\) # (!\this_mram_controller|Mux78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_mram_controller|Mux79~0_combout\,
	datac => \this_mram_controller|Mux78~0_combout\,
	datad => \this_mram_controller|curr_state.writing~regout\,
	combout => \this_mram_controller|Selector39~0_combout\);

-- Location: LCFF_X27_Y11_N21
\this_mram_controller|MRAM_D[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux61~0_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[0]~reg0_regout\);

-- Location: LCCOMB_X26_Y12_N20
\this_mram_controller|Mux62~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux62~0_combout\ = (\this_mram_controller|counter\(3)) # ((\this_mram_controller|counter\(0)) # (\this_mram_controller|counter\(1) $ (\this_mram_controller|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(1),
	datab => \this_mram_controller|counter\(3),
	datac => \this_mram_controller|counter\(0),
	datad => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|Mux62~0_combout\);

-- Location: LCCOMB_X26_Y12_N18
\this_mram_controller|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector24~0_combout\ = (\this_mram_controller|curr_state.reading~regout\ & ((\this_mram_controller|Mux79~0_combout\) # ((\this_mram_controller|Mux62~0_combout\ & \this_mram_controller|curr_state.writing~regout\)))) # 
-- (!\this_mram_controller|curr_state.reading~regout\ & (((\this_mram_controller|Mux62~0_combout\ & \this_mram_controller|curr_state.writing~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_mram_controller|Mux79~0_combout\,
	datac => \this_mram_controller|Mux62~0_combout\,
	datad => \this_mram_controller|curr_state.writing~regout\,
	combout => \this_mram_controller|Selector24~0_combout\);

-- Location: LCFF_X19_Y12_N5
\this_mram_controller|MRAM_D[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[0]~en_regout\);

-- Location: LCCOMB_X26_Y12_N2
\Corr_Main_1|MRAM_DATA_OUT[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|MRAM_DATA_OUT[1]~feeder_combout\ = \Corr_Main_1|address_counter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Corr_Main_1|address_counter\(1),
	combout => \Corr_Main_1|MRAM_DATA_OUT[1]~feeder_combout\);

-- Location: LCFF_X26_Y12_N3
\Corr_Main_1|MRAM_DATA_OUT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|MRAM_DATA_OUT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|MRAM_DATA_OUT\(1));

-- Location: LCCOMB_X26_Y12_N8
\this_mram_controller|Mux64~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux64~0_combout\ = (\this_mram_controller|counter\(0) & \Corr_Main_1|MRAM_DATA_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_mram_controller|counter\(0),
	datad => \Corr_Main_1|MRAM_DATA_OUT\(1),
	combout => \this_mram_controller|Mux64~0_combout\);

-- Location: LCFF_X26_Y12_N9
\this_mram_controller|MRAM_D[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux64~0_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[1]~reg0_regout\);

-- Location: LCFF_X19_Y12_N21
\this_mram_controller|MRAM_D[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[1]~en_regout\);

-- Location: LCCOMB_X27_Y11_N2
\Corr_Main_1|MRAM_DATA_OUT[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|MRAM_DATA_OUT[2]~feeder_combout\ = \Corr_Main_1|address_counter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|address_counter\(2),
	combout => \Corr_Main_1|MRAM_DATA_OUT[2]~feeder_combout\);

-- Location: LCFF_X27_Y11_N3
\Corr_Main_1|MRAM_DATA_OUT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|MRAM_DATA_OUT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|MRAM_DATA_OUT\(2));

-- Location: LCCOMB_X27_Y11_N22
\this_mram_controller|Mux65~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux65~0_combout\ = (\this_mram_controller|counter\(0) & \Corr_Main_1|MRAM_DATA_OUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_mram_controller|counter\(0),
	datad => \Corr_Main_1|MRAM_DATA_OUT\(2),
	combout => \this_mram_controller|Mux65~0_combout\);

-- Location: LCFF_X27_Y11_N23
\this_mram_controller|MRAM_D[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux65~0_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[2]~reg0_regout\);

-- Location: LCFF_X19_Y12_N19
\this_mram_controller|MRAM_D[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[2]~en_regout\);

-- Location: LCCOMB_X27_Y10_N8
\Corr_Main_1|Add20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|Add20~2_combout\ = \Corr_Main_1|address_counter\(3) $ (((\Corr_Main_1|address_counter\(0) & (\Corr_Main_1|address_counter\(2) & \Corr_Main_1|address_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Corr_Main_1|address_counter\(0),
	datab => \Corr_Main_1|address_counter\(2),
	datac => \Corr_Main_1|address_counter\(3),
	datad => \Corr_Main_1|address_counter\(1),
	combout => \Corr_Main_1|Add20~2_combout\);

-- Location: LCFF_X27_Y10_N9
\Corr_Main_1|address_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|Add20~2_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \Corr_Main_1|address_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|address_counter\(3));

-- Location: LCCOMB_X27_Y11_N6
\Corr_Main_1|MRAM_DATA_OUT[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Corr_Main_1|MRAM_DATA_OUT[3]~feeder_combout\ = \Corr_Main_1|address_counter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Corr_Main_1|address_counter\(3),
	combout => \Corr_Main_1|MRAM_DATA_OUT[3]~feeder_combout\);

-- Location: LCFF_X27_Y11_N7
\Corr_Main_1|MRAM_DATA_OUT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Corr_Main_1|MRAM_DATA_OUT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Corr_Main_1|MRAM_DATA_OUT\(3));

-- Location: LCCOMB_X27_Y11_N12
\this_mram_controller|Mux66~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux66~0_combout\ = (\this_mram_controller|counter\(0) & \Corr_Main_1|MRAM_DATA_OUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_mram_controller|counter\(0),
	datad => \Corr_Main_1|MRAM_DATA_OUT\(3),
	combout => \this_mram_controller|Mux66~0_combout\);

-- Location: LCFF_X27_Y11_N13
\this_mram_controller|MRAM_D[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Mux66~0_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[3]~reg0_regout\);

-- Location: LCCOMB_X14_Y10_N10
\this_mram_controller|MRAM_D[3]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[3]~enfeeder_combout\ = \this_mram_controller|Selector24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector24~0_combout\,
	combout => \this_mram_controller|MRAM_D[3]~enfeeder_combout\);

-- Location: LCFF_X14_Y10_N11
\this_mram_controller|MRAM_D[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[3]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[3]~en_regout\);

-- Location: LCCOMB_X14_Y10_N4
\this_mram_controller|MRAM_D[4]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[4]~enfeeder_combout\ = \this_mram_controller|Selector24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector24~0_combout\,
	combout => \this_mram_controller|MRAM_D[4]~enfeeder_combout\);

-- Location: LCFF_X14_Y10_N5
\this_mram_controller|MRAM_D[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[4]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[4]~en_regout\);

-- Location: LCCOMB_X14_Y10_N20
\this_mram_controller|MRAM_D[5]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[5]~enfeeder_combout\ = \this_mram_controller|Selector24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector24~0_combout\,
	combout => \this_mram_controller|MRAM_D[5]~enfeeder_combout\);

-- Location: LCFF_X14_Y10_N21
\this_mram_controller|MRAM_D[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[5]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[5]~en_regout\);

-- Location: LCCOMB_X14_Y10_N8
\this_mram_controller|MRAM_D[6]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[6]~enfeeder_combout\ = \this_mram_controller|Selector24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector24~0_combout\,
	combout => \this_mram_controller|MRAM_D[6]~enfeeder_combout\);

-- Location: LCFF_X14_Y10_N9
\this_mram_controller|MRAM_D[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[6]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[6]~en_regout\);

-- Location: LCCOMB_X14_Y10_N26
\this_mram_controller|MRAM_D[7]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[7]~enfeeder_combout\ = \this_mram_controller|Selector24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector24~0_combout\,
	combout => \this_mram_controller|MRAM_D[7]~enfeeder_combout\);

-- Location: LCFF_X14_Y10_N27
\this_mram_controller|MRAM_D[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[7]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[7]~en_regout\);

-- Location: LCCOMB_X14_Y10_N0
\this_mram_controller|MRAM_D[8]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[8]~enfeeder_combout\ = \this_mram_controller|Selector24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector24~0_combout\,
	combout => \this_mram_controller|MRAM_D[8]~enfeeder_combout\);

-- Location: LCFF_X14_Y10_N1
\this_mram_controller|MRAM_D[8]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[8]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[8]~en_regout\);

-- Location: LCCOMB_X14_Y10_N18
\this_mram_controller|MRAM_D[9]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[9]~enfeeder_combout\ = \this_mram_controller|Selector24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector24~0_combout\,
	combout => \this_mram_controller|MRAM_D[9]~enfeeder_combout\);

-- Location: LCFF_X14_Y10_N19
\this_mram_controller|MRAM_D[9]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[9]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[9]~en_regout\);

-- Location: LCCOMB_X14_Y10_N22
\this_mram_controller|MRAM_D[10]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[10]~enfeeder_combout\ = \this_mram_controller|Selector24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector24~0_combout\,
	combout => \this_mram_controller|MRAM_D[10]~enfeeder_combout\);

-- Location: LCFF_X14_Y10_N23
\this_mram_controller|MRAM_D[10]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[10]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[10]~en_regout\);

-- Location: LCCOMB_X27_Y9_N16
\this_mram_controller|MRAM_D[11]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[11]~enfeeder_combout\ = \this_mram_controller|Selector24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector24~0_combout\,
	combout => \this_mram_controller|MRAM_D[11]~enfeeder_combout\);

-- Location: LCFF_X27_Y9_N17
\this_mram_controller|MRAM_D[11]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[11]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[11]~en_regout\);

-- Location: LCCOMB_X14_Y10_N12
\this_mram_controller|MRAM_D[12]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[12]~enfeeder_combout\ = \this_mram_controller|Selector24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector24~0_combout\,
	combout => \this_mram_controller|MRAM_D[12]~enfeeder_combout\);

-- Location: LCFF_X14_Y10_N13
\this_mram_controller|MRAM_D[12]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[12]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[12]~en_regout\);

-- Location: LCCOMB_X27_Y9_N6
\this_mram_controller|MRAM_D[13]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[13]~enfeeder_combout\ = \this_mram_controller|Selector24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector24~0_combout\,
	combout => \this_mram_controller|MRAM_D[13]~enfeeder_combout\);

-- Location: LCFF_X27_Y9_N7
\this_mram_controller|MRAM_D[13]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[13]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[13]~en_regout\);

-- Location: LCCOMB_X27_Y9_N10
\this_mram_controller|MRAM_D[14]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[14]~enfeeder_combout\ = \this_mram_controller|Selector24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector24~0_combout\,
	combout => \this_mram_controller|MRAM_D[14]~enfeeder_combout\);

-- Location: LCFF_X27_Y9_N11
\this_mram_controller|MRAM_D[14]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[14]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[14]~en_regout\);

-- Location: LCCOMB_X27_Y9_N4
\this_mram_controller|MRAM_D[15]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[15]~enfeeder_combout\ = \this_mram_controller|Selector24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_mram_controller|Selector24~0_combout\,
	combout => \this_mram_controller|MRAM_D[15]~enfeeder_combout\);

-- Location: LCFF_X27_Y9_N5
\this_mram_controller|MRAM_D[15]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[15]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[15]~en_regout\);

-- Location: LCCOMB_X19_Y7_N4
\this_setup_manager|WideNor0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|WideNor0~4_combout\ = (!\this_setup_manager|Equal8~0_combout\ & (!\this_setup_manager|Equal0~8_combout\ & \this_setup_manager|WideNor0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|Equal8~0_combout\,
	datac => \this_setup_manager|Equal0~8_combout\,
	datad => \this_setup_manager|WideNor0~3_combout\,
	combout => \this_setup_manager|WideNor0~4_combout\);

-- Location: LCCOMB_X19_Y7_N2
\this_setup_manager|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector9~0_combout\ = (\this_setup_manager|Equal10~4_combout\ & (((!\this_setup_manager|WideNor0~4_combout\ & \this_setup_manager|ADC_SYNC~regout\)) # (!\this_setup_manager|config_command_counter\(0)))) # 
-- (!\this_setup_manager|Equal10~4_combout\ & (((\this_setup_manager|ADC_SYNC~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(0),
	datab => \this_setup_manager|WideNor0~4_combout\,
	datac => \this_setup_manager|ADC_SYNC~regout\,
	datad => \this_setup_manager|Equal10~4_combout\,
	combout => \this_setup_manager|Selector9~0_combout\);

-- Location: LCFF_X19_Y7_N3
\this_setup_manager|ADC_SYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_setup_manager|Selector9~0_combout\,
	ena => \this_state_manager|ALT_INV_curr_state.setup~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|ADC_SYNC~regout\);

-- Location: LCCOMB_X20_Y5_N4
\adc_spi_controller|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector5~1_combout\ = ((\adc_spi_controller|curr_state.cs_up~regout\) # ((\adc_spi_controller|Selector5~0_combout\ & \adc_spi_controller|SPI_CS~regout\))) # (!\adc_spi_controller|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Selector5~0_combout\,
	datab => \adc_spi_controller|curr_state.idle~regout\,
	datac => \adc_spi_controller|SPI_CS~regout\,
	datad => \adc_spi_controller|curr_state.cs_up~regout\,
	combout => \adc_spi_controller|Selector5~1_combout\);

-- Location: LCFF_X20_Y5_N5
\adc_spi_controller|SPI_CS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|SPI_CS~regout\);

-- Location: LCCOMB_X25_Y12_N24
\this_mram_controller|Mux41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux41~0_combout\ = (!\this_mram_controller|counter\(3) & ((\this_mram_controller|counter\(0) & (\this_mram_controller|counter\(1) & \this_mram_controller|counter\(2))) # (!\this_mram_controller|counter\(0) & 
-- (!\this_mram_controller|counter\(1) & !\this_mram_controller|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(0),
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|counter\(2),
	datad => \this_mram_controller|counter\(3),
	combout => \this_mram_controller|Mux41~0_combout\);

-- Location: LCCOMB_X25_Y12_N4
\this_mram_controller|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector0~0_combout\ = (\this_mram_controller|curr_state.reading~regout\ & ((!\this_mram_controller|Mux41~0_combout\) # (!\this_mram_controller|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_mram_controller|counter\(2),
	datac => \this_mram_controller|Mux41~0_combout\,
	combout => \this_mram_controller|Selector0~0_combout\);

-- Location: LCCOMB_X25_Y12_N16
\this_mram_controller|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector1~1_combout\ = (\this_mram_controller|Selector1~0_combout\ & (\this_mram_controller|MRAM_OUTPUT_EN~regout\ & ((\this_mram_controller|Selector0~0_combout\) # (\this_mram_controller|curr_state.writing~regout\)))) # 
-- (!\this_mram_controller|Selector1~0_combout\ & ((\this_mram_controller|Selector0~0_combout\) # ((\this_mram_controller|curr_state.writing~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|Selector1~0_combout\,
	datab => \this_mram_controller|Selector0~0_combout\,
	datac => \this_mram_controller|MRAM_OUTPUT_EN~regout\,
	datad => \this_mram_controller|curr_state.writing~regout\,
	combout => \this_mram_controller|Selector1~1_combout\);

-- Location: LCFF_X25_Y12_N17
\this_mram_controller|MRAM_OUTPUT_EN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_OUTPUT_EN~regout\);

-- Location: LCCOMB_X26_Y12_N16
\this_mram_controller|curr_state~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~6_combout\ = (\this_mram_controller|curr_state.idle~regout\ & (\this_mram_controller|curr_state~5_combout\)) # (!\this_mram_controller|curr_state.idle~regout\ & (((!\Corr_Main_1|MRAM_WRITE_DATA~regout\ & 
-- \this_write_out_mram_manager|MRAM_READ_DATA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state~5_combout\,
	datab => \Corr_Main_1|MRAM_WRITE_DATA~regout\,
	datac => \this_write_out_mram_manager|MRAM_READ_DATA~regout\,
	datad => \this_mram_controller|curr_state.idle~regout\,
	combout => \this_mram_controller|curr_state~6_combout\);

-- Location: LCFF_X26_Y12_N17
\this_mram_controller|curr_state.reading\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|curr_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|curr_state.reading~regout\);

-- Location: LCCOMB_X26_Y11_N2
\this_mram_controller|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector22~0_combout\ = (\this_mram_controller|curr_state.writing~regout\ & ((\Corr_Main_1|address_counter\(0)) # ((\this_write_out_mram_manager|address_counter\(0) & \this_mram_controller|curr_state.reading~regout\)))) # 
-- (!\this_mram_controller|curr_state.writing~regout\ & (\this_write_out_mram_manager|address_counter\(0) & (\this_mram_controller|curr_state.reading~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.writing~regout\,
	datab => \this_write_out_mram_manager|address_counter\(0),
	datac => \this_mram_controller|curr_state.reading~regout\,
	datad => \Corr_Main_1|address_counter\(0),
	combout => \this_mram_controller|Selector22~0_combout\);

-- Location: LCCOMB_X26_Y12_N6
\this_mram_controller|Selector22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector22~2_combout\ = ((\this_mram_controller|Selector22~1_combout\ & (!\this_mram_controller|counter\(3) & !\this_mram_controller|counter\(0)))) # (!\this_mram_controller|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|Selector22~1_combout\,
	datab => \this_mram_controller|counter\(3),
	datac => \this_mram_controller|counter\(0),
	datad => \this_mram_controller|curr_state.idle~regout\,
	combout => \this_mram_controller|Selector22~2_combout\);

-- Location: LCFF_X26_Y11_N3
\this_mram_controller|MRAM_A[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Selector22~0_combout\,
	ena => \this_mram_controller|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_A\(0));

-- Location: LCCOMB_X26_Y11_N26
\this_mram_controller|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector21~0_combout\ = (\this_write_out_mram_manager|address_counter\(1) & ((\this_mram_controller|curr_state.reading~regout\) # ((\Corr_Main_1|address_counter\(1) & \this_mram_controller|curr_state.writing~regout\)))) # 
-- (!\this_write_out_mram_manager|address_counter\(1) & (\Corr_Main_1|address_counter\(1) & ((\this_mram_controller|curr_state.writing~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(1),
	datab => \Corr_Main_1|address_counter\(1),
	datac => \this_mram_controller|curr_state.reading~regout\,
	datad => \this_mram_controller|curr_state.writing~regout\,
	combout => \this_mram_controller|Selector21~0_combout\);

-- Location: LCFF_X26_Y11_N27
\this_mram_controller|MRAM_A[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Selector21~0_combout\,
	ena => \this_mram_controller|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_A\(1));

-- Location: LCCOMB_X26_Y11_N12
\this_mram_controller|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector20~0_combout\ = (\this_mram_controller|curr_state.writing~regout\ & ((\Corr_Main_1|address_counter\(2)) # ((\this_write_out_mram_manager|address_counter\(2) & \this_mram_controller|curr_state.reading~regout\)))) # 
-- (!\this_mram_controller|curr_state.writing~regout\ & (\this_write_out_mram_manager|address_counter\(2) & (\this_mram_controller|curr_state.reading~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.writing~regout\,
	datab => \this_write_out_mram_manager|address_counter\(2),
	datac => \this_mram_controller|curr_state.reading~regout\,
	datad => \Corr_Main_1|address_counter\(2),
	combout => \this_mram_controller|Selector20~0_combout\);

-- Location: LCFF_X26_Y11_N13
\this_mram_controller|MRAM_A[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Selector20~0_combout\,
	ena => \this_mram_controller|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_A\(2));

-- Location: LCCOMB_X26_Y11_N20
\this_write_out_mram_manager|address_counter[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[3]~11_combout\ = \this_write_out_mram_manager|address_counter\(3) $ (\this_write_out_mram_manager|address_counter[2]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(3),
	cin => \this_write_out_mram_manager|address_counter[2]~10\,
	combout => \this_write_out_mram_manager|address_counter[3]~11_combout\);

-- Location: LCFF_X26_Y11_N21
\this_write_out_mram_manager|address_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[3]~11_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(3));

-- Location: LCCOMB_X26_Y11_N10
\this_mram_controller|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector19~0_combout\ = (\this_mram_controller|curr_state.writing~regout\ & ((\Corr_Main_1|address_counter\(3)) # ((\this_mram_controller|curr_state.reading~regout\ & \this_write_out_mram_manager|address_counter\(3))))) # 
-- (!\this_mram_controller|curr_state.writing~regout\ & (\this_mram_controller|curr_state.reading~regout\ & (\this_write_out_mram_manager|address_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.writing~regout\,
	datab => \this_mram_controller|curr_state.reading~regout\,
	datac => \this_write_out_mram_manager|address_counter\(3),
	datad => \Corr_Main_1|address_counter\(3),
	combout => \this_mram_controller|Selector19~0_combout\);

-- Location: LCFF_X26_Y11_N11
\this_mram_controller|MRAM_A[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Selector19~0_combout\,
	ena => \this_mram_controller|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_A\(3));

-- Location: LCCOMB_X26_Y12_N14
\this_mram_controller|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux21~0_combout\ = (!\this_mram_controller|counter\(3) & (\this_mram_controller|counter\(0) & (\this_mram_controller|counter\(1) $ (\this_mram_controller|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(1),
	datab => \this_mram_controller|counter\(3),
	datac => \this_mram_controller|counter\(0),
	datad => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|Mux21~0_combout\);

-- Location: LCCOMB_X25_Y12_N28
\this_mram_controller|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector0~1_combout\ = ((\this_mram_controller|Mux21~0_combout\ & ((!\this_mram_controller|counter\(1)))) # (!\this_mram_controller|Mux21~0_combout\ & (!\this_mram_controller|MRAM_EN~regout\))) # 
-- (!\this_mram_controller|curr_state.writing~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|MRAM_EN~regout\,
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|Mux21~0_combout\,
	datad => \this_mram_controller|curr_state.writing~regout\,
	combout => \this_mram_controller|Selector0~1_combout\);

-- Location: LCCOMB_X25_Y12_N8
\this_mram_controller|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector0~2_combout\ = ((\this_mram_controller|Selector0~0_combout\ & ((\this_mram_controller|Mux41~0_combout\) # (\this_mram_controller|MRAM_EN~regout\)))) # (!\this_mram_controller|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|Mux41~0_combout\,
	datab => \this_mram_controller|Selector0~0_combout\,
	datac => \this_mram_controller|MRAM_EN~regout\,
	datad => \this_mram_controller|Selector0~1_combout\,
	combout => \this_mram_controller|Selector0~2_combout\);

-- Location: LCFF_X25_Y12_N9
\this_mram_controller|MRAM_EN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_EN~regout\);

-- Location: LCCOMB_X26_Y12_N24
\this_mram_controller|curr_state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~5_combout\ = (\this_mram_controller|curr_state.reading~regout\ & ((!\this_mram_controller|Mux60~0_combout\) # (!\this_mram_controller|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datac => \this_mram_controller|counter\(0),
	datad => \this_mram_controller|Mux60~0_combout\,
	combout => \this_mram_controller|curr_state~5_combout\);

-- Location: LCCOMB_X25_Y12_N20
\this_mram_controller|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector2~1_combout\ = ((\this_mram_controller|MRAM_WRITE_EN~regout\ & \this_mram_controller|curr_state~5_combout\)) # (!\this_mram_controller|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|Selector2~0_combout\,
	datac => \this_mram_controller|MRAM_WRITE_EN~regout\,
	datad => \this_mram_controller|curr_state~5_combout\,
	combout => \this_mram_controller|Selector2~1_combout\);

-- Location: LCFF_X25_Y12_N21
\this_mram_controller|MRAM_WRITE_EN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_WRITE_EN~regout\);

-- Location: LCCOMB_X25_Y12_N0
\this_mram_controller|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector4~0_combout\ = ((\this_mram_controller|Mux18~0_combout\ & (!\this_mram_controller|MRAM_LOWER_EN~regout\)) # (!\this_mram_controller|Mux18~0_combout\ & ((\this_mram_controller|counter\(2))))) # 
-- (!\this_mram_controller|curr_state.writing~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|Mux18~0_combout\,
	datab => \this_mram_controller|MRAM_LOWER_EN~regout\,
	datac => \this_mram_controller|counter\(2),
	datad => \this_mram_controller|curr_state.writing~regout\,
	combout => \this_mram_controller|Selector4~0_combout\);

-- Location: LCCOMB_X25_Y12_N26
\this_mram_controller|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector4~1_combout\ = ((\this_mram_controller|Selector0~0_combout\ & ((\this_mram_controller|Mux41~0_combout\) # (\this_mram_controller|MRAM_LOWER_EN~regout\)))) # (!\this_mram_controller|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|Mux41~0_combout\,
	datab => \this_mram_controller|Selector0~0_combout\,
	datac => \this_mram_controller|MRAM_LOWER_EN~regout\,
	datad => \this_mram_controller|Selector4~0_combout\,
	combout => \this_mram_controller|Selector4~1_combout\);

-- Location: LCFF_X25_Y12_N27
\this_mram_controller|MRAM_LOWER_EN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_LOWER_EN~regout\);

-- Location: LCCOMB_X20_Y12_N18
\UART_Controller_1|uart_tx_1|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector3~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.start~regout\ & ((\UART_Controller_1|uart_tx_1|Equal0~3_combout\) # ((!\UART_Controller_1|uart_tx_1|Selector4~0_combout\ & 
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
	datad => \UART_Controller_1|uart_tx_1|Equal0~3_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector3~0_combout\);

-- Location: LCFF_X20_Y12_N19
\UART_Controller_1|uart_tx_1|curr_state.data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|curr_state.data~regout\);

-- Location: LCCOMB_X21_Y12_N2
\UART_Controller_1|uart_tx_1|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector18~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & (\UART_Controller_1|uart_tx_1|data_index\(1) & ((\UART_Controller_1|uart_tx_1|data_index\(2))))) # 
-- (!\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & (((\UART_Controller_1|uart_tx_1|curr_state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_index\(1),
	datab => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datac => \UART_Controller_1|uart_tx_1|data_index\(2),
	datad => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector18~0_combout\);

-- Location: LCCOMB_X21_Y12_N26
\UART_Controller_1|uart_tx_1|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector18~1_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(0) & ((\UART_Controller_1|uart_tx_1|Selector18~0_combout\) # ((\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & 
-- !\UART_Controller_1|uart_tx_1|Equal0~3_combout\)))) # (!\UART_Controller_1|uart_tx_1|data_index\(0) & (\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & (\UART_Controller_1|uart_tx_1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	datab => \UART_Controller_1|uart_tx_1|Equal0~3_combout\,
	datac => \UART_Controller_1|uart_tx_1|data_index\(0),
	datad => \UART_Controller_1|uart_tx_1|Selector18~0_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector18~1_combout\);

-- Location: LCFF_X21_Y12_N27
\UART_Controller_1|uart_tx_1|data_index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_index\(0));

-- Location: LCCOMB_X21_Y12_N30
\UART_Controller_1|uart_tx_1|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector4~0_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(1) & (\UART_Controller_1|uart_tx_1|data_index\(0) & (\UART_Controller_1|uart_tx_1|data_index\(2) & \UART_Controller_1|uart_tx_1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_index\(1),
	datab => \UART_Controller_1|uart_tx_1|data_index\(0),
	datac => \UART_Controller_1|uart_tx_1|data_index\(2),
	datad => \UART_Controller_1|uart_tx_1|Equal0~3_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector4~0_combout\);

-- Location: LCCOMB_X20_Y12_N22
\UART_Controller_1|uart_tx_1|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector4~1_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & ((\UART_Controller_1|uart_tx_1|Selector4~0_combout\) # ((!\UART_Controller_1|uart_tx_1|Equal0~3_combout\ & 
-- \UART_Controller_1|uart_tx_1|curr_state.stop~regout\)))) # (!\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & (!\UART_Controller_1|uart_tx_1|Equal0~3_combout\ & (\UART_Controller_1|uart_tx_1|curr_state.stop~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	datab => \UART_Controller_1|uart_tx_1|Equal0~3_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.stop~regout\,
	datad => \UART_Controller_1|uart_tx_1|Selector4~0_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector4~1_combout\);

-- Location: LCFF_X20_Y12_N23
\UART_Controller_1|uart_tx_1|curr_state.stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|curr_state.stop~regout\);

-- Location: LCCOMB_X20_Y12_N16
\UART_Controller_1|uart_tx_1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector0~0_combout\ = (\UART_Controller_1|curr_state.transmiting~regout\ & (((!\UART_Controller_1|uart_tx_1|Equal0~3_combout\)) # (!\UART_Controller_1|uart_tx_1|curr_state.stop~regout\))) # 
-- (!\UART_Controller_1|curr_state.transmiting~regout\ & (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & ((!\UART_Controller_1|uart_tx_1|Equal0~3_combout\) # (!\UART_Controller_1|uart_tx_1|curr_state.stop~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|curr_state.transmiting~regout\,
	datab => \UART_Controller_1|uart_tx_1|curr_state.stop~regout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|Equal0~3_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector0~0_combout\);

-- Location: LCFF_X20_Y12_N17
\UART_Controller_1|uart_tx_1|curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\);

-- Location: LCCOMB_X25_Y11_N26
\UART_Controller_1|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|Selector4~0_combout\ = (\UART_Controller_1|curr_state.transmiting~regout\) # ((\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & \UART_Controller_1|curr_state.waiting~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datac => \UART_Controller_1|curr_state.waiting~regout\,
	datad => \UART_Controller_1|curr_state.transmiting~regout\,
	combout => \UART_Controller_1|Selector4~0_combout\);

-- Location: LCFF_X25_Y11_N27
\UART_Controller_1|curr_state.waiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|curr_state.waiting~regout\);

-- Location: LCCOMB_X25_Y11_N8
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

-- Location: LCCOMB_X25_Y11_N20
\this_write_out_mram_manager|have_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|have_data~0_combout\ = (\this_write_out_mram_manager|have_data~regout\ & (((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)))) # 
-- (!\this_write_out_mram_manager|have_data~regout\ & (!\this_mram_controller|curr_state.idle~regout\ & ((\this_write_out_mram_manager|getting_data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datac => \this_write_out_mram_manager|have_data~regout\,
	datad => \this_write_out_mram_manager|getting_data~regout\,
	combout => \this_write_out_mram_manager|have_data~0_combout\);

-- Location: LCFF_X25_Y11_N21
\this_write_out_mram_manager|have_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|have_data~0_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|have_data~regout\);

-- Location: LCCOMB_X25_Y11_N30
\this_write_out_mram_manager|UART_DATA_IRQ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|UART_DATA_IRQ~0_combout\ = (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & \this_write_out_mram_manager|have_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datac => \this_write_out_mram_manager|have_data~regout\,
	combout => \this_write_out_mram_manager|UART_DATA_IRQ~0_combout\);

-- Location: LCFF_X25_Y11_N31
\this_write_out_mram_manager|UART_DATA_IRQ\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|UART_DATA_IRQ~0_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|UART_DATA_IRQ~regout\);

-- Location: LCCOMB_X24_Y11_N30
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) & \this_write_out_mram_manager|UART_DATA_IRQ~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datad => \this_write_out_mram_manager|UART_DATA_IRQ~regout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\);

-- Location: LCCOMB_X24_Y11_N22
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

-- Location: LCFF_X24_Y11_N23
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\);

-- Location: LCCOMB_X24_Y11_N2
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

-- Location: LCCOMB_X24_Y11_N0
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

-- Location: LCCOMB_X24_Y11_N8
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

-- Location: LCCOMB_X24_Y11_N24
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ = (\this_write_out_mram_manager|UART_DATA_IRQ~regout\ & (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ $ 
-- (((!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\) # (!\UART_Controller_1|fifo_read_req~combout\))))) # (!\this_write_out_mram_manager|UART_DATA_IRQ~regout\ & 
-- (((\UART_Controller_1|fifo_read_req~combout\ & \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|UART_DATA_IRQ~regout\,
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datac => \UART_Controller_1|fifo_read_req~combout\,
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\);

-- Location: LCFF_X24_Y11_N9
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1));

-- Location: LCCOMB_X24_Y11_N12
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

-- Location: LCFF_X24_Y11_N13
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3));

-- Location: LCCOMB_X24_Y11_N26
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2)) # 
-- (((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1)) # (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3))) # 
-- (!\UART_Controller_1|fifo_read_req~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datab => \UART_Controller_1|fifo_read_req~combout\,
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\);

-- Location: LCCOMB_X24_Y11_N18
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\) # 
-- ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\) # 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\,
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\);

-- Location: LCFF_X24_Y11_N19
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\);

-- Location: LCCOMB_X25_Y11_N10
\UART_Controller_1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|Selector1~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & (((\UART_Controller_1|curr_state.idle~regout\) # (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)))) # 
-- (!\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & (!\UART_Controller_1|curr_state.waiting~regout\ & ((\UART_Controller_1|curr_state.idle~regout\) # 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datab => \UART_Controller_1|curr_state.waiting~regout\,
	datac => \UART_Controller_1|curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \UART_Controller_1|Selector1~0_combout\);

-- Location: LCFF_X25_Y11_N11
\UART_Controller_1|curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|curr_state.idle~regout\);

-- Location: LCCOMB_X25_Y11_N18
\UART_Controller_1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|Selector2~0_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & !\UART_Controller_1|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \UART_Controller_1|curr_state.idle~regout\,
	combout => \UART_Controller_1|Selector2~0_combout\);

-- Location: LCFF_X25_Y11_N19
\UART_Controller_1|curr_state.reading_fifo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|curr_state.reading_fifo~regout\);

-- Location: LCCOMB_X25_Y11_N12
\UART_Controller_1|curr_state.transmiting~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|curr_state.transmiting~feeder_combout\ = \UART_Controller_1|curr_state.reading_fifo~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|curr_state.reading_fifo~regout\,
	combout => \UART_Controller_1|curr_state.transmiting~feeder_combout\);

-- Location: LCFF_X25_Y11_N13
\UART_Controller_1|curr_state.transmiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|curr_state.transmiting~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|curr_state.transmiting~regout\);

-- Location: LCCOMB_X20_Y12_N20
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

-- Location: LCFF_X20_Y12_N21
\UART_Controller_1|uart_tx_1|curr_state.sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\);

-- Location: LCCOMB_X19_Y12_N0
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

-- Location: LCCOMB_X20_Y12_N30
\UART_Controller_1|uart_tx_1|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector15~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & (!\UART_Controller_1|uart_tx_1|curr_state.sync~regout\ & (\UART_Controller_1|uart_tx_1|Add0~0_combout\ & 
-- !\UART_Controller_1|uart_tx_1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	datac => \UART_Controller_1|uart_tx_1|Add0~0_combout\,
	datad => \UART_Controller_1|uart_tx_1|Equal0~3_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector15~0_combout\);

-- Location: LCFF_X20_Y12_N31
\UART_Controller_1|uart_tx_1|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(0));

-- Location: LCCOMB_X19_Y12_N2
\UART_Controller_1|uart_tx_1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~2_combout\ = (\UART_Controller_1|uart_tx_1|counter\(1) & (!\UART_Controller_1|uart_tx_1|Add0~1\)) # (!\UART_Controller_1|uart_tx_1|counter\(1) & ((\UART_Controller_1|uart_tx_1|Add0~1\) # (GND)))
-- \UART_Controller_1|uart_tx_1|Add0~3\ = CARRY((!\UART_Controller_1|uart_tx_1|Add0~1\) # (!\UART_Controller_1|uart_tx_1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|counter\(1),
	datad => VCC,
	cin => \UART_Controller_1|uart_tx_1|Add0~1\,
	combout => \UART_Controller_1|uart_tx_1|Add0~2_combout\,
	cout => \UART_Controller_1|uart_tx_1|Add0~3\);

-- Location: LCCOMB_X20_Y12_N28
\UART_Controller_1|uart_tx_1|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector14~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & (!\UART_Controller_1|uart_tx_1|Equal0~3_combout\ & (!\UART_Controller_1|uart_tx_1|curr_state.sync~regout\ & 
-- \UART_Controller_1|uart_tx_1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|Equal0~3_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	datad => \UART_Controller_1|uart_tx_1|Add0~2_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector14~0_combout\);

-- Location: LCFF_X20_Y12_N29
\UART_Controller_1|uart_tx_1|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(1));

-- Location: LCCOMB_X19_Y12_N4
\UART_Controller_1|uart_tx_1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~4_combout\ = (\UART_Controller_1|uart_tx_1|counter\(2) & (\UART_Controller_1|uart_tx_1|Add0~3\ $ (GND))) # (!\UART_Controller_1|uart_tx_1|counter\(2) & (!\UART_Controller_1|uart_tx_1|Add0~3\ & VCC))
-- \UART_Controller_1|uart_tx_1|Add0~5\ = CARRY((\UART_Controller_1|uart_tx_1|counter\(2) & !\UART_Controller_1|uart_tx_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|counter\(2),
	datad => VCC,
	cin => \UART_Controller_1|uart_tx_1|Add0~3\,
	combout => \UART_Controller_1|uart_tx_1|Add0~4_combout\,
	cout => \UART_Controller_1|uart_tx_1|Add0~5\);

-- Location: LCCOMB_X20_Y12_N24
\UART_Controller_1|uart_tx_1|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector13~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & (\UART_Controller_1|uart_tx_1|Add0~4_combout\ & (!\UART_Controller_1|uart_tx_1|curr_state.sync~regout\ & 
-- !\UART_Controller_1|uart_tx_1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|Add0~4_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	datad => \UART_Controller_1|uart_tx_1|Equal0~3_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector13~0_combout\);

-- Location: LCFF_X20_Y12_N25
\UART_Controller_1|uart_tx_1|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(2));

-- Location: LCCOMB_X19_Y12_N6
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

-- Location: LCCOMB_X20_Y12_N14
\UART_Controller_1|uart_tx_1|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector12~0_combout\ = (!\UART_Controller_1|uart_tx_1|curr_state.sync~regout\ & (\UART_Controller_1|uart_tx_1|Add0~6_combout\ & \UART_Controller_1|uart_tx_1|curr_state.idle~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	datab => \UART_Controller_1|uart_tx_1|Add0~6_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector12~0_combout\);

-- Location: LCFF_X20_Y12_N15
\UART_Controller_1|uart_tx_1|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(3));

-- Location: LCCOMB_X20_Y12_N2
\UART_Controller_1|uart_tx_1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Equal0~0_combout\ = (\UART_Controller_1|uart_tx_1|counter\(2) & (\UART_Controller_1|uart_tx_1|counter\(1) & (!\UART_Controller_1|uart_tx_1|counter\(3) & !\UART_Controller_1|uart_tx_1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|counter\(2),
	datab => \UART_Controller_1|uart_tx_1|counter\(1),
	datac => \UART_Controller_1|uart_tx_1|counter\(3),
	datad => \UART_Controller_1|uart_tx_1|counter\(0),
	combout => \UART_Controller_1|uart_tx_1|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y12_N30
\UART_Controller_1|uart_tx_1|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector9~0_combout\ = (\UART_Controller_1|uart_tx_1|Add0~12_combout\ & (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & !\UART_Controller_1|uart_tx_1|curr_state.sync~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Add0~12_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector9~0_combout\);

-- Location: LCFF_X19_Y12_N31
\UART_Controller_1|uart_tx_1|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(6));

-- Location: LCCOMB_X19_Y12_N28
\UART_Controller_1|uart_tx_1|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector10~0_combout\ = (\UART_Controller_1|uart_tx_1|Add0~10_combout\ & (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & !\UART_Controller_1|uart_tx_1|curr_state.sync~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Add0~10_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector10~0_combout\);

-- Location: LCFF_X19_Y12_N29
\UART_Controller_1|uart_tx_1|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(5));

-- Location: LCCOMB_X19_Y12_N14
\UART_Controller_1|uart_tx_1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~14_combout\ = (\UART_Controller_1|uart_tx_1|counter\(7) & (!\UART_Controller_1|uart_tx_1|Add0~13\)) # (!\UART_Controller_1|uart_tx_1|counter\(7) & ((\UART_Controller_1|uart_tx_1|Add0~13\) # (GND)))
-- \UART_Controller_1|uart_tx_1|Add0~15\ = CARRY((!\UART_Controller_1|uart_tx_1|Add0~13\) # (!\UART_Controller_1|uart_tx_1|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|counter\(7),
	datad => VCC,
	cin => \UART_Controller_1|uart_tx_1|Add0~13\,
	combout => \UART_Controller_1|uart_tx_1|Add0~14_combout\,
	cout => \UART_Controller_1|uart_tx_1|Add0~15\);

-- Location: LCCOMB_X20_Y12_N8
\UART_Controller_1|uart_tx_1|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector7~0_combout\ = (!\UART_Controller_1|uart_tx_1|curr_state.sync~regout\ & (\UART_Controller_1|uart_tx_1|Add0~16_combout\ & (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & 
-- !\UART_Controller_1|uart_tx_1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	datab => \UART_Controller_1|uart_tx_1|Add0~16_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|Equal0~3_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector7~0_combout\);

-- Location: LCFF_X20_Y12_N9
\UART_Controller_1|uart_tx_1|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(8));

-- Location: LCCOMB_X19_Y12_N24
\UART_Controller_1|uart_tx_1|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector8~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\ & (\UART_Controller_1|uart_tx_1|Add0~14_combout\ & !\UART_Controller_1|uart_tx_1|curr_state.sync~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	datac => \UART_Controller_1|uart_tx_1|Add0~14_combout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector8~0_combout\);

-- Location: LCFF_X19_Y12_N25
\UART_Controller_1|uart_tx_1|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(7));

-- Location: LCCOMB_X19_Y12_N26
\UART_Controller_1|uart_tx_1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Equal0~1_combout\ = (\UART_Controller_1|uart_tx_1|counter\(4) & (!\UART_Controller_1|uart_tx_1|counter\(6) & (!\UART_Controller_1|uart_tx_1|counter\(7) & !\UART_Controller_1|uart_tx_1|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|counter\(4),
	datab => \UART_Controller_1|uart_tx_1|counter\(6),
	datac => \UART_Controller_1|uart_tx_1|counter\(7),
	datad => \UART_Controller_1|uart_tx_1|counter\(5),
	combout => \UART_Controller_1|uart_tx_1|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y12_N26
\UART_Controller_1|uart_tx_1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Equal0~3_combout\ = (\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & (\UART_Controller_1|uart_tx_1|Equal0~0_combout\ & (\UART_Controller_1|uart_tx_1|counter\(8) & \UART_Controller_1|uart_tx_1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datab => \UART_Controller_1|uart_tx_1|Equal0~0_combout\,
	datac => \UART_Controller_1|uart_tx_1|counter\(8),
	datad => \UART_Controller_1|uart_tx_1|Equal0~1_combout\,
	combout => \UART_Controller_1|uart_tx_1|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y12_N0
\UART_Controller_1|uart_tx_1|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector17~0_combout\ = (\UART_Controller_1|uart_tx_1|Equal0~3_combout\ & \UART_Controller_1|uart_tx_1|data_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|Equal0~3_combout\,
	datad => \UART_Controller_1|uart_tx_1|data_index\(0),
	combout => \UART_Controller_1|uart_tx_1|Selector17~0_combout\);

-- Location: LCCOMB_X21_Y12_N16
\UART_Controller_1|uart_tx_1|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector16~0_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(2) & ((\UART_Controller_1|uart_tx_1|curr_state.data~regout\) # (\UART_Controller_1|uart_tx_1|curr_state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	datac => \UART_Controller_1|uart_tx_1|data_index\(2),
	datad => \UART_Controller_1|uart_tx_1|curr_state.idle~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector16~0_combout\);

-- Location: LCCOMB_X21_Y12_N24
\UART_Controller_1|uart_tx_1|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector16~1_combout\ = (\UART_Controller_1|uart_tx_1|Selector16~0_combout\) # ((\UART_Controller_1|uart_tx_1|data_index\(1) & (\UART_Controller_1|uart_tx_1|Selector17~0_combout\ & 
-- \UART_Controller_1|uart_tx_1|curr_state.data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_index\(1),
	datab => \UART_Controller_1|uart_tx_1|Selector17~0_combout\,
	datac => \UART_Controller_1|uart_tx_1|Selector16~0_combout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector16~1_combout\);

-- Location: LCFF_X21_Y12_N25
\UART_Controller_1|uart_tx_1|data_index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_index\(2));

-- Location: LCCOMB_X24_Y11_N14
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

-- Location: LCCOMB_X25_Y12_N22
\this_mram_controller|data_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|data_out[0]~0_combout\ = (\this_mram_controller|counter\(0) & !\this_mram_controller|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_mram_controller|counter\(0),
	datad => \this_mram_controller|counter\(3),
	combout => \this_mram_controller|data_out[0]~0_combout\);

-- Location: LCCOMB_X25_Y12_N2
\this_mram_controller|data_out[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|data_out[0]~1_combout\ = (\this_mram_controller|curr_state.reading~regout\ & (!\this_mram_controller|counter\(1) & (\this_mram_controller|counter\(2) & \this_mram_controller|data_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|counter\(2),
	datad => \this_mram_controller|data_out[0]~0_combout\,
	combout => \this_mram_controller|data_out[0]~1_combout\);

-- Location: LCFF_X22_Y12_N1
\this_mram_controller|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[7]~7\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(7));

-- Location: LCCOMB_X25_Y11_N0
\this_write_out_mram_manager|msb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|msb~1_combout\ = \this_write_out_mram_manager|msb~regout\ $ (((\this_state_manager|curr_state.write_out_mram~regout\ & \this_write_out_mram_manager|msb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_state_manager|curr_state.write_out_mram~regout\,
	datac => \this_write_out_mram_manager|msb~regout\,
	datad => \this_write_out_mram_manager|msb~0_combout\,
	combout => \this_write_out_mram_manager|msb~1_combout\);

-- Location: LCFF_X25_Y11_N1
\this_write_out_mram_manager|msb\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|msb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|msb~regout\);

-- Location: LCCOMB_X22_Y12_N0
\this_write_out_mram_manager|UART_SEND_DATA[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|UART_SEND_DATA[0]~2_combout\ = (\this_write_out_mram_manager|msb~regout\ & (\this_mram_controller|data_out\(0))) # (!\this_write_out_mram_manager|msb~regout\ & ((\this_mram_controller|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|data_out\(0),
	datac => \this_mram_controller|data_out\(7),
	datad => \this_write_out_mram_manager|msb~regout\,
	combout => \this_write_out_mram_manager|UART_SEND_DATA[0]~2_combout\);

-- Location: LCCOMB_X24_Y12_N10
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0) $ (VCC)
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ = CARRY(\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0),
	datad => VCC,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\);

-- Location: LCFF_X24_Y12_N11
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

-- Location: LCCOMB_X24_Y12_N12
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

-- Location: LCFF_X24_Y12_N13
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1));

-- Location: LCCOMB_X24_Y12_N14
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

-- Location: LCFF_X24_Y12_N15
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2));

-- Location: LCCOMB_X24_Y12_N16
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3) $ 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3),
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\);

-- Location: LCFF_X24_Y12_N17
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3));

-- Location: LCCOMB_X24_Y12_N18
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

-- Location: LCFF_X24_Y12_N19
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

-- Location: LCCOMB_X24_Y12_N20
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\)) # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & 
-- ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\) # (GND)))
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ = CARRY((!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\) # 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1),
	datad => VCC,
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\);

-- Location: LCFF_X24_Y12_N21
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1));

-- Location: LCCOMB_X24_Y12_N22
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ $ (GND))) # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ & VCC))
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ = CARRY((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- !\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2),
	datad => VCC,
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\);

-- Location: LCFF_X24_Y12_N23
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2));

-- Location: LCCOMB_X24_Y12_N24
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) $ 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3),
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\);

-- Location: LCFF_X24_Y12_N25
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3));

-- Location: LCFF_X22_Y12_N15
\this_mram_controller|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[1]~1\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(1));

-- Location: LCFF_X22_Y12_N19
\this_mram_controller|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[8]~8\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(8));

-- Location: LCCOMB_X22_Y12_N18
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

-- Location: LCCOMB_X22_Y12_N26
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

-- Location: LCFF_X22_Y12_N27
\this_mram_controller|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[2]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(2));

-- Location: LCFF_X22_Y12_N3
\this_mram_controller|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[9]~9\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(9));

-- Location: LCCOMB_X22_Y12_N2
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

-- Location: LCFF_X22_Y12_N5
\this_mram_controller|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[10]~10\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(10));

-- Location: LCCOMB_X22_Y12_N4
\this_write_out_mram_manager|UART_SEND_DATA[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|UART_SEND_DATA[3]~3_combout\ = (\this_write_out_mram_manager|msb~regout\ & (\this_mram_controller|data_out\(3))) # (!\this_write_out_mram_manager|msb~regout\ & ((\this_mram_controller|data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|data_out\(3),
	datac => \this_mram_controller|data_out\(10),
	datad => \this_write_out_mram_manager|msb~regout\,
	combout => \this_write_out_mram_manager|UART_SEND_DATA[3]~3_combout\);

-- Location: LCFF_X22_Y12_N7
\this_mram_controller|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[11]~11\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(11));

-- Location: LCCOMB_X22_Y12_N6
\this_write_out_mram_manager|UART_SEND_DATA[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|UART_SEND_DATA[4]~6_combout\ = (\this_write_out_mram_manager|msb~regout\ & (\this_mram_controller|data_out\(4))) # (!\this_write_out_mram_manager|msb~regout\ & ((\this_mram_controller|data_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|data_out\(4),
	datac => \this_mram_controller|data_out\(11),
	datad => \this_write_out_mram_manager|msb~regout\,
	combout => \this_write_out_mram_manager|UART_SEND_DATA[4]~6_combout\);

-- Location: LCCOMB_X22_Y12_N28
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

-- Location: LCFF_X22_Y12_N29
\this_mram_controller|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[5]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(5));

-- Location: LCFF_X22_Y12_N9
\this_mram_controller|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[12]~12\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(12));

-- Location: LCCOMB_X22_Y12_N8
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

-- Location: LCFF_X22_Y12_N11
\this_mram_controller|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \MRAM_D[13]~13\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(13));

-- Location: LCCOMB_X22_Y12_N10
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

-- Location: LCCOMB_X22_Y12_N14
\this_write_out_mram_manager|msb~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|msb~_wirecell_combout\ = !\this_write_out_mram_manager|msb~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_write_out_mram_manager|msb~regout\,
	combout => \this_write_out_mram_manager|msb~_wirecell_combout\);

-- Location: LCFF_X21_Y12_N9
\UART_Controller_1|uart_tx_1|data_send[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(0),
	sload => VCC,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(0));

-- Location: LCCOMB_X21_Y12_N28
\UART_Controller_1|uart_tx_1|Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector17~2_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(1) & (\UART_Controller_1|uart_tx_1|Selector17~1_combout\)) # (!\UART_Controller_1|uart_tx_1|data_index\(1) & 
-- (((\UART_Controller_1|uart_tx_1|curr_state.data~regout\ & \UART_Controller_1|uart_tx_1|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Selector17~1_combout\,
	datab => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	datac => \UART_Controller_1|uart_tx_1|data_index\(1),
	datad => \UART_Controller_1|uart_tx_1|Selector17~0_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector17~2_combout\);

-- Location: LCFF_X21_Y12_N29
\UART_Controller_1|uart_tx_1|data_index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_index\(1));

-- Location: LCCOMB_X21_Y12_N8
\UART_Controller_1|uart_tx_1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Mux0~0_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(0) & ((\UART_Controller_1|uart_tx_1|data_send\(1)) # ((\UART_Controller_1|uart_tx_1|data_index\(1))))) # (!\UART_Controller_1|uart_tx_1|data_index\(0) & 
-- (((\UART_Controller_1|uart_tx_1|data_send\(0) & !\UART_Controller_1|uart_tx_1|data_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_send\(1),
	datab => \UART_Controller_1|uart_tx_1|data_index\(0),
	datac => \UART_Controller_1|uart_tx_1|data_send\(0),
	datad => \UART_Controller_1|uart_tx_1|data_index\(1),
	combout => \UART_Controller_1|uart_tx_1|Mux0~0_combout\);

-- Location: LCFF_X21_Y12_N11
\UART_Controller_1|uart_tx_1|data_send[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(3),
	sload => VCC,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(3));

-- Location: LCCOMB_X21_Y12_N10
\UART_Controller_1|uart_tx_1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Mux0~1_combout\ = (\UART_Controller_1|uart_tx_1|Mux0~0_combout\ & (((\UART_Controller_1|uart_tx_1|data_send\(3)) # (!\UART_Controller_1|uart_tx_1|data_index\(1))))) # (!\UART_Controller_1|uart_tx_1|Mux0~0_combout\ & 
-- (\UART_Controller_1|uart_tx_1|data_send\(2) & ((\UART_Controller_1|uart_tx_1|data_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_send\(2),
	datab => \UART_Controller_1|uart_tx_1|Mux0~0_combout\,
	datac => \UART_Controller_1|uart_tx_1|data_send\(3),
	datad => \UART_Controller_1|uart_tx_1|data_index\(1),
	combout => \UART_Controller_1|uart_tx_1|Mux0~1_combout\);

-- Location: LCCOMB_X21_Y12_N18
\UART_Controller_1|uart_tx_1|TX~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|TX~2_combout\ = ((!\UART_Controller_1|uart_tx_1|data_index\(2) & \UART_Controller_1|uart_tx_1|Mux0~1_combout\)) # (!\UART_Controller_1|uart_tx_1|curr_state.data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|curr_state.data~regout\,
	datac => \UART_Controller_1|uart_tx_1|data_index\(2),
	datad => \UART_Controller_1|uart_tx_1|Mux0~1_combout\,
	combout => \UART_Controller_1|uart_tx_1|TX~2_combout\);

-- Location: LCCOMB_X20_Y12_N6
\UART_Controller_1|uart_tx_1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector2~0_combout\ = (\UART_Controller_1|uart_tx_1|curr_state.sync~regout\) # ((!\UART_Controller_1|uart_tx_1|Equal0~3_combout\ & \UART_Controller_1|uart_tx_1|curr_state.start~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|Equal0~3_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.start~regout\,
	datad => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector2~0_combout\);

-- Location: LCFF_X20_Y12_N7
\UART_Controller_1|uart_tx_1|curr_state.start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|curr_state.start~regout\);

-- Location: LCFF_X22_Y12_N31
\UART_Controller_1|uart_tx_1|data_send[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(6),
	sload => VCC,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(6));

-- Location: LCFF_X22_Y12_N23
\UART_Controller_1|uart_tx_1|data_send[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \pl|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(5),
	sload => VCC,
	ena => \UART_Controller_1|uart_tx_1|curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(5));

-- Location: LCCOMB_X22_Y12_N22
\UART_Controller_1|uart_tx_1|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Mux0~2_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(0) & (((\UART_Controller_1|uart_tx_1|data_send\(5)) # (\UART_Controller_1|uart_tx_1|data_index\(1))))) # (!\UART_Controller_1|uart_tx_1|data_index\(0) & 
-- (\UART_Controller_1|uart_tx_1|data_send\(4) & ((!\UART_Controller_1|uart_tx_1|data_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_send\(4),
	datab => \UART_Controller_1|uart_tx_1|data_index\(0),
	datac => \UART_Controller_1|uart_tx_1|data_send\(5),
	datad => \UART_Controller_1|uart_tx_1|data_index\(1),
	combout => \UART_Controller_1|uart_tx_1|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y12_N30
\UART_Controller_1|uart_tx_1|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Mux0~3_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(1) & ((\UART_Controller_1|uart_tx_1|Mux0~2_combout\ & (\UART_Controller_1|uart_tx_1|data_send\(7))) # (!\UART_Controller_1|uart_tx_1|Mux0~2_combout\ & 
-- ((\UART_Controller_1|uart_tx_1|data_send\(6)))))) # (!\UART_Controller_1|uart_tx_1|data_index\(1) & (((\UART_Controller_1|uart_tx_1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_send\(7),
	datab => \UART_Controller_1|uart_tx_1|data_index\(1),
	datac => \UART_Controller_1|uart_tx_1|data_send\(6),
	datad => \UART_Controller_1|uart_tx_1|Mux0~2_combout\,
	combout => \UART_Controller_1|uart_tx_1|Mux0~3_combout\);

-- Location: LCCOMB_X21_Y12_N22
\UART_Controller_1|uart_tx_1|TX~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|TX~3_combout\ = (!\UART_Controller_1|uart_tx_1|curr_state.start~regout\ & ((\UART_Controller_1|uart_tx_1|TX~2_combout\) # ((\UART_Controller_1|uart_tx_1|data_index\(2) & \UART_Controller_1|uart_tx_1|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_index\(2),
	datab => \UART_Controller_1|uart_tx_1|TX~2_combout\,
	datac => \UART_Controller_1|uart_tx_1|curr_state.start~regout\,
	datad => \UART_Controller_1|uart_tx_1|Mux0~3_combout\,
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
	datain => \adc_spi_controller|spi_tx_component|tx_buf\(15),
	oe => \adc_spi_controller|spi_tx_component|SPI_MOSI~1_combout\,
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
	datain => \this_setup_manager|ADC_SYNC~regout\,
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
	padio => ww_ADC_BIT_A(0));

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
	padio => ww_ADC_BIT_A(1));

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
	datain => \adc_spi_controller|spi_tx_component|ALT_INV_sclk~regout\,
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
	datain => \adc_spi_controller|SPI_CS~regout\,
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
	datain => \this_mram_controller|MRAM_A\(0),
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
	datain => \this_mram_controller|MRAM_A\(1),
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
	datain => \this_mram_controller|MRAM_A\(2),
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
	datain => \this_mram_controller|MRAM_A\(3),
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => \this_mram_controller|ALT_INV_MRAM_LOWER_EN~regout\,
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
	datain => \this_mram_controller|ALT_INV_MRAM_LOWER_EN~regout\,
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


