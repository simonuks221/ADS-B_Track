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

-- DATE "03/21/2023 12:56:55"

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
	MRAM_D : OUT std_logic_vector(15 DOWNTO 0)
	);
END UNI_Projektas;

-- Design Ports Information
-- SPI_MOSI	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SPI_MISO	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SPI_SCLK	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SPI_CS	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADC_SPI_SDIN	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BUTTON	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_SHDN	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADC_SYNC	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADC_CLK	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADC_DORB	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_DORA	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_DCLKB	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_DCLKA	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- ADC_SPI_SCLK	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADC_SPI_CS	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- MRAM_D[10]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[11]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[12]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[13]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[14]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[15]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADC_BIT_A[7]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[6]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[5]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[4]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[3]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[2]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[1]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[0]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_MRAM_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_tx_component|Add1~15\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~16_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~2\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~3_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~4\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~5_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~6\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~7_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~8\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~9_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~6_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ : std_logic;
SIGNAL \config_command_counter[2]~9_combout\ : std_logic;
SIGNAL \config_command_counter[4]~13_combout\ : std_logic;
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
SIGNAL \adc_spi_controller|Selector0~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|curr_state.idle~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~13_combout\ : std_logic;
SIGNAL \adc_spi_controller|Selector3~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|fifo_rdreq~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector2~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~15_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~17_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~18_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~19_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~20_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~21_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~22_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~23_combout\ : std_logic;
SIGNAL \ADC_SPI_send_data[10]~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~24_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~25_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~26_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~27_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~28_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~29_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~30_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SPI_MOSI~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[0]~31_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[0]~32_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM1\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM3\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM5\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM11\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM13\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM15\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM17\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM19\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM21\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM23\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM25\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM27\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM29\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM31\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM33\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM35\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM37\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM39\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM41\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM43\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM45\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM47\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM49\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM51\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM53\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM55\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM57\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM59\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM61\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM63\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM65\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM67\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM69\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_OTERM73\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_OTERM75\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM63~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM59~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM55~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM51~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM47~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM43~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM39~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM35~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM31~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM27~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM23~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM19~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM15~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM11~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_OTERM73~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM3~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM13~feeder_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~12_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~14_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~15_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|bits_sent[0]_OTERM79\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|process_0~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|curr_state~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|curr_state~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~9\ : std_logic;
SIGNAL \adc_spi_controller|Add0~10_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~11\ : std_logic;
SIGNAL \adc_spi_controller|Add0~12_combout\ : std_logic;
SIGNAL \adc_spi_controller|cs_up_counter~4_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~13\ : std_logic;
SIGNAL \adc_spi_controller|Add0~14_combout\ : std_logic;
SIGNAL \adc_spi_controller|cs_up_counter~5_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~15\ : std_logic;
SIGNAL \adc_spi_controller|Add0~16_combout\ : std_logic;
SIGNAL \adc_spi_controller|cs_up_counter~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|cs_up_counter~3_combout\ : std_logic;
SIGNAL \adc_spi_controller|Equal0~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|cs_up_counter~6_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~1\ : std_logic;
SIGNAL \adc_spi_controller|Add0~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~3\ : std_logic;
SIGNAL \adc_spi_controller|Add0~4_combout\ : std_logic;
SIGNAL \adc_spi_controller|cs_up_counter~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~5\ : std_logic;
SIGNAL \adc_spi_controller|Add0~7\ : std_logic;
SIGNAL \adc_spi_controller|Add0~8_combout\ : std_logic;
SIGNAL \adc_spi_controller|cs_up_counter~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|Equal0~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|Equal0~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|Selector5~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|curr_state.transmiting~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~11_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SEND_DONE~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SEND_DONE~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector6~0_combout\ : std_logic;
SIGNAL \config_command_counter[1]~7_combout\ : std_logic;
SIGNAL \config_command_counter[1]~8\ : std_logic;
SIGNAL \config_command_counter[2]~10\ : std_logic;
SIGNAL \config_command_counter[3]~11_combout\ : std_logic;
SIGNAL \config_command_counter[3]~12\ : std_logic;
SIGNAL \config_command_counter[4]~14\ : std_logic;
SIGNAL \config_command_counter[5]~15_combout\ : std_logic;
SIGNAL \config_command_counter[5]~16\ : std_logic;
SIGNAL \config_command_counter[6]~17_combout\ : std_logic;
SIGNAL \config_command_counter[0]~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \ADC_SPI_send_irq~0_combout\ : std_logic;
SIGNAL \ADC_SPI_send_irq~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector6~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|Selector6~3_combout\ : std_logic;
SIGNAL \adc_spi_controller|curr_state.cs_up~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector6~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|Selector4~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|curr_state.reading_fifo~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector1~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|tx_send_irq~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|curr_state~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~1\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~3\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~4_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~5\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~7\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~9\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~10_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter~4_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~11\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~12_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter~5_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~13\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~14_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter~6_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~8_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter~3_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Equal0~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add1~6_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Equal0~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Equal0~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|sclk~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|sclk~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|process_0~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SPI_MOSI~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SPI_MOSI~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SPI_MOSI~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector0~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|SPI_CS~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL config_command_counter : std_logic_vector(6 DOWNTO 0);
SIGNAL ADC_SPI_send_data : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc_spi_controller|cs_up_counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_tx_component|bits_sent\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_tx_component|ALT_INV_sclk~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|ALT_INV_curr_state~regout\ : std_logic;

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
MRAM_D <= ww_MRAM_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & ADC_SPI_send_data(10) & 
ADC_SPI_send_data(10) & \~GND~combout\ & ADC_SPI_send_data(10) & ADC_SPI_send_data(10) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3) & 
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) & 
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & 
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(0) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(0);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(1) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(1);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(2) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(2);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(3) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(3);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(4) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(4);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(5) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(5);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(6) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(6);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(7) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(7);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(8) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(8);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(9) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(9);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(10) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(10);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(11) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(11);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(12) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(12);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(13) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(13);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(14) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(14);
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(15) <= \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(15);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);
\adc_spi_controller|spi_tx_component|ALT_INV_sclk~regout\ <= NOT \adc_spi_controller|spi_tx_component|sclk~regout\;
\adc_spi_controller|spi_tx_component|ALT_INV_curr_state~regout\ <= NOT \adc_spi_controller|spi_tx_component|curr_state~regout\;

-- Location: LCCOMB_X14_Y5_N14
\adc_spi_controller|spi_tx_component|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add1~14_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(7) & (!\adc_spi_controller|spi_tx_component|Add1~13\)) # (!\adc_spi_controller|spi_tx_component|clk_counter\(7) & 
-- ((\adc_spi_controller|spi_tx_component|Add1~13\) # (GND)))
-- \adc_spi_controller|spi_tx_component|Add1~15\ = CARRY((!\adc_spi_controller|spi_tx_component|Add1~13\) # (!\adc_spi_controller|spi_tx_component|clk_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|clk_counter\(7),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|Add1~13\,
	combout => \adc_spi_controller|spi_tx_component|Add1~14_combout\,
	cout => \adc_spi_controller|spi_tx_component|Add1~15\);

-- Location: LCCOMB_X14_Y5_N16
\adc_spi_controller|spi_tx_component|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add1~16_combout\ = \adc_spi_controller|spi_tx_component|Add1~15\ $ (!\adc_spi_controller|spi_tx_component|clk_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_tx_component|clk_counter\(8),
	cin => \adc_spi_controller|spi_tx_component|Add1~15\,
	combout => \adc_spi_controller|spi_tx_component|Add1~16_combout\);

-- Location: LCCOMB_X12_Y5_N18
\adc_spi_controller|spi_tx_component|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~2\ = CARRY((\adc_spi_controller|spi_tx_component|bits_sent\(0) & !\adc_spi_controller|spi_tx_component|sclk~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|bits_sent\(0),
	datab => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datad => VCC,
	cout => \adc_spi_controller|spi_tx_component|Add0~2\);

-- Location: LCCOMB_X12_Y5_N20
\adc_spi_controller|spi_tx_component|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~3_combout\ = (\adc_spi_controller|spi_tx_component|bits_sent\(1) & (!\adc_spi_controller|spi_tx_component|Add0~2\)) # (!\adc_spi_controller|spi_tx_component|bits_sent\(1) & 
-- ((\adc_spi_controller|spi_tx_component|Add0~2\) # (GND)))
-- \adc_spi_controller|spi_tx_component|Add0~4\ = CARRY((!\adc_spi_controller|spi_tx_component|Add0~2\) # (!\adc_spi_controller|spi_tx_component|bits_sent\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(1),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|Add0~2\,
	combout => \adc_spi_controller|spi_tx_component|Add0~3_combout\,
	cout => \adc_spi_controller|spi_tx_component|Add0~4\);

-- Location: LCCOMB_X12_Y5_N22
\adc_spi_controller|spi_tx_component|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~5_combout\ = (\adc_spi_controller|spi_tx_component|bits_sent\(2) & (\adc_spi_controller|spi_tx_component|Add0~4\ $ (GND))) # (!\adc_spi_controller|spi_tx_component|bits_sent\(2) & 
-- (!\adc_spi_controller|spi_tx_component|Add0~4\ & VCC))
-- \adc_spi_controller|spi_tx_component|Add0~6\ = CARRY((\adc_spi_controller|spi_tx_component|bits_sent\(2) & !\adc_spi_controller|spi_tx_component|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|bits_sent\(2),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|Add0~4\,
	combout => \adc_spi_controller|spi_tx_component|Add0~5_combout\,
	cout => \adc_spi_controller|spi_tx_component|Add0~6\);

-- Location: LCCOMB_X12_Y5_N24
\adc_spi_controller|spi_tx_component|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~7_combout\ = (\adc_spi_controller|spi_tx_component|bits_sent\(3) & (!\adc_spi_controller|spi_tx_component|Add0~6\)) # (!\adc_spi_controller|spi_tx_component|bits_sent\(3) & 
-- ((\adc_spi_controller|spi_tx_component|Add0~6\) # (GND)))
-- \adc_spi_controller|spi_tx_component|Add0~8\ = CARRY((!\adc_spi_controller|spi_tx_component|Add0~6\) # (!\adc_spi_controller|spi_tx_component|bits_sent\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(3),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|Add0~6\,
	combout => \adc_spi_controller|spi_tx_component|Add0~7_combout\,
	cout => \adc_spi_controller|spi_tx_component|Add0~8\);

-- Location: LCCOMB_X12_Y5_N26
\adc_spi_controller|spi_tx_component|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~9_combout\ = \adc_spi_controller|spi_tx_component|bits_sent\(4) $ (!\adc_spi_controller|spi_tx_component|Add0~8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	cin => \adc_spi_controller|spi_tx_component|Add0~8\,
	combout => \adc_spi_controller|spi_tx_component|Add0~9_combout\);

-- Location: LCFF_X9_Y6_N13
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2));

-- Location: LCCOMB_X7_Y6_N12
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

-- Location: LCCOMB_X9_Y6_N12
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ = 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) & ((VCC)))) # 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) $ (((VCC) # 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))))
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ = 
-- CARRY((!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) $ 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\);

-- Location: LCFF_X10_Y5_N21
\config_command_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \config_command_counter[4]~13_combout\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => config_command_counter(4));

-- Location: LCFF_X10_Y5_N17
\config_command_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \config_command_counter[2]~9_combout\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => config_command_counter(2));

-- Location: LCCOMB_X10_Y5_N16
\config_command_counter[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \config_command_counter[2]~9_combout\ = (config_command_counter(2) & (!\config_command_counter[1]~8\)) # (!config_command_counter(2) & ((\config_command_counter[1]~8\) # (GND)))
-- \config_command_counter[2]~10\ = CARRY((!\config_command_counter[1]~8\) # (!config_command_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => config_command_counter(2),
	datad => VCC,
	cin => \config_command_counter[1]~8\,
	combout => \config_command_counter[2]~9_combout\,
	cout => \config_command_counter[2]~10\);

-- Location: LCCOMB_X10_Y5_N20
\config_command_counter[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \config_command_counter[4]~13_combout\ = (config_command_counter(4) & (!\config_command_counter[3]~12\)) # (!config_command_counter(4) & ((\config_command_counter[3]~12\) # (GND)))
-- \config_command_counter[4]~14\ = CARRY((!\config_command_counter[3]~12\) # (!config_command_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => config_command_counter(4),
	datad => VCC,
	cin => \config_command_counter[3]~12\,
	combout => \config_command_counter[4]~13_combout\,
	cout => \config_command_counter[4]~14\);

-- Location: LCFF_X14_Y6_N25
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

-- Location: LCFF_X14_Y6_N27
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1));

-- Location: LCFF_X14_Y6_N29
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2));

-- Location: LCFF_X14_Y6_N31
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3));

-- Location: LCFF_X14_Y6_N7
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

-- Location: LCFF_X14_Y6_N9
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1));

-- Location: LCFF_X14_Y6_N11
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2));

-- Location: LCFF_X14_Y6_N13
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3));

-- Location: LCCOMB_X14_Y6_N24
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0) $ (VCC)
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ = CARRY(\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0),
	datad => VCC,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X14_Y6_N26
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

-- Location: LCCOMB_X14_Y6_N28
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

-- Location: LCCOMB_X14_Y6_N30
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

-- Location: LCCOMB_X14_Y6_N6
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

-- Location: LCCOMB_X14_Y6_N8
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

-- Location: LCCOMB_X14_Y6_N10
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ $ (GND))) # (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ & VCC))
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ = CARRY((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- !\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2),
	datad => VCC,
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X14_Y6_N12
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

-- Location: M4K_X11_Y6
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "SPI_Controller:adc_spi_controller|wizard_spi_fifo:spi_fifo_component|scfifo:scfifo_component|scfifo_3c21:auto_generated|a_dpfifo_ai21:dpfifo|dpram_bv01:FIFOram|altsyncram_0vj1:altsyncram1|ALTSYNCRAM",
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
	clk0 => \CLK~clkctrl_outclk\,
	clk1 => \CLK~clkctrl_outclk\,
	ena0 => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	ena1 => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	portadatain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portaaddr => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X14_Y5_N7
\adc_spi_controller|spi_tx_component|clk_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Add1~6_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(3));

-- Location: LCFF_X13_Y5_N11
\adc_spi_controller|spi_tx_component|clk_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter~2_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(8));

-- Location: LCFF_X14_Y5_N23
\adc_spi_controller|spi_tx_component|clk_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter~3_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(4));

-- Location: LCFF_X14_Y5_N31
\adc_spi_controller|spi_tx_component|clk_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter~5_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(6));

-- Location: LCCOMB_X8_Y6_N6
\adc_spi_controller|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector0~0_combout\ = (\adc_spi_controller|spi_tx_component|SEND_DONE~regout\) # (!\adc_spi_controller|curr_state.transmiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|curr_state.transmiting~regout\,
	datad => \adc_spi_controller|spi_tx_component|SEND_DONE~regout\,
	combout => \adc_spi_controller|Selector0~0_combout\);

-- Location: LCFF_X12_Y5_N7
\adc_spi_controller|spi_tx_component|bits_sent[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Add0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(2));

-- Location: LCCOMB_X13_Y5_N10
\adc_spi_controller|spi_tx_component|clk_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter~2_combout\ = (\adc_spi_controller|spi_tx_component|Add1~16_combout\ & (((!\adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\) # (!\adc_spi_controller|spi_tx_component|clk_counter\(8))) # 
-- (!\adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|Add1~16_combout\,
	datab => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\,
	datac => \adc_spi_controller|spi_tx_component|clk_counter\(8),
	datad => \adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\,
	combout => \adc_spi_controller|spi_tx_component|clk_counter~2_combout\);

-- Location: LCFF_X8_Y6_N21
\adc_spi_controller|curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|curr_state.idle~regout\);

-- Location: LCFF_X7_Y6_N13
\adc_spi_controller|cs_up_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Add0~6_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(3));

-- Location: LCCOMB_X12_Y5_N6
\adc_spi_controller|spi_tx_component|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~13_combout\ = (\adc_spi_controller|spi_tx_component|Add0~0_combout\ & ((\adc_spi_controller|spi_tx_component|Equal0~2_combout\ & (\adc_spi_controller|spi_tx_component|Add0~5_combout\)) # 
-- (!\adc_spi_controller|spi_tx_component|Equal0~2_combout\ & ((\adc_spi_controller|spi_tx_component|bits_sent\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|Add0~5_combout\,
	datab => \adc_spi_controller|spi_tx_component|Equal0~2_combout\,
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(2),
	datad => \adc_spi_controller|spi_tx_component|Add0~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|Add0~13_combout\);

-- Location: LCCOMB_X8_Y6_N20
\adc_spi_controller|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector3~0_combout\ = (\adc_spi_controller|curr_state.cs_up~regout\ & (!\adc_spi_controller|Equal0~2_combout\ & ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\) # 
-- (\adc_spi_controller|curr_state.idle~regout\)))) # (!\adc_spi_controller|curr_state.cs_up~regout\ & ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\) # 
-- ((\adc_spi_controller|curr_state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|curr_state.cs_up~regout\,
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datac => \adc_spi_controller|curr_state.idle~regout\,
	datad => \adc_spi_controller|Equal0~2_combout\,
	combout => \adc_spi_controller|Selector3~0_combout\);

-- Location: LCFF_X8_Y6_N15
\adc_spi_controller|fifo_rdreq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|fifo_rdreq~regout\);

-- Location: LCCOMB_X8_Y6_N14
\adc_spi_controller|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector2~0_combout\ = (\adc_spi_controller|curr_state.idle~regout\ & (\adc_spi_controller|curr_state.cs_up~regout\ & (\adc_spi_controller|fifo_rdreq~regout\))) # (!\adc_spi_controller|curr_state.idle~regout\ & 
-- (((\adc_spi_controller|fifo_rdreq~regout\) # (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|curr_state.idle~regout\,
	datab => \adc_spi_controller|curr_state.cs_up~regout\,
	datac => \adc_spi_controller|fifo_rdreq~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \adc_spi_controller|Selector2~0_combout\);

-- Location: LCCOMB_X12_Y6_N16
\adc_spi_controller|spi_tx_component|tx_buf~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~15_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & ((\adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM69\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM67\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM69\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~15_combout\);

-- Location: LCCOMB_X12_Y6_N12
\adc_spi_controller|spi_tx_component|tx_buf[14]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\ = (\adc_spi_controller|spi_tx_component|curr_state~regout\ & (((\adc_spi_controller|spi_tx_component|process_0~1_combout\) # (\adc_spi_controller|spi_tx_component|SPI_MOSI~0_combout\)))) # 
-- (!\adc_spi_controller|spi_tx_component|curr_state~regout\ & (\adc_spi_controller|tx_send_irq~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|tx_send_irq~regout\,
	datab => \adc_spi_controller|spi_tx_component|process_0~1_combout\,
	datac => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datad => \adc_spi_controller|spi_tx_component|SPI_MOSI~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\);

-- Location: LCCOMB_X12_Y6_N28
\adc_spi_controller|spi_tx_component|tx_buf~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~17_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & ((\adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM65\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	datab => \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM63\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM65\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~17_combout\);

-- Location: LCCOMB_X9_Y6_N2
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

-- Location: LCCOMB_X12_Y6_N8
\adc_spi_controller|spi_tx_component|tx_buf~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~18_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & ((\adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM61\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM59\,
	datab => \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM61\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~18_combout\);

-- Location: LCCOMB_X12_Y6_N26
\adc_spi_controller|spi_tx_component|tx_buf~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~19_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & ((\adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM57\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM55\,
	datab => \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM57\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~19_combout\);

-- Location: LCCOMB_X12_Y6_N22
\adc_spi_controller|spi_tx_component|tx_buf~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~20_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & ((\adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM53\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM51\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM53\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~20_combout\);

-- Location: LCCOMB_X13_Y6_N30
\adc_spi_controller|spi_tx_component|tx_buf~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~21_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & ((\adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM49\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM47\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM49\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~21_combout\);

-- Location: LCCOMB_X12_Y6_N14
\adc_spi_controller|spi_tx_component|tx_buf~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~22_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & (\adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM45\)) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- ((\adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	datab => \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM45\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM43\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~22_combout\);

-- Location: LCFF_X10_Y5_N1
\ADC_SPI_send_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \ADC_SPI_send_data[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ADC_SPI_send_data(10));

-- Location: LCCOMB_X13_Y6_N18
\adc_spi_controller|spi_tx_component|tx_buf~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~23_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & (\adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM41\)) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- ((\adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	datab => \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM41\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM39\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~23_combout\);

-- Location: LCCOMB_X10_Y5_N0
\ADC_SPI_send_data[10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADC_SPI_send_data[10]~0_combout\ = (ADC_SPI_send_data(10)) # (\Mux16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ADC_SPI_send_data(10),
	datad => \Mux16~1_combout\,
	combout => \ADC_SPI_send_data[10]~0_combout\);

-- Location: LCCOMB_X13_Y6_N28
\adc_spi_controller|spi_tx_component|tx_buf~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~24_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & ((\adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM37\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM35\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM37\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~24_combout\);

-- Location: LCCOMB_X13_Y6_N16
\adc_spi_controller|spi_tx_component|tx_buf~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~25_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & (\adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM33\)) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- ((\adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM33\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM31\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~25_combout\);

-- Location: LCCOMB_X13_Y6_N20
\adc_spi_controller|spi_tx_component|tx_buf~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~26_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & (\adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM29\)) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- ((\adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM29\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM27\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~26_combout\);

-- Location: LCCOMB_X13_Y6_N24
\adc_spi_controller|spi_tx_component|tx_buf~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~27_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & ((\adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM25\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM23\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM25\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~27_combout\);

-- Location: LCCOMB_X13_Y6_N2
\adc_spi_controller|spi_tx_component|tx_buf~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~28_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & ((\adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM21\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM19\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM21\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~28_combout\);

-- Location: LCCOMB_X13_Y6_N22
\adc_spi_controller|spi_tx_component|tx_buf~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~29_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & ((\adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM17\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM15\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM17\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~29_combout\);

-- Location: LCCOMB_X13_Y6_N10
\adc_spi_controller|spi_tx_component|tx_buf~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~30_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & ((\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM13\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM11\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM13\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~30_combout\);

-- Location: LCCOMB_X13_Y5_N0
\adc_spi_controller|spi_tx_component|SPI_MOSI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|SPI_MOSI~2_combout\ = (\adc_spi_controller|spi_tx_component|sclk~regout\ & ((\adc_spi_controller|spi_tx_component|bits_sent\(4)) # ((!\adc_spi_controller|spi_tx_component|process_0~0_combout\)))) # 
-- (!\adc_spi_controller|spi_tx_component|sclk~regout\ & (((!\adc_spi_controller|spi_tx_component|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	datab => \adc_spi_controller|spi_tx_component|Equal0~2_combout\,
	datac => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datad => \adc_spi_controller|spi_tx_component|process_0~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|SPI_MOSI~2_combout\);

-- Location: LCCOMB_X13_Y6_N12
\adc_spi_controller|spi_tx_component|tx_buf[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[0]~31_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_OTERM75\ & (\adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_OTERM73\)) # 
-- (!\adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_OTERM75\ & ((\adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_OTERM73\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_OTERM75\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM3\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf[0]~31_combout\);

-- Location: LCCOMB_X13_Y6_N26
\adc_spi_controller|spi_tx_component|tx_buf[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[0]~32_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM1\ & (((\adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM3\ & \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM5\)))) # 
-- (!\adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM1\ & (\adc_spi_controller|spi_tx_component|tx_buf[0]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[0]~31_combout\,
	datab => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM3\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM1\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM5\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf[0]~32_combout\);

-- Location: LCCOMB_X10_Y6_N0
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

-- Location: LCFF_X13_Y6_N27
\adc_spi_controller|spi_tx_component|tx_buf[0]_NEW_REG0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM1\);

-- Location: LCFF_X13_Y6_N1
\adc_spi_controller|spi_tx_component|tx_buf[0]_NEW_REG2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM3\);

-- Location: LCFF_X13_Y5_N1
\adc_spi_controller|spi_tx_component|tx_buf[0]_NEW_REG4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|SPI_MOSI~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM5\);

-- Location: LCFF_X12_Y6_N13
\adc_spi_controller|spi_tx_component|tx_buf[1]_NEW_REG8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	sload => VCC,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM9\);

-- Location: LCFF_X10_Y6_N15
\adc_spi_controller|spi_tx_component|tx_buf[1]_NEW_REG10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM11~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM11\);

-- Location: LCFF_X13_Y6_N7
\adc_spi_controller|spi_tx_component|tx_buf[1]_NEW_REG12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM13~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM13\);

-- Location: LCFF_X10_Y6_N17
\adc_spi_controller|spi_tx_component|tx_buf[2]_NEW_REG14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM15~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM15\);

-- Location: LCFF_X13_Y6_N11
\adc_spi_controller|spi_tx_component|tx_buf[2]_NEW_REG16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~30_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM17\);

-- Location: LCFF_X10_Y6_N27
\adc_spi_controller|spi_tx_component|tx_buf[3]_NEW_REG18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM19~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM19\);

-- Location: LCFF_X13_Y6_N23
\adc_spi_controller|spi_tx_component|tx_buf[3]_NEW_REG20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~29_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM21\);

-- Location: LCFF_X12_Y6_N1
\adc_spi_controller|spi_tx_component|tx_buf[4]_NEW_REG22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM23~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM23\);

-- Location: LCFF_X13_Y6_N3
\adc_spi_controller|spi_tx_component|tx_buf[4]_NEW_REG24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~28_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM25\);

-- Location: LCFF_X10_Y6_N29
\adc_spi_controller|spi_tx_component|tx_buf[5]_NEW_REG26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM27~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM27\);

-- Location: LCFF_X13_Y6_N25
\adc_spi_controller|spi_tx_component|tx_buf[5]_NEW_REG28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~27_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM29\);

-- Location: LCFF_X12_Y6_N19
\adc_spi_controller|spi_tx_component|tx_buf[6]_NEW_REG30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM31~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM31\);

-- Location: LCFF_X13_Y6_N21
\adc_spi_controller|spi_tx_component|tx_buf[6]_NEW_REG32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~26_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM33\);

-- Location: LCFF_X10_Y6_N11
\adc_spi_controller|spi_tx_component|tx_buf[7]_NEW_REG34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM35~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM35\);

-- Location: LCFF_X13_Y6_N17
\adc_spi_controller|spi_tx_component|tx_buf[7]_NEW_REG36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~25_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM37\);

-- Location: LCFF_X12_Y6_N3
\adc_spi_controller|spi_tx_component|tx_buf[8]_NEW_REG38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM39~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM39\);

-- Location: LCFF_X13_Y6_N29
\adc_spi_controller|spi_tx_component|tx_buf[8]_NEW_REG40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~24_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM41\);

-- Location: LCFF_X12_Y6_N7
\adc_spi_controller|spi_tx_component|tx_buf[9]_NEW_REG42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM43~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM43\);

-- Location: LCFF_X13_Y6_N19
\adc_spi_controller|spi_tx_component|tx_buf[9]_NEW_REG44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~23_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM45\);

-- Location: LCFF_X12_Y6_N5
\adc_spi_controller|spi_tx_component|tx_buf[10]_NEW_REG46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM47~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM47\);

-- Location: LCFF_X12_Y6_N15
\adc_spi_controller|spi_tx_component|tx_buf[10]_NEW_REG48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~22_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM49\);

-- Location: LCFF_X12_Y6_N21
\adc_spi_controller|spi_tx_component|tx_buf[11]_NEW_REG50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM51~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM51\);

-- Location: LCFF_X13_Y6_N31
\adc_spi_controller|spi_tx_component|tx_buf[11]_NEW_REG52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~21_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM53\);

-- Location: LCFF_X12_Y6_N11
\adc_spi_controller|spi_tx_component|tx_buf[12]_NEW_REG54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM55~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM55\);

-- Location: LCFF_X12_Y6_N23
\adc_spi_controller|spi_tx_component|tx_buf[12]_NEW_REG56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~20_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM57\);

-- Location: LCFF_X12_Y6_N25
\adc_spi_controller|spi_tx_component|tx_buf[13]_NEW_REG58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM59~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM59\);

-- Location: LCFF_X12_Y6_N27
\adc_spi_controller|spi_tx_component|tx_buf[13]_NEW_REG60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~19_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM61\);

-- Location: LCFF_X12_Y6_N31
\adc_spi_controller|spi_tx_component|tx_buf[14]_NEW_REG62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM63~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM63\);

-- Location: LCFF_X12_Y6_N9
\adc_spi_controller|spi_tx_component|tx_buf[14]_NEW_REG64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~18_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM65\);

-- Location: LCFF_X12_Y6_N17
\adc_spi_controller|spi_tx_component|tx_buf[15]_NEW_REG66\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(15),
	sload => VCC,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM67\);

-- Location: LCFF_X12_Y6_N29
\adc_spi_controller|spi_tx_component|tx_buf[15]_NEW_REG68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~17_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM69\);

-- Location: LCFF_X10_Y6_N5
\adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_NEW_REG72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_OTERM73~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_OTERM73\);

-- Location: LCFF_X13_Y6_N13
\adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_NEW_REG74\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \adc_spi_controller|tx_send_irq~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_OTERM75\);

-- Location: LCCOMB_X12_Y6_N30
\adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM63~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM63~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(14),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM63~feeder_combout\);

-- Location: LCCOMB_X12_Y6_N24
\adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM59~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM59~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(13),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM59~feeder_combout\);

-- Location: LCCOMB_X12_Y6_N10
\adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM55~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM55~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(12),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM55~feeder_combout\);

-- Location: LCCOMB_X12_Y6_N20
\adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM51~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM51~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(11),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM51~feeder_combout\);

-- Location: LCCOMB_X12_Y6_N4
\adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM47~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM47~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(10),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM47~feeder_combout\);

-- Location: LCCOMB_X12_Y6_N6
\adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM43~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM43~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(9),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM43~feeder_combout\);

-- Location: LCCOMB_X12_Y6_N2
\adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM39~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM39~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(8),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM39~feeder_combout\);

-- Location: LCCOMB_X10_Y6_N10
\adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM35~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM35~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(7),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM35~feeder_combout\);

-- Location: LCCOMB_X12_Y6_N18
\adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM31~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM31~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(6),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM31~feeder_combout\);

-- Location: LCCOMB_X10_Y6_N28
\adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM27~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM27~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(5),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM27~feeder_combout\);

-- Location: LCCOMB_X12_Y6_N0
\adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM23~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM23~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(4),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM23~feeder_combout\);

-- Location: LCCOMB_X10_Y6_N26
\adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM19~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM19~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(3),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM19~feeder_combout\);

-- Location: LCCOMB_X10_Y6_N16
\adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM15~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM15~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(2),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM15~feeder_combout\);

-- Location: LCCOMB_X10_Y6_N14
\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM11~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM11~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(1),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM11~feeder_combout\);

-- Location: LCCOMB_X10_Y6_N4
\adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_OTERM73~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_OTERM73~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(0),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM7_OTERM73~feeder_combout\);

-- Location: LCCOMB_X13_Y6_N0
\adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM3~feeder_combout\ = \adc_spi_controller|spi_tx_component|tx_buf[0]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_tx_component|tx_buf[0]~32_combout\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM3~feeder_combout\);

-- Location: LCCOMB_X13_Y6_N6
\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM13~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM13~feeder_combout\ = \adc_spi_controller|spi_tx_component|tx_buf[0]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_tx_component|tx_buf[0]~32_combout\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM13~feeder_combout\);

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

-- Location: LCCOMB_X13_Y5_N30
\adc_spi_controller|spi_tx_component|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~0_combout\ = (\adc_spi_controller|spi_tx_component|curr_state~regout\ & ((\adc_spi_controller|spi_tx_component|bits_sent\(4)) # ((!\adc_spi_controller|spi_tx_component|process_0~0_combout\) # 
-- (!\adc_spi_controller|spi_tx_component|sclk~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	datab => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datac => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datad => \adc_spi_controller|spi_tx_component|process_0~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|Add0~0_combout\);

-- Location: LCCOMB_X12_Y5_N28
\adc_spi_controller|spi_tx_component|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~12_combout\ = (\adc_spi_controller|spi_tx_component|Add0~0_combout\ & ((\adc_spi_controller|spi_tx_component|Equal0~2_combout\ & (\adc_spi_controller|spi_tx_component|Add0~7_combout\)) # 
-- (!\adc_spi_controller|spi_tx_component|Equal0~2_combout\ & ((\adc_spi_controller|spi_tx_component|bits_sent\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|Add0~7_combout\,
	datab => \adc_spi_controller|spi_tx_component|Equal0~2_combout\,
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(3),
	datad => \adc_spi_controller|spi_tx_component|Add0~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|Add0~12_combout\);

-- Location: LCFF_X12_Y5_N29
\adc_spi_controller|spi_tx_component|bits_sent[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(3));

-- Location: LCCOMB_X12_Y5_N4
\adc_spi_controller|spi_tx_component|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~14_combout\ = (\adc_spi_controller|spi_tx_component|Add0~0_combout\ & ((\adc_spi_controller|spi_tx_component|Equal0~2_combout\ & (\adc_spi_controller|spi_tx_component|Add0~3_combout\)) # 
-- (!\adc_spi_controller|spi_tx_component|Equal0~2_combout\ & ((\adc_spi_controller|spi_tx_component|bits_sent\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|Add0~3_combout\,
	datab => \adc_spi_controller|spi_tx_component|Equal0~2_combout\,
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(1),
	datad => \adc_spi_controller|spi_tx_component|Add0~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|Add0~14_combout\);

-- Location: LCFF_X12_Y5_N5
\adc_spi_controller|spi_tx_component|bits_sent[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(1));

-- Location: LCCOMB_X12_Y5_N16
\adc_spi_controller|spi_tx_component|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~15_combout\ = (\adc_spi_controller|spi_tx_component|process_0~1_combout\) # (\adc_spi_controller|spi_tx_component|bits_sent\(0) $ (((!\adc_spi_controller|spi_tx_component|sclk~regout\ & 
-- \adc_spi_controller|spi_tx_component|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|bits_sent\(0),
	datab => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datac => \adc_spi_controller|spi_tx_component|Equal0~2_combout\,
	datad => \adc_spi_controller|spi_tx_component|process_0~1_combout\,
	combout => \adc_spi_controller|spi_tx_component|Add0~15_combout\);

-- Location: LCCOMB_X12_Y5_N10
\adc_spi_controller|spi_tx_component|bits_sent[0]_NEW78\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|bits_sent[0]_OTERM79\ = (\adc_spi_controller|spi_tx_component|Add0~15_combout\ & \adc_spi_controller|spi_tx_component|curr_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_spi_controller|spi_tx_component|Add0~15_combout\,
	datad => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	combout => \adc_spi_controller|spi_tx_component|bits_sent[0]_OTERM79\);

-- Location: LCFF_X12_Y5_N11
\adc_spi_controller|spi_tx_component|bits_sent[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|bits_sent[0]_OTERM79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(0));

-- Location: LCCOMB_X12_Y5_N12
\adc_spi_controller|spi_tx_component|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|process_0~0_combout\ = (!\adc_spi_controller|spi_tx_component|bits_sent\(2) & (!\adc_spi_controller|spi_tx_component|bits_sent\(3) & (!\adc_spi_controller|spi_tx_component|bits_sent\(1) & 
-- !\adc_spi_controller|spi_tx_component|bits_sent\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|bits_sent\(2),
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(3),
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(1),
	datad => \adc_spi_controller|spi_tx_component|bits_sent\(0),
	combout => \adc_spi_controller|spi_tx_component|process_0~0_combout\);

-- Location: LCCOMB_X13_Y5_N22
\adc_spi_controller|spi_tx_component|curr_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|curr_state~0_combout\ = (((\adc_spi_controller|spi_tx_component|sclk~regout\) # (!\adc_spi_controller|spi_tx_component|process_0~0_combout\)) # (!\adc_spi_controller|spi_tx_component|Equal0~2_combout\)) # 
-- (!\adc_spi_controller|spi_tx_component|bits_sent\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	datab => \adc_spi_controller|spi_tx_component|Equal0~2_combout\,
	datac => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datad => \adc_spi_controller|spi_tx_component|process_0~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|curr_state~0_combout\);

-- Location: LCCOMB_X13_Y5_N28
\adc_spi_controller|spi_tx_component|curr_state~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|curr_state~feeder_combout\ = \adc_spi_controller|spi_tx_component|curr_state~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_tx_component|curr_state~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|curr_state~feeder_combout\);

-- Location: LCCOMB_X7_Y6_N14
\adc_spi_controller|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Add0~8_combout\ = (\adc_spi_controller|cs_up_counter\(4) & (\adc_spi_controller|Add0~7\ $ (GND))) # (!\adc_spi_controller|cs_up_counter\(4) & (!\adc_spi_controller|Add0~7\ & VCC))
-- \adc_spi_controller|Add0~9\ = CARRY((\adc_spi_controller|cs_up_counter\(4) & !\adc_spi_controller|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|cs_up_counter\(4),
	datad => VCC,
	cin => \adc_spi_controller|Add0~7\,
	combout => \adc_spi_controller|Add0~8_combout\,
	cout => \adc_spi_controller|Add0~9\);

-- Location: LCCOMB_X7_Y6_N16
\adc_spi_controller|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Add0~10_combout\ = (\adc_spi_controller|cs_up_counter\(5) & (!\adc_spi_controller|Add0~9\)) # (!\adc_spi_controller|cs_up_counter\(5) & ((\adc_spi_controller|Add0~9\) # (GND)))
-- \adc_spi_controller|Add0~11\ = CARRY((!\adc_spi_controller|Add0~9\) # (!\adc_spi_controller|cs_up_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|cs_up_counter\(5),
	datad => VCC,
	cin => \adc_spi_controller|Add0~9\,
	combout => \adc_spi_controller|Add0~10_combout\,
	cout => \adc_spi_controller|Add0~11\);

-- Location: LCCOMB_X7_Y6_N18
\adc_spi_controller|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Add0~12_combout\ = (\adc_spi_controller|cs_up_counter\(6) & (\adc_spi_controller|Add0~11\ $ (GND))) # (!\adc_spi_controller|cs_up_counter\(6) & (!\adc_spi_controller|Add0~11\ & VCC))
-- \adc_spi_controller|Add0~13\ = CARRY((\adc_spi_controller|cs_up_counter\(6) & !\adc_spi_controller|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|cs_up_counter\(6),
	datad => VCC,
	cin => \adc_spi_controller|Add0~11\,
	combout => \adc_spi_controller|Add0~12_combout\,
	cout => \adc_spi_controller|Add0~13\);

-- Location: LCCOMB_X7_Y6_N2
\adc_spi_controller|cs_up_counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|cs_up_counter~4_combout\ = (\adc_spi_controller|Add0~12_combout\ & (((!\adc_spi_controller|cs_up_counter\(8)) # (!\adc_spi_controller|Equal0~0_combout\)) # (!\adc_spi_controller|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Equal0~1_combout\,
	datab => \adc_spi_controller|Equal0~0_combout\,
	datac => \adc_spi_controller|Add0~12_combout\,
	datad => \adc_spi_controller|cs_up_counter\(8),
	combout => \adc_spi_controller|cs_up_counter~4_combout\);

-- Location: LCFF_X7_Y6_N3
\adc_spi_controller|cs_up_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|cs_up_counter~4_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(6));

-- Location: LCCOMB_X7_Y6_N20
\adc_spi_controller|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Add0~14_combout\ = (\adc_spi_controller|cs_up_counter\(7) & (!\adc_spi_controller|Add0~13\)) # (!\adc_spi_controller|cs_up_counter\(7) & ((\adc_spi_controller|Add0~13\) # (GND)))
-- \adc_spi_controller|Add0~15\ = CARRY((!\adc_spi_controller|Add0~13\) # (!\adc_spi_controller|cs_up_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|cs_up_counter\(7),
	datad => VCC,
	cin => \adc_spi_controller|Add0~13\,
	combout => \adc_spi_controller|Add0~14_combout\,
	cout => \adc_spi_controller|Add0~15\);

-- Location: LCCOMB_X7_Y6_N4
\adc_spi_controller|cs_up_counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|cs_up_counter~5_combout\ = (\adc_spi_controller|Add0~14_combout\ & (((!\adc_spi_controller|cs_up_counter\(8)) # (!\adc_spi_controller|Equal0~0_combout\)) # (!\adc_spi_controller|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Equal0~1_combout\,
	datab => \adc_spi_controller|Equal0~0_combout\,
	datac => \adc_spi_controller|Add0~14_combout\,
	datad => \adc_spi_controller|cs_up_counter\(8),
	combout => \adc_spi_controller|cs_up_counter~5_combout\);

-- Location: LCFF_X7_Y6_N5
\adc_spi_controller|cs_up_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|cs_up_counter~5_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(7));

-- Location: LCCOMB_X7_Y6_N22
\adc_spi_controller|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Add0~16_combout\ = \adc_spi_controller|Add0~15\ $ (!\adc_spi_controller|cs_up_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|cs_up_counter\(8),
	cin => \adc_spi_controller|Add0~15\,
	combout => \adc_spi_controller|Add0~16_combout\);

-- Location: LCCOMB_X7_Y6_N30
\adc_spi_controller|cs_up_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|cs_up_counter~2_combout\ = (\adc_spi_controller|Add0~16_combout\ & (((!\adc_spi_controller|cs_up_counter\(8)) # (!\adc_spi_controller|Equal0~0_combout\)) # (!\adc_spi_controller|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Equal0~1_combout\,
	datab => \adc_spi_controller|Equal0~0_combout\,
	datac => \adc_spi_controller|cs_up_counter\(8),
	datad => \adc_spi_controller|Add0~16_combout\,
	combout => \adc_spi_controller|cs_up_counter~2_combout\);

-- Location: LCFF_X7_Y6_N31
\adc_spi_controller|cs_up_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|cs_up_counter~2_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(8));

-- Location: LCCOMB_X7_Y6_N24
\adc_spi_controller|cs_up_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|cs_up_counter~3_combout\ = (\adc_spi_controller|Add0~10_combout\ & (((!\adc_spi_controller|cs_up_counter\(8)) # (!\adc_spi_controller|Equal0~0_combout\)) # (!\adc_spi_controller|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Equal0~1_combout\,
	datab => \adc_spi_controller|Equal0~0_combout\,
	datac => \adc_spi_controller|Add0~10_combout\,
	datad => \adc_spi_controller|cs_up_counter\(8),
	combout => \adc_spi_controller|cs_up_counter~3_combout\);

-- Location: LCFF_X7_Y6_N25
\adc_spi_controller|cs_up_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|cs_up_counter~3_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(5));

-- Location: LCCOMB_X8_Y6_N2
\adc_spi_controller|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Equal0~1_combout\ = (\adc_spi_controller|cs_up_counter\(6) & (\adc_spi_controller|cs_up_counter\(5) & (\adc_spi_controller|cs_up_counter\(7) & !\adc_spi_controller|cs_up_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|cs_up_counter\(6),
	datab => \adc_spi_controller|cs_up_counter\(5),
	datac => \adc_spi_controller|cs_up_counter\(7),
	datad => \adc_spi_controller|cs_up_counter\(0),
	combout => \adc_spi_controller|Equal0~1_combout\);

-- Location: LCCOMB_X8_Y6_N10
\adc_spi_controller|cs_up_counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|cs_up_counter~6_combout\ = (!\adc_spi_controller|cs_up_counter\(0) & (((!\adc_spi_controller|Equal0~0_combout\) # (!\adc_spi_controller|Equal0~1_combout\)) # (!\adc_spi_controller|cs_up_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|cs_up_counter\(8),
	datab => \adc_spi_controller|Equal0~1_combout\,
	datac => \adc_spi_controller|cs_up_counter\(0),
	datad => \adc_spi_controller|Equal0~0_combout\,
	combout => \adc_spi_controller|cs_up_counter~6_combout\);

-- Location: LCFF_X8_Y6_N11
\adc_spi_controller|cs_up_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|cs_up_counter~6_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(0));

-- Location: LCCOMB_X7_Y6_N6
\adc_spi_controller|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Add0~1\ = CARRY(\adc_spi_controller|cs_up_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|cs_up_counter\(0),
	datad => VCC,
	cout => \adc_spi_controller|Add0~1\);

-- Location: LCCOMB_X7_Y6_N8
\adc_spi_controller|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Add0~2_combout\ = (\adc_spi_controller|cs_up_counter\(1) & (!\adc_spi_controller|Add0~1\)) # (!\adc_spi_controller|cs_up_counter\(1) & ((\adc_spi_controller|Add0~1\) # (GND)))
-- \adc_spi_controller|Add0~3\ = CARRY((!\adc_spi_controller|Add0~1\) # (!\adc_spi_controller|cs_up_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|cs_up_counter\(1),
	datad => VCC,
	cin => \adc_spi_controller|Add0~1\,
	combout => \adc_spi_controller|Add0~2_combout\,
	cout => \adc_spi_controller|Add0~3\);

-- Location: LCFF_X7_Y6_N9
\adc_spi_controller|cs_up_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Add0~2_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(1));

-- Location: LCCOMB_X7_Y6_N10
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

-- Location: LCCOMB_X7_Y6_N0
\adc_spi_controller|cs_up_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|cs_up_counter~1_combout\ = (\adc_spi_controller|Add0~4_combout\ & (((!\adc_spi_controller|cs_up_counter\(8)) # (!\adc_spi_controller|Equal0~0_combout\)) # (!\adc_spi_controller|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Equal0~1_combout\,
	datab => \adc_spi_controller|Equal0~0_combout\,
	datac => \adc_spi_controller|Add0~4_combout\,
	datad => \adc_spi_controller|cs_up_counter\(8),
	combout => \adc_spi_controller|cs_up_counter~1_combout\);

-- Location: LCFF_X7_Y6_N1
\adc_spi_controller|cs_up_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|cs_up_counter~1_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(2));

-- Location: LCCOMB_X7_Y6_N28
\adc_spi_controller|cs_up_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|cs_up_counter~0_combout\ = (\adc_spi_controller|Add0~8_combout\ & (((!\adc_spi_controller|cs_up_counter\(8)) # (!\adc_spi_controller|Equal0~0_combout\)) # (!\adc_spi_controller|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Equal0~1_combout\,
	datab => \adc_spi_controller|Equal0~0_combout\,
	datac => \adc_spi_controller|Add0~8_combout\,
	datad => \adc_spi_controller|cs_up_counter\(8),
	combout => \adc_spi_controller|cs_up_counter~0_combout\);

-- Location: LCFF_X7_Y6_N29
\adc_spi_controller|cs_up_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|cs_up_counter~0_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(4));

-- Location: LCCOMB_X7_Y6_N26
\adc_spi_controller|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Equal0~0_combout\ = (!\adc_spi_controller|cs_up_counter\(3) & (\adc_spi_controller|cs_up_counter\(4) & (!\adc_spi_controller|cs_up_counter\(1) & \adc_spi_controller|cs_up_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|cs_up_counter\(3),
	datab => \adc_spi_controller|cs_up_counter\(4),
	datac => \adc_spi_controller|cs_up_counter\(1),
	datad => \adc_spi_controller|cs_up_counter\(2),
	combout => \adc_spi_controller|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y6_N22
\adc_spi_controller|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Equal0~2_combout\ = (\adc_spi_controller|Equal0~0_combout\ & (\adc_spi_controller|cs_up_counter\(8) & \adc_spi_controller|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|Equal0~0_combout\,
	datac => \adc_spi_controller|cs_up_counter\(8),
	datad => \adc_spi_controller|Equal0~1_combout\,
	combout => \adc_spi_controller|Equal0~2_combout\);

-- Location: LCCOMB_X8_Y6_N18
\adc_spi_controller|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector5~0_combout\ = (!\adc_spi_controller|Selector6~2_combout\ & ((\adc_spi_controller|Selector6~1_combout\ & (\adc_spi_controller|curr_state.transmiting~regout\)) # (!\adc_spi_controller|Selector6~1_combout\ & 
-- ((\adc_spi_controller|curr_state.reading_fifo~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Selector6~1_combout\,
	datab => \adc_spi_controller|Selector6~2_combout\,
	datac => \adc_spi_controller|curr_state.transmiting~regout\,
	datad => \adc_spi_controller|curr_state.reading_fifo~regout\,
	combout => \adc_spi_controller|Selector5~0_combout\);

-- Location: LCFF_X8_Y6_N19
\adc_spi_controller|curr_state.transmiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|curr_state.transmiting~regout\);

-- Location: LCCOMB_X12_Y5_N8
\adc_spi_controller|spi_tx_component|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~11_combout\ = (\adc_spi_controller|spi_tx_component|Add0~0_combout\ & ((\adc_spi_controller|spi_tx_component|Equal0~2_combout\ & (\adc_spi_controller|spi_tx_component|Add0~9_combout\)) # 
-- (!\adc_spi_controller|spi_tx_component|Equal0~2_combout\ & ((\adc_spi_controller|spi_tx_component|bits_sent\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|Add0~9_combout\,
	datab => \adc_spi_controller|spi_tx_component|Equal0~2_combout\,
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	datad => \adc_spi_controller|spi_tx_component|Add0~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|Add0~11_combout\);

-- Location: LCFF_X12_Y5_N9
\adc_spi_controller|spi_tx_component|bits_sent[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Add0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(4));

-- Location: LCCOMB_X12_Y5_N14
\adc_spi_controller|spi_tx_component|SEND_DONE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|SEND_DONE~0_combout\ = (\adc_spi_controller|spi_tx_component|SEND_DONE~regout\) # ((\adc_spi_controller|spi_tx_component|SPI_MOSI~0_combout\ & (\adc_spi_controller|spi_tx_component|bits_sent\(4) & 
-- \adc_spi_controller|spi_tx_component|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|SPI_MOSI~0_combout\,
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	datac => \adc_spi_controller|spi_tx_component|SEND_DONE~regout\,
	datad => \adc_spi_controller|spi_tx_component|process_0~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|SEND_DONE~0_combout\);

-- Location: LCFF_X12_Y5_N15
\adc_spi_controller|spi_tx_component|SEND_DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|SEND_DONE~0_combout\,
	sclr => \adc_spi_controller|spi_tx_component|ALT_INV_curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|SEND_DONE~regout\);

-- Location: LCCOMB_X8_Y6_N24
\adc_spi_controller|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector6~0_combout\ = (\adc_spi_controller|curr_state.transmiting~regout\ & \adc_spi_controller|spi_tx_component|SEND_DONE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|curr_state.transmiting~regout\,
	datad => \adc_spi_controller|spi_tx_component|SEND_DONE~regout\,
	combout => \adc_spi_controller|Selector6~0_combout\);

-- Location: LCCOMB_X10_Y5_N14
\config_command_counter[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \config_command_counter[1]~7_combout\ = (config_command_counter(0) & (config_command_counter(1) $ (VCC))) # (!config_command_counter(0) & (config_command_counter(1) & VCC))
-- \config_command_counter[1]~8\ = CARRY((config_command_counter(0) & config_command_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => config_command_counter(0),
	datab => config_command_counter(1),
	datad => VCC,
	combout => \config_command_counter[1]~7_combout\,
	cout => \config_command_counter[1]~8\);

-- Location: LCFF_X10_Y5_N15
\config_command_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \config_command_counter[1]~7_combout\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => config_command_counter(1));

-- Location: LCCOMB_X10_Y5_N18
\config_command_counter[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \config_command_counter[3]~11_combout\ = (config_command_counter(3) & (\config_command_counter[2]~10\ $ (GND))) # (!config_command_counter(3) & (!\config_command_counter[2]~10\ & VCC))
-- \config_command_counter[3]~12\ = CARRY((config_command_counter(3) & !\config_command_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => config_command_counter(3),
	datad => VCC,
	cin => \config_command_counter[2]~10\,
	combout => \config_command_counter[3]~11_combout\,
	cout => \config_command_counter[3]~12\);

-- Location: LCFF_X10_Y5_N19
\config_command_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \config_command_counter[3]~11_combout\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => config_command_counter(3));

-- Location: LCCOMB_X10_Y5_N22
\config_command_counter[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \config_command_counter[5]~15_combout\ = (config_command_counter(5) & (\config_command_counter[4]~14\ $ (GND))) # (!config_command_counter(5) & (!\config_command_counter[4]~14\ & VCC))
-- \config_command_counter[5]~16\ = CARRY((config_command_counter(5) & !\config_command_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => config_command_counter(5),
	datad => VCC,
	cin => \config_command_counter[4]~14\,
	combout => \config_command_counter[5]~15_combout\,
	cout => \config_command_counter[5]~16\);

-- Location: LCFF_X10_Y5_N23
\config_command_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \config_command_counter[5]~15_combout\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => config_command_counter(5));

-- Location: LCCOMB_X10_Y5_N24
\config_command_counter[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \config_command_counter[6]~17_combout\ = config_command_counter(6) $ (\config_command_counter[5]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => config_command_counter(6),
	cin => \config_command_counter[5]~16\,
	combout => \config_command_counter[6]~17_combout\);

-- Location: LCFF_X10_Y5_N25
\config_command_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \config_command_counter[6]~17_combout\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => config_command_counter(6));

-- Location: LCCOMB_X10_Y5_N12
\config_command_counter[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \config_command_counter[0]~6_combout\ = (\Equal0~1_combout\ & !config_command_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => config_command_counter(0),
	combout => \config_command_counter[0]~6_combout\);

-- Location: LCFF_X10_Y5_N13
\config_command_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \config_command_counter[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => config_command_counter(0));

-- Location: LCCOMB_X10_Y5_N10
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!config_command_counter(4) & (!config_command_counter(3) & (!config_command_counter(1) & !config_command_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => config_command_counter(4),
	datab => config_command_counter(3),
	datac => config_command_counter(1),
	datad => config_command_counter(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X10_Y5_N8
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (((!\Equal0~0_combout\) # (!config_command_counter(6))) # (!config_command_counter(5))) # (!config_command_counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => config_command_counter(2),
	datab => config_command_counter(5),
	datac => config_command_counter(6),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X10_Y5_N28
\Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!config_command_counter(4) & (!config_command_counter(3) & (!config_command_counter(1) & config_command_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => config_command_counter(4),
	datab => config_command_counter(3),
	datac => config_command_counter(1),
	datad => config_command_counter(0),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X10_Y5_N26
\Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (!config_command_counter(2) & (!config_command_counter(5) & (!config_command_counter(6) & \Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => config_command_counter(2),
	datab => config_command_counter(5),
	datac => config_command_counter(6),
	datad => \Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X10_Y5_N2
\ADC_SPI_send_irq~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADC_SPI_send_irq~0_combout\ = (\Mux16~1_combout\) # ((!\Equal0~1_combout\ & \ADC_SPI_send_irq~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \ADC_SPI_send_irq~regout\,
	datad => \Mux16~1_combout\,
	combout => \ADC_SPI_send_irq~0_combout\);

-- Location: LCFF_X10_Y5_N3
ADC_SPI_send_irq : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \ADC_SPI_send_irq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ADC_SPI_send_irq~regout\);

-- Location: LCCOMB_X9_Y6_N28
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ = (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ & \ADC_SPI_send_irq~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \ADC_SPI_send_irq~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\);

-- Location: LCCOMB_X9_Y6_N8
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) $ (((VCC) # 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ = CARRY(\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) $ 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X9_Y6_N0
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ = (\adc_spi_controller|fifo_rdreq~regout\ & (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ 
-- $ (((!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ & \ADC_SPI_send_irq~regout\))))) # (!\adc_spi_controller|fifo_rdreq~regout\ & 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ & ((\ADC_SPI_send_irq~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|fifo_rdreq~regout\,
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \ADC_SPI_send_irq~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\);

-- Location: LCFF_X9_Y6_N9
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0));

-- Location: LCCOMB_X9_Y6_N10
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

-- Location: LCFF_X9_Y6_N11
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1));

-- Location: LCCOMB_X9_Y6_N18
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) & 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) & \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\);

-- Location: LCCOMB_X9_Y6_N14
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3) $ 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\);

-- Location: LCFF_X9_Y6_N15
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3));

-- Location: LCCOMB_X9_Y6_N22
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ = (!\adc_spi_controller|fifo_rdreq~regout\ & 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3) & \ADC_SPI_send_irq~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|fifo_rdreq~regout\,
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	datad => \ADC_SPI_send_irq~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\);

-- Location: LCCOMB_X9_Y6_N26
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ = (\adc_spi_controller|fifo_rdreq~regout\ & 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ & ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\)))) # 
-- (!\adc_spi_controller|fifo_rdreq~regout\ & ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\) # 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ & \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|fifo_rdreq~regout\,
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\,
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\);

-- Location: LCFF_X9_Y6_N27
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\);

-- Location: LCCOMB_X9_Y6_N24
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2)) # ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3)) # 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\);

-- Location: LCCOMB_X9_Y6_N6
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ = (\ADC_SPI_send_irq~regout\) # ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ 
-- & ((!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0)) # (!\adc_spi_controller|fifo_rdreq~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|fifo_rdreq~regout\,
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datad => \ADC_SPI_send_irq~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\);

-- Location: LCCOMB_X9_Y6_N30
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\) # 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\) # (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\);

-- Location: LCFF_X9_Y6_N31
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\);

-- Location: LCCOMB_X8_Y6_N12
\adc_spi_controller|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector6~1_combout\ = (!\adc_spi_controller|curr_state.reading_fifo~regout\ & (!\adc_spi_controller|Selector6~0_combout\ & ((\adc_spi_controller|curr_state.idle~regout\) # 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|curr_state.idle~regout\,
	datab => \adc_spi_controller|curr_state.reading_fifo~regout\,
	datac => \adc_spi_controller|Selector6~0_combout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \adc_spi_controller|Selector6~1_combout\);

-- Location: LCCOMB_X8_Y6_N30
\adc_spi_controller|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector6~3_combout\ = (\adc_spi_controller|curr_state.cs_up~regout\ & (!\adc_spi_controller|Equal0~2_combout\ & ((\adc_spi_controller|Selector6~0_combout\) # (\adc_spi_controller|Selector6~1_combout\)))) # 
-- (!\adc_spi_controller|curr_state.cs_up~regout\ & (\adc_spi_controller|Selector6~0_combout\ & ((!\adc_spi_controller|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Selector6~0_combout\,
	datab => \adc_spi_controller|Equal0~2_combout\,
	datac => \adc_spi_controller|curr_state.cs_up~regout\,
	datad => \adc_spi_controller|Selector6~1_combout\,
	combout => \adc_spi_controller|Selector6~3_combout\);

-- Location: LCFF_X8_Y6_N31
\adc_spi_controller|curr_state.cs_up\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|curr_state.cs_up~regout\);

-- Location: LCCOMB_X8_Y6_N26
\adc_spi_controller|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector6~2_combout\ = (\adc_spi_controller|Equal0~1_combout\ & (\adc_spi_controller|curr_state.cs_up~regout\ & (\adc_spi_controller|cs_up_counter\(8) & \adc_spi_controller|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Equal0~1_combout\,
	datab => \adc_spi_controller|curr_state.cs_up~regout\,
	datac => \adc_spi_controller|cs_up_counter\(8),
	datad => \adc_spi_controller|Equal0~0_combout\,
	combout => \adc_spi_controller|Selector6~2_combout\);

-- Location: LCCOMB_X8_Y6_N0
\adc_spi_controller|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector4~0_combout\ = (!\adc_spi_controller|Selector6~0_combout\ & (!\adc_spi_controller|Selector6~2_combout\ & (!\adc_spi_controller|curr_state.reading_fifo~regout\ & !\adc_spi_controller|Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Selector6~0_combout\,
	datab => \adc_spi_controller|Selector6~2_combout\,
	datac => \adc_spi_controller|curr_state.reading_fifo~regout\,
	datad => \adc_spi_controller|Selector6~1_combout\,
	combout => \adc_spi_controller|Selector4~0_combout\);

-- Location: LCFF_X8_Y6_N1
\adc_spi_controller|curr_state.reading_fifo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|curr_state.reading_fifo~regout\);

-- Location: LCCOMB_X8_Y6_N28
\adc_spi_controller|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector1~0_combout\ = (\adc_spi_controller|curr_state.reading_fifo~regout\) # ((\adc_spi_controller|tx_send_irq~regout\ & \adc_spi_controller|curr_state.cs_up~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|curr_state.reading_fifo~regout\,
	datac => \adc_spi_controller|tx_send_irq~regout\,
	datad => \adc_spi_controller|curr_state.cs_up~regout\,
	combout => \adc_spi_controller|Selector1~0_combout\);

-- Location: LCFF_X8_Y6_N29
\adc_spi_controller|tx_send_irq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|tx_send_irq~regout\);

-- Location: LCFF_X13_Y5_N29
\adc_spi_controller|spi_tx_component|curr_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|curr_state~feeder_combout\,
	sdata => \adc_spi_controller|tx_send_irq~regout\,
	sload => \adc_spi_controller|spi_tx_component|ALT_INV_curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|curr_state~regout\);

-- Location: LCFF_X14_Y5_N19
\adc_spi_controller|spi_tx_component|clk_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter~1_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(0));

-- Location: LCCOMB_X14_Y5_N0
\adc_spi_controller|spi_tx_component|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add1~1\ = CARRY(\adc_spi_controller|spi_tx_component|clk_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|clk_counter\(0),
	datad => VCC,
	cout => \adc_spi_controller|spi_tx_component|Add1~1\);

-- Location: LCCOMB_X14_Y5_N2
\adc_spi_controller|spi_tx_component|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add1~2_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(1) & (!\adc_spi_controller|spi_tx_component|Add1~1\)) # (!\adc_spi_controller|spi_tx_component|clk_counter\(1) & 
-- ((\adc_spi_controller|spi_tx_component|Add1~1\) # (GND)))
-- \adc_spi_controller|spi_tx_component|Add1~3\ = CARRY((!\adc_spi_controller|spi_tx_component|Add1~1\) # (!\adc_spi_controller|spi_tx_component|clk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|clk_counter\(1),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|Add1~1\,
	combout => \adc_spi_controller|spi_tx_component|Add1~2_combout\,
	cout => \adc_spi_controller|spi_tx_component|Add1~3\);

-- Location: LCFF_X14_Y5_N3
\adc_spi_controller|spi_tx_component|clk_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Add1~2_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(1));

-- Location: LCCOMB_X14_Y5_N4
\adc_spi_controller|spi_tx_component|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add1~4_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(2) & (\adc_spi_controller|spi_tx_component|Add1~3\ $ (GND))) # (!\adc_spi_controller|spi_tx_component|clk_counter\(2) & 
-- (!\adc_spi_controller|spi_tx_component|Add1~3\ & VCC))
-- \adc_spi_controller|spi_tx_component|Add1~5\ = CARRY((\adc_spi_controller|spi_tx_component|clk_counter\(2) & !\adc_spi_controller|spi_tx_component|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|clk_counter\(2),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|Add1~3\,
	combout => \adc_spi_controller|spi_tx_component|Add1~4_combout\,
	cout => \adc_spi_controller|spi_tx_component|Add1~5\);

-- Location: LCCOMB_X14_Y5_N26
\adc_spi_controller|spi_tx_component|clk_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter~0_combout\ = (\adc_spi_controller|spi_tx_component|Add1~4_combout\ & (((!\adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\) # (!\adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\)) # 
-- (!\adc_spi_controller|spi_tx_component|clk_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(8),
	datab => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\,
	datac => \adc_spi_controller|spi_tx_component|Add1~4_combout\,
	datad => \adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\,
	combout => \adc_spi_controller|spi_tx_component|clk_counter~0_combout\);

-- Location: LCFF_X14_Y5_N27
\adc_spi_controller|spi_tx_component|clk_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(2));

-- Location: LCCOMB_X14_Y5_N6
\adc_spi_controller|spi_tx_component|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add1~6_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(3) & (!\adc_spi_controller|spi_tx_component|Add1~5\)) # (!\adc_spi_controller|spi_tx_component|clk_counter\(3) & 
-- ((\adc_spi_controller|spi_tx_component|Add1~5\) # (GND)))
-- \adc_spi_controller|spi_tx_component|Add1~7\ = CARRY((!\adc_spi_controller|spi_tx_component|Add1~5\) # (!\adc_spi_controller|spi_tx_component|clk_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(3),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|Add1~5\,
	combout => \adc_spi_controller|spi_tx_component|Add1~6_combout\,
	cout => \adc_spi_controller|spi_tx_component|Add1~7\);

-- Location: LCCOMB_X14_Y5_N8
\adc_spi_controller|spi_tx_component|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add1~8_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(4) & (\adc_spi_controller|spi_tx_component|Add1~7\ $ (GND))) # (!\adc_spi_controller|spi_tx_component|clk_counter\(4) & 
-- (!\adc_spi_controller|spi_tx_component|Add1~7\ & VCC))
-- \adc_spi_controller|spi_tx_component|Add1~9\ = CARRY((\adc_spi_controller|spi_tx_component|clk_counter\(4) & !\adc_spi_controller|spi_tx_component|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(4),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|Add1~7\,
	combout => \adc_spi_controller|spi_tx_component|Add1~8_combout\,
	cout => \adc_spi_controller|spi_tx_component|Add1~9\);

-- Location: LCCOMB_X14_Y5_N10
\adc_spi_controller|spi_tx_component|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add1~10_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(5) & (!\adc_spi_controller|spi_tx_component|Add1~9\)) # (!\adc_spi_controller|spi_tx_component|clk_counter\(5) & 
-- ((\adc_spi_controller|spi_tx_component|Add1~9\) # (GND)))
-- \adc_spi_controller|spi_tx_component|Add1~11\ = CARRY((!\adc_spi_controller|spi_tx_component|Add1~9\) # (!\adc_spi_controller|spi_tx_component|clk_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|clk_counter\(5),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|Add1~9\,
	combout => \adc_spi_controller|spi_tx_component|Add1~10_combout\,
	cout => \adc_spi_controller|spi_tx_component|Add1~11\);

-- Location: LCCOMB_X14_Y5_N28
\adc_spi_controller|spi_tx_component|clk_counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter~4_combout\ = (\adc_spi_controller|spi_tx_component|Add1~10_combout\ & (((!\adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\) # (!\adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\)) # 
-- (!\adc_spi_controller|spi_tx_component|clk_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(8),
	datab => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\,
	datac => \adc_spi_controller|spi_tx_component|Add1~10_combout\,
	datad => \adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\,
	combout => \adc_spi_controller|spi_tx_component|clk_counter~4_combout\);

-- Location: LCFF_X14_Y5_N29
\adc_spi_controller|spi_tx_component|clk_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter~4_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(5));

-- Location: LCCOMB_X14_Y5_N12
\adc_spi_controller|spi_tx_component|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add1~12_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(6) & (\adc_spi_controller|spi_tx_component|Add1~11\ $ (GND))) # (!\adc_spi_controller|spi_tx_component|clk_counter\(6) & 
-- (!\adc_spi_controller|spi_tx_component|Add1~11\ & VCC))
-- \adc_spi_controller|spi_tx_component|Add1~13\ = CARRY((\adc_spi_controller|spi_tx_component|clk_counter\(6) & !\adc_spi_controller|spi_tx_component|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(6),
	datad => VCC,
	cin => \adc_spi_controller|spi_tx_component|Add1~11\,
	combout => \adc_spi_controller|spi_tx_component|Add1~12_combout\,
	cout => \adc_spi_controller|spi_tx_component|Add1~13\);

-- Location: LCCOMB_X14_Y5_N30
\adc_spi_controller|spi_tx_component|clk_counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter~5_combout\ = (\adc_spi_controller|spi_tx_component|Add1~12_combout\ & (((!\adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\) # (!\adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\)) # 
-- (!\adc_spi_controller|spi_tx_component|clk_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(8),
	datab => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\,
	datac => \adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\,
	datad => \adc_spi_controller|spi_tx_component|Add1~12_combout\,
	combout => \adc_spi_controller|spi_tx_component|clk_counter~5_combout\);

-- Location: LCFF_X14_Y5_N21
\adc_spi_controller|spi_tx_component|clk_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter~6_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(7));

-- Location: LCCOMB_X14_Y5_N20
\adc_spi_controller|spi_tx_component|clk_counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter~6_combout\ = (\adc_spi_controller|spi_tx_component|Add1~14_combout\ & (((!\adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\) # (!\adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\)) # 
-- (!\adc_spi_controller|spi_tx_component|clk_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(8),
	datab => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\,
	datac => \adc_spi_controller|spi_tx_component|Add1~14_combout\,
	datad => \adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\,
	combout => \adc_spi_controller|spi_tx_component|clk_counter~6_combout\);

-- Location: LCCOMB_X14_Y5_N22
\adc_spi_controller|spi_tx_component|clk_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter~3_combout\ = (\adc_spi_controller|spi_tx_component|Add1~8_combout\ & (((!\adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\) # (!\adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\)) # 
-- (!\adc_spi_controller|spi_tx_component|clk_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(8),
	datab => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\,
	datac => \adc_spi_controller|spi_tx_component|Add1~8_combout\,
	datad => \adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\,
	combout => \adc_spi_controller|spi_tx_component|clk_counter~3_combout\);

-- Location: LCCOMB_X14_Y5_N24
\adc_spi_controller|spi_tx_component|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Equal0~1_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter~4_combout\ & (\adc_spi_controller|spi_tx_component|clk_counter~5_combout\ & (\adc_spi_controller|spi_tx_component|clk_counter~6_combout\ & 
-- \adc_spi_controller|spi_tx_component|clk_counter~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter~4_combout\,
	datab => \adc_spi_controller|spi_tx_component|clk_counter~5_combout\,
	datac => \adc_spi_controller|spi_tx_component|clk_counter~6_combout\,
	datad => \adc_spi_controller|spi_tx_component|clk_counter~3_combout\,
	combout => \adc_spi_controller|spi_tx_component|Equal0~1_combout\);

-- Location: LCFF_X14_Y5_N25
\adc_spi_controller|spi_tx_component|Equal0~1_NEW_REG76\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Equal0~1_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\);

-- Location: LCCOMB_X14_Y5_N18
\adc_spi_controller|spi_tx_component|clk_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter~1_combout\ = (!\adc_spi_controller|spi_tx_component|clk_counter\(0) & (((!\adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\) # (!\adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\)) # 
-- (!\adc_spi_controller|spi_tx_component|clk_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(8),
	datab => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\,
	datac => \adc_spi_controller|spi_tx_component|clk_counter\(0),
	datad => \adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\,
	combout => \adc_spi_controller|spi_tx_component|clk_counter~1_combout\);

-- Location: LCCOMB_X13_Y5_N26
\adc_spi_controller|spi_tx_component|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Equal0~0_combout\ = (!\adc_spi_controller|spi_tx_component|Add1~2_combout\ & (!\adc_spi_controller|spi_tx_component|clk_counter~1_combout\ & (\adc_spi_controller|spi_tx_component|clk_counter~0_combout\ & 
-- !\adc_spi_controller|spi_tx_component|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|Add1~2_combout\,
	datab => \adc_spi_controller|spi_tx_component|clk_counter~1_combout\,
	datac => \adc_spi_controller|spi_tx_component|clk_counter~0_combout\,
	datad => \adc_spi_controller|spi_tx_component|Add1~6_combout\,
	combout => \adc_spi_controller|spi_tx_component|Equal0~0_combout\);

-- Location: LCFF_X13_Y5_N27
\adc_spi_controller|spi_tx_component|Equal0~0_NEW_REG70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Equal0~0_combout\,
	ena => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\);

-- Location: LCCOMB_X13_Y5_N8
\adc_spi_controller|spi_tx_component|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Equal0~2_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(8) & (\adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\ & \adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(8),
	datab => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\,
	datad => \adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\,
	combout => \adc_spi_controller|spi_tx_component|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y5_N30
\adc_spi_controller|spi_tx_component|sclk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|sclk~0_combout\ = (\adc_spi_controller|spi_tx_component|Equal0~2_combout\ $ (\adc_spi_controller|spi_tx_component|sclk~regout\)) # (!\adc_spi_controller|spi_tx_component|curr_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|Equal0~2_combout\,
	datac => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datad => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	combout => \adc_spi_controller|spi_tx_component|sclk~0_combout\);

-- Location: LCFF_X12_Y5_N31
\adc_spi_controller|spi_tx_component|sclk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|sclk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|sclk~regout\);

-- Location: LCCOMB_X12_Y5_N0
\adc_spi_controller|spi_tx_component|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|process_0~1_combout\ = (\adc_spi_controller|spi_tx_component|sclk~regout\ & (!\adc_spi_controller|spi_tx_component|bits_sent\(4) & \adc_spi_controller|spi_tx_component|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	datad => \adc_spi_controller|spi_tx_component|process_0~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|process_0~1_combout\);

-- Location: LCCOMB_X13_Y5_N4
\adc_spi_controller|spi_tx_component|SPI_MOSI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|SPI_MOSI~0_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(8) & (\adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\ & (!\adc_spi_controller|spi_tx_component|sclk~regout\ & 
-- \adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(8),
	datab => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM71\,
	datac => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datad => \adc_spi_controller|spi_tx_component|Equal0~1_OTERM77\,
	combout => \adc_spi_controller|spi_tx_component|SPI_MOSI~0_combout\);

-- Location: LCCOMB_X12_Y5_N2
\adc_spi_controller|spi_tx_component|SPI_MOSI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|SPI_MOSI~1_combout\ = (\adc_spi_controller|spi_tx_component|process_0~1_combout\ & (\adc_spi_controller|spi_tx_component|tx_buf~15_combout\)) # (!\adc_spi_controller|spi_tx_component|process_0~1_combout\ & 
-- ((\adc_spi_controller|spi_tx_component|SPI_MOSI~0_combout\ & (\adc_spi_controller|spi_tx_component|tx_buf~15_combout\)) # (!\adc_spi_controller|spi_tx_component|SPI_MOSI~0_combout\ & ((\adc_spi_controller|spi_tx_component|SPI_MOSI~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf~15_combout\,
	datab => \adc_spi_controller|spi_tx_component|process_0~1_combout\,
	datac => \adc_spi_controller|spi_tx_component|SPI_MOSI~regout\,
	datad => \adc_spi_controller|spi_tx_component|SPI_MOSI~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|SPI_MOSI~1_combout\);

-- Location: LCFF_X12_Y5_N3
\adc_spi_controller|spi_tx_component|SPI_MOSI\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|SPI_MOSI~1_combout\,
	sclr => \adc_spi_controller|spi_tx_component|ALT_INV_curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|SPI_MOSI~regout\);

-- Location: LCCOMB_X8_Y6_N16
\adc_spi_controller|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector0~1_combout\ = (\adc_spi_controller|Selector0~0_combout\ & ((\adc_spi_controller|SPI_CS~regout\) # ((!\adc_spi_controller|curr_state.reading_fifo~regout\ & !\adc_spi_controller|curr_state.cs_up~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Selector0~0_combout\,
	datab => \adc_spi_controller|curr_state.reading_fifo~regout\,
	datac => \adc_spi_controller|SPI_CS~regout\,
	datad => \adc_spi_controller|curr_state.cs_up~regout\,
	combout => \adc_spi_controller|Selector0~1_combout\);

-- Location: LCFF_X8_Y6_N17
\adc_spi_controller|SPI_CS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|SPI_CS~regout\);

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
	padio => SPI_CS);

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
	datain => \adc_spi_controller|spi_tx_component|SPI_MOSI~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ADC_SPI_SDIN);

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

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
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
	padio => ww_ADC_DCLKA);

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

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MRAM_LOWER_EN);

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
	padio => ww_MRAM_D(0));

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
	padio => ww_MRAM_D(1));

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
	padio => ww_MRAM_D(2));

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
	padio => ww_MRAM_D(3));

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
	padio => ww_MRAM_D(4));

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
	padio => ww_MRAM_D(5));

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
	padio => ww_MRAM_D(6));

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
	padio => ww_MRAM_D(7));

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
	padio => ww_MRAM_D(8));

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
	padio => ww_MRAM_D(9));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => ww_MRAM_D(10));

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
	padio => ww_MRAM_D(11));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => ww_MRAM_D(12));

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
	padio => ww_MRAM_D(13));

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
	padio => ww_MRAM_D(14));

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
	padio => ww_MRAM_D(15));

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
	padio => ww_ADC_BIT_A(7));

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
	padio => ww_ADC_BIT_A(6));

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
	padio => ww_ADC_BIT_A(5));

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
	padio => ww_ADC_BIT_A(4));

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
	padio => ww_ADC_BIT_A(3));

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
	padio => ww_ADC_BIT_A(2));

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
END structure;


