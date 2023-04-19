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

-- DATE "04/19/2023 20:59:17"

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
-- ADC_SYNC	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SPI_MOSI	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SPI_MISO	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SPI_SCLK	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SPI_CS	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADC_SPI_SDIN	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- MRAM_D[10]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[11]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[12]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[13]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[14]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MRAM_D[15]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BUTTON	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_SHDN	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- UART_RX	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_TX	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_DCLKA	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[0]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[1]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[2]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[3]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[4]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[5]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[6]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[7]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[8]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_BIT_A[9]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|Add0~4_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~7\ : std_logic;
SIGNAL \adc_spi_controller|Add0~8_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~8_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~10_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~17\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~18_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[4]~29_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[6]~33_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[15]~52_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[18]~58_combout\ : std_logic;
SIGNAL \adc_spi_controller|Selector0~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector22~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Mux0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Mux0~1_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|Equal0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector4~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|cs_up_counter~0_combout\ : std_logic;
SIGNAL \this_setup_manager|SETUP_DONE~regout\ : std_logic;
SIGNAL \this_state_manager|Selector1~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|Equal0~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|read_counter~3_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|tx_curr_state.stop~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector11~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector6~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector16~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector16~1_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal11~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal11~1_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~4_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal12~3_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector4~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|Selector1~0_combout\ : std_logic;
SIGNAL \this_setup_manager|WideOr0~4_combout\ : std_logic;
SIGNAL \this_setup_manager|Selector0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|Selector2~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~9_combout\ : std_logic;
SIGNAL \this_setup_manager|Selector1~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Selector1~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~10_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~11_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~12_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~13_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~14_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~15_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~16_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~17_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~8_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|data_send[5]~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|data_send[6]~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|data_send[4]~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|data_send[2]~3_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|data_send[1]~4_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal12~4_wirecell_combout\ : std_logic;
SIGNAL \ADC_DCLKA~combout\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[10]_OTERM15\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[15]_OTERM19\ : std_logic;
SIGNAL \this_setup_manager|Selector0~1_RTM020_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM25\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM27\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM29\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM31\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM33\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM35\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM37\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM39\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM41\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM43\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM45\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM47\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM49\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM51\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM53\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM55\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM59\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM77\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM81\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM83\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM103\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM105\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM107\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM109\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[0]_OTERM3_OTERM115\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM103~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM83~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM53~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM49~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM41~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM37~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM33~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM29~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM25~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM81~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM43~feeder_combout\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM109~feeder_combout\ : std_logic;
SIGNAL \MRAM_D[0]~0\ : std_logic;
SIGNAL \MRAM_D[1]~1\ : std_logic;
SIGNAL \MRAM_D[2]~2\ : std_logic;
SIGNAL \MRAM_D[3]~3\ : std_logic;
SIGNAL \MRAM_D[4]~4\ : std_logic;
SIGNAL \MRAM_D[5]~5\ : std_logic;
SIGNAL \MRAM_D[6]~6\ : std_logic;
SIGNAL \MRAM_D[7]~7\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \adc_spi_controller|cs_up_counter~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[5]~32\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[6]~34\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[7]~35_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[7]~36\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[8]~37_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[8]~38\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[9]~39_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[9]~40\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[10]~41_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[1]~23_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal12~2_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[10]~42\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[11]~43_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[11]~44\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[12]~45_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[12]~46\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[13]~47_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[13]~48\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[14]~49_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[14]~50\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[15]~53\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[16]~54_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[16]~55\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[17]~57\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[18]~59\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[19]~61\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[20]~63\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[21]~64_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[21]~65\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[22]~66_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[22]~67\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[23]~68_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~3_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal12~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~1_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal12~1_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal12~4_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[0]~51_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[1]~24\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[2]~26\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[3]~27_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[3]~28\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[4]~30\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[5]~31_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~0_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[19]~60_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[20]~62_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[17]~56_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~2_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal0~5_combout\ : std_logic;
SIGNAL \this_setup_manager|config_command_counter[2]~25_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal10~0_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal10~1_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal10~2_combout\ : std_logic;
SIGNAL \this_setup_manager|WideOr0~0_combout\ : std_logic;
SIGNAL \this_setup_manager|WideOr0~2_combout\ : std_logic;
SIGNAL \this_setup_manager|WideOr0~3_combout\ : std_logic;
SIGNAL \this_setup_manager|Selector6~0_combout\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_irq~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector4~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|curr_state.reading_fifo~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|curr_state~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|Selector1~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|tx_send_irq~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|curr_state~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter[1]_OTERM91\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter[3]_OTERM93\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter[0]_OTERM95\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter[0]~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter[2]~3_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Equal0~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|sclk~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|sclk~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|bits_sent[1]~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~3\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~4_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~12_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|bits_sent[2]~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~5\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~6_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~13_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|bits_sent[3]_OTERM100\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~7\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~8_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|bits_sent[4]_OTERM97\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|process_0~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|bits_sent~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~1\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|Add0~11_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|process_0~0_RTM089_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|process_0~0_OTERM87\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|curr_state~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SEND_DONE~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SEND_DONE~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector5~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|curr_state.transmiting~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector6~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|curr_state.cs_up~regout\ : std_logic;
SIGNAL \adc_spi_controller|cs_up_counter~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~1\ : std_logic;
SIGNAL \adc_spi_controller|Add0~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|Add0~3\ : std_logic;
SIGNAL \adc_spi_controller|Add0~5\ : std_logic;
SIGNAL \adc_spi_controller|Add0~6_combout\ : std_logic;
SIGNAL \adc_spi_controller|Equal0~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|Equal0~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|Selector3~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|curr_state.idle~regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector2~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|fifo_rdreq~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[0]_OTERM1\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[0]_OTERM5\ : std_logic;
SIGNAL \this_setup_manager|Equal0~6_combout\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[0]_OTERM3_OTERM113\ : std_logic;
SIGNAL \this_setup_manager|WideOr0~1_combout\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[0]_OTERM3_OTERM111\ : std_logic;
SIGNAL \this_setup_manager|WideOr0~0_RTM0118_combout\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[0]_OTERM3_OTERM117\ : std_logic;
SIGNAL \this_setup_manager|WideOr0~5_combout\ : std_logic;
SIGNAL \this_setup_manager|Selector5~0_combout\ : std_logic;
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
SIGNAL \this_setup_manager|SPI_send_data[4]_OTERM9\ : std_logic;
SIGNAL \this_setup_manager|Equal0~7_combout\ : std_logic;
SIGNAL \this_setup_manager|Equal4~0_combout\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[4]_OTERM11\ : std_logic;
SIGNAL \this_setup_manager|Selector3~0_combout\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[10]_OTERM13\ : std_logic;
SIGNAL \this_setup_manager|Selector1~2_combout\ : std_logic;
SIGNAL \this_setup_manager|SPI_send_data[15]_OTERM17\ : std_logic;
SIGNAL \this_setup_manager|Selector0~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM73~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM73\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM69~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM69\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM65~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM65\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM61~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM61\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM57~feeder_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM57\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~8_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM63\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~7_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM67\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~6_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM71\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~5_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM75\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~4_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM79\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf~3_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM85\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SPI_MOSI~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SPI_MOSI~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SPI_MOSI~reg0_regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|is_read~0_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|is_read~regout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|process_0~2_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SPI_MOSI~3_combout\ : std_logic;
SIGNAL \adc_spi_controller|spi_tx_component|SPI_MOSI~en_regout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[0]~feeder_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[0]~11\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[1]~13_combout\ : std_logic;
SIGNAL \UART_Controller_1|Selector2~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|next_state.reading_fifo2~regout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.reading_fifo2~feeder_combout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.reading_fifo2~regout\ : std_logic;
SIGNAL \UART_Controller_1|Selector0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector1~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector10~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector14~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector15~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~1\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~3\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~4_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector13~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~5\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~6_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector12~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~7\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~9\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~11\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~12_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector9~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~13\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~14_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector8~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~15\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Add0~16_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector7~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Equal0~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Equal0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Equal0~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector1~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector0~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|TX_BUSY~feeder_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|TX_BUSY~regout\ : std_logic;
SIGNAL \UART_Controller_1|Selector3~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|Selector3~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|next_state.transmiting~regout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.transmiting~feeder_combout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.transmiting~regout\ : std_logic;
SIGNAL \UART_Controller_1|Selector0~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|next_state.idle~regout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.idle~feeder_combout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.idle~regout\ : std_logic;
SIGNAL \UART_Controller_1|Selector1~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|next_state.reading_fifo1~regout\ : std_logic;
SIGNAL \UART_Controller_1|curr_state.reading_fifo1~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter~31_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|WRITE_OUT_DONE~0_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|WRITE_OUT_DONE~regout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[0]~11\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[1]~13_combout\ : std_logic;
SIGNAL \this_state_manager|Selector1~1_combout\ : std_logic;
SIGNAL \this_state_manager|curr_state.read_adc~regout\ : std_logic;
SIGNAL \this_read_adc_manager|read_counter~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|read_counter[0]~feeder_combout\ : std_logic;
SIGNAL \this_read_adc_manager|read_counter~1_combout\ : std_logic;
SIGNAL \this_read_adc_manager|read_counter~2_combout\ : std_logic;
SIGNAL \this_read_adc_manager|read_counter~4_combout\ : std_logic;
SIGNAL \this_read_adc_manager|Equal1~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter~12_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[1]~14\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[2]~16\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[3]~17_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[3]~18\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[4]~20\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[5]~21_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[5]~22\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[6]~24\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[7]~25_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[7]~26\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[8]~27_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[4]~19_combout\ : std_logic;
SIGNAL \this_read_adc_manager|Equal0~1_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[8]~28\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[9]~29_combout\ : std_logic;
SIGNAL \this_read_adc_manager|Equal0~2_combout\ : std_logic;
SIGNAL \this_state_manager|Selector2~0_combout\ : std_logic;
SIGNAL \this_state_manager|curr_state.write_out_mram~regout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter~12_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[1]~14\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[2]~16\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[3]~17_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[3]~18\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[4]~20\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[5]~21_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[5]~22\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[6]~24\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[7]~25_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[7]~26\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[8]~27_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[8]~28\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[9]~29_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[4]~19_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|Equal0~1_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|Equal0~2_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|UART_DATA_IRQ~0_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|MRAM_READ_DATA~regout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_WRITE_DATA~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_WRITE_DATA~feeder_combout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_WRITE_DATA~regout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~8_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state.idle~regout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[0]~reg0feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~5_combout\ : std_logic;
SIGNAL \this_mram_controller|counter~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Mux21~0_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~6_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state.reading~regout\ : std_logic;
SIGNAL \this_mram_controller|Selector39~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[0]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|curr_state~7_combout\ : std_logic;
SIGNAL \this_mram_controller|curr_state.writing~regout\ : std_logic;
SIGNAL \this_mram_controller|Selector24~0_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[0]~en_regout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[1]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[1]~reg0feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[1]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[1]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[2]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[2]~en_regout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[3]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[3]~reg0feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[3]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[3]~en_regout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[4]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[4]~reg0feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[4]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[4]~en_regout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[5]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[5]~reg0feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[5]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[5]~en_regout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[6]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[6]~reg0feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[6]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[6]~en_regout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[7]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[7]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[7]~en_regout\ : std_logic;
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT[8]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[8]~reg0feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[8]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[8]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[9]~reg0feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[9]~reg0_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[9]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[10]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[10]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[11]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[12]~enfeeder_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[12]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[13]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[14]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_D[15]~en_regout\ : std_logic;
SIGNAL \adc_spi_controller|Selector0~1_combout\ : std_logic;
SIGNAL \adc_spi_controller|SPI_CS~regout\ : std_logic;
SIGNAL \this_mram_controller|Selector1~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector2~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector1~1_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_OUTPUT_EN~regout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[0]~10_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[0]~10_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector22~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Add0~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector22~1_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector21~0_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[2]~15_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[2]~15_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector20~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector19~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector18~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector17~0_combout\ : std_logic;
SIGNAL \this_write_out_mram_manager|address_counter[6]~23_combout\ : std_logic;
SIGNAL \this_read_adc_manager|address_counter[6]~23_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector16~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector15~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector14~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector13~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector0~1_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector0~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector0~2_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_EN~regout\ : std_logic;
SIGNAL \this_mram_controller|Selector4~0_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector2~1_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_WRITE_EN~regout\ : std_logic;
SIGNAL \this_mram_controller|Selector4~1_combout\ : std_logic;
SIGNAL \this_mram_controller|Selector4~2_combout\ : std_logic;
SIGNAL \this_mram_controller|MRAM_LOWER_EN~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector2~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|tx_curr_state.start~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector3~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector19~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector18~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector18~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector17~0_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Selector17~1_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[0]~0_combout\ : std_logic;
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
SIGNAL \this_mram_controller|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \this_mram_controller|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Mux0~2_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Mux0~3_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|Mux0~4_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|tx_curr_state.start~_wirecell_combout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|TX~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_tx_1|data_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADC_BIT_A~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_tx_1|data_send\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \this_mram_controller|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \this_mram_controller|counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \this_mram_controller|MRAM_A\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \this_setup_manager|config_command_counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \this_read_adc_manager|read_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \this_read_adc_manager|address_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \this_read_adc_manager|MRAM_DATA_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \this_write_out_mram_manager|address_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \adc_spi_controller|cs_up_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_tx_component|clk_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_spi_controller|spi_tx_component|bits_sent\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[15]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[14]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[13]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[12]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[11]~en_regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_D[10]~en_regout\ : std_logic;
SIGNAL \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\ : std_logic;
SIGNAL \this_state_manager|ALT_INV_curr_state.read_adc~regout\ : std_logic;
SIGNAL \UART_Controller_1|uart_tx_1|ALT_INV_tx_curr_state.data~regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_curr_state.idle~regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_LOWER_EN~regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_WRITE_EN~regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_EN~regout\ : std_logic;
SIGNAL \this_mram_controller|ALT_INV_MRAM_OUTPUT_EN~regout\ : std_logic;
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
ww_UART_RX <= UART_RX;
UART_TX <= ww_UART_TX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTADATAIN_bus\ <= (\this_mram_controller|data_out\(7) & \this_mram_controller|data_out\(6) & \this_mram_controller|data_out\(5) & 
\this_mram_controller|data_out\(4) & \this_mram_controller|data_out\(3) & \this_mram_controller|data_out\(2) & \this_mram_controller|data_out\(1) & \this_mram_controller|data_out\(0));

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

\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTADATAIN_bus\ <= (\this_setup_manager|Selector0~2_combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\this_setup_manager|Selector1~2_combout\ & \this_setup_manager|Selector1~2_combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \this_setup_manager|Selector3~0_combout\ & \~GND~combout\ & \~GND~combout\ & 
\this_setup_manager|Selector5~0_combout\ & \this_setup_manager|Selector5~0_combout\);

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
\this_mram_controller|ALT_INV_MRAM_D[15]~en_regout\ <= NOT \this_mram_controller|MRAM_D[15]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[14]~en_regout\ <= NOT \this_mram_controller|MRAM_D[14]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[13]~en_regout\ <= NOT \this_mram_controller|MRAM_D[13]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[12]~en_regout\ <= NOT \this_mram_controller|MRAM_D[12]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[11]~en_regout\ <= NOT \this_mram_controller|MRAM_D[11]~en_regout\;
\this_mram_controller|ALT_INV_MRAM_D[10]~en_regout\ <= NOT \this_mram_controller|MRAM_D[10]~en_regout\;
\this_state_manager|ALT_INV_curr_state.write_out_mram~regout\ <= NOT \this_state_manager|curr_state.write_out_mram~regout\;
\this_state_manager|ALT_INV_curr_state.read_adc~regout\ <= NOT \this_state_manager|curr_state.read_adc~regout\;
\UART_Controller_1|uart_tx_1|ALT_INV_tx_curr_state.data~regout\ <= NOT \UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\;
\this_mram_controller|ALT_INV_curr_state.idle~regout\ <= NOT \this_mram_controller|curr_state.idle~regout\;
\this_mram_controller|ALT_INV_MRAM_LOWER_EN~regout\ <= NOT \this_mram_controller|MRAM_LOWER_EN~regout\;
\this_mram_controller|ALT_INV_MRAM_WRITE_EN~regout\ <= NOT \this_mram_controller|MRAM_WRITE_EN~regout\;
\this_mram_controller|ALT_INV_MRAM_EN~regout\ <= NOT \this_mram_controller|MRAM_EN~regout\;
\this_mram_controller|ALT_INV_MRAM_OUTPUT_EN~regout\ <= NOT \this_mram_controller|MRAM_OUTPUT_EN~regout\;
\adc_spi_controller|spi_tx_component|ALT_INV_sclk~regout\ <= NOT \adc_spi_controller|spi_tx_component|sclk~regout\;
\adc_spi_controller|spi_tx_component|ALT_INV_curr_state~regout\ <= NOT \adc_spi_controller|spi_tx_component|curr_state~regout\;

-- Location: LCFF_X27_Y6_N7
\this_read_adc_manager|read_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|read_counter~3_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|read_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|read_counter\(1));

-- Location: M4K_X11_Y10
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
	clk0 => \CLK~clkctrl_outclk\,
	clk1 => \CLK~clkctrl_outclk\,
	ena0 => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	ena1 => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	portadatain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTADATAIN_bus\,
	portaaddr => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X8_Y11_N13
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1));

-- Location: LCCOMB_X6_Y11_N6
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

-- Location: LCCOMB_X6_Y11_N8
\adc_spi_controller|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Add0~6_combout\ = (\adc_spi_controller|cs_up_counter\(3) & (!\adc_spi_controller|Add0~5\)) # (!\adc_spi_controller|cs_up_counter\(3) & ((\adc_spi_controller|Add0~5\) # (GND)))
-- \adc_spi_controller|Add0~7\ = CARRY((!\adc_spi_controller|Add0~5\) # (!\adc_spi_controller|cs_up_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|cs_up_counter\(3),
	datad => VCC,
	cin => \adc_spi_controller|Add0~5\,
	combout => \adc_spi_controller|Add0~6_combout\,
	cout => \adc_spi_controller|Add0~7\);

-- Location: LCCOMB_X6_Y11_N10
\adc_spi_controller|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Add0~8_combout\ = \adc_spi_controller|cs_up_counter\(4) $ (!\adc_spi_controller|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|cs_up_counter\(4),
	cin => \adc_spi_controller|Add0~7\,
	combout => \adc_spi_controller|Add0~8_combout\);

-- Location: LCFF_X13_Y10_N13
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3));

-- Location: LCFF_X13_Y10_N11
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2));

-- Location: LCFF_X13_Y10_N9
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1));

-- Location: LCFF_X13_Y10_N7
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0));

-- Location: LCCOMB_X8_Y10_N2
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

-- Location: LCCOMB_X8_Y10_N8
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

-- Location: LCCOMB_X8_Y10_N10
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

-- Location: LCCOMB_X8_Y10_N16
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

-- Location: LCCOMB_X8_Y10_N18
\UART_Controller_1|uart_tx_1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~18_combout\ = \UART_Controller_1|uart_tx_1|Add0~17\ $ (\UART_Controller_1|uart_tx_1|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_tx_1|counter\(9),
	cin => \UART_Controller_1|uart_tx_1|Add0~17\,
	combout => \UART_Controller_1|uart_tx_1|Add0~18_combout\);

-- Location: LCFF_X19_Y8_N7
\this_setup_manager|config_command_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[15]~52_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(15));

-- Location: LCFF_X19_Y8_N13
\this_setup_manager|config_command_counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[18]~58_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(18));

-- Location: LCFF_X19_Y9_N17
\this_setup_manager|config_command_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[4]~29_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(4));

-- Location: LCFF_X19_Y9_N21
\this_setup_manager|config_command_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[6]~33_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(6));

-- Location: LCCOMB_X8_Y11_N12
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

-- Location: LCCOMB_X13_Y10_N6
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

-- Location: LCCOMB_X13_Y10_N8
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ & 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) $ (((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\) # (VCC))))) # 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ & ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1)) # ((GND))))
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ = CARRY((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) $ 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)) # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X13_Y10_N10
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

-- Location: LCCOMB_X13_Y10_N12
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

-- Location: LCCOMB_X19_Y9_N16
\this_setup_manager|config_command_counter[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[4]~29_combout\ = (\this_setup_manager|config_command_counter\(4) & (!\this_setup_manager|config_command_counter[3]~28\)) # (!\this_setup_manager|config_command_counter\(4) & 
-- ((\this_setup_manager|config_command_counter[3]~28\) # (GND)))
-- \this_setup_manager|config_command_counter[4]~30\ = CARRY((!\this_setup_manager|config_command_counter[3]~28\) # (!\this_setup_manager|config_command_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(4),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[3]~28\,
	combout => \this_setup_manager|config_command_counter[4]~29_combout\,
	cout => \this_setup_manager|config_command_counter[4]~30\);

-- Location: LCCOMB_X19_Y9_N20
\this_setup_manager|config_command_counter[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[6]~33_combout\ = (\this_setup_manager|config_command_counter\(6) & (!\this_setup_manager|config_command_counter[5]~32\)) # (!\this_setup_manager|config_command_counter\(6) & 
-- ((\this_setup_manager|config_command_counter[5]~32\) # (GND)))
-- \this_setup_manager|config_command_counter[6]~34\ = CARRY((!\this_setup_manager|config_command_counter[5]~32\) # (!\this_setup_manager|config_command_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(6),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[5]~32\,
	combout => \this_setup_manager|config_command_counter[6]~33_combout\,
	cout => \this_setup_manager|config_command_counter[6]~34\);

-- Location: LCCOMB_X19_Y8_N6
\this_setup_manager|config_command_counter[15]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[15]~52_combout\ = (\this_setup_manager|config_command_counter\(15) & (\this_setup_manager|config_command_counter[14]~50\ $ (GND))) # (!\this_setup_manager|config_command_counter\(15) & 
-- (!\this_setup_manager|config_command_counter[14]~50\ & VCC))
-- \this_setup_manager|config_command_counter[15]~53\ = CARRY((\this_setup_manager|config_command_counter\(15) & !\this_setup_manager|config_command_counter[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(15),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[14]~50\,
	combout => \this_setup_manager|config_command_counter[15]~52_combout\,
	cout => \this_setup_manager|config_command_counter[15]~53\);

-- Location: LCCOMB_X19_Y8_N12
\this_setup_manager|config_command_counter[18]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[18]~58_combout\ = (\this_setup_manager|config_command_counter\(18) & (!\this_setup_manager|config_command_counter[17]~57\)) # (!\this_setup_manager|config_command_counter\(18) & 
-- ((\this_setup_manager|config_command_counter[17]~57\) # (GND)))
-- \this_setup_manager|config_command_counter[18]~59\ = CARRY((!\this_setup_manager|config_command_counter[17]~57\) # (!\this_setup_manager|config_command_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(18),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[17]~57\,
	combout => \this_setup_manager|config_command_counter[18]~58_combout\,
	cout => \this_setup_manager|config_command_counter[18]~59\);

-- Location: M4K_X11_Y11
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

-- Location: LCCOMB_X6_Y11_N20
\adc_spi_controller|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector0~0_combout\ = (\adc_spi_controller|curr_state.transmiting~regout\ & !\adc_spi_controller|spi_tx_component|SEND_DONE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|curr_state.transmiting~regout\,
	datad => \adc_spi_controller|spi_tx_component|SEND_DONE~regout\,
	combout => \adc_spi_controller|Selector0~0_combout\);

-- Location: LCCOMB_X20_Y10_N6
\this_mram_controller|Selector22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector22~2_combout\ = (!\this_mram_controller|counter\(2) & !\this_mram_controller|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_mram_controller|counter\(2),
	datad => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|Selector22~2_combout\);

-- Location: LCFF_X10_Y10_N13
\UART_Controller_1|uart_tx_1|data_send[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|data_send[5]~0_combout\,
	ena => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(5));

-- Location: LCFF_X10_Y10_N11
\UART_Controller_1|uart_tx_1|data_send[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|data_send[6]~1_combout\,
	ena => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(6));

-- Location: LCFF_X10_Y10_N9
\UART_Controller_1|uart_tx_1|data_send[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|data_send[4]~2_combout\,
	ena => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(4));

-- Location: LCCOMB_X10_Y10_N18
\UART_Controller_1|uart_tx_1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Mux0~0_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(1) & (((\UART_Controller_1|uart_tx_1|data_index\(0))) # (!\UART_Controller_1|uart_tx_1|data_send\(6)))) # (!\UART_Controller_1|uart_tx_1|data_index\(1) & 
-- (((!\UART_Controller_1|uart_tx_1|data_send\(4) & !\UART_Controller_1|uart_tx_1|data_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_send\(6),
	datab => \UART_Controller_1|uart_tx_1|data_index\(1),
	datac => \UART_Controller_1|uart_tx_1|data_send\(4),
	datad => \UART_Controller_1|uart_tx_1|data_index\(0),
	combout => \UART_Controller_1|uart_tx_1|Mux0~0_combout\);

-- Location: LCFF_X10_Y10_N5
\UART_Controller_1|uart_tx_1|data_send[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(7),
	sload => VCC,
	ena => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(7));

-- Location: LCCOMB_X10_Y10_N4
\UART_Controller_1|uart_tx_1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Mux0~1_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(0) & ((\UART_Controller_1|uart_tx_1|Mux0~0_combout\ & ((\UART_Controller_1|uart_tx_1|data_send\(7)))) # (!\UART_Controller_1|uart_tx_1|Mux0~0_combout\ & 
-- (!\UART_Controller_1|uart_tx_1|data_send\(5))))) # (!\UART_Controller_1|uart_tx_1|data_index\(0) & (((\UART_Controller_1|uart_tx_1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_send\(5),
	datab => \UART_Controller_1|uart_tx_1|data_index\(0),
	datac => \UART_Controller_1|uart_tx_1|data_send\(7),
	datad => \UART_Controller_1|uart_tx_1|Mux0~0_combout\,
	combout => \UART_Controller_1|uart_tx_1|Mux0~1_combout\);

-- Location: LCFF_X10_Y10_N21
\UART_Controller_1|uart_tx_1|data_send[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|data_send[2]~3_combout\,
	ena => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(2));

-- Location: LCFF_X10_Y10_N25
\UART_Controller_1|uart_tx_1|data_send[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|data_send[1]~4_combout\,
	ena => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(1));

-- Location: LCFF_X6_Y11_N25
\adc_spi_controller|cs_up_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|cs_up_counter~0_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(4));

-- Location: LCCOMB_X19_Y10_N10
\this_write_out_mram_manager|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|Equal0~0_combout\ = (\this_write_out_mram_manager|address_counter\(2)) # (((\this_write_out_mram_manager|address_counter\(1)) # (\this_write_out_mram_manager|address_counter\(0))) # 
-- (!\this_write_out_mram_manager|address_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(2),
	datab => \this_write_out_mram_manager|address_counter\(3),
	datac => \this_write_out_mram_manager|address_counter\(1),
	datad => \this_write_out_mram_manager|address_counter\(0),
	combout => \this_write_out_mram_manager|Equal0~0_combout\);

-- Location: LCFF_X8_Y10_N25
\UART_Controller_1|uart_tx_1|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(4));

-- Location: LCFF_X8_Y10_N31
\UART_Controller_1|uart_tx_1|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(9));

-- Location: LCFF_X10_Y10_N17
\UART_Controller_1|uart_tx_1|data_index[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_index\(3));

-- Location: LCCOMB_X10_Y10_N6
\UART_Controller_1|uart_tx_1|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector4~0_combout\ = (!\UART_Controller_1|uart_tx_1|data_index\(3) & (\UART_Controller_1|uart_tx_1|data_index\(1) & (\UART_Controller_1|uart_tx_1|data_index\(2) & \UART_Controller_1|uart_tx_1|data_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_index\(3),
	datab => \UART_Controller_1|uart_tx_1|data_index\(1),
	datac => \UART_Controller_1|uart_tx_1|data_index\(2),
	datad => \UART_Controller_1|uart_tx_1|data_index\(0),
	combout => \UART_Controller_1|uart_tx_1|Selector4~0_combout\);

-- Location: LCCOMB_X7_Y11_N20
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3)) # 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2)) # ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1)) # 
-- (!\adc_spi_controller|fifo_rdreq~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datad => \adc_spi_controller|fifo_rdreq~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\);

-- Location: LCCOMB_X6_Y11_N24
\adc_spi_controller|cs_up_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|cs_up_counter~0_combout\ = (\adc_spi_controller|Add0~8_combout\ & !\adc_spi_controller|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Add0~8_combout\,
	datad => \adc_spi_controller|Equal0~1_combout\,
	combout => \adc_spi_controller|cs_up_counter~0_combout\);

-- Location: LCFF_X18_Y10_N25
\this_setup_manager|SETUP_DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|Equal12~4_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SETUP_DONE~regout\);

-- Location: LCCOMB_X18_Y10_N10
\this_state_manager|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector1~0_combout\ = (\this_state_manager|curr_state.write_out_mram~regout\ & (((\this_write_out_mram_manager|WRITE_OUT_DONE~regout\)))) # (!\this_state_manager|curr_state.write_out_mram~regout\ & 
-- (\this_setup_manager|SETUP_DONE~regout\ & ((!\this_state_manager|curr_state.read_adc~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|SETUP_DONE~regout\,
	datab => \this_write_out_mram_manager|WRITE_OUT_DONE~regout\,
	datac => \this_state_manager|curr_state.write_out_mram~regout\,
	datad => \this_state_manager|curr_state.read_adc~regout\,
	combout => \this_state_manager|Selector1~0_combout\);

-- Location: LCCOMB_X24_Y10_N6
\this_read_adc_manager|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|Equal0~0_combout\ = (!\this_read_adc_manager|address_counter\(2) & (\this_read_adc_manager|address_counter\(3) & (!\this_read_adc_manager|address_counter\(1) & !\this_read_adc_manager|address_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(2),
	datab => \this_read_adc_manager|address_counter\(3),
	datac => \this_read_adc_manager|address_counter\(1),
	datad => \this_read_adc_manager|address_counter\(0),
	combout => \this_read_adc_manager|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y6_N6
\this_read_adc_manager|read_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|read_counter~3_combout\ = (\this_read_adc_manager|read_counter\(1) & (((!\this_read_adc_manager|read_counter\(0))))) # (!\this_read_adc_manager|read_counter\(1) & (\this_read_adc_manager|read_counter\(0) & 
-- ((\this_read_adc_manager|read_counter\(3)) # (!\this_read_adc_manager|read_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|read_counter\(2),
	datab => \this_read_adc_manager|read_counter\(3),
	datac => \this_read_adc_manager|read_counter\(1),
	datad => \this_read_adc_manager|read_counter\(0),
	combout => \this_read_adc_manager|read_counter~3_combout\);

-- Location: LCCOMB_X13_Y10_N20
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ = ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2)) # 
-- ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1)) # (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3)))) # 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\);

-- Location: LCFF_X9_Y10_N25
\UART_Controller_1|uart_tx_1|tx_curr_state.stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|tx_curr_state.stop~regout\);

-- Location: LCCOMB_X8_Y10_N24
\UART_Controller_1|uart_tx_1|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector11~0_combout\ = (\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & (!\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & (\UART_Controller_1|uart_tx_1|Add0~8_combout\ & 
-- !\UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datac => \UART_Controller_1|uart_tx_1|Add0~8_combout\,
	datad => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector11~0_combout\);

-- Location: LCCOMB_X8_Y10_N30
\UART_Controller_1|uart_tx_1|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector6~0_combout\ = (!\UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\ & (\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & \UART_Controller_1|uart_tx_1|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	datac => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|Add0~18_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector6~0_combout\);

-- Location: LCCOMB_X10_Y10_N30
\UART_Controller_1|uart_tx_1|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector16~0_combout\ = (\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & (\UART_Controller_1|uart_tx_1|data_index\(0) & (\UART_Controller_1|uart_tx_1|data_index\(2) & \UART_Controller_1|uart_tx_1|data_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datab => \UART_Controller_1|uart_tx_1|data_index\(0),
	datac => \UART_Controller_1|uart_tx_1|data_index\(2),
	datad => \UART_Controller_1|uart_tx_1|data_index\(1),
	combout => \UART_Controller_1|uart_tx_1|Selector16~0_combout\);

-- Location: LCCOMB_X10_Y10_N16
\UART_Controller_1|uart_tx_1|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector16~1_combout\ = (\UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\ & ((\UART_Controller_1|uart_tx_1|data_index\(3) $ (\UART_Controller_1|uart_tx_1|Selector16~0_combout\)))) # 
-- (!\UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\ & (\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & (\UART_Controller_1|uart_tx_1|data_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\,
	datac => \UART_Controller_1|uart_tx_1|data_index\(3),
	datad => \UART_Controller_1|uart_tx_1|Selector16~0_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector16~1_combout\);

-- Location: LCCOMB_X18_Y9_N18
\this_setup_manager|Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal11~0_combout\ = (\this_setup_manager|config_command_counter\(9) & (\this_setup_manager|config_command_counter\(2) & (!\this_setup_manager|config_command_counter\(0) & !\this_setup_manager|config_command_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(9),
	datab => \this_setup_manager|config_command_counter\(2),
	datac => \this_setup_manager|config_command_counter\(0),
	datad => \this_setup_manager|config_command_counter\(1),
	combout => \this_setup_manager|Equal11~0_combout\);

-- Location: LCCOMB_X18_Y9_N20
\this_setup_manager|Equal11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal11~1_combout\ = (\this_setup_manager|config_command_counter\(13) & (\this_setup_manager|config_command_counter\(14) & (\this_setup_manager|config_command_counter\(3) & \this_setup_manager|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(13),
	datab => \this_setup_manager|config_command_counter\(14),
	datac => \this_setup_manager|config_command_counter\(3),
	datad => \this_setup_manager|Equal11~0_combout\,
	combout => \this_setup_manager|Equal11~1_combout\);

-- Location: LCCOMB_X19_Y9_N4
\this_setup_manager|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~4_combout\ = (!\this_setup_manager|config_command_counter\(4) & (!\this_setup_manager|config_command_counter\(6) & !\this_setup_manager|config_command_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(4),
	datac => \this_setup_manager|config_command_counter\(6),
	datad => \this_setup_manager|config_command_counter\(10),
	combout => \this_setup_manager|Equal0~4_combout\);

-- Location: LCCOMB_X7_Y11_N16
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) & 
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\);

-- Location: LCCOMB_X19_Y9_N6
\this_setup_manager|Equal12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal12~3_combout\ = (\this_setup_manager|config_command_counter\(6) & (!\this_setup_manager|config_command_counter\(3) & (\this_setup_manager|config_command_counter\(4) & !\this_setup_manager|config_command_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(6),
	datab => \this_setup_manager|config_command_counter\(3),
	datac => \this_setup_manager|config_command_counter\(4),
	datad => \this_setup_manager|config_command_counter\(5),
	combout => \this_setup_manager|Equal12~3_combout\);

-- Location: LCCOMB_X13_Y10_N16
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3) & 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) & (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & 
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\);

-- Location: LCCOMB_X13_Y10_N24
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ = (\this_write_out_mram_manager|MRAM_READ_DATA~regout\ & (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ $ 
-- (((!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\) # (!\UART_Controller_1|curr_state.reading_fifo1~regout\))))) # (!\this_write_out_mram_manager|MRAM_READ_DATA~regout\ & 
-- (\UART_Controller_1|curr_state.reading_fifo1~regout\ & (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|MRAM_READ_DATA~regout\,
	datab => \UART_Controller_1|curr_state.reading_fifo1~regout\,
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\);

-- Location: LCCOMB_X9_Y10_N24
\UART_Controller_1|uart_tx_1|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector4~1_combout\ = (\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & (\UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\ & ((\UART_Controller_1|uart_tx_1|Selector4~0_combout\)))) # 
-- (!\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & (((\UART_Controller_1|uart_tx_1|tx_curr_state.stop~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\,
	datab => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datac => \UART_Controller_1|uart_tx_1|tx_curr_state.stop~regout\,
	datad => \UART_Controller_1|uart_tx_1|Selector4~0_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector4~1_combout\);

-- Location: LCCOMB_X13_Y11_N14
\adc_spi_controller|spi_tx_component|tx_buf~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~1_combout\ = (\adc_spi_controller|spi_tx_component|curr_state~regout\ & (!\adc_spi_controller|spi_tx_component|sclk~regout\ & (\adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\ & 
-- !\adc_spi_controller|spi_tx_component|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datab => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datac => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\,
	datad => \adc_spi_controller|spi_tx_component|process_0~2_combout\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~1_combout\);

-- Location: LCCOMB_X14_Y10_N12
\UART_Controller_1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|Selector1~0_combout\ = ((\UART_Controller_1|uart_tx_1|TX_BUSY~regout\ & (\UART_Controller_1|curr_state.transmiting~regout\)) # (!\UART_Controller_1|uart_tx_1|TX_BUSY~regout\ & ((\UART_Controller_1|curr_state.reading_fifo2~regout\)))) # 
-- (!\UART_Controller_1|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|curr_state.transmiting~regout\,
	datab => \UART_Controller_1|curr_state.reading_fifo2~regout\,
	datac => \UART_Controller_1|uart_tx_1|TX_BUSY~regout\,
	datad => \UART_Controller_1|curr_state.idle~regout\,
	combout => \UART_Controller_1|Selector1~0_combout\);

-- Location: LCCOMB_X17_Y9_N24
\this_setup_manager|WideOr0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|WideOr0~4_combout\ = (\this_setup_manager|config_command_counter\(0) & (((!\this_setup_manager|config_command_counter\(2) & !\this_setup_manager|config_command_counter\(1))) # (!\this_setup_manager|config_command_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(2),
	datab => \this_setup_manager|config_command_counter\(0),
	datac => \this_setup_manager|config_command_counter\(1),
	datad => \this_setup_manager|config_command_counter\(3),
	combout => \this_setup_manager|WideOr0~4_combout\);

-- Location: LCCOMB_X17_Y9_N22
\this_setup_manager|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector0~0_combout\ = (\this_setup_manager|config_command_counter\(0)) # ((\this_setup_manager|config_command_counter\(1) & ((\this_setup_manager|config_command_counter\(3)))) # (!\this_setup_manager|config_command_counter\(1) & 
-- ((\this_setup_manager|config_command_counter\(2)) # (!\this_setup_manager|config_command_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(2),
	datab => \this_setup_manager|config_command_counter\(0),
	datac => \this_setup_manager|config_command_counter\(1),
	datad => \this_setup_manager|config_command_counter\(3),
	combout => \this_setup_manager|Selector0~0_combout\);

-- Location: LCCOMB_X14_Y10_N20
\UART_Controller_1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|Selector2~0_combout\ = (\UART_Controller_1|next_state.reading_fifo2~regout\ & ((\UART_Controller_1|uart_tx_1|TX_BUSY~regout\ & ((!\UART_Controller_1|curr_state.reading_fifo2~regout\))) # (!\UART_Controller_1|uart_tx_1|TX_BUSY~regout\ & 
-- (!\UART_Controller_1|curr_state.transmiting~regout\)))) # (!\UART_Controller_1|next_state.reading_fifo2~regout\ & (!\UART_Controller_1|curr_state.transmiting~regout\ & (!\UART_Controller_1|curr_state.reading_fifo2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|curr_state.transmiting~regout\,
	datab => \UART_Controller_1|curr_state.reading_fifo2~regout\,
	datac => \UART_Controller_1|uart_tx_1|TX_BUSY~regout\,
	datad => \UART_Controller_1|next_state.reading_fifo2~regout\,
	combout => \UART_Controller_1|Selector2~0_combout\);

-- Location: LCCOMB_X9_Y11_N14
\adc_spi_controller|spi_tx_component|tx_buf~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~9_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & (\adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM55\)) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & 
-- ((\adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM55\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM53\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~9_combout\);

-- Location: LCCOMB_X17_Y9_N12
\this_setup_manager|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector1~0_combout\ = (\this_setup_manager|config_command_counter\(2) & (!\this_setup_manager|config_command_counter\(0) & !\this_setup_manager|config_command_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(2),
	datab => \this_setup_manager|config_command_counter\(0),
	datad => \this_setup_manager|config_command_counter\(3),
	combout => \this_setup_manager|Selector1~0_combout\);

-- Location: LCCOMB_X17_Y9_N16
\this_setup_manager|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector1~1_combout\ = (\this_setup_manager|Equal0~0_combout\ & (\this_setup_manager|Selector1~0_combout\ & (\this_setup_manager|WideOr0~1_combout\ & \this_setup_manager|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~0_combout\,
	datab => \this_setup_manager|Selector1~0_combout\,
	datac => \this_setup_manager|WideOr0~1_combout\,
	datad => \this_setup_manager|Equal0~5_combout\,
	combout => \this_setup_manager|Selector1~1_combout\);

-- Location: LCCOMB_X9_Y11_N6
\adc_spi_controller|spi_tx_component|tx_buf~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~10_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & (\adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM51\)) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & 
-- ((\adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	datab => \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM51\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM49\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~10_combout\);

-- Location: LCCOMB_X9_Y11_N2
\adc_spi_controller|spi_tx_component|tx_buf~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~11_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & ((\adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM47\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM45\,
	datab => \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM47\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~11_combout\);

-- Location: LCCOMB_X9_Y11_N22
\adc_spi_controller|spi_tx_component|tx_buf~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~12_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & (\adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM43\)) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & 
-- ((\adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM43\,
	datab => \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM41\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~12_combout\);

-- Location: LCCOMB_X12_Y11_N16
\adc_spi_controller|spi_tx_component|tx_buf~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~13_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & ((\adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM39\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM37\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM39\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~13_combout\);

-- Location: LCCOMB_X12_Y11_N26
\adc_spi_controller|spi_tx_component|tx_buf~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~14_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & ((\adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM35\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM33\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM35\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~14_combout\);

-- Location: LCCOMB_X12_Y11_N28
\adc_spi_controller|spi_tx_component|tx_buf~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~15_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & (\adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM31\)) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & 
-- ((\adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM31\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM29\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~15_combout\);

-- Location: LCCOMB_X12_Y11_N22
\adc_spi_controller|spi_tx_component|tx_buf~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~16_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM27\)) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & 
-- ((\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM27\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM25\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~16_combout\);

-- Location: LCCOMB_X12_Y11_N0
\adc_spi_controller|spi_tx_component|tx_buf~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~17_combout\ = (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM81\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM81\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~17_combout\);

-- Location: LCCOMB_X17_Y9_N20
\this_setup_manager|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~8_combout\ = (!\this_setup_manager|SPI_send_data[0]_OTERM7_OTERM107\ & (!\this_setup_manager|SPI_send_data[0]_OTERM7_OTERM103\ & (!\this_setup_manager|SPI_send_data[0]_OTERM7_OTERM105\ & 
-- \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM109\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM107\,
	datab => \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM103\,
	datac => \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM105\,
	datad => \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM109\,
	combout => \this_setup_manager|Equal0~8_combout\);

-- Location: LCCOMB_X10_Y10_N12
\UART_Controller_1|uart_tx_1|data_send[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|data_send[5]~0_combout\ = !\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(5),
	combout => \UART_Controller_1|uart_tx_1|data_send[5]~0_combout\);

-- Location: LCCOMB_X10_Y10_N10
\UART_Controller_1|uart_tx_1|data_send[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|data_send[6]~1_combout\ = !\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(6),
	combout => \UART_Controller_1|uart_tx_1|data_send[6]~1_combout\);

-- Location: LCCOMB_X10_Y10_N8
\UART_Controller_1|uart_tx_1|data_send[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|data_send[4]~2_combout\ = !\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(4),
	combout => \UART_Controller_1|uart_tx_1|data_send[4]~2_combout\);

-- Location: LCCOMB_X10_Y10_N20
\UART_Controller_1|uart_tx_1|data_send[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|data_send[2]~3_combout\ = !\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(2),
	combout => \UART_Controller_1|uart_tx_1|data_send[2]~3_combout\);

-- Location: LCCOMB_X10_Y10_N24
\UART_Controller_1|uart_tx_1|data_send[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|data_send[1]~4_combout\ = !\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(1),
	combout => \UART_Controller_1|uart_tx_1|data_send[1]~4_combout\);

-- Location: LCCOMB_X18_Y10_N24
\this_setup_manager|Equal12~4_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal12~4_wirecell_combout\ = !\this_setup_manager|Equal12~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_setup_manager|Equal12~4_combout\,
	combout => \this_setup_manager|Equal12~4_wirecell_combout\);

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

-- Location: LCFF_X17_Y9_N17
\this_setup_manager|SPI_send_data[10]_NEW_REG14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[10]_OTERM15\);

-- Location: LCFF_X17_Y9_N11
\this_setup_manager|SPI_send_data[15]_NEW_REG18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|Selector0~1_RTM020_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[15]_OTERM19\);

-- Location: LCCOMB_X17_Y9_N10
\this_setup_manager|Selector0~1_RTM020\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector0~1_RTM020_combout\ = (\this_setup_manager|Equal0~0_combout\ & (!\this_setup_manager|Selector0~0_combout\ & (\this_setup_manager|WideOr0~1_combout\ & \this_setup_manager|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~0_combout\,
	datab => \this_setup_manager|Selector0~0_combout\,
	datac => \this_setup_manager|WideOr0~1_combout\,
	datad => \this_setup_manager|Equal0~5_combout\,
	combout => \this_setup_manager|Selector0~1_RTM020_combout\);

-- Location: LCFF_X12_Y11_N13
\adc_spi_controller|spi_tx_component|tx_buf[1]_NEW_REG24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM25~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM25\);

-- Location: LCFF_X12_Y11_N1
\adc_spi_controller|spi_tx_component|tx_buf[1]_NEW_REG26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~17_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM27\);

-- Location: LCFF_X12_Y11_N19
\adc_spi_controller|spi_tx_component|tx_buf[2]_NEW_REG28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM29~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM29\);

-- Location: LCFF_X12_Y11_N23
\adc_spi_controller|spi_tx_component|tx_buf[2]_NEW_REG30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~16_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM31\);

-- Location: LCFF_X12_Y11_N7
\adc_spi_controller|spi_tx_component|tx_buf[3]_NEW_REG32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM33~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM33\);

-- Location: LCFF_X12_Y11_N29
\adc_spi_controller|spi_tx_component|tx_buf[3]_NEW_REG34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~15_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM35\);

-- Location: LCFF_X12_Y11_N3
\adc_spi_controller|spi_tx_component|tx_buf[4]_NEW_REG36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM37~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM37\);

-- Location: LCFF_X12_Y11_N27
\adc_spi_controller|spi_tx_component|tx_buf[4]_NEW_REG38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~14_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM39\);

-- Location: LCFF_X10_Y11_N31
\adc_spi_controller|spi_tx_component|tx_buf[5]_NEW_REG40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM41~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM41\);

-- Location: LCFF_X9_Y11_N11
\adc_spi_controller|spi_tx_component|tx_buf[5]_NEW_REG42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM43~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM43\);

-- Location: LCFF_X10_Y11_N7
\adc_spi_controller|spi_tx_component|tx_buf[6]_NEW_REG44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(6),
	sload => VCC,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM45\);

-- Location: LCFF_X9_Y11_N23
\adc_spi_controller|spi_tx_component|tx_buf[6]_NEW_REG46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~12_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[6]_OTERM47\);

-- Location: LCFF_X12_Y11_N25
\adc_spi_controller|spi_tx_component|tx_buf[7]_NEW_REG48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM49~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM49\);

-- Location: LCFF_X9_Y11_N3
\adc_spi_controller|spi_tx_component|tx_buf[7]_NEW_REG50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~11_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM51\);

-- Location: LCFF_X10_Y11_N13
\adc_spi_controller|spi_tx_component|tx_buf[8]_NEW_REG52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM53~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM53\);

-- Location: LCFF_X9_Y11_N7
\adc_spi_controller|spi_tx_component|tx_buf[8]_NEW_REG54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~10_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM55\);

-- Location: LCFF_X9_Y11_N15
\adc_spi_controller|spi_tx_component|tx_buf[9]_NEW_REG58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~9_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM59\);

-- Location: LCFF_X10_Y11_N11
\adc_spi_controller|spi_tx_component|tx_buf[14]_NEW_REG76\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(14),
	sload => VCC,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM77\);

-- Location: LCFF_X12_Y11_N11
\adc_spi_controller|spi_tx_component|tx_buf[0]_NEW_REG80\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM81~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM81\);

-- Location: LCFF_X12_Y11_N21
\adc_spi_controller|spi_tx_component|tx_buf[15]_NEW_REG82\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM83~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM83\);

-- Location: LCFF_X17_Y9_N5
\this_setup_manager|SPI_send_data[0]_OTERM7_NEW_REG102\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM103~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM103\);

-- Location: LCFF_X17_Y9_N21
\this_setup_manager|SPI_send_data[0]_OTERM7_NEW_REG104\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_setup_manager|config_command_counter\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM105\);

-- Location: LCFF_X17_Y9_N13
\this_setup_manager|SPI_send_data[0]_OTERM7_NEW_REG106\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_setup_manager|config_command_counter\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM107\);

-- Location: LCFF_X17_Y9_N31
\this_setup_manager|SPI_send_data[0]_OTERM7_NEW_REG108\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM109~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM109\);

-- Location: LCFF_X17_Y9_N25
\this_setup_manager|SPI_send_data[0]_OTERM3_NEW_REG114\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|WideOr0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[0]_OTERM3_OTERM115\);

-- Location: LCCOMB_X17_Y9_N4
\this_setup_manager|SPI_send_data[0]_OTERM7_OTERM103~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM103~feeder_combout\ = \this_setup_manager|config_command_counter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_setup_manager|config_command_counter\(3),
	combout => \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM103~feeder_combout\);

-- Location: LCCOMB_X12_Y11_N20
\adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM83~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM83~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(15),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM83~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N12
\adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM53~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM53~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(8),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[8]_OTERM53~feeder_combout\);

-- Location: LCCOMB_X12_Y11_N24
\adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM49~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM49~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(7),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[7]_OTERM49~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N30
\adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM41~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM41~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(5),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM41~feeder_combout\);

-- Location: LCCOMB_X12_Y11_N2
\adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM37~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM37~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(4),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[4]_OTERM37~feeder_combout\);

-- Location: LCCOMB_X12_Y11_N6
\adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM33~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM33~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(3),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[3]_OTERM33~feeder_combout\);

-- Location: LCCOMB_X12_Y11_N18
\adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM29~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM29~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(2),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[2]_OTERM29~feeder_combout\);

-- Location: LCCOMB_X12_Y11_N12
\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM25~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM25~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(1),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM25~feeder_combout\);

-- Location: LCCOMB_X12_Y11_N10
\adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM81~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM81~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(0),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[0]_OTERM81~feeder_combout\);

-- Location: LCCOMB_X9_Y11_N10
\adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM43~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM43~feeder_combout\ = \adc_spi_controller|spi_tx_component|tx_buf~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_tx_component|tx_buf~13_combout\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf[5]_OTERM43~feeder_combout\);

-- Location: LCCOMB_X17_Y9_N30
\this_setup_manager|SPI_send_data[0]_OTERM7_OTERM109~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM109~feeder_combout\ = \this_setup_manager|Equal0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_setup_manager|Equal0~7_combout\,
	combout => \this_setup_manager|SPI_send_data[0]_OTERM7_OTERM109~feeder_combout\);

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

-- Location: LCCOMB_X6_Y11_N22
\adc_spi_controller|cs_up_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|cs_up_counter~2_combout\ = (!\adc_spi_controller|cs_up_counter\(0) & !\adc_spi_controller|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_spi_controller|cs_up_counter\(0),
	datad => \adc_spi_controller|Equal0~1_combout\,
	combout => \adc_spi_controller|cs_up_counter~2_combout\);

-- Location: LCCOMB_X8_Y11_N10
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

-- Location: LCCOMB_X19_Y9_N18
\this_setup_manager|config_command_counter[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[5]~31_combout\ = (\this_setup_manager|config_command_counter\(5) & (\this_setup_manager|config_command_counter[4]~30\ $ (GND))) # (!\this_setup_manager|config_command_counter\(5) & 
-- (!\this_setup_manager|config_command_counter[4]~30\ & VCC))
-- \this_setup_manager|config_command_counter[5]~32\ = CARRY((\this_setup_manager|config_command_counter\(5) & !\this_setup_manager|config_command_counter[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(5),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[4]~30\,
	combout => \this_setup_manager|config_command_counter[5]~31_combout\,
	cout => \this_setup_manager|config_command_counter[5]~32\);

-- Location: LCCOMB_X19_Y9_N22
\this_setup_manager|config_command_counter[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[7]~35_combout\ = (\this_setup_manager|config_command_counter\(7) & (\this_setup_manager|config_command_counter[6]~34\ $ (GND))) # (!\this_setup_manager|config_command_counter\(7) & 
-- (!\this_setup_manager|config_command_counter[6]~34\ & VCC))
-- \this_setup_manager|config_command_counter[7]~36\ = CARRY((\this_setup_manager|config_command_counter\(7) & !\this_setup_manager|config_command_counter[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(7),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[6]~34\,
	combout => \this_setup_manager|config_command_counter[7]~35_combout\,
	cout => \this_setup_manager|config_command_counter[7]~36\);

-- Location: LCFF_X19_Y9_N23
\this_setup_manager|config_command_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[7]~35_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(7));

-- Location: LCCOMB_X19_Y9_N24
\this_setup_manager|config_command_counter[8]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[8]~37_combout\ = (\this_setup_manager|config_command_counter\(8) & (!\this_setup_manager|config_command_counter[7]~36\)) # (!\this_setup_manager|config_command_counter\(8) & 
-- ((\this_setup_manager|config_command_counter[7]~36\) # (GND)))
-- \this_setup_manager|config_command_counter[8]~38\ = CARRY((!\this_setup_manager|config_command_counter[7]~36\) # (!\this_setup_manager|config_command_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(8),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[7]~36\,
	combout => \this_setup_manager|config_command_counter[8]~37_combout\,
	cout => \this_setup_manager|config_command_counter[8]~38\);

-- Location: LCFF_X19_Y9_N25
\this_setup_manager|config_command_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[8]~37_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(8));

-- Location: LCCOMB_X19_Y9_N26
\this_setup_manager|config_command_counter[9]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[9]~39_combout\ = (\this_setup_manager|config_command_counter\(9) & (\this_setup_manager|config_command_counter[8]~38\ $ (GND))) # (!\this_setup_manager|config_command_counter\(9) & 
-- (!\this_setup_manager|config_command_counter[8]~38\ & VCC))
-- \this_setup_manager|config_command_counter[9]~40\ = CARRY((\this_setup_manager|config_command_counter\(9) & !\this_setup_manager|config_command_counter[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(9),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[8]~38\,
	combout => \this_setup_manager|config_command_counter[9]~39_combout\,
	cout => \this_setup_manager|config_command_counter[9]~40\);

-- Location: LCFF_X19_Y9_N27
\this_setup_manager|config_command_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[9]~39_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(9));

-- Location: LCCOMB_X19_Y9_N28
\this_setup_manager|config_command_counter[10]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[10]~41_combout\ = (\this_setup_manager|config_command_counter\(10) & (!\this_setup_manager|config_command_counter[9]~40\)) # (!\this_setup_manager|config_command_counter\(10) & 
-- ((\this_setup_manager|config_command_counter[9]~40\) # (GND)))
-- \this_setup_manager|config_command_counter[10]~42\ = CARRY((!\this_setup_manager|config_command_counter[9]~40\) # (!\this_setup_manager|config_command_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(10),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[9]~40\,
	combout => \this_setup_manager|config_command_counter[10]~41_combout\,
	cout => \this_setup_manager|config_command_counter[10]~42\);

-- Location: LCFF_X19_Y9_N29
\this_setup_manager|config_command_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[10]~41_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(10));

-- Location: LCCOMB_X19_Y9_N10
\this_setup_manager|config_command_counter[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[1]~23_combout\ = (\this_setup_manager|config_command_counter\(1) & (\this_setup_manager|config_command_counter\(0) $ (VCC))) # (!\this_setup_manager|config_command_counter\(1) & 
-- (\this_setup_manager|config_command_counter\(0) & VCC))
-- \this_setup_manager|config_command_counter[1]~24\ = CARRY((\this_setup_manager|config_command_counter\(1) & \this_setup_manager|config_command_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(1),
	datab => \this_setup_manager|config_command_counter\(0),
	datad => VCC,
	combout => \this_setup_manager|config_command_counter[1]~23_combout\,
	cout => \this_setup_manager|config_command_counter[1]~24\);

-- Location: LCFF_X19_Y9_N11
\this_setup_manager|config_command_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[1]~23_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(1));

-- Location: LCCOMB_X19_Y9_N8
\this_setup_manager|Equal12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal12~2_combout\ = (!\this_setup_manager|config_command_counter\(2) & (\this_setup_manager|config_command_counter\(9) & (!\this_setup_manager|config_command_counter\(0) & !\this_setup_manager|config_command_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(2),
	datab => \this_setup_manager|config_command_counter\(9),
	datac => \this_setup_manager|config_command_counter\(0),
	datad => \this_setup_manager|config_command_counter\(1),
	combout => \this_setup_manager|Equal12~2_combout\);

-- Location: LCCOMB_X19_Y9_N30
\this_setup_manager|config_command_counter[11]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[11]~43_combout\ = (\this_setup_manager|config_command_counter\(11) & (\this_setup_manager|config_command_counter[10]~42\ $ (GND))) # (!\this_setup_manager|config_command_counter\(11) & 
-- (!\this_setup_manager|config_command_counter[10]~42\ & VCC))
-- \this_setup_manager|config_command_counter[11]~44\ = CARRY((\this_setup_manager|config_command_counter\(11) & !\this_setup_manager|config_command_counter[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(11),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[10]~42\,
	combout => \this_setup_manager|config_command_counter[11]~43_combout\,
	cout => \this_setup_manager|config_command_counter[11]~44\);

-- Location: LCFF_X19_Y9_N31
\this_setup_manager|config_command_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[11]~43_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(11));

-- Location: LCCOMB_X19_Y8_N0
\this_setup_manager|config_command_counter[12]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[12]~45_combout\ = (\this_setup_manager|config_command_counter\(12) & (!\this_setup_manager|config_command_counter[11]~44\)) # (!\this_setup_manager|config_command_counter\(12) & 
-- ((\this_setup_manager|config_command_counter[11]~44\) # (GND)))
-- \this_setup_manager|config_command_counter[12]~46\ = CARRY((!\this_setup_manager|config_command_counter[11]~44\) # (!\this_setup_manager|config_command_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(12),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[11]~44\,
	combout => \this_setup_manager|config_command_counter[12]~45_combout\,
	cout => \this_setup_manager|config_command_counter[12]~46\);

-- Location: LCFF_X19_Y8_N1
\this_setup_manager|config_command_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[12]~45_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(12));

-- Location: LCCOMB_X19_Y8_N2
\this_setup_manager|config_command_counter[13]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[13]~47_combout\ = (\this_setup_manager|config_command_counter\(13) & (\this_setup_manager|config_command_counter[12]~46\ $ (GND))) # (!\this_setup_manager|config_command_counter\(13) & 
-- (!\this_setup_manager|config_command_counter[12]~46\ & VCC))
-- \this_setup_manager|config_command_counter[13]~48\ = CARRY((\this_setup_manager|config_command_counter\(13) & !\this_setup_manager|config_command_counter[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(13),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[12]~46\,
	combout => \this_setup_manager|config_command_counter[13]~47_combout\,
	cout => \this_setup_manager|config_command_counter[13]~48\);

-- Location: LCFF_X18_Y9_N17
\this_setup_manager|config_command_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_setup_manager|config_command_counter[13]~47_combout\,
	sload => VCC,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(13));

-- Location: LCCOMB_X19_Y8_N4
\this_setup_manager|config_command_counter[14]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[14]~49_combout\ = (\this_setup_manager|config_command_counter\(14) & (!\this_setup_manager|config_command_counter[13]~48\)) # (!\this_setup_manager|config_command_counter\(14) & 
-- ((\this_setup_manager|config_command_counter[13]~48\) # (GND)))
-- \this_setup_manager|config_command_counter[14]~50\ = CARRY((!\this_setup_manager|config_command_counter[13]~48\) # (!\this_setup_manager|config_command_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(14),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[13]~48\,
	combout => \this_setup_manager|config_command_counter[14]~49_combout\,
	cout => \this_setup_manager|config_command_counter[14]~50\);

-- Location: LCFF_X19_Y8_N5
\this_setup_manager|config_command_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[14]~49_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(14));

-- Location: LCCOMB_X19_Y8_N8
\this_setup_manager|config_command_counter[16]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[16]~54_combout\ = (\this_setup_manager|config_command_counter\(16) & (!\this_setup_manager|config_command_counter[15]~53\)) # (!\this_setup_manager|config_command_counter\(16) & 
-- ((\this_setup_manager|config_command_counter[15]~53\) # (GND)))
-- \this_setup_manager|config_command_counter[16]~55\ = CARRY((!\this_setup_manager|config_command_counter[15]~53\) # (!\this_setup_manager|config_command_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(16),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[15]~53\,
	combout => \this_setup_manager|config_command_counter[16]~54_combout\,
	cout => \this_setup_manager|config_command_counter[16]~55\);

-- Location: LCFF_X19_Y8_N9
\this_setup_manager|config_command_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[16]~54_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(16));

-- Location: LCCOMB_X19_Y8_N10
\this_setup_manager|config_command_counter[17]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[17]~56_combout\ = (\this_setup_manager|config_command_counter\(17) & (\this_setup_manager|config_command_counter[16]~55\ $ (GND))) # (!\this_setup_manager|config_command_counter\(17) & 
-- (!\this_setup_manager|config_command_counter[16]~55\ & VCC))
-- \this_setup_manager|config_command_counter[17]~57\ = CARRY((\this_setup_manager|config_command_counter\(17) & !\this_setup_manager|config_command_counter[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(17),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[16]~55\,
	combout => \this_setup_manager|config_command_counter[17]~56_combout\,
	cout => \this_setup_manager|config_command_counter[17]~57\);

-- Location: LCCOMB_X19_Y8_N14
\this_setup_manager|config_command_counter[19]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[19]~60_combout\ = (\this_setup_manager|config_command_counter\(19) & (\this_setup_manager|config_command_counter[18]~59\ $ (GND))) # (!\this_setup_manager|config_command_counter\(19) & 
-- (!\this_setup_manager|config_command_counter[18]~59\ & VCC))
-- \this_setup_manager|config_command_counter[19]~61\ = CARRY((\this_setup_manager|config_command_counter\(19) & !\this_setup_manager|config_command_counter[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(19),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[18]~59\,
	combout => \this_setup_manager|config_command_counter[19]~60_combout\,
	cout => \this_setup_manager|config_command_counter[19]~61\);

-- Location: LCCOMB_X19_Y8_N16
\this_setup_manager|config_command_counter[20]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[20]~62_combout\ = (\this_setup_manager|config_command_counter\(20) & (!\this_setup_manager|config_command_counter[19]~61\)) # (!\this_setup_manager|config_command_counter\(20) & 
-- ((\this_setup_manager|config_command_counter[19]~61\) # (GND)))
-- \this_setup_manager|config_command_counter[20]~63\ = CARRY((!\this_setup_manager|config_command_counter[19]~61\) # (!\this_setup_manager|config_command_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(20),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[19]~61\,
	combout => \this_setup_manager|config_command_counter[20]~62_combout\,
	cout => \this_setup_manager|config_command_counter[20]~63\);

-- Location: LCCOMB_X19_Y8_N18
\this_setup_manager|config_command_counter[21]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[21]~64_combout\ = (\this_setup_manager|config_command_counter\(21) & (\this_setup_manager|config_command_counter[20]~63\ $ (GND))) # (!\this_setup_manager|config_command_counter\(21) & 
-- (!\this_setup_manager|config_command_counter[20]~63\ & VCC))
-- \this_setup_manager|config_command_counter[21]~65\ = CARRY((\this_setup_manager|config_command_counter\(21) & !\this_setup_manager|config_command_counter[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(21),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[20]~63\,
	combout => \this_setup_manager|config_command_counter[21]~64_combout\,
	cout => \this_setup_manager|config_command_counter[21]~65\);

-- Location: LCFF_X19_Y8_N19
\this_setup_manager|config_command_counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[21]~64_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(21));

-- Location: LCCOMB_X19_Y8_N20
\this_setup_manager|config_command_counter[22]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[22]~66_combout\ = (\this_setup_manager|config_command_counter\(22) & (!\this_setup_manager|config_command_counter[21]~65\)) # (!\this_setup_manager|config_command_counter\(22) & 
-- ((\this_setup_manager|config_command_counter[21]~65\) # (GND)))
-- \this_setup_manager|config_command_counter[22]~67\ = CARRY((!\this_setup_manager|config_command_counter[21]~65\) # (!\this_setup_manager|config_command_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(22),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[21]~65\,
	combout => \this_setup_manager|config_command_counter[22]~66_combout\,
	cout => \this_setup_manager|config_command_counter[22]~67\);

-- Location: LCFF_X19_Y8_N21
\this_setup_manager|config_command_counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[22]~66_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(22));

-- Location: LCCOMB_X19_Y8_N22
\this_setup_manager|config_command_counter[23]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[23]~68_combout\ = \this_setup_manager|config_command_counter\(23) $ (!\this_setup_manager|config_command_counter[22]~67\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(23),
	cin => \this_setup_manager|config_command_counter[22]~67\,
	combout => \this_setup_manager|config_command_counter[23]~68_combout\);

-- Location: LCFF_X19_Y8_N23
\this_setup_manager|config_command_counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[23]~68_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(23));

-- Location: LCCOMB_X19_Y8_N24
\this_setup_manager|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~3_combout\ = (!\this_setup_manager|config_command_counter\(21) & (!\this_setup_manager|config_command_counter\(22) & !\this_setup_manager|config_command_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(21),
	datac => \this_setup_manager|config_command_counter\(22),
	datad => \this_setup_manager|config_command_counter\(23),
	combout => \this_setup_manager|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y9_N24
\this_setup_manager|Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal12~0_combout\ = (!\this_setup_manager|config_command_counter\(13) & (\this_setup_manager|config_command_counter\(8) & (!\this_setup_manager|config_command_counter\(14) & \this_setup_manager|config_command_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(13),
	datab => \this_setup_manager|config_command_counter\(8),
	datac => \this_setup_manager|config_command_counter\(14),
	datad => \this_setup_manager|config_command_counter\(7),
	combout => \this_setup_manager|Equal12~0_combout\);

-- Location: LCCOMB_X19_Y8_N26
\this_setup_manager|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~1_combout\ = (!\this_setup_manager|config_command_counter\(15) & (!\this_setup_manager|config_command_counter\(16) & (!\this_setup_manager|config_command_counter\(11) & !\this_setup_manager|config_command_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(15),
	datab => \this_setup_manager|config_command_counter\(16),
	datac => \this_setup_manager|config_command_counter\(11),
	datad => \this_setup_manager|config_command_counter\(12),
	combout => \this_setup_manager|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y9_N14
\this_setup_manager|Equal12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal12~1_combout\ = (\this_setup_manager|Equal0~2_combout\ & (\this_setup_manager|Equal0~3_combout\ & (\this_setup_manager|Equal12~0_combout\ & \this_setup_manager|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~2_combout\,
	datab => \this_setup_manager|Equal0~3_combout\,
	datac => \this_setup_manager|Equal12~0_combout\,
	datad => \this_setup_manager|Equal0~1_combout\,
	combout => \this_setup_manager|Equal12~1_combout\);

-- Location: LCCOMB_X19_Y9_N2
\this_setup_manager|Equal12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal12~4_combout\ = (((!\this_setup_manager|Equal12~1_combout\) # (!\this_setup_manager|Equal12~2_combout\)) # (!\this_setup_manager|config_command_counter\(10))) # (!\this_setup_manager|Equal12~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal12~3_combout\,
	datab => \this_setup_manager|config_command_counter\(10),
	datac => \this_setup_manager|Equal12~2_combout\,
	datad => \this_setup_manager|Equal12~1_combout\,
	combout => \this_setup_manager|Equal12~4_combout\);

-- Location: LCCOMB_X19_Y9_N0
\this_setup_manager|config_command_counter[0]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[0]~51_combout\ = (!\this_setup_manager|config_command_counter\(0) & \this_setup_manager|Equal12~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_setup_manager|config_command_counter\(0),
	datad => \this_setup_manager|Equal12~4_combout\,
	combout => \this_setup_manager|config_command_counter[0]~51_combout\);

-- Location: LCFF_X19_Y9_N1
\this_setup_manager|config_command_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(0));

-- Location: LCCOMB_X19_Y9_N12
\this_setup_manager|config_command_counter[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[2]~25_combout\ = (\this_setup_manager|config_command_counter\(2) & (!\this_setup_manager|config_command_counter[1]~24\)) # (!\this_setup_manager|config_command_counter\(2) & 
-- ((\this_setup_manager|config_command_counter[1]~24\) # (GND)))
-- \this_setup_manager|config_command_counter[2]~26\ = CARRY((!\this_setup_manager|config_command_counter[1]~24\) # (!\this_setup_manager|config_command_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(2),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[1]~24\,
	combout => \this_setup_manager|config_command_counter[2]~25_combout\,
	cout => \this_setup_manager|config_command_counter[2]~26\);

-- Location: LCCOMB_X19_Y9_N14
\this_setup_manager|config_command_counter[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|config_command_counter[3]~27_combout\ = (\this_setup_manager|config_command_counter\(3) & (\this_setup_manager|config_command_counter[2]~26\ $ (GND))) # (!\this_setup_manager|config_command_counter\(3) & 
-- (!\this_setup_manager|config_command_counter[2]~26\ & VCC))
-- \this_setup_manager|config_command_counter[3]~28\ = CARRY((\this_setup_manager|config_command_counter\(3) & !\this_setup_manager|config_command_counter[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|config_command_counter\(3),
	datad => VCC,
	cin => \this_setup_manager|config_command_counter[2]~26\,
	combout => \this_setup_manager|config_command_counter[3]~27_combout\,
	cout => \this_setup_manager|config_command_counter[3]~28\);

-- Location: LCFF_X19_Y9_N15
\this_setup_manager|config_command_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[3]~27_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(3));

-- Location: LCFF_X19_Y9_N19
\this_setup_manager|config_command_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[5]~31_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(5));

-- Location: LCCOMB_X18_Y9_N16
\this_setup_manager|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~0_combout\ = (!\this_setup_manager|config_command_counter\(7) & (!\this_setup_manager|config_command_counter\(5) & !\this_setup_manager|config_command_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(7),
	datab => \this_setup_manager|config_command_counter\(5),
	datad => \this_setup_manager|config_command_counter\(8),
	combout => \this_setup_manager|Equal0~0_combout\);

-- Location: LCFF_X19_Y8_N15
\this_setup_manager|config_command_counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[19]~60_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(19));

-- Location: LCFF_X19_Y8_N17
\this_setup_manager|config_command_counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[20]~62_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(20));

-- Location: LCFF_X19_Y8_N11
\this_setup_manager|config_command_counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[17]~56_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(17));

-- Location: LCCOMB_X19_Y8_N30
\this_setup_manager|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~2_combout\ = (!\this_setup_manager|config_command_counter\(18) & (!\this_setup_manager|config_command_counter\(19) & (!\this_setup_manager|config_command_counter\(20) & !\this_setup_manager|config_command_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(18),
	datab => \this_setup_manager|config_command_counter\(19),
	datac => \this_setup_manager|config_command_counter\(20),
	datad => \this_setup_manager|config_command_counter\(17),
	combout => \this_setup_manager|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y9_N4
\this_setup_manager|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~5_combout\ = (\this_setup_manager|Equal0~4_combout\ & (\this_setup_manager|Equal0~3_combout\ & (\this_setup_manager|Equal0~2_combout\ & \this_setup_manager|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~4_combout\,
	datab => \this_setup_manager|Equal0~3_combout\,
	datac => \this_setup_manager|Equal0~2_combout\,
	datad => \this_setup_manager|Equal0~1_combout\,
	combout => \this_setup_manager|Equal0~5_combout\);

-- Location: LCFF_X19_Y9_N13
\this_setup_manager|config_command_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|config_command_counter[2]~25_combout\,
	ena => \this_setup_manager|Equal12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|config_command_counter\(2));

-- Location: LCCOMB_X18_Y9_N0
\this_setup_manager|Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal10~0_combout\ = (\this_setup_manager|config_command_counter\(7) & (!\this_setup_manager|config_command_counter\(1) & (!\this_setup_manager|config_command_counter\(2) & \this_setup_manager|config_command_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(7),
	datab => \this_setup_manager|config_command_counter\(1),
	datac => \this_setup_manager|config_command_counter\(2),
	datad => \this_setup_manager|config_command_counter\(8),
	combout => \this_setup_manager|Equal10~0_combout\);

-- Location: LCCOMB_X18_Y9_N2
\this_setup_manager|Equal10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal10~1_combout\ = (\this_setup_manager|config_command_counter\(13) & (!\this_setup_manager|config_command_counter\(0) & (\this_setup_manager|config_command_counter\(3) & \this_setup_manager|config_command_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(13),
	datab => \this_setup_manager|config_command_counter\(0),
	datac => \this_setup_manager|config_command_counter\(3),
	datad => \this_setup_manager|config_command_counter\(14),
	combout => \this_setup_manager|Equal10~1_combout\);

-- Location: LCCOMB_X18_Y9_N26
\this_setup_manager|Equal10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal10~2_combout\ = (!\this_setup_manager|config_command_counter\(9) & (\this_setup_manager|Equal10~0_combout\ & (\this_setup_manager|config_command_counter\(5) & \this_setup_manager|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(9),
	datab => \this_setup_manager|Equal10~0_combout\,
	datac => \this_setup_manager|config_command_counter\(5),
	datad => \this_setup_manager|Equal10~1_combout\,
	combout => \this_setup_manager|Equal10~2_combout\);

-- Location: LCCOMB_X18_Y9_N8
\this_setup_manager|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|WideOr0~0_combout\ = ((!\this_setup_manager|Equal10~2_combout\ & ((!\this_setup_manager|Equal0~0_combout\) # (!\this_setup_manager|Equal11~1_combout\)))) # (!\this_setup_manager|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal11~1_combout\,
	datab => \this_setup_manager|Equal0~0_combout\,
	datac => \this_setup_manager|Equal0~5_combout\,
	datad => \this_setup_manager|Equal10~2_combout\,
	combout => \this_setup_manager|WideOr0~0_combout\);

-- Location: LCCOMB_X18_Y9_N6
\this_setup_manager|WideOr0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|WideOr0~2_combout\ = (\this_setup_manager|config_command_counter\(0)) # ((\this_setup_manager|config_command_counter\(3) & ((\this_setup_manager|config_command_counter\(2)) # (\this_setup_manager|config_command_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(2),
	datab => \this_setup_manager|config_command_counter\(0),
	datac => \this_setup_manager|config_command_counter\(3),
	datad => \this_setup_manager|config_command_counter\(1),
	combout => \this_setup_manager|WideOr0~2_combout\);

-- Location: LCCOMB_X18_Y9_N22
\this_setup_manager|WideOr0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|WideOr0~3_combout\ = (((\this_setup_manager|WideOr0~2_combout\) # (!\this_setup_manager|Equal0~5_combout\)) # (!\this_setup_manager|Equal0~0_combout\)) # (!\this_setup_manager|WideOr0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|WideOr0~1_combout\,
	datab => \this_setup_manager|Equal0~0_combout\,
	datac => \this_setup_manager|Equal0~5_combout\,
	datad => \this_setup_manager|WideOr0~2_combout\,
	combout => \this_setup_manager|WideOr0~3_combout\);

-- Location: LCCOMB_X18_Y9_N10
\this_setup_manager|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector6~0_combout\ = ((!\this_setup_manager|WideOr0~0_combout\ & \this_setup_manager|SPI_send_irq~regout\)) # (!\this_setup_manager|WideOr0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_setup_manager|WideOr0~0_combout\,
	datac => \this_setup_manager|SPI_send_irq~regout\,
	datad => \this_setup_manager|WideOr0~3_combout\,
	combout => \this_setup_manager|Selector6~0_combout\);

-- Location: LCFF_X18_Y9_N11
\this_setup_manager|SPI_send_irq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_irq~regout\);

-- Location: LCCOMB_X8_Y11_N6
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ & (\adc_spi_controller|fifo_rdreq~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)))) # (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ & 
-- (\this_setup_manager|SPI_send_irq~regout\ $ (((\adc_spi_controller|fifo_rdreq~regout\ & \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datab => \adc_spi_controller|fifo_rdreq~regout\,
	datac => \this_setup_manager|SPI_send_irq~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\);

-- Location: LCFF_X8_Y11_N11
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0));

-- Location: LCCOMB_X7_Y11_N28
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\) # 
-- (\this_setup_manager|SPI_send_irq~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \this_setup_manager|SPI_send_irq~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\);

-- Location: LCCOMB_X7_Y11_N24
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\) # 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\) # 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\,
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\);

-- Location: LCFF_X7_Y11_N25
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\);

-- Location: LCCOMB_X7_Y11_N12
\adc_spi_controller|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector4~0_combout\ = (!\adc_spi_controller|curr_state.idle~regout\ & \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|curr_state.idle~regout\,
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \adc_spi_controller|Selector4~0_combout\);

-- Location: LCFF_X7_Y11_N13
\adc_spi_controller|curr_state.reading_fifo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|curr_state.reading_fifo~regout\);

-- Location: LCCOMB_X13_Y11_N20
\adc_spi_controller|spi_tx_component|curr_state~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|curr_state~feeder_combout\ = \adc_spi_controller|spi_tx_component|curr_state~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|curr_state~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|curr_state~feeder_combout\);

-- Location: LCCOMB_X7_Y11_N0
\adc_spi_controller|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector1~0_combout\ = (\adc_spi_controller|curr_state.reading_fifo~regout\) # ((\adc_spi_controller|curr_state.cs_up~regout\ & \adc_spi_controller|tx_send_irq~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|curr_state.cs_up~regout\,
	datac => \adc_spi_controller|tx_send_irq~regout\,
	datad => \adc_spi_controller|curr_state.reading_fifo~regout\,
	combout => \adc_spi_controller|Selector1~0_combout\);

-- Location: LCFF_X7_Y11_N1
\adc_spi_controller|tx_send_irq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|tx_send_irq~regout\);

-- Location: LCFF_X13_Y11_N21
\adc_spi_controller|spi_tx_component|curr_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|curr_state~feeder_combout\,
	sdata => \adc_spi_controller|tx_send_irq~regout\,
	sload => \adc_spi_controller|spi_tx_component|ALT_INV_curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|curr_state~regout\);

-- Location: LCFF_X13_Y11_N5
\adc_spi_controller|spi_tx_component|clk_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(2));

-- Location: LCCOMB_X13_Y11_N26
\adc_spi_controller|spi_tx_component|clk_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter~0_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(0) & (((!\adc_spi_controller|spi_tx_component|clk_counter\(1))))) # (!\adc_spi_controller|spi_tx_component|clk_counter\(0) & 
-- (\adc_spi_controller|spi_tx_component|clk_counter\(1) & ((\adc_spi_controller|spi_tx_component|clk_counter\(2)) # (!\adc_spi_controller|spi_tx_component|clk_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(0),
	datab => \adc_spi_controller|spi_tx_component|clk_counter\(3),
	datac => \adc_spi_controller|spi_tx_component|clk_counter\(2),
	datad => \adc_spi_controller|spi_tx_component|clk_counter\(1),
	combout => \adc_spi_controller|spi_tx_component|clk_counter~0_combout\);

-- Location: LCCOMB_X13_Y11_N6
\adc_spi_controller|spi_tx_component|clk_counter[1]_NEW90\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter[1]_OTERM91\ = (\adc_spi_controller|spi_tx_component|curr_state~regout\ & ((\adc_spi_controller|spi_tx_component|clk_counter~0_combout\))) # (!\adc_spi_controller|spi_tx_component|curr_state~regout\ & 
-- (\adc_spi_controller|spi_tx_component|clk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datac => \adc_spi_controller|spi_tx_component|clk_counter\(1),
	datad => \adc_spi_controller|spi_tx_component|clk_counter~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|clk_counter[1]_OTERM91\);

-- Location: LCFF_X13_Y11_N7
\adc_spi_controller|spi_tx_component|clk_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter[1]_OTERM91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(1));

-- Location: LCCOMB_X13_Y11_N2
\adc_spi_controller|spi_tx_component|clk_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter~1_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter\(0) & (\adc_spi_controller|spi_tx_component|clk_counter\(3) $ (((\adc_spi_controller|spi_tx_component|clk_counter\(2) & 
-- \adc_spi_controller|spi_tx_component|clk_counter\(1)))))) # (!\adc_spi_controller|spi_tx_component|clk_counter\(0) & (\adc_spi_controller|spi_tx_component|clk_counter\(3) & ((\adc_spi_controller|spi_tx_component|clk_counter\(2)) # 
-- (!\adc_spi_controller|spi_tx_component|clk_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(0),
	datab => \adc_spi_controller|spi_tx_component|clk_counter\(3),
	datac => \adc_spi_controller|spi_tx_component|clk_counter\(2),
	datad => \adc_spi_controller|spi_tx_component|clk_counter\(1),
	combout => \adc_spi_controller|spi_tx_component|clk_counter~1_combout\);

-- Location: LCCOMB_X13_Y11_N28
\adc_spi_controller|spi_tx_component|clk_counter[3]_NEW92\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter[3]_OTERM93\ = (\adc_spi_controller|spi_tx_component|curr_state~regout\ & ((\adc_spi_controller|spi_tx_component|clk_counter~1_combout\))) # (!\adc_spi_controller|spi_tx_component|curr_state~regout\ & 
-- (\adc_spi_controller|spi_tx_component|clk_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datac => \adc_spi_controller|spi_tx_component|clk_counter\(3),
	datad => \adc_spi_controller|spi_tx_component|clk_counter~1_combout\,
	combout => \adc_spi_controller|spi_tx_component|clk_counter[3]_OTERM93\);

-- Location: LCFF_X13_Y11_N29
\adc_spi_controller|spi_tx_component|clk_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter[3]_OTERM93\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(3));

-- Location: LCCOMB_X13_Y11_N18
\adc_spi_controller|spi_tx_component|clk_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter~2_combout\ = (!\adc_spi_controller|spi_tx_component|clk_counter\(0) & (((\adc_spi_controller|spi_tx_component|clk_counter\(2)) # (!\adc_spi_controller|spi_tx_component|clk_counter\(1))) # 
-- (!\adc_spi_controller|spi_tx_component|clk_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(0),
	datab => \adc_spi_controller|spi_tx_component|clk_counter\(3),
	datac => \adc_spi_controller|spi_tx_component|clk_counter\(2),
	datad => \adc_spi_controller|spi_tx_component|clk_counter\(1),
	combout => \adc_spi_controller|spi_tx_component|clk_counter~2_combout\);

-- Location: LCCOMB_X14_Y11_N2
\adc_spi_controller|spi_tx_component|clk_counter[0]_NEW94\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter[0]_OTERM95\ = (\adc_spi_controller|spi_tx_component|curr_state~regout\ & (\adc_spi_controller|spi_tx_component|clk_counter~2_combout\)) # (!\adc_spi_controller|spi_tx_component|curr_state~regout\ & 
-- ((\adc_spi_controller|spi_tx_component|clk_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|clk_counter~2_combout\,
	datac => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datad => \adc_spi_controller|spi_tx_component|clk_counter\(0),
	combout => \adc_spi_controller|spi_tx_component|clk_counter[0]_OTERM95\);

-- Location: LCCOMB_X13_Y11_N12
\adc_spi_controller|spi_tx_component|clk_counter[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter[0]~feeder_combout\ = \adc_spi_controller|spi_tx_component|clk_counter[0]_OTERM95\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_tx_component|clk_counter[0]_OTERM95\,
	combout => \adc_spi_controller|spi_tx_component|clk_counter[0]~feeder_combout\);

-- Location: LCFF_X13_Y11_N13
\adc_spi_controller|spi_tx_component|clk_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|clk_counter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|clk_counter\(0));

-- Location: LCCOMB_X13_Y11_N4
\adc_spi_controller|spi_tx_component|clk_counter[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|clk_counter[2]~3_combout\ = \adc_spi_controller|spi_tx_component|clk_counter\(2) $ (((\adc_spi_controller|spi_tx_component|clk_counter\(1) & (\adc_spi_controller|spi_tx_component|curr_state~regout\ & 
-- \adc_spi_controller|spi_tx_component|clk_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter\(1),
	datab => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datac => \adc_spi_controller|spi_tx_component|clk_counter\(2),
	datad => \adc_spi_controller|spi_tx_component|clk_counter\(0),
	combout => \adc_spi_controller|spi_tx_component|clk_counter[2]~3_combout\);

-- Location: LCCOMB_X13_Y11_N8
\adc_spi_controller|spi_tx_component|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Equal0~0_combout\ = (\adc_spi_controller|spi_tx_component|clk_counter[3]_OTERM93\ & (!\adc_spi_controller|spi_tx_component|clk_counter[2]~3_combout\ & (\adc_spi_controller|spi_tx_component|clk_counter[1]_OTERM91\ & 
-- !\adc_spi_controller|spi_tx_component|clk_counter[0]_OTERM95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|clk_counter[3]_OTERM93\,
	datab => \adc_spi_controller|spi_tx_component|clk_counter[2]~3_combout\,
	datac => \adc_spi_controller|spi_tx_component|clk_counter[1]_OTERM91\,
	datad => \adc_spi_controller|spi_tx_component|clk_counter[0]_OTERM95\,
	combout => \adc_spi_controller|spi_tx_component|Equal0~0_combout\);

-- Location: LCFF_X13_Y11_N9
\adc_spi_controller|spi_tx_component|Equal0~0_NEW_REG120\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\);

-- Location: LCCOMB_X13_Y11_N0
\adc_spi_controller|spi_tx_component|sclk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|sclk~0_combout\ = (\adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\ $ (\adc_spi_controller|spi_tx_component|sclk~regout\)) # (!\adc_spi_controller|spi_tx_component|curr_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datab => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\,
	datac => \adc_spi_controller|spi_tx_component|sclk~regout\,
	combout => \adc_spi_controller|spi_tx_component|sclk~0_combout\);

-- Location: LCFF_X13_Y11_N1
\adc_spi_controller|spi_tx_component|sclk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|sclk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|sclk~regout\);

-- Location: LCCOMB_X14_Y11_N4
\adc_spi_controller|spi_tx_component|bits_sent[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|bits_sent[1]~feeder_combout\ = \adc_spi_controller|spi_tx_component|Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_tx_component|Add0~11_combout\,
	combout => \adc_spi_controller|spi_tx_component|bits_sent[1]~feeder_combout\);

-- Location: LCFF_X14_Y11_N5
\adc_spi_controller|spi_tx_component|bits_sent[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|bits_sent[1]~feeder_combout\,
	sclr => \adc_spi_controller|spi_tx_component|ALT_INV_curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(1));

-- Location: LCCOMB_X14_Y11_N16
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

-- Location: LCCOMB_X14_Y11_N18
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

-- Location: LCCOMB_X14_Y11_N30
\adc_spi_controller|spi_tx_component|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~12_combout\ = (\adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\ & ((\adc_spi_controller|spi_tx_component|Add0~4_combout\))) # (!\adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\ & 
-- (\adc_spi_controller|spi_tx_component|bits_sent\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\,
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(2),
	datad => \adc_spi_controller|spi_tx_component|Add0~4_combout\,
	combout => \adc_spi_controller|spi_tx_component|Add0~12_combout\);

-- Location: LCCOMB_X14_Y11_N28
\adc_spi_controller|spi_tx_component|bits_sent[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|bits_sent[2]~feeder_combout\ = \adc_spi_controller|spi_tx_component|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_tx_component|Add0~12_combout\,
	combout => \adc_spi_controller|spi_tx_component|bits_sent[2]~feeder_combout\);

-- Location: LCFF_X14_Y11_N29
\adc_spi_controller|spi_tx_component|bits_sent[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|bits_sent[2]~feeder_combout\,
	sclr => \adc_spi_controller|spi_tx_component|ALT_INV_curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(2));

-- Location: LCCOMB_X14_Y11_N20
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

-- Location: LCCOMB_X14_Y11_N6
\adc_spi_controller|spi_tx_component|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~13_combout\ = (\adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\ & ((\adc_spi_controller|spi_tx_component|Add0~6_combout\))) # (!\adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\ & 
-- (\adc_spi_controller|spi_tx_component|bits_sent\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(3),
	datac => \adc_spi_controller|spi_tx_component|Add0~6_combout\,
	datad => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\,
	combout => \adc_spi_controller|spi_tx_component|Add0~13_combout\);

-- Location: LCCOMB_X13_Y11_N24
\adc_spi_controller|spi_tx_component|bits_sent[3]_NEW99\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|bits_sent[3]_OTERM100\ = (\adc_spi_controller|spi_tx_component|curr_state~regout\ & \adc_spi_controller|spi_tx_component|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datad => \adc_spi_controller|spi_tx_component|Add0~13_combout\,
	combout => \adc_spi_controller|spi_tx_component|bits_sent[3]_OTERM100\);

-- Location: LCFF_X13_Y11_N25
\adc_spi_controller|spi_tx_component|bits_sent[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|bits_sent[3]_OTERM100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(3));

-- Location: LCCOMB_X14_Y11_N22
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

-- Location: LCCOMB_X13_Y11_N16
\adc_spi_controller|spi_tx_component|bits_sent[4]_NEW96\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|bits_sent[4]_OTERM97\ = (\adc_spi_controller|spi_tx_component|curr_state~regout\ & ((\adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\ & ((\adc_spi_controller|spi_tx_component|Add0~8_combout\))) # 
-- (!\adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\ & (\adc_spi_controller|spi_tx_component|bits_sent\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datab => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\,
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	datad => \adc_spi_controller|spi_tx_component|Add0~8_combout\,
	combout => \adc_spi_controller|spi_tx_component|bits_sent[4]_OTERM97\);

-- Location: LCFF_X13_Y11_N17
\adc_spi_controller|spi_tx_component|bits_sent[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|bits_sent[4]_OTERM97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(4));

-- Location: LCCOMB_X14_Y11_N8
\adc_spi_controller|spi_tx_component|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|process_0~1_combout\ = (!\adc_spi_controller|spi_tx_component|process_0~0_OTERM87\ & (\adc_spi_controller|spi_tx_component|sclk~regout\ & !\adc_spi_controller|spi_tx_component|bits_sent\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|process_0~0_OTERM87\,
	datac => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datad => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	combout => \adc_spi_controller|spi_tx_component|process_0~1_combout\);

-- Location: LCCOMB_X14_Y11_N26
\adc_spi_controller|spi_tx_component|bits_sent~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|bits_sent~0_combout\ = (\adc_spi_controller|spi_tx_component|process_0~1_combout\) # (\adc_spi_controller|spi_tx_component|bits_sent\(0) $ (((!\adc_spi_controller|spi_tx_component|sclk~regout\ & 
-- \adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datab => \adc_spi_controller|spi_tx_component|process_0~1_combout\,
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(0),
	datad => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\,
	combout => \adc_spi_controller|spi_tx_component|bits_sent~0_combout\);

-- Location: LCFF_X14_Y11_N27
\adc_spi_controller|spi_tx_component|bits_sent[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|bits_sent~0_combout\,
	sclr => \adc_spi_controller|spi_tx_component|ALT_INV_curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|bits_sent\(0));

-- Location: LCCOMB_X14_Y11_N14
\adc_spi_controller|spi_tx_component|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
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
	cout => \adc_spi_controller|spi_tx_component|Add0~1\);

-- Location: LCCOMB_X14_Y11_N0
\adc_spi_controller|spi_tx_component|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|Add0~11_combout\ = (\adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\ & ((\adc_spi_controller|spi_tx_component|Add0~2_combout\))) # (!\adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\ & 
-- (\adc_spi_controller|spi_tx_component|bits_sent\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|bits_sent\(1),
	datac => \adc_spi_controller|spi_tx_component|Add0~2_combout\,
	datad => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\,
	combout => \adc_spi_controller|spi_tx_component|Add0~11_combout\);

-- Location: LCCOMB_X14_Y11_N24
\adc_spi_controller|spi_tx_component|process_0~0_RTM089\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|process_0~0_RTM089_combout\ = (\adc_spi_controller|spi_tx_component|bits_sent~0_combout\) # ((\adc_spi_controller|spi_tx_component|Add0~11_combout\) # ((\adc_spi_controller|spi_tx_component|Add0~13_combout\) # 
-- (\adc_spi_controller|spi_tx_component|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|bits_sent~0_combout\,
	datab => \adc_spi_controller|spi_tx_component|Add0~11_combout\,
	datac => \adc_spi_controller|spi_tx_component|Add0~13_combout\,
	datad => \adc_spi_controller|spi_tx_component|Add0~12_combout\,
	combout => \adc_spi_controller|spi_tx_component|process_0~0_RTM089_combout\);

-- Location: LCFF_X14_Y11_N25
\adc_spi_controller|spi_tx_component|process_0~0_NEW_REG86\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|process_0~0_RTM089_combout\,
	sclr => \adc_spi_controller|spi_tx_component|ALT_INV_curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|process_0~0_OTERM87\);

-- Location: LCCOMB_X14_Y11_N10
\adc_spi_controller|spi_tx_component|curr_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|curr_state~0_combout\ = ((\adc_spi_controller|spi_tx_component|sclk~regout\) # ((\adc_spi_controller|spi_tx_component|process_0~0_OTERM87\) # (!\adc_spi_controller|spi_tx_component|bits_sent\(4)))) # 
-- (!\adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\,
	datab => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datac => \adc_spi_controller|spi_tx_component|process_0~0_OTERM87\,
	datad => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	combout => \adc_spi_controller|spi_tx_component|curr_state~0_combout\);

-- Location: LCCOMB_X12_Y11_N8
\adc_spi_controller|spi_tx_component|SEND_DONE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|SEND_DONE~0_combout\ = (\adc_spi_controller|spi_tx_component|SEND_DONE~regout\) # (!\adc_spi_controller|spi_tx_component|curr_state~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_spi_controller|spi_tx_component|SEND_DONE~regout\,
	datad => \adc_spi_controller|spi_tx_component|curr_state~0_combout\,
	combout => \adc_spi_controller|spi_tx_component|SEND_DONE~0_combout\);

-- Location: LCFF_X12_Y11_N9
\adc_spi_controller|spi_tx_component|SEND_DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|SEND_DONE~0_combout\,
	sclr => \adc_spi_controller|spi_tx_component|ALT_INV_curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|SEND_DONE~regout\);

-- Location: LCCOMB_X6_Y11_N30
\adc_spi_controller|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector5~0_combout\ = (\adc_spi_controller|curr_state.reading_fifo~regout\) # ((\adc_spi_controller|curr_state.transmiting~regout\ & !\adc_spi_controller|spi_tx_component|SEND_DONE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|curr_state.reading_fifo~regout\,
	datac => \adc_spi_controller|curr_state.transmiting~regout\,
	datad => \adc_spi_controller|spi_tx_component|SEND_DONE~regout\,
	combout => \adc_spi_controller|Selector5~0_combout\);

-- Location: LCFF_X6_Y11_N31
\adc_spi_controller|curr_state.transmiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|curr_state.transmiting~regout\);

-- Location: LCCOMB_X6_Y11_N14
\adc_spi_controller|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector6~0_combout\ = (\adc_spi_controller|spi_tx_component|SEND_DONE~regout\ & ((\adc_spi_controller|curr_state.transmiting~regout\) # ((!\adc_spi_controller|Equal0~1_combout\ & \adc_spi_controller|curr_state.cs_up~regout\)))) # 
-- (!\adc_spi_controller|spi_tx_component|SEND_DONE~regout\ & (!\adc_spi_controller|Equal0~1_combout\ & (\adc_spi_controller|curr_state.cs_up~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|SEND_DONE~regout\,
	datab => \adc_spi_controller|Equal0~1_combout\,
	datac => \adc_spi_controller|curr_state.cs_up~regout\,
	datad => \adc_spi_controller|curr_state.transmiting~regout\,
	combout => \adc_spi_controller|Selector6~0_combout\);

-- Location: LCFF_X6_Y11_N15
\adc_spi_controller|curr_state.cs_up\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|curr_state.cs_up~regout\);

-- Location: LCFF_X6_Y11_N23
\adc_spi_controller|cs_up_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|cs_up_counter~2_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(0));

-- Location: LCCOMB_X6_Y11_N26
\adc_spi_controller|cs_up_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|cs_up_counter~1_combout\ = (\adc_spi_controller|Add0~4_combout\ & !\adc_spi_controller|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Add0~4_combout\,
	datad => \adc_spi_controller|Equal0~1_combout\,
	combout => \adc_spi_controller|cs_up_counter~1_combout\);

-- Location: LCFF_X6_Y11_N27
\adc_spi_controller|cs_up_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|cs_up_counter~1_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(2));

-- Location: LCCOMB_X6_Y11_N2
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

-- Location: LCCOMB_X6_Y11_N4
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

-- Location: LCFF_X6_Y11_N5
\adc_spi_controller|cs_up_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Add0~2_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(1));

-- Location: LCFF_X6_Y11_N9
\adc_spi_controller|cs_up_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Add0~6_combout\,
	ena => \adc_spi_controller|curr_state.cs_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|cs_up_counter\(3));

-- Location: LCCOMB_X6_Y11_N12
\adc_spi_controller|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Equal0~0_combout\ = (!\adc_spi_controller|cs_up_counter\(1) & \adc_spi_controller|cs_up_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_spi_controller|cs_up_counter\(1),
	datad => \adc_spi_controller|cs_up_counter\(2),
	combout => \adc_spi_controller|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y11_N18
\adc_spi_controller|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Equal0~1_combout\ = (\adc_spi_controller|cs_up_counter\(4) & (!\adc_spi_controller|cs_up_counter\(0) & (!\adc_spi_controller|cs_up_counter\(3) & \adc_spi_controller|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|cs_up_counter\(4),
	datab => \adc_spi_controller|cs_up_counter\(0),
	datac => \adc_spi_controller|cs_up_counter\(3),
	datad => \adc_spi_controller|Equal0~0_combout\,
	combout => \adc_spi_controller|Equal0~1_combout\);

-- Location: LCCOMB_X7_Y11_N22
\adc_spi_controller|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector3~0_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & (((!\adc_spi_controller|curr_state.cs_up~regout\)) # (!\adc_spi_controller|Equal0~1_combout\))) # 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & (\adc_spi_controller|curr_state.idle~regout\ & ((!\adc_spi_controller|curr_state.cs_up~regout\) # (!\adc_spi_controller|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datab => \adc_spi_controller|Equal0~1_combout\,
	datac => \adc_spi_controller|curr_state.idle~regout\,
	datad => \adc_spi_controller|curr_state.cs_up~regout\,
	combout => \adc_spi_controller|Selector3~0_combout\);

-- Location: LCFF_X7_Y11_N23
\adc_spi_controller|curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|curr_state.idle~regout\);

-- Location: LCCOMB_X7_Y11_N26
\adc_spi_controller|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector2~0_combout\ = (\adc_spi_controller|curr_state.idle~regout\ & (((\adc_spi_controller|fifo_rdreq~regout\ & \adc_spi_controller|curr_state.cs_up~regout\)))) # (!\adc_spi_controller|curr_state.idle~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\) # ((\adc_spi_controller|fifo_rdreq~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datab => \adc_spi_controller|curr_state.idle~regout\,
	datac => \adc_spi_controller|fifo_rdreq~regout\,
	datad => \adc_spi_controller|curr_state.cs_up~regout\,
	combout => \adc_spi_controller|Selector2~0_combout\);

-- Location: LCFF_X7_Y11_N27
\adc_spi_controller|fifo_rdreq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|fifo_rdreq~regout\);

-- Location: LCCOMB_X8_Y11_N14
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

-- Location: LCFF_X8_Y11_N15
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2));

-- Location: LCCOMB_X8_Y11_N16
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3) $ 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\);

-- Location: LCFF_X8_Y11_N17
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3));

-- Location: LCCOMB_X7_Y11_N10
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) & (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3) & 
-- \this_setup_manager|SPI_send_irq~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	datad => \this_setup_manager|SPI_send_irq~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\);

-- Location: LCCOMB_X7_Y11_N30
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ = (!\adc_spi_controller|fifo_rdreq~regout\ & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\) # ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ & 
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\,
	datab => \adc_spi_controller|fifo_rdreq~regout\,
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\);

-- Location: LCFF_X7_Y11_N31
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\);

-- Location: LCCOMB_X8_Y11_N2
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ = (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ & \this_setup_manager|SPI_send_irq~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \this_setup_manager|SPI_send_irq~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\);

-- Location: LCCOMB_X7_Y11_N14
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & \adc_spi_controller|fifo_rdreq~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \adc_spi_controller|fifo_rdreq~regout\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\);

-- Location: LCFF_X18_Y9_N23
\this_setup_manager|SPI_send_data[0]_NEW_REG0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|WideOr0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[0]_OTERM1\);

-- Location: LCFF_X17_Y9_N27
\this_setup_manager|SPI_send_data[0]_NEW_REG4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[0]_OTERM5\);

-- Location: LCCOMB_X18_Y9_N28
\this_setup_manager|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~6_combout\ = (!\this_setup_manager|config_command_counter\(5) & (\this_setup_manager|Equal0~5_combout\ & (!\this_setup_manager|config_command_counter\(7) & !\this_setup_manager|config_command_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(5),
	datab => \this_setup_manager|Equal0~5_combout\,
	datac => \this_setup_manager|config_command_counter\(7),
	datad => \this_setup_manager|config_command_counter\(8),
	combout => \this_setup_manager|Equal0~6_combout\);

-- Location: LCFF_X18_Y9_N29
\this_setup_manager|SPI_send_data[0]_OTERM3_NEW_REG112\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[0]_OTERM3_OTERM113\);

-- Location: LCCOMB_X18_Y9_N12
\this_setup_manager|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|WideOr0~1_combout\ = (!\this_setup_manager|config_command_counter\(13) & (!\this_setup_manager|config_command_counter\(14) & !\this_setup_manager|config_command_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(13),
	datab => \this_setup_manager|config_command_counter\(14),
	datac => \this_setup_manager|config_command_counter\(9),
	combout => \this_setup_manager|WideOr0~1_combout\);

-- Location: LCFF_X17_Y9_N7
\this_setup_manager|SPI_send_data[0]_OTERM3_NEW_REG110\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_setup_manager|WideOr0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[0]_OTERM3_OTERM111\);

-- Location: LCCOMB_X18_Y9_N30
\this_setup_manager|WideOr0~0_RTM0118\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|WideOr0~0_RTM0118_combout\ = !\this_setup_manager|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_setup_manager|WideOr0~0_combout\,
	combout => \this_setup_manager|WideOr0~0_RTM0118_combout\);

-- Location: LCFF_X18_Y9_N31
\this_setup_manager|SPI_send_data[0]_OTERM3_NEW_REG116\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|WideOr0~0_RTM0118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[0]_OTERM3_OTERM117\);

-- Location: LCCOMB_X17_Y9_N6
\this_setup_manager|WideOr0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|WideOr0~5_combout\ = (\this_setup_manager|SPI_send_data[0]_OTERM3_OTERM117\) # ((\this_setup_manager|SPI_send_data[0]_OTERM3_OTERM115\ & (\this_setup_manager|SPI_send_data[0]_OTERM3_OTERM113\ & 
-- \this_setup_manager|SPI_send_data[0]_OTERM3_OTERM111\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|SPI_send_data[0]_OTERM3_OTERM115\,
	datab => \this_setup_manager|SPI_send_data[0]_OTERM3_OTERM113\,
	datac => \this_setup_manager|SPI_send_data[0]_OTERM3_OTERM111\,
	datad => \this_setup_manager|SPI_send_data[0]_OTERM3_OTERM117\,
	combout => \this_setup_manager|WideOr0~5_combout\);

-- Location: LCCOMB_X17_Y9_N26
\this_setup_manager|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector5~0_combout\ = (\this_setup_manager|Equal0~8_combout\) # ((\this_setup_manager|SPI_send_data[0]_OTERM5\ & ((\this_setup_manager|SPI_send_data[0]_OTERM1\) # (\this_setup_manager|WideOr0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~8_combout\,
	datab => \this_setup_manager|SPI_send_data[0]_OTERM1\,
	datac => \this_setup_manager|SPI_send_data[0]_OTERM5\,
	datad => \this_setup_manager|WideOr0~5_combout\,
	combout => \this_setup_manager|Selector5~0_combout\);

-- Location: LCCOMB_X8_Y11_N18
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

-- Location: LCFF_X8_Y11_N19
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

-- Location: LCCOMB_X8_Y11_N20
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ = (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\)) # (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
-- ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # (GND)))
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ = CARRY((!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # 
-- (!\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1),
	datad => VCC,
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\);

-- Location: LCFF_X8_Y11_N21
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1));

-- Location: LCCOMB_X8_Y11_N22
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

-- Location: LCFF_X8_Y11_N23
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2));

-- Location: LCCOMB_X8_Y11_N24
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3) $ 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3),
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\);

-- Location: LCFF_X8_Y11_N25
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3));

-- Location: LCCOMB_X7_Y11_N2
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0) $ (VCC)
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ = CARRY(\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0),
	datad => VCC,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	cout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\);

-- Location: LCFF_X7_Y11_N3
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

-- Location: LCCOMB_X7_Y11_N4
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

-- Location: LCFF_X7_Y11_N5
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1));

-- Location: LCCOMB_X7_Y11_N6
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

-- Location: LCFF_X7_Y11_N7
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2));

-- Location: LCCOMB_X7_Y11_N8
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) $ 
-- (\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3),
	cin => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\,
	combout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\);

-- Location: LCFF_X7_Y11_N9
\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\,
	ena => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3));

-- Location: LCCOMB_X18_Y10_N0
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

-- Location: LCFF_X17_Y9_N29
\this_setup_manager|SPI_send_data[4]_NEW_REG8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[4]_OTERM9\);

-- Location: LCCOMB_X17_Y9_N0
\this_setup_manager|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal0~7_combout\ = (\this_setup_manager|Equal0~0_combout\ & (!\this_setup_manager|config_command_counter\(0) & (\this_setup_manager|WideOr0~1_combout\ & \this_setup_manager|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|Equal0~0_combout\,
	datab => \this_setup_manager|config_command_counter\(0),
	datac => \this_setup_manager|WideOr0~1_combout\,
	datad => \this_setup_manager|Equal0~5_combout\,
	combout => \this_setup_manager|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y9_N18
\this_setup_manager|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Equal4~0_combout\ = (!\this_setup_manager|config_command_counter\(3) & (\this_setup_manager|config_command_counter\(2) & (!\this_setup_manager|config_command_counter\(1) & \this_setup_manager|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|config_command_counter\(3),
	datab => \this_setup_manager|config_command_counter\(2),
	datac => \this_setup_manager|config_command_counter\(1),
	datad => \this_setup_manager|Equal0~7_combout\,
	combout => \this_setup_manager|Equal4~0_combout\);

-- Location: LCFF_X17_Y9_N19
\this_setup_manager|SPI_send_data[4]_NEW_REG10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[4]_OTERM11\);

-- Location: LCCOMB_X17_Y9_N28
\this_setup_manager|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector3~0_combout\ = (\this_setup_manager|SPI_send_data[4]_OTERM11\) # ((\this_setup_manager|SPI_send_data[4]_OTERM9\ & ((\this_setup_manager|WideOr0~5_combout\) # (\this_setup_manager|SPI_send_data[0]_OTERM1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|WideOr0~5_combout\,
	datab => \this_setup_manager|SPI_send_data[0]_OTERM1\,
	datac => \this_setup_manager|SPI_send_data[4]_OTERM9\,
	datad => \this_setup_manager|SPI_send_data[4]_OTERM11\,
	combout => \this_setup_manager|Selector3~0_combout\);

-- Location: LCFF_X17_Y9_N9
\this_setup_manager|SPI_send_data[10]_NEW_REG12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[10]_OTERM13\);

-- Location: LCCOMB_X17_Y9_N8
\this_setup_manager|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector1~2_combout\ = (\this_setup_manager|SPI_send_data[10]_OTERM15\) # ((\this_setup_manager|SPI_send_data[10]_OTERM13\ & ((\this_setup_manager|SPI_send_data[0]_OTERM1\) # (\this_setup_manager|WideOr0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|SPI_send_data[10]_OTERM15\,
	datab => \this_setup_manager|SPI_send_data[0]_OTERM1\,
	datac => \this_setup_manager|SPI_send_data[10]_OTERM13\,
	datad => \this_setup_manager|WideOr0~5_combout\,
	combout => \this_setup_manager|Selector1~2_combout\);

-- Location: LCFF_X17_Y9_N3
\this_setup_manager|SPI_send_data[15]_NEW_REG16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_setup_manager|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_setup_manager|SPI_send_data[15]_OTERM17\);

-- Location: LCCOMB_X17_Y9_N2
\this_setup_manager|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_setup_manager|Selector0~2_combout\ = (\this_setup_manager|SPI_send_data[15]_OTERM19\) # ((\this_setup_manager|SPI_send_data[15]_OTERM17\ & ((\this_setup_manager|SPI_send_data[0]_OTERM1\) # (\this_setup_manager|WideOr0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_setup_manager|SPI_send_data[15]_OTERM19\,
	datab => \this_setup_manager|SPI_send_data[0]_OTERM1\,
	datac => \this_setup_manager|SPI_send_data[15]_OTERM17\,
	datad => \this_setup_manager|WideOr0~5_combout\,
	combout => \this_setup_manager|Selector0~2_combout\);

-- Location: LCCOMB_X10_Y11_N2
\adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM73~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM73~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(13),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM73~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N8
\adc_spi_controller|spi_tx_component|tx_buf~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~2_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf~1_combout\) # ((\adc_spi_controller|spi_tx_component|curr_state~regout\ & ((\adc_spi_controller|spi_tx_component|process_0~1_combout\))) # 
-- (!\adc_spi_controller|spi_tx_component|curr_state~regout\ & (\adc_spi_controller|tx_send_irq~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf~1_combout\,
	datab => \adc_spi_controller|tx_send_irq~regout\,
	datac => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datad => \adc_spi_controller|spi_tx_component|process_0~1_combout\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\);

-- Location: LCFF_X10_Y11_N3
\adc_spi_controller|spi_tx_component|tx_buf[13]_NEW_REG72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM73~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM73\);

-- Location: LCCOMB_X10_Y11_N26
\adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM69~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM69~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(12),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM69~feeder_combout\);

-- Location: LCFF_X10_Y11_N27
\adc_spi_controller|spi_tx_component|tx_buf[12]_NEW_REG68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM69~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM69\);

-- Location: LCCOMB_X10_Y11_N22
\adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM65~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM65~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(11),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM65~feeder_combout\);

-- Location: LCFF_X10_Y11_N23
\adc_spi_controller|spi_tx_component|tx_buf[11]_NEW_REG64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM65~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM65\);

-- Location: LCCOMB_X10_Y11_N0
\adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM61~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM61~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(10),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM61~feeder_combout\);

-- Location: LCFF_X10_Y11_N1
\adc_spi_controller|spi_tx_component|tx_buf[10]_NEW_REG60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM61~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM61\);

-- Location: LCCOMB_X10_Y11_N18
\adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM57~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM57~feeder_combout\ = \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(9),
	combout => \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM57~feeder_combout\);

-- Location: LCFF_X10_Y11_N19
\adc_spi_controller|spi_tx_component|tx_buf[9]_NEW_REG56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM57~feeder_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM57\);

-- Location: LCFF_X10_Y11_N9
\adc_spi_controller|spi_tx_component|tx_buf[1]_NEW_REG22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	sload => VCC,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\);

-- Location: LCCOMB_X10_Y11_N4
\adc_spi_controller|spi_tx_component|tx_buf~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~8_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & (\adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM59\)) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & 
-- ((\adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM59\,
	datab => \adc_spi_controller|spi_tx_component|tx_buf[9]_OTERM57\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~8_combout\);

-- Location: LCFF_X10_Y11_N5
\adc_spi_controller|spi_tx_component|tx_buf[10]_NEW_REG62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~8_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM63\);

-- Location: LCCOMB_X10_Y11_N16
\adc_spi_controller|spi_tx_component|tx_buf~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~7_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & ((\adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM63\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM61\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[10]_OTERM63\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~7_combout\);

-- Location: LCFF_X10_Y11_N17
\adc_spi_controller|spi_tx_component|tx_buf[11]_NEW_REG66\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~7_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM67\);

-- Location: LCCOMB_X10_Y11_N20
\adc_spi_controller|spi_tx_component|tx_buf~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~6_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & ((\adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM67\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM65\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[11]_OTERM67\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~6_combout\);

-- Location: LCFF_X10_Y11_N21
\adc_spi_controller|spi_tx_component|tx_buf[12]_NEW_REG70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~6_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM71\);

-- Location: LCCOMB_X10_Y11_N14
\adc_spi_controller|spi_tx_component|tx_buf~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~5_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & ((\adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM71\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM69\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[12]_OTERM71\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~5_combout\);

-- Location: LCFF_X10_Y11_N15
\adc_spi_controller|spi_tx_component|tx_buf[13]_NEW_REG74\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~5_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM75\);

-- Location: LCCOMB_X10_Y11_N24
\adc_spi_controller|spi_tx_component|tx_buf~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~4_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & ((\adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM75\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM73\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[13]_OTERM75\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~4_combout\);

-- Location: LCFF_X10_Y11_N25
\adc_spi_controller|spi_tx_component|tx_buf[14]_NEW_REG78\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~4_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM79\);

-- Location: LCCOMB_X10_Y11_N28
\adc_spi_controller|spi_tx_component|tx_buf~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|tx_buf~3_combout\ = (\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & ((\adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM79\))) # (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & 
-- (\adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM77\,
	datac => \adc_spi_controller|spi_tx_component|tx_buf[14]_OTERM79\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	combout => \adc_spi_controller|spi_tx_component|tx_buf~3_combout\);

-- Location: LCFF_X10_Y11_N29
\adc_spi_controller|spi_tx_component|tx_buf[15]_NEW_REG84\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|tx_buf~3_combout\,
	ena => \adc_spi_controller|spi_tx_component|tx_buf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM85\);

-- Location: LCCOMB_X13_Y11_N30
\adc_spi_controller|spi_tx_component|SPI_MOSI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|SPI_MOSI~1_combout\ = (\adc_spi_controller|spi_tx_component|curr_state~regout\ & ((\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & ((\adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM85\))) # 
-- (!\adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\ & (\adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM83\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM83\,
	datab => \adc_spi_controller|spi_tx_component|tx_buf[15]_OTERM85\,
	datac => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datad => \adc_spi_controller|spi_tx_component|tx_buf[1]_OTERM23\,
	combout => \adc_spi_controller|spi_tx_component|SPI_MOSI~1_combout\);

-- Location: LCCOMB_X14_Y11_N12
\adc_spi_controller|spi_tx_component|SPI_MOSI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|SPI_MOSI~2_combout\ = (\adc_spi_controller|spi_tx_component|process_0~1_combout\) # (((!\adc_spi_controller|spi_tx_component|sclk~regout\ & \adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\)) # 
-- (!\adc_spi_controller|spi_tx_component|curr_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|sclk~regout\,
	datab => \adc_spi_controller|spi_tx_component|process_0~1_combout\,
	datac => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datad => \adc_spi_controller|spi_tx_component|Equal0~0_OTERM121\,
	combout => \adc_spi_controller|spi_tx_component|SPI_MOSI~2_combout\);

-- Location: LCFF_X13_Y11_N31
\adc_spi_controller|spi_tx_component|SPI_MOSI~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|SPI_MOSI~1_combout\,
	ena => \adc_spi_controller|spi_tx_component|SPI_MOSI~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|SPI_MOSI~reg0_regout\);

-- Location: LCCOMB_X12_Y11_N14
\adc_spi_controller|spi_tx_component|is_read~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|is_read~0_combout\ = (\adc_spi_controller|tx_send_irq~regout\ & ((\adc_spi_controller|spi_tx_component|curr_state~regout\ & (\adc_spi_controller|spi_tx_component|is_read~regout\)) # 
-- (!\adc_spi_controller|spi_tx_component|curr_state~regout\ & ((\adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(15)))))) # (!\adc_spi_controller|tx_send_irq~regout\ & 
-- (((\adc_spi_controller|spi_tx_component|is_read~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|tx_send_irq~regout\,
	datab => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datac => \adc_spi_controller|spi_tx_component|is_read~regout\,
	datad => \adc_spi_controller|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(15),
	combout => \adc_spi_controller|spi_tx_component|is_read~0_combout\);

-- Location: LCFF_X12_Y11_N15
\adc_spi_controller|spi_tx_component|is_read\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|is_read~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|is_read~regout\);

-- Location: LCCOMB_X13_Y11_N10
\adc_spi_controller|spi_tx_component|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|process_0~2_combout\ = (\adc_spi_controller|spi_tx_component|is_read~regout\ & ((\adc_spi_controller|spi_tx_component|bits_sent\(4)) # (\adc_spi_controller|spi_tx_component|bits_sent\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|bits_sent\(4),
	datac => \adc_spi_controller|spi_tx_component|bits_sent\(3),
	datad => \adc_spi_controller|spi_tx_component|is_read~regout\,
	combout => \adc_spi_controller|spi_tx_component|process_0~2_combout\);

-- Location: LCCOMB_X13_Y11_N22
\adc_spi_controller|spi_tx_component|SPI_MOSI~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|spi_tx_component|SPI_MOSI~3_combout\ = ((\adc_spi_controller|spi_tx_component|process_0~1_combout\) # (!\adc_spi_controller|spi_tx_component|process_0~2_combout\)) # (!\adc_spi_controller|spi_tx_component|curr_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|spi_tx_component|curr_state~regout\,
	datac => \adc_spi_controller|spi_tx_component|process_0~1_combout\,
	datad => \adc_spi_controller|spi_tx_component|process_0~2_combout\,
	combout => \adc_spi_controller|spi_tx_component|SPI_MOSI~3_combout\);

-- Location: LCFF_X13_Y11_N23
\adc_spi_controller|spi_tx_component|SPI_MOSI~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|spi_tx_component|SPI_MOSI~3_combout\,
	ena => \adc_spi_controller|spi_tx_component|SPI_MOSI~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|spi_tx_component|SPI_MOSI~en_regout\);

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

-- Location: LCCOMB_X25_Y6_N8
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

-- Location: LCCOMB_X19_Y10_N12
\this_write_out_mram_manager|address_counter[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[0]~10_combout\ = \this_write_out_mram_manager|address_counter\(0) $ (VCC)
-- \this_write_out_mram_manager|address_counter[0]~11\ = CARRY(\this_write_out_mram_manager|address_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(0),
	datad => VCC,
	combout => \this_write_out_mram_manager|address_counter[0]~10_combout\,
	cout => \this_write_out_mram_manager|address_counter[0]~11\);

-- Location: LCCOMB_X19_Y10_N14
\this_write_out_mram_manager|address_counter[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[1]~13_combout\ = (\this_write_out_mram_manager|address_counter\(1) & (!\this_write_out_mram_manager|address_counter[0]~11\)) # (!\this_write_out_mram_manager|address_counter\(1) & 
-- ((\this_write_out_mram_manager|address_counter[0]~11\) # (GND)))
-- \this_write_out_mram_manager|address_counter[1]~14\ = CARRY((!\this_write_out_mram_manager|address_counter[0]~11\) # (!\this_write_out_mram_manager|address_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(1),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[0]~11\,
	combout => \this_write_out_mram_manager|address_counter[1]~13_combout\,
	cout => \this_write_out_mram_manager|address_counter[1]~14\);

-- Location: LCCOMB_X14_Y10_N0
\UART_Controller_1|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|Selector2~1_combout\ = (\UART_Controller_1|Selector2~0_combout\ & ((\UART_Controller_1|curr_state.idle~regout\) # ((!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & 
-- \UART_Controller_1|next_state.reading_fifo2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|Selector2~0_combout\,
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datac => \UART_Controller_1|next_state.reading_fifo2~regout\,
	datad => \UART_Controller_1|curr_state.idle~regout\,
	combout => \UART_Controller_1|Selector2~1_combout\);

-- Location: LCFF_X14_Y10_N1
\UART_Controller_1|next_state.reading_fifo2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|next_state.reading_fifo2~regout\);

-- Location: LCCOMB_X14_Y10_N28
\UART_Controller_1|curr_state.reading_fifo2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|curr_state.reading_fifo2~feeder_combout\ = \UART_Controller_1|next_state.reading_fifo2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|next_state.reading_fifo2~regout\,
	combout => \UART_Controller_1|curr_state.reading_fifo2~feeder_combout\);

-- Location: LCFF_X14_Y10_N29
\UART_Controller_1|curr_state.reading_fifo2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|curr_state.reading_fifo2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|curr_state.reading_fifo2~regout\);

-- Location: LCCOMB_X14_Y10_N18
\UART_Controller_1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|Selector0~0_combout\ = (\UART_Controller_1|uart_tx_1|TX_BUSY~regout\ & (((!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & !\UART_Controller_1|curr_state.idle~regout\)))) # 
-- (!\UART_Controller_1|uart_tx_1|TX_BUSY~regout\ & ((\UART_Controller_1|curr_state.reading_fifo2~regout\) # ((!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & 
-- !\UART_Controller_1|curr_state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|TX_BUSY~regout\,
	datab => \UART_Controller_1|curr_state.reading_fifo2~regout\,
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \UART_Controller_1|curr_state.idle~regout\,
	combout => \UART_Controller_1|Selector0~0_combout\);

-- Location: LCCOMB_X13_Y10_N26
\UART_Controller_1|uart_tx_1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector1~0_combout\ = (!\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & (!\UART_Controller_1|curr_state.transmiting~regout\ & \UART_Controller_1|curr_state.idle~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datac => \UART_Controller_1|curr_state.transmiting~regout\,
	datad => \UART_Controller_1|curr_state.idle~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector1~0_combout\);

-- Location: LCFF_X13_Y10_N27
\UART_Controller_1|uart_tx_1|tx_curr_state.sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\);

-- Location: LCCOMB_X8_Y10_N22
\UART_Controller_1|uart_tx_1|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector10~0_combout\ = (\UART_Controller_1|uart_tx_1|Add0~10_combout\ & (!\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & (\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & 
-- !\UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Add0~10_combout\,
	datab => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datac => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector10~0_combout\);

-- Location: LCFF_X8_Y10_N23
\UART_Controller_1|uart_tx_1|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(5));

-- Location: LCCOMB_X9_Y10_N18
\UART_Controller_1|uart_tx_1|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector14~0_combout\ = (\UART_Controller_1|uart_tx_1|Add0~2_combout\ & (!\UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\ & (\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & 
-- !\UART_Controller_1|uart_tx_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Add0~2_combout\,
	datab => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	datac => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector14~0_combout\);

-- Location: LCFF_X9_Y10_N19
\UART_Controller_1|uart_tx_1|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(1));

-- Location: LCCOMB_X9_Y10_N14
\UART_Controller_1|uart_tx_1|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector15~0_combout\ = (\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & (!\UART_Controller_1|uart_tx_1|counter\(0) & !\UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datac => \UART_Controller_1|uart_tx_1|counter\(0),
	datad => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector15~0_combout\);

-- Location: LCFF_X9_Y10_N15
\UART_Controller_1|uart_tx_1|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(0));

-- Location: LCCOMB_X8_Y10_N0
\UART_Controller_1|uart_tx_1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~1\ = CARRY(\UART_Controller_1|uart_tx_1|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|counter\(0),
	datad => VCC,
	cout => \UART_Controller_1|uart_tx_1|Add0~1\);

-- Location: LCCOMB_X8_Y10_N4
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

-- Location: LCCOMB_X9_Y10_N12
\UART_Controller_1|uart_tx_1|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector13~0_combout\ = (\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & (\UART_Controller_1|uart_tx_1|Add0~4_combout\ & !\UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datac => \UART_Controller_1|uart_tx_1|Add0~4_combout\,
	datad => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector13~0_combout\);

-- Location: LCFF_X9_Y10_N13
\UART_Controller_1|uart_tx_1|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(2));

-- Location: LCCOMB_X8_Y10_N6
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

-- Location: LCCOMB_X9_Y10_N22
\UART_Controller_1|uart_tx_1|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector12~0_combout\ = (\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & (\UART_Controller_1|uart_tx_1|Add0~6_combout\ & !\UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datac => \UART_Controller_1|uart_tx_1|Add0~6_combout\,
	datad => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector12~0_combout\);

-- Location: LCFF_X9_Y10_N23
\UART_Controller_1|uart_tx_1|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(3));

-- Location: LCCOMB_X8_Y10_N12
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

-- Location: LCCOMB_X8_Y10_N28
\UART_Controller_1|uart_tx_1|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector9~0_combout\ = (!\UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\ & (\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & \UART_Controller_1|uart_tx_1|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	datac => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|Add0~12_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector9~0_combout\);

-- Location: LCFF_X8_Y10_N29
\UART_Controller_1|uart_tx_1|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(6));

-- Location: LCCOMB_X8_Y10_N14
\UART_Controller_1|uart_tx_1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Add0~14_combout\ = (\UART_Controller_1|uart_tx_1|counter\(7) & (!\UART_Controller_1|uart_tx_1|Add0~13\)) # (!\UART_Controller_1|uart_tx_1|counter\(7) & ((\UART_Controller_1|uart_tx_1|Add0~13\) # (GND)))
-- \UART_Controller_1|uart_tx_1|Add0~15\ = CARRY((!\UART_Controller_1|uart_tx_1|Add0~13\) # (!\UART_Controller_1|uart_tx_1|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|counter\(7),
	datad => VCC,
	cin => \UART_Controller_1|uart_tx_1|Add0~13\,
	combout => \UART_Controller_1|uart_tx_1|Add0~14_combout\,
	cout => \UART_Controller_1|uart_tx_1|Add0~15\);

-- Location: LCCOMB_X8_Y10_N26
\UART_Controller_1|uart_tx_1|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector8~0_combout\ = (\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & (!\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & (\UART_Controller_1|uart_tx_1|Add0~14_combout\ & 
-- !\UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datac => \UART_Controller_1|uart_tx_1|Add0~14_combout\,
	datad => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector8~0_combout\);

-- Location: LCFF_X8_Y10_N27
\UART_Controller_1|uart_tx_1|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(7));

-- Location: LCCOMB_X9_Y10_N28
\UART_Controller_1|uart_tx_1|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector7~0_combout\ = (!\UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\ & (!\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & (\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & 
-- \UART_Controller_1|uart_tx_1|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	datab => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datac => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|Add0~16_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector7~0_combout\);

-- Location: LCFF_X9_Y10_N29
\UART_Controller_1|uart_tx_1|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|counter\(8));

-- Location: LCCOMB_X8_Y10_N20
\UART_Controller_1|uart_tx_1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Equal0~1_combout\ = (\UART_Controller_1|uart_tx_1|counter\(4) & (\UART_Controller_1|uart_tx_1|counter\(7) & (\UART_Controller_1|uart_tx_1|counter\(5) & !\UART_Controller_1|uart_tx_1|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|counter\(4),
	datab => \UART_Controller_1|uart_tx_1|counter\(7),
	datac => \UART_Controller_1|uart_tx_1|counter\(5),
	datad => \UART_Controller_1|uart_tx_1|counter\(6),
	combout => \UART_Controller_1|uart_tx_1|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y10_N10
\UART_Controller_1|uart_tx_1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Equal0~0_combout\ = (!\UART_Controller_1|uart_tx_1|counter\(2) & (!\UART_Controller_1|uart_tx_1|counter\(3) & (\UART_Controller_1|uart_tx_1|counter\(0) & !\UART_Controller_1|uart_tx_1|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|counter\(2),
	datab => \UART_Controller_1|uart_tx_1|counter\(3),
	datac => \UART_Controller_1|uart_tx_1|counter\(0),
	datad => \UART_Controller_1|uart_tx_1|counter\(1),
	combout => \UART_Controller_1|uart_tx_1|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y10_N30
\UART_Controller_1|uart_tx_1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Equal0~2_combout\ = (!\UART_Controller_1|uart_tx_1|counter\(9) & (\UART_Controller_1|uart_tx_1|counter\(8) & (\UART_Controller_1|uart_tx_1|Equal0~1_combout\ & \UART_Controller_1|uart_tx_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|counter\(9),
	datab => \UART_Controller_1|uart_tx_1|counter\(8),
	datac => \UART_Controller_1|uart_tx_1|Equal0~1_combout\,
	datad => \UART_Controller_1|uart_tx_1|Equal0~0_combout\,
	combout => \UART_Controller_1|uart_tx_1|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y10_N14
\UART_Controller_1|uart_tx_1|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector1~1_combout\ = (!\UART_Controller_1|curr_state.transmiting~regout\ & \UART_Controller_1|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_Controller_1|curr_state.transmiting~regout\,
	datad => \UART_Controller_1|curr_state.idle~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector1~1_combout\);

-- Location: LCCOMB_X9_Y10_N16
\UART_Controller_1|uart_tx_1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector0~0_combout\ = (\UART_Controller_1|uart_tx_1|tx_curr_state.stop~regout\ & (!\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & ((\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\) # 
-- (\UART_Controller_1|uart_tx_1|Selector1~1_combout\)))) # (!\UART_Controller_1|uart_tx_1|tx_curr_state.stop~regout\ & (((\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\) # (\UART_Controller_1|uart_tx_1|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|tx_curr_state.stop~regout\,
	datab => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datac => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datad => \UART_Controller_1|uart_tx_1|Selector1~1_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector0~0_combout\);

-- Location: LCFF_X9_Y10_N17
\UART_Controller_1|uart_tx_1|tx_curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\);

-- Location: LCCOMB_X13_Y10_N30
\UART_Controller_1|uart_tx_1|TX_BUSY~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|TX_BUSY~feeder_combout\ = \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	combout => \UART_Controller_1|uart_tx_1|TX_BUSY~feeder_combout\);

-- Location: LCFF_X13_Y10_N31
\UART_Controller_1|uart_tx_1|TX_BUSY\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|TX_BUSY~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|TX_BUSY~regout\);

-- Location: LCCOMB_X14_Y10_N26
\UART_Controller_1|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|Selector3~0_combout\ = (\UART_Controller_1|curr_state.transmiting~regout\ & ((\UART_Controller_1|uart_tx_1|TX_BUSY~regout\) # ((!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & 
-- !\UART_Controller_1|curr_state.idle~regout\)))) # (!\UART_Controller_1|curr_state.transmiting~regout\ & (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & 
-- ((!\UART_Controller_1|curr_state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|curr_state.transmiting~regout\,
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datac => \UART_Controller_1|uart_tx_1|TX_BUSY~regout\,
	datad => \UART_Controller_1|curr_state.idle~regout\,
	combout => \UART_Controller_1|Selector3~0_combout\);

-- Location: LCCOMB_X14_Y10_N22
\UART_Controller_1|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|Selector3~1_combout\ = (\UART_Controller_1|next_state.transmiting~regout\ & (((\UART_Controller_1|Selector3~0_combout\) # (\UART_Controller_1|curr_state.reading_fifo2~regout\)))) # (!\UART_Controller_1|next_state.transmiting~regout\ & 
-- (\UART_Controller_1|uart_tx_1|TX_BUSY~regout\ & ((\UART_Controller_1|curr_state.reading_fifo2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|TX_BUSY~regout\,
	datab => \UART_Controller_1|Selector3~0_combout\,
	datac => \UART_Controller_1|next_state.transmiting~regout\,
	datad => \UART_Controller_1|curr_state.reading_fifo2~regout\,
	combout => \UART_Controller_1|Selector3~1_combout\);

-- Location: LCFF_X14_Y10_N23
\UART_Controller_1|next_state.transmiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|next_state.transmiting~regout\);

-- Location: LCCOMB_X14_Y10_N14
\UART_Controller_1|curr_state.transmiting~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|curr_state.transmiting~feeder_combout\ = \UART_Controller_1|next_state.transmiting~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|next_state.transmiting~regout\,
	combout => \UART_Controller_1|curr_state.transmiting~feeder_combout\);

-- Location: LCFF_X14_Y10_N15
\UART_Controller_1|curr_state.transmiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|curr_state.transmiting~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|curr_state.transmiting~regout\);

-- Location: LCCOMB_X14_Y10_N2
\UART_Controller_1|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|Selector0~1_combout\ = (\UART_Controller_1|next_state.idle~regout\ & ((\UART_Controller_1|uart_tx_1|TX_BUSY~regout\) # ((!\UART_Controller_1|curr_state.transmiting~regout\)))) # (!\UART_Controller_1|next_state.idle~regout\ & 
-- (((!\UART_Controller_1|Selector0~0_combout\ & !\UART_Controller_1|curr_state.transmiting~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|TX_BUSY~regout\,
	datab => \UART_Controller_1|Selector0~0_combout\,
	datac => \UART_Controller_1|next_state.idle~regout\,
	datad => \UART_Controller_1|curr_state.transmiting~regout\,
	combout => \UART_Controller_1|Selector0~1_combout\);

-- Location: LCFF_X14_Y10_N3
\UART_Controller_1|next_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|next_state.idle~regout\);

-- Location: LCCOMB_X14_Y10_N30
\UART_Controller_1|curr_state.idle~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|curr_state.idle~feeder_combout\ = \UART_Controller_1|next_state.idle~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|next_state.idle~regout\,
	combout => \UART_Controller_1|curr_state.idle~feeder_combout\);

-- Location: LCFF_X14_Y10_N31
\UART_Controller_1|curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|curr_state.idle~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|curr_state.idle~regout\);

-- Location: LCCOMB_X14_Y10_N16
\UART_Controller_1|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|Selector1~1_combout\ = (\UART_Controller_1|Selector1~0_combout\ & ((\UART_Controller_1|next_state.reading_fifo1~regout\) # ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & 
-- !\UART_Controller_1|curr_state.idle~regout\)))) # (!\UART_Controller_1|Selector1~0_combout\ & (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & ((!\UART_Controller_1|curr_state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|Selector1~0_combout\,
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datac => \UART_Controller_1|next_state.reading_fifo1~regout\,
	datad => \UART_Controller_1|curr_state.idle~regout\,
	combout => \UART_Controller_1|Selector1~1_combout\);

-- Location: LCFF_X14_Y10_N17
\UART_Controller_1|next_state.reading_fifo1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|next_state.reading_fifo1~regout\);

-- Location: LCFF_X14_Y10_N25
\UART_Controller_1|curr_state.reading_fifo1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \UART_Controller_1|next_state.reading_fifo1~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|curr_state.reading_fifo1~regout\);

-- Location: LCCOMB_X13_Y10_N22
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) & 
-- \this_write_out_mram_manager|MRAM_READ_DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datad => \this_write_out_mram_manager|MRAM_READ_DATA~regout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\);

-- Location: LCCOMB_X13_Y10_N18
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ = (!\UART_Controller_1|curr_state.reading_fifo1~regout\ & ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\) # 
-- ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ & \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\,
	datab => \UART_Controller_1|curr_state.reading_fifo1~regout\,
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\);

-- Location: LCFF_X13_Y10_N19
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\);

-- Location: LCCOMB_X13_Y10_N2
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\) # (\this_write_out_mram_manager|MRAM_READ_DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \this_write_out_mram_manager|MRAM_READ_DATA~regout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\);

-- Location: LCCOMB_X13_Y10_N28
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\) # 
-- ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\) # 
-- (!\UART_Controller_1|curr_state.reading_fifo1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\,
	datab => \UART_Controller_1|curr_state.reading_fifo1~regout\,
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\);

-- Location: LCFF_X13_Y10_N29
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\);

-- Location: LCCOMB_X18_Y10_N26
\this_write_out_mram_manager|address_counter~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter~31_combout\ = (!\this_mram_controller|curr_state.idle~regout\ & !\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|curr_state.idle~regout\,
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \this_write_out_mram_manager|address_counter~31_combout\);

-- Location: LCCOMB_X18_Y10_N2
\this_write_out_mram_manager|WRITE_OUT_DONE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|WRITE_OUT_DONE~0_combout\ = (\this_state_manager|curr_state.write_out_mram~regout\ & ((\this_write_out_mram_manager|address_counter~31_combout\ & (!\this_write_out_mram_manager|Equal0~2_combout\)) # 
-- (!\this_write_out_mram_manager|address_counter~31_combout\ & ((\this_write_out_mram_manager|WRITE_OUT_DONE~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|Equal0~2_combout\,
	datab => \this_state_manager|curr_state.write_out_mram~regout\,
	datac => \this_write_out_mram_manager|WRITE_OUT_DONE~regout\,
	datad => \this_write_out_mram_manager|address_counter~31_combout\,
	combout => \this_write_out_mram_manager|WRITE_OUT_DONE~0_combout\);

-- Location: LCFF_X18_Y10_N3
\this_write_out_mram_manager|WRITE_OUT_DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|WRITE_OUT_DONE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|WRITE_OUT_DONE~regout\);

-- Location: LCCOMB_X24_Y10_N12
\this_read_adc_manager|address_counter[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[0]~10_combout\ = \this_read_adc_manager|address_counter\(0) $ (VCC)
-- \this_read_adc_manager|address_counter[0]~11\ = CARRY(\this_read_adc_manager|address_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(0),
	datad => VCC,
	combout => \this_read_adc_manager|address_counter[0]~10_combout\,
	cout => \this_read_adc_manager|address_counter[0]~11\);

-- Location: LCCOMB_X24_Y10_N14
\this_read_adc_manager|address_counter[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[1]~13_combout\ = (\this_read_adc_manager|address_counter\(1) & (!\this_read_adc_manager|address_counter[0]~11\)) # (!\this_read_adc_manager|address_counter\(1) & ((\this_read_adc_manager|address_counter[0]~11\) # 
-- (GND)))
-- \this_read_adc_manager|address_counter[1]~14\ = CARRY((!\this_read_adc_manager|address_counter[0]~11\) # (!\this_read_adc_manager|address_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(1),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[0]~11\,
	combout => \this_read_adc_manager|address_counter[1]~13_combout\,
	cout => \this_read_adc_manager|address_counter[1]~14\);

-- Location: LCCOMB_X18_Y10_N6
\this_state_manager|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector1~1_combout\ = (\this_state_manager|Selector1~0_combout\) # ((!\this_state_manager|curr_state.write_out_mram~regout\ & (\this_state_manager|curr_state.read_adc~regout\ & !\this_read_adc_manager|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|Selector1~0_combout\,
	datab => \this_state_manager|curr_state.write_out_mram~regout\,
	datac => \this_state_manager|curr_state.read_adc~regout\,
	datad => \this_read_adc_manager|Equal0~2_combout\,
	combout => \this_state_manager|Selector1~1_combout\);

-- Location: LCFF_X18_Y10_N7
\this_state_manager|curr_state.read_adc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_state_manager|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|curr_state.read_adc~regout\);

-- Location: LCCOMB_X26_Y6_N18
\this_read_adc_manager|read_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|read_counter~0_combout\ = ((\this_mram_controller|curr_state.idle~regout\ & \this_read_adc_manager|Equal1~0_combout\)) # (!\this_read_adc_manager|read_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|curr_state.idle~regout\,
	datac => \this_read_adc_manager|Equal1~0_combout\,
	datad => \this_read_adc_manager|read_counter\(0),
	combout => \this_read_adc_manager|read_counter~0_combout\);

-- Location: LCCOMB_X27_Y6_N18
\this_read_adc_manager|read_counter[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|read_counter[0]~feeder_combout\ = \this_read_adc_manager|read_counter~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|read_counter~0_combout\,
	combout => \this_read_adc_manager|read_counter[0]~feeder_combout\);

-- Location: LCFF_X27_Y6_N19
\this_read_adc_manager|read_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|read_counter[0]~feeder_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|read_counter\(0));

-- Location: LCCOMB_X27_Y6_N14
\this_read_adc_manager|read_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|read_counter~1_combout\ = (\this_read_adc_manager|read_counter\(1) & ((\this_read_adc_manager|read_counter\(2) $ (\this_read_adc_manager|read_counter\(0))))) # (!\this_read_adc_manager|read_counter\(1) & 
-- (\this_read_adc_manager|read_counter\(2) & ((\this_read_adc_manager|read_counter\(3)) # (!\this_read_adc_manager|read_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|read_counter\(1),
	datab => \this_read_adc_manager|read_counter\(3),
	datac => \this_read_adc_manager|read_counter\(2),
	datad => \this_read_adc_manager|read_counter\(0),
	combout => \this_read_adc_manager|read_counter~1_combout\);

-- Location: LCCOMB_X26_Y6_N26
\this_read_adc_manager|read_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|read_counter~2_combout\ = ((!\this_state_manager|curr_state.read_adc~regout\) # (!\this_read_adc_manager|Equal1~0_combout\)) # (!\this_mram_controller|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|curr_state.idle~regout\,
	datac => \this_read_adc_manager|Equal1~0_combout\,
	datad => \this_state_manager|curr_state.read_adc~regout\,
	combout => \this_read_adc_manager|read_counter~2_combout\);

-- Location: LCFF_X27_Y6_N15
\this_read_adc_manager|read_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|read_counter~1_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|read_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|read_counter\(2));

-- Location: LCCOMB_X27_Y6_N2
\this_read_adc_manager|read_counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|read_counter~4_combout\ = \this_read_adc_manager|read_counter\(3) $ (((\this_read_adc_manager|read_counter\(1) & (\this_read_adc_manager|read_counter\(2) & \this_read_adc_manager|read_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|read_counter\(1),
	datab => \this_read_adc_manager|read_counter\(2),
	datac => \this_read_adc_manager|read_counter\(3),
	datad => \this_read_adc_manager|read_counter\(0),
	combout => \this_read_adc_manager|read_counter~4_combout\);

-- Location: LCFF_X27_Y6_N3
\this_read_adc_manager|read_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|read_counter~4_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|read_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|read_counter\(3));

-- Location: LCCOMB_X27_Y6_N16
\this_read_adc_manager|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|Equal1~0_combout\ = (!\this_read_adc_manager|read_counter\(1) & (!\this_read_adc_manager|read_counter\(3) & (\this_read_adc_manager|read_counter\(2) & \this_read_adc_manager|read_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|read_counter\(1),
	datab => \this_read_adc_manager|read_counter\(3),
	datac => \this_read_adc_manager|read_counter\(2),
	datad => \this_read_adc_manager|read_counter\(0),
	combout => \this_read_adc_manager|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y10_N8
\this_read_adc_manager|address_counter~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter~12_combout\ = ((!\this_mram_controller|curr_state.idle~regout\ & \this_read_adc_manager|Equal1~0_combout\)) # (!\this_state_manager|curr_state.read_adc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|curr_state.idle~regout\,
	datac => \this_read_adc_manager|Equal1~0_combout\,
	datad => \this_state_manager|curr_state.read_adc~regout\,
	combout => \this_read_adc_manager|address_counter~12_combout\);

-- Location: LCFF_X24_Y10_N15
\this_read_adc_manager|address_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|address_counter[1]~13_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(1));

-- Location: LCCOMB_X24_Y10_N16
\this_read_adc_manager|address_counter[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[2]~15_combout\ = (\this_read_adc_manager|address_counter\(2) & (\this_read_adc_manager|address_counter[1]~14\ $ (GND))) # (!\this_read_adc_manager|address_counter\(2) & (!\this_read_adc_manager|address_counter[1]~14\ 
-- & VCC))
-- \this_read_adc_manager|address_counter[2]~16\ = CARRY((\this_read_adc_manager|address_counter\(2) & !\this_read_adc_manager|address_counter[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(2),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[1]~14\,
	combout => \this_read_adc_manager|address_counter[2]~15_combout\,
	cout => \this_read_adc_manager|address_counter[2]~16\);

-- Location: LCCOMB_X24_Y10_N18
\this_read_adc_manager|address_counter[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[3]~17_combout\ = (\this_read_adc_manager|address_counter\(3) & (!\this_read_adc_manager|address_counter[2]~16\)) # (!\this_read_adc_manager|address_counter\(3) & ((\this_read_adc_manager|address_counter[2]~16\) # 
-- (GND)))
-- \this_read_adc_manager|address_counter[3]~18\ = CARRY((!\this_read_adc_manager|address_counter[2]~16\) # (!\this_read_adc_manager|address_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(3),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[2]~16\,
	combout => \this_read_adc_manager|address_counter[3]~17_combout\,
	cout => \this_read_adc_manager|address_counter[3]~18\);

-- Location: LCFF_X24_Y10_N19
\this_read_adc_manager|address_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|address_counter[3]~17_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(3));

-- Location: LCCOMB_X24_Y10_N20
\this_read_adc_manager|address_counter[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[4]~19_combout\ = (\this_read_adc_manager|address_counter\(4) & (\this_read_adc_manager|address_counter[3]~18\ $ (GND))) # (!\this_read_adc_manager|address_counter\(4) & (!\this_read_adc_manager|address_counter[3]~18\ 
-- & VCC))
-- \this_read_adc_manager|address_counter[4]~20\ = CARRY((\this_read_adc_manager|address_counter\(4) & !\this_read_adc_manager|address_counter[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(4),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[3]~18\,
	combout => \this_read_adc_manager|address_counter[4]~19_combout\,
	cout => \this_read_adc_manager|address_counter[4]~20\);

-- Location: LCCOMB_X24_Y10_N22
\this_read_adc_manager|address_counter[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[5]~21_combout\ = (\this_read_adc_manager|address_counter\(5) & (!\this_read_adc_manager|address_counter[4]~20\)) # (!\this_read_adc_manager|address_counter\(5) & ((\this_read_adc_manager|address_counter[4]~20\) # 
-- (GND)))
-- \this_read_adc_manager|address_counter[5]~22\ = CARRY((!\this_read_adc_manager|address_counter[4]~20\) # (!\this_read_adc_manager|address_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(5),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[4]~20\,
	combout => \this_read_adc_manager|address_counter[5]~21_combout\,
	cout => \this_read_adc_manager|address_counter[5]~22\);

-- Location: LCFF_X24_Y10_N23
\this_read_adc_manager|address_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|address_counter[5]~21_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(5));

-- Location: LCCOMB_X24_Y10_N24
\this_read_adc_manager|address_counter[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[6]~23_combout\ = (\this_read_adc_manager|address_counter\(6) & (\this_read_adc_manager|address_counter[5]~22\ $ (GND))) # (!\this_read_adc_manager|address_counter\(6) & (!\this_read_adc_manager|address_counter[5]~22\ 
-- & VCC))
-- \this_read_adc_manager|address_counter[6]~24\ = CARRY((\this_read_adc_manager|address_counter\(6) & !\this_read_adc_manager|address_counter[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(6),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[5]~22\,
	combout => \this_read_adc_manager|address_counter[6]~23_combout\,
	cout => \this_read_adc_manager|address_counter[6]~24\);

-- Location: LCCOMB_X24_Y10_N26
\this_read_adc_manager|address_counter[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[7]~25_combout\ = (\this_read_adc_manager|address_counter\(7) & (!\this_read_adc_manager|address_counter[6]~24\)) # (!\this_read_adc_manager|address_counter\(7) & ((\this_read_adc_manager|address_counter[6]~24\) # 
-- (GND)))
-- \this_read_adc_manager|address_counter[7]~26\ = CARRY((!\this_read_adc_manager|address_counter[6]~24\) # (!\this_read_adc_manager|address_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(7),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[6]~24\,
	combout => \this_read_adc_manager|address_counter[7]~25_combout\,
	cout => \this_read_adc_manager|address_counter[7]~26\);

-- Location: LCFF_X24_Y10_N27
\this_read_adc_manager|address_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|address_counter[7]~25_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(7));

-- Location: LCCOMB_X24_Y10_N28
\this_read_adc_manager|address_counter[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[8]~27_combout\ = (\this_read_adc_manager|address_counter\(8) & (\this_read_adc_manager|address_counter[7]~26\ $ (GND))) # (!\this_read_adc_manager|address_counter\(8) & (!\this_read_adc_manager|address_counter[7]~26\ 
-- & VCC))
-- \this_read_adc_manager|address_counter[8]~28\ = CARRY((\this_read_adc_manager|address_counter\(8) & !\this_read_adc_manager|address_counter[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_read_adc_manager|address_counter\(8),
	datad => VCC,
	cin => \this_read_adc_manager|address_counter[7]~26\,
	combout => \this_read_adc_manager|address_counter[8]~27_combout\,
	cout => \this_read_adc_manager|address_counter[8]~28\);

-- Location: LCFF_X24_Y10_N29
\this_read_adc_manager|address_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|address_counter[8]~27_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(8));

-- Location: LCFF_X24_Y10_N21
\this_read_adc_manager|address_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|address_counter[4]~19_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(4));

-- Location: LCCOMB_X24_Y10_N4
\this_read_adc_manager|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|Equal0~1_combout\ = (\this_read_adc_manager|address_counter\(6) & (\this_read_adc_manager|address_counter\(7) & (!\this_read_adc_manager|address_counter\(4) & \this_read_adc_manager|address_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|address_counter\(6),
	datab => \this_read_adc_manager|address_counter\(7),
	datac => \this_read_adc_manager|address_counter\(4),
	datad => \this_read_adc_manager|address_counter\(5),
	combout => \this_read_adc_manager|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y10_N30
\this_read_adc_manager|address_counter[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|address_counter[9]~29_combout\ = \this_read_adc_manager|address_counter[8]~28\ $ (\this_read_adc_manager|address_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|address_counter\(9),
	cin => \this_read_adc_manager|address_counter[8]~28\,
	combout => \this_read_adc_manager|address_counter[9]~29_combout\);

-- Location: LCFF_X24_Y10_N31
\this_read_adc_manager|address_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|address_counter[9]~29_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(9));

-- Location: LCCOMB_X24_Y10_N10
\this_read_adc_manager|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|Equal0~2_combout\ = (\this_read_adc_manager|Equal0~0_combout\ & (\this_read_adc_manager|address_counter\(8) & (\this_read_adc_manager|Equal0~1_combout\ & \this_read_adc_manager|address_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|Equal0~0_combout\,
	datab => \this_read_adc_manager|address_counter\(8),
	datac => \this_read_adc_manager|Equal0~1_combout\,
	datad => \this_read_adc_manager|address_counter\(9),
	combout => \this_read_adc_manager|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y10_N14
\this_state_manager|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_state_manager|Selector2~0_combout\ = (\this_state_manager|curr_state.read_adc~regout\ & ((\this_read_adc_manager|Equal0~2_combout\) # ((!\this_write_out_mram_manager|WRITE_OUT_DONE~regout\ & \this_state_manager|curr_state.write_out_mram~regout\)))) 
-- # (!\this_state_manager|curr_state.read_adc~regout\ & (!\this_write_out_mram_manager|WRITE_OUT_DONE~regout\ & (\this_state_manager|curr_state.write_out_mram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|curr_state.read_adc~regout\,
	datab => \this_write_out_mram_manager|WRITE_OUT_DONE~regout\,
	datac => \this_state_manager|curr_state.write_out_mram~regout\,
	datad => \this_read_adc_manager|Equal0~2_combout\,
	combout => \this_state_manager|Selector2~0_combout\);

-- Location: LCFF_X18_Y10_N15
\this_state_manager|curr_state.write_out_mram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_state_manager|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_state_manager|curr_state.write_out_mram~regout\);

-- Location: LCCOMB_X19_Y10_N8
\this_write_out_mram_manager|address_counter~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter~12_combout\ = ((!\this_mram_controller|curr_state.idle~regout\ & (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & 
-- \this_write_out_mram_manager|Equal0~2_combout\))) # (!\this_state_manager|curr_state.write_out_mram~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_state_manager|curr_state.write_out_mram~regout\,
	datab => \this_mram_controller|curr_state.idle~regout\,
	datac => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \this_write_out_mram_manager|Equal0~2_combout\,
	combout => \this_write_out_mram_manager|address_counter~12_combout\);

-- Location: LCFF_X19_Y10_N15
\this_write_out_mram_manager|address_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[1]~13_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(1));

-- Location: LCCOMB_X19_Y10_N16
\this_write_out_mram_manager|address_counter[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[2]~15_combout\ = (\this_write_out_mram_manager|address_counter\(2) & (\this_write_out_mram_manager|address_counter[1]~14\ $ (GND))) # (!\this_write_out_mram_manager|address_counter\(2) & 
-- (!\this_write_out_mram_manager|address_counter[1]~14\ & VCC))
-- \this_write_out_mram_manager|address_counter[2]~16\ = CARRY((\this_write_out_mram_manager|address_counter\(2) & !\this_write_out_mram_manager|address_counter[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(2),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[1]~14\,
	combout => \this_write_out_mram_manager|address_counter[2]~15_combout\,
	cout => \this_write_out_mram_manager|address_counter[2]~16\);

-- Location: LCCOMB_X19_Y10_N18
\this_write_out_mram_manager|address_counter[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[3]~17_combout\ = (\this_write_out_mram_manager|address_counter\(3) & (!\this_write_out_mram_manager|address_counter[2]~16\)) # (!\this_write_out_mram_manager|address_counter\(3) & 
-- ((\this_write_out_mram_manager|address_counter[2]~16\) # (GND)))
-- \this_write_out_mram_manager|address_counter[3]~18\ = CARRY((!\this_write_out_mram_manager|address_counter[2]~16\) # (!\this_write_out_mram_manager|address_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(3),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[2]~16\,
	combout => \this_write_out_mram_manager|address_counter[3]~17_combout\,
	cout => \this_write_out_mram_manager|address_counter[3]~18\);

-- Location: LCFF_X19_Y10_N19
\this_write_out_mram_manager|address_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[3]~17_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(3));

-- Location: LCCOMB_X19_Y10_N20
\this_write_out_mram_manager|address_counter[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[4]~19_combout\ = (\this_write_out_mram_manager|address_counter\(4) & (\this_write_out_mram_manager|address_counter[3]~18\ $ (GND))) # (!\this_write_out_mram_manager|address_counter\(4) & 
-- (!\this_write_out_mram_manager|address_counter[3]~18\ & VCC))
-- \this_write_out_mram_manager|address_counter[4]~20\ = CARRY((\this_write_out_mram_manager|address_counter\(4) & !\this_write_out_mram_manager|address_counter[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(4),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[3]~18\,
	combout => \this_write_out_mram_manager|address_counter[4]~19_combout\,
	cout => \this_write_out_mram_manager|address_counter[4]~20\);

-- Location: LCCOMB_X19_Y10_N22
\this_write_out_mram_manager|address_counter[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[5]~21_combout\ = (\this_write_out_mram_manager|address_counter\(5) & (!\this_write_out_mram_manager|address_counter[4]~20\)) # (!\this_write_out_mram_manager|address_counter\(5) & 
-- ((\this_write_out_mram_manager|address_counter[4]~20\) # (GND)))
-- \this_write_out_mram_manager|address_counter[5]~22\ = CARRY((!\this_write_out_mram_manager|address_counter[4]~20\) # (!\this_write_out_mram_manager|address_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(5),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[4]~20\,
	combout => \this_write_out_mram_manager|address_counter[5]~21_combout\,
	cout => \this_write_out_mram_manager|address_counter[5]~22\);

-- Location: LCFF_X19_Y10_N23
\this_write_out_mram_manager|address_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[5]~21_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(5));

-- Location: LCCOMB_X19_Y10_N24
\this_write_out_mram_manager|address_counter[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[6]~23_combout\ = (\this_write_out_mram_manager|address_counter\(6) & (\this_write_out_mram_manager|address_counter[5]~22\ $ (GND))) # (!\this_write_out_mram_manager|address_counter\(6) & 
-- (!\this_write_out_mram_manager|address_counter[5]~22\ & VCC))
-- \this_write_out_mram_manager|address_counter[6]~24\ = CARRY((\this_write_out_mram_manager|address_counter\(6) & !\this_write_out_mram_manager|address_counter[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(6),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[5]~22\,
	combout => \this_write_out_mram_manager|address_counter[6]~23_combout\,
	cout => \this_write_out_mram_manager|address_counter[6]~24\);

-- Location: LCCOMB_X19_Y10_N26
\this_write_out_mram_manager|address_counter[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[7]~25_combout\ = (\this_write_out_mram_manager|address_counter\(7) & (!\this_write_out_mram_manager|address_counter[6]~24\)) # (!\this_write_out_mram_manager|address_counter\(7) & 
-- ((\this_write_out_mram_manager|address_counter[6]~24\) # (GND)))
-- \this_write_out_mram_manager|address_counter[7]~26\ = CARRY((!\this_write_out_mram_manager|address_counter[6]~24\) # (!\this_write_out_mram_manager|address_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(7),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[6]~24\,
	combout => \this_write_out_mram_manager|address_counter[7]~25_combout\,
	cout => \this_write_out_mram_manager|address_counter[7]~26\);

-- Location: LCFF_X19_Y10_N27
\this_write_out_mram_manager|address_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[7]~25_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(7));

-- Location: LCCOMB_X19_Y10_N28
\this_write_out_mram_manager|address_counter[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[8]~27_combout\ = (\this_write_out_mram_manager|address_counter\(8) & (\this_write_out_mram_manager|address_counter[7]~26\ $ (GND))) # (!\this_write_out_mram_manager|address_counter\(8) & 
-- (!\this_write_out_mram_manager|address_counter[7]~26\ & VCC))
-- \this_write_out_mram_manager|address_counter[8]~28\ = CARRY((\this_write_out_mram_manager|address_counter\(8) & !\this_write_out_mram_manager|address_counter[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|address_counter\(8),
	datad => VCC,
	cin => \this_write_out_mram_manager|address_counter[7]~26\,
	combout => \this_write_out_mram_manager|address_counter[8]~27_combout\,
	cout => \this_write_out_mram_manager|address_counter[8]~28\);

-- Location: LCFF_X19_Y10_N29
\this_write_out_mram_manager|address_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[8]~27_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(8));

-- Location: LCCOMB_X19_Y10_N30
\this_write_out_mram_manager|address_counter[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|address_counter[9]~29_combout\ = \this_write_out_mram_manager|address_counter[8]~28\ $ (\this_write_out_mram_manager|address_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \this_write_out_mram_manager|address_counter\(9),
	cin => \this_write_out_mram_manager|address_counter[8]~28\,
	combout => \this_write_out_mram_manager|address_counter[9]~29_combout\);

-- Location: LCFF_X19_Y10_N31
\this_write_out_mram_manager|address_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[9]~29_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(9));

-- Location: LCFF_X19_Y10_N21
\this_write_out_mram_manager|address_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[4]~19_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(4));

-- Location: LCCOMB_X19_Y10_N4
\this_write_out_mram_manager|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|Equal0~1_combout\ = (((\this_write_out_mram_manager|address_counter\(4)) # (!\this_write_out_mram_manager|address_counter\(5))) # (!\this_write_out_mram_manager|address_counter\(7))) # 
-- (!\this_write_out_mram_manager|address_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(6),
	datab => \this_write_out_mram_manager|address_counter\(7),
	datac => \this_write_out_mram_manager|address_counter\(4),
	datad => \this_write_out_mram_manager|address_counter\(5),
	combout => \this_write_out_mram_manager|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y10_N2
\this_write_out_mram_manager|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|Equal0~2_combout\ = (\this_write_out_mram_manager|Equal0~0_combout\) # (((\this_write_out_mram_manager|Equal0~1_combout\) # (!\this_write_out_mram_manager|address_counter\(8))) # 
-- (!\this_write_out_mram_manager|address_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|Equal0~0_combout\,
	datab => \this_write_out_mram_manager|address_counter\(9),
	datac => \this_write_out_mram_manager|Equal0~1_combout\,
	datad => \this_write_out_mram_manager|address_counter\(8),
	combout => \this_write_out_mram_manager|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y10_N30
\this_write_out_mram_manager|UART_DATA_IRQ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_write_out_mram_manager|UART_DATA_IRQ~0_combout\ = (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & \this_write_out_mram_manager|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \this_write_out_mram_manager|Equal0~2_combout\,
	combout => \this_write_out_mram_manager|UART_DATA_IRQ~0_combout\);

-- Location: LCFF_X18_Y10_N31
\this_write_out_mram_manager|MRAM_READ_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|UART_DATA_IRQ~0_combout\,
	sdata => \~GND~combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	sload => \this_mram_controller|curr_state.idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|MRAM_READ_DATA~regout\);

-- Location: LCCOMB_X26_Y6_N30
\this_read_adc_manager|MRAM_WRITE_DATA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_WRITE_DATA~0_combout\ = (\this_read_adc_manager|Equal1~0_combout\ & ((\this_read_adc_manager|MRAM_WRITE_DATA~regout\) # (!\this_mram_controller|curr_state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|Equal1~0_combout\,
	datac => \this_mram_controller|curr_state.idle~regout\,
	datad => \this_read_adc_manager|MRAM_WRITE_DATA~regout\,
	combout => \this_read_adc_manager|MRAM_WRITE_DATA~0_combout\);

-- Location: LCCOMB_X26_Y6_N28
\this_read_adc_manager|MRAM_WRITE_DATA~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_WRITE_DATA~feeder_combout\ = \this_read_adc_manager|MRAM_WRITE_DATA~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_WRITE_DATA~0_combout\,
	combout => \this_read_adc_manager|MRAM_WRITE_DATA~feeder_combout\);

-- Location: LCFF_X26_Y6_N29
\this_read_adc_manager|MRAM_WRITE_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|MRAM_WRITE_DATA~feeder_combout\,
	ena => \this_state_manager|curr_state.read_adc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_WRITE_DATA~regout\);

-- Location: LCCOMB_X22_Y10_N8
\this_mram_controller|curr_state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~8_combout\ = ((!\this_mram_controller|curr_state.idle~regout\ & ((\this_write_out_mram_manager|MRAM_READ_DATA~regout\) # (\this_read_adc_manager|MRAM_WRITE_DATA~regout\)))) # (!\this_mram_controller|curr_state~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state~6_combout\,
	datab => \this_write_out_mram_manager|MRAM_READ_DATA~regout\,
	datac => \this_mram_controller|curr_state.idle~regout\,
	datad => \this_read_adc_manager|MRAM_WRITE_DATA~regout\,
	combout => \this_mram_controller|curr_state~8_combout\);

-- Location: LCFF_X22_Y10_N9
\this_mram_controller|curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|curr_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|curr_state.idle~regout\);

-- Location: LCCOMB_X26_Y6_N22
\this_read_adc_manager|MRAM_DATA_OUT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\ = (\this_read_adc_manager|Equal1~0_combout\ & (!\this_mram_controller|curr_state.idle~regout\ & \this_state_manager|curr_state.read_adc~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_read_adc_manager|Equal1~0_combout\,
	datab => \this_mram_controller|curr_state.idle~regout\,
	datad => \this_state_manager|curr_state.read_adc~regout\,
	combout => \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\);

-- Location: LCFF_X25_Y6_N9
\this_read_adc_manager|MRAM_DATA_OUT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[0]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(0));

-- Location: LCCOMB_X21_Y6_N0
\this_mram_controller|MRAM_D[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[0]~reg0feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(0),
	combout => \this_mram_controller|MRAM_D[0]~reg0feeder_combout\);

-- Location: LCCOMB_X22_Y10_N30
\this_mram_controller|curr_state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~5_combout\ = (\this_write_out_mram_manager|MRAM_READ_DATA~regout\ & !\this_read_adc_manager|MRAM_WRITE_DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_write_out_mram_manager|MRAM_READ_DATA~regout\,
	datad => \this_read_adc_manager|MRAM_WRITE_DATA~regout\,
	combout => \this_mram_controller|curr_state~5_combout\);

-- Location: LCCOMB_X20_Y10_N12
\this_mram_controller|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|counter~0_combout\ = (!\this_mram_controller|counter\(0) & \this_mram_controller|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_mram_controller|counter\(0),
	datad => \this_mram_controller|curr_state.idle~regout\,
	combout => \this_mram_controller|counter~0_combout\);

-- Location: LCFF_X20_Y10_N13
\this_mram_controller|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|counter\(0));

-- Location: LCCOMB_X20_Y10_N14
\this_mram_controller|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Mux21~0_combout\ = \this_mram_controller|counter\(1) $ (\this_mram_controller|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_mram_controller|counter\(1),
	datad => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|Mux21~0_combout\);

-- Location: LCFF_X20_Y10_N15
\this_mram_controller|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Mux21~0_combout\,
	sclr => \this_mram_controller|ALT_INV_curr_state.idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|counter\(1));

-- Location: LCCOMB_X22_Y10_N6
\this_mram_controller|curr_state~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~6_combout\ = ((!\this_mram_controller|counter\(2) & (\this_mram_controller|counter\(1) & \this_mram_controller|counter\(0)))) # (!\this_mram_controller|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(2),
	datab => \this_mram_controller|curr_state.idle~regout\,
	datac => \this_mram_controller|counter\(1),
	datad => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|curr_state~6_combout\);

-- Location: LCFF_X22_Y10_N31
\this_mram_controller|curr_state.reading\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|curr_state~5_combout\,
	sclr => \this_mram_controller|curr_state.idle~regout\,
	ena => \this_mram_controller|curr_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|curr_state.reading~regout\);

-- Location: LCCOMB_X21_Y10_N22
\this_mram_controller|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector39~0_combout\ = (!\this_mram_controller|curr_state.reading~regout\) # (!\this_mram_controller|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(2),
	datad => \this_mram_controller|curr_state.reading~regout\,
	combout => \this_mram_controller|Selector39~0_combout\);

-- Location: LCFF_X21_Y6_N1
\this_mram_controller|MRAM_D[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[0]~reg0feeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[0]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N24
\this_mram_controller|curr_state~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|curr_state~7_combout\ = (!\this_mram_controller|curr_state.idle~regout\ & \this_read_adc_manager|MRAM_WRITE_DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \this_mram_controller|curr_state.idle~regout\,
	datad => \this_read_adc_manager|MRAM_WRITE_DATA~regout\,
	combout => \this_mram_controller|curr_state~7_combout\);

-- Location: LCFF_X22_Y10_N25
\this_mram_controller|curr_state.writing\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|curr_state~7_combout\,
	ena => \this_mram_controller|curr_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|curr_state.writing~regout\);

-- Location: LCCOMB_X21_Y10_N24
\this_mram_controller|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector24~0_combout\ = (!\this_mram_controller|counter\(2) & (\this_mram_controller|curr_state.writing~regout\ & (\this_mram_controller|counter\(0) $ (\this_mram_controller|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(2),
	datab => \this_mram_controller|counter\(0),
	datac => \this_mram_controller|counter\(1),
	datad => \this_mram_controller|curr_state.writing~regout\,
	combout => \this_mram_controller|Selector24~0_combout\);

-- Location: LCFF_X21_Y10_N13
\this_mram_controller|MRAM_D[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[0]~en_regout\);

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

-- Location: LCCOMB_X26_Y6_N20
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

-- Location: LCFF_X26_Y6_N21
\this_read_adc_manager|MRAM_DATA_OUT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[1]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(1));

-- Location: LCCOMB_X25_Y10_N10
\this_mram_controller|MRAM_D[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[1]~reg0feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(1),
	combout => \this_mram_controller|MRAM_D[1]~reg0feeder_combout\);

-- Location: LCFF_X25_Y10_N11
\this_mram_controller|MRAM_D[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[1]~reg0feeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[1]~reg0_regout\);

-- Location: LCFF_X21_Y10_N21
\this_mram_controller|MRAM_D[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[1]~en_regout\);

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

-- Location: LCFF_X26_Y6_N23
\this_read_adc_manager|MRAM_DATA_OUT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	sdata => \ADC_BIT_A~combout\(2),
	sload => VCC,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(2));

-- Location: LCFF_X25_Y6_N13
\this_mram_controller|MRAM_D[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_read_adc_manager|MRAM_DATA_OUT\(2),
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[2]~reg0_regout\);

-- Location: LCFF_X21_Y10_N27
\this_mram_controller|MRAM_D[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[2]~en_regout\);

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

-- Location: LCCOMB_X25_Y6_N22
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

-- Location: LCFF_X25_Y6_N23
\this_read_adc_manager|MRAM_DATA_OUT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[3]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(3));

-- Location: LCCOMB_X21_Y10_N2
\this_mram_controller|MRAM_D[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[3]~reg0feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(3),
	combout => \this_mram_controller|MRAM_D[3]~reg0feeder_combout\);

-- Location: LCFF_X21_Y10_N3
\this_mram_controller|MRAM_D[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[3]~reg0feeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[3]~reg0_regout\);

-- Location: LCFF_X21_Y10_N19
\this_mram_controller|MRAM_D[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[3]~en_regout\);

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

-- Location: LCCOMB_X26_Y6_N24
\this_read_adc_manager|MRAM_DATA_OUT[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_read_adc_manager|MRAM_DATA_OUT[4]~feeder_combout\ = \ADC_BIT_A~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_BIT_A~combout\(4),
	combout => \this_read_adc_manager|MRAM_DATA_OUT[4]~feeder_combout\);

-- Location: LCFF_X26_Y6_N25
\this_read_adc_manager|MRAM_DATA_OUT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[4]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(4));

-- Location: LCCOMB_X22_Y9_N4
\this_mram_controller|MRAM_D[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[4]~reg0feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(4),
	combout => \this_mram_controller|MRAM_D[4]~reg0feeder_combout\);

-- Location: LCFF_X22_Y9_N5
\this_mram_controller|MRAM_D[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[4]~reg0feeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[4]~reg0_regout\);

-- Location: LCFF_X21_Y10_N5
\this_mram_controller|MRAM_D[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[4]~en_regout\);

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

-- Location: LCCOMB_X25_Y6_N24
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

-- Location: LCFF_X25_Y6_N25
\this_read_adc_manager|MRAM_DATA_OUT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[5]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(5));

-- Location: LCCOMB_X21_Y10_N6
\this_mram_controller|MRAM_D[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[5]~reg0feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(5),
	combout => \this_mram_controller|MRAM_D[5]~reg0feeder_combout\);

-- Location: LCFF_X21_Y10_N7
\this_mram_controller|MRAM_D[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[5]~reg0feeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[5]~reg0_regout\);

-- Location: LCFF_X21_Y10_N31
\this_mram_controller|MRAM_D[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[5]~en_regout\);

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

-- Location: LCCOMB_X26_Y6_N16
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

-- Location: LCFF_X26_Y6_N17
\this_read_adc_manager|MRAM_DATA_OUT[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[6]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(6));

-- Location: LCCOMB_X22_Y9_N0
\this_mram_controller|MRAM_D[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[6]~reg0feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(6),
	combout => \this_mram_controller|MRAM_D[6]~reg0feeder_combout\);

-- Location: LCFF_X22_Y9_N1
\this_mram_controller|MRAM_D[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[6]~reg0feeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[6]~reg0_regout\);

-- Location: LCFF_X21_Y10_N25
\this_mram_controller|MRAM_D[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector24~0_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[6]~en_regout\);

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

-- Location: LCCOMB_X25_Y6_N10
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

-- Location: LCFF_X25_Y6_N11
\this_read_adc_manager|MRAM_DATA_OUT[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[7]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(7));

-- Location: LCFF_X21_Y6_N11
\this_mram_controller|MRAM_D[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_read_adc_manager|MRAM_DATA_OUT\(7),
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[7]~reg0_regout\);

-- Location: LCFF_X21_Y10_N9
\this_mram_controller|MRAM_D[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[7]~en_regout\);

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

-- Location: LCCOMB_X25_Y6_N26
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

-- Location: LCFF_X25_Y6_N27
\this_read_adc_manager|MRAM_DATA_OUT[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|MRAM_DATA_OUT[8]~feeder_combout\,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(8));

-- Location: LCCOMB_X25_Y6_N4
\this_mram_controller|MRAM_D[8]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[8]~reg0feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(8),
	combout => \this_mram_controller|MRAM_D[8]~reg0feeder_combout\);

-- Location: LCFF_X25_Y6_N5
\this_mram_controller|MRAM_D[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[8]~reg0feeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[8]~reg0_regout\);

-- Location: LCFF_X21_Y10_N29
\this_mram_controller|MRAM_D[8]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[8]~en_regout\);

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

-- Location: LCFF_X25_Y6_N19
\this_read_adc_manager|MRAM_DATA_OUT[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	sdata => \ADC_BIT_A~combout\(9),
	sload => VCC,
	ena => \this_read_adc_manager|MRAM_DATA_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|MRAM_DATA_OUT\(9));

-- Location: LCCOMB_X21_Y6_N6
\this_mram_controller|MRAM_D[9]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|MRAM_D[9]~reg0feeder_combout\ = \this_read_adc_manager|MRAM_DATA_OUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \this_read_adc_manager|MRAM_DATA_OUT\(9),
	combout => \this_mram_controller|MRAM_D[9]~reg0feeder_combout\);

-- Location: LCFF_X21_Y6_N7
\this_mram_controller|MRAM_D[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[9]~reg0feeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[9]~reg0_regout\);

-- Location: LCFF_X21_Y10_N1
\this_mram_controller|MRAM_D[9]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[9]~en_regout\);

-- Location: LCCOMB_X21_Y6_N12
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

-- Location: LCFF_X21_Y6_N13
\this_mram_controller|MRAM_D[10]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[10]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[10]~en_regout\);

-- Location: LCFF_X21_Y10_N15
\this_mram_controller|MRAM_D[11]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[11]~en_regout\);

-- Location: LCCOMB_X21_Y6_N16
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

-- Location: LCFF_X21_Y6_N17
\this_mram_controller|MRAM_D[12]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|MRAM_D[12]~enfeeder_combout\,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[12]~en_regout\);

-- Location: LCFF_X21_Y10_N17
\this_mram_controller|MRAM_D[13]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[13]~en_regout\);

-- Location: LCFF_X21_Y10_N23
\this_mram_controller|MRAM_D[14]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[14]~en_regout\);

-- Location: LCFF_X21_Y10_N11
\this_mram_controller|MRAM_D[15]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \this_mram_controller|Selector24~0_combout\,
	sload => VCC,
	ena => \this_mram_controller|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_D[15]~en_regout\);

-- Location: LCCOMB_X6_Y11_N28
\adc_spi_controller|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_spi_controller|Selector0~1_combout\ = (!\adc_spi_controller|Selector0~0_combout\ & ((\adc_spi_controller|SPI_CS~regout\) # ((!\adc_spi_controller|curr_state.reading_fifo~regout\ & !\adc_spi_controller|curr_state.cs_up~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_spi_controller|Selector0~0_combout\,
	datab => \adc_spi_controller|curr_state.reading_fifo~regout\,
	datac => \adc_spi_controller|SPI_CS~regout\,
	datad => \adc_spi_controller|curr_state.cs_up~regout\,
	combout => \adc_spi_controller|Selector0~1_combout\);

-- Location: LCFF_X6_Y11_N29
\adc_spi_controller|SPI_CS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \adc_spi_controller|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_spi_controller|SPI_CS~regout\);

-- Location: LCCOMB_X22_Y10_N18
\this_mram_controller|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector1~0_combout\ = (\this_mram_controller|counter\(2)) # (((\this_mram_controller|counter\(0)) # (!\this_mram_controller|counter\(1))) # (!\this_mram_controller|curr_state.reading~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(2),
	datab => \this_mram_controller|curr_state.reading~regout\,
	datac => \this_mram_controller|counter\(1),
	datad => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|Selector1~0_combout\);

-- Location: LCCOMB_X22_Y10_N12
\this_mram_controller|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector2~0_combout\ = (\this_mram_controller|curr_state.reading~regout\ & ((\this_mram_controller|counter\(2)) # ((!\this_mram_controller|counter\(0)) # (!\this_mram_controller|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(2),
	datab => \this_mram_controller|curr_state.reading~regout\,
	datac => \this_mram_controller|counter\(1),
	datad => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|Selector2~0_combout\);

-- Location: LCCOMB_X22_Y10_N0
\this_mram_controller|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector1~1_combout\ = (\this_mram_controller|curr_state.writing~regout\ & (((\this_mram_controller|MRAM_OUTPUT_EN~regout\)) # (!\this_mram_controller|Selector1~0_combout\))) # (!\this_mram_controller|curr_state.writing~regout\ & 
-- (\this_mram_controller|Selector2~0_combout\ & ((\this_mram_controller|MRAM_OUTPUT_EN~regout\) # (!\this_mram_controller|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.writing~regout\,
	datab => \this_mram_controller|Selector1~0_combout\,
	datac => \this_mram_controller|MRAM_OUTPUT_EN~regout\,
	datad => \this_mram_controller|Selector2~0_combout\,
	combout => \this_mram_controller|Selector1~1_combout\);

-- Location: LCFF_X22_Y10_N1
\this_mram_controller|MRAM_OUTPUT_EN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_OUTPUT_EN~regout\);

-- Location: LCFF_X24_Y10_N13
\this_read_adc_manager|address_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|address_counter[0]~10_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(0));

-- Location: LCFF_X19_Y10_N13
\this_write_out_mram_manager|address_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[0]~10_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(0));

-- Location: LCCOMB_X20_Y10_N10
\this_mram_controller|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector22~0_combout\ = (\this_mram_controller|curr_state.reading~regout\ & ((\this_write_out_mram_manager|address_counter\(0)) # ((\this_read_adc_manager|address_counter\(0) & \this_mram_controller|curr_state.writing~regout\)))) # 
-- (!\this_mram_controller|curr_state.reading~regout\ & (\this_read_adc_manager|address_counter\(0) & (\this_mram_controller|curr_state.writing~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_read_adc_manager|address_counter\(0),
	datac => \this_mram_controller|curr_state.writing~regout\,
	datad => \this_write_out_mram_manager|address_counter\(0),
	combout => \this_mram_controller|Selector22~0_combout\);

-- Location: LCCOMB_X20_Y10_N30
\this_mram_controller|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Add0~0_combout\ = \this_mram_controller|counter\(2) $ (((\this_mram_controller|counter\(1) & \this_mram_controller|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|counter\(2),
	datad => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|Add0~0_combout\);

-- Location: LCFF_X20_Y10_N31
\this_mram_controller|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Add0~0_combout\,
	sclr => \this_mram_controller|ALT_INV_curr_state.idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|counter\(2));

-- Location: LCCOMB_X20_Y10_N16
\this_mram_controller|Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector22~1_combout\ = ((!\this_mram_controller|counter\(0) & (!\this_mram_controller|counter\(1) & !\this_mram_controller|counter\(2)))) # (!\this_mram_controller|curr_state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(0),
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|counter\(2),
	datad => \this_mram_controller|curr_state.idle~regout\,
	combout => \this_mram_controller|Selector22~1_combout\);

-- Location: LCFF_X20_Y10_N11
\this_mram_controller|MRAM_A[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector22~0_combout\,
	ena => \this_mram_controller|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_A\(0));

-- Location: LCCOMB_X20_Y10_N26
\this_mram_controller|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector21~0_combout\ = (\this_mram_controller|curr_state.reading~regout\ & ((\this_write_out_mram_manager|address_counter\(1)) # ((\this_read_adc_manager|address_counter\(1) & \this_mram_controller|curr_state.writing~regout\)))) # 
-- (!\this_mram_controller|curr_state.reading~regout\ & (\this_read_adc_manager|address_counter\(1) & (\this_mram_controller|curr_state.writing~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_read_adc_manager|address_counter\(1),
	datac => \this_mram_controller|curr_state.writing~regout\,
	datad => \this_write_out_mram_manager|address_counter\(1),
	combout => \this_mram_controller|Selector21~0_combout\);

-- Location: LCFF_X20_Y10_N27
\this_mram_controller|MRAM_A[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector21~0_combout\,
	ena => \this_mram_controller|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_A\(1));

-- Location: LCFF_X24_Y10_N17
\this_read_adc_manager|address_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|address_counter[2]~15_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(2));

-- Location: LCFF_X19_Y10_N17
\this_write_out_mram_manager|address_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[2]~15_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(2));

-- Location: LCCOMB_X20_Y10_N4
\this_mram_controller|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector20~0_combout\ = (\this_mram_controller|curr_state.reading~regout\ & ((\this_write_out_mram_manager|address_counter\(2)) # ((\this_read_adc_manager|address_counter\(2) & \this_mram_controller|curr_state.writing~regout\)))) # 
-- (!\this_mram_controller|curr_state.reading~regout\ & (\this_read_adc_manager|address_counter\(2) & (\this_mram_controller|curr_state.writing~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_read_adc_manager|address_counter\(2),
	datac => \this_mram_controller|curr_state.writing~regout\,
	datad => \this_write_out_mram_manager|address_counter\(2),
	combout => \this_mram_controller|Selector20~0_combout\);

-- Location: LCFF_X20_Y10_N5
\this_mram_controller|MRAM_A[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector20~0_combout\,
	ena => \this_mram_controller|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_A\(2));

-- Location: LCCOMB_X20_Y10_N24
\this_mram_controller|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector19~0_combout\ = (\this_mram_controller|curr_state.reading~regout\ & ((\this_write_out_mram_manager|address_counter\(3)) # ((\this_mram_controller|curr_state.writing~regout\ & \this_read_adc_manager|address_counter\(3))))) # 
-- (!\this_mram_controller|curr_state.reading~regout\ & (((\this_mram_controller|curr_state.writing~regout\ & \this_read_adc_manager|address_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_write_out_mram_manager|address_counter\(3),
	datac => \this_mram_controller|curr_state.writing~regout\,
	datad => \this_read_adc_manager|address_counter\(3),
	combout => \this_mram_controller|Selector19~0_combout\);

-- Location: LCFF_X20_Y10_N25
\this_mram_controller|MRAM_A[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector19~0_combout\,
	ena => \this_mram_controller|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_A\(3));

-- Location: LCCOMB_X20_Y10_N2
\this_mram_controller|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector18~0_combout\ = (\this_write_out_mram_manager|address_counter\(4) & ((\this_mram_controller|curr_state.reading~regout\) # ((\this_read_adc_manager|address_counter\(4) & \this_mram_controller|curr_state.writing~regout\)))) # 
-- (!\this_write_out_mram_manager|address_counter\(4) & (\this_read_adc_manager|address_counter\(4) & (\this_mram_controller|curr_state.writing~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(4),
	datab => \this_read_adc_manager|address_counter\(4),
	datac => \this_mram_controller|curr_state.writing~regout\,
	datad => \this_mram_controller|curr_state.reading~regout\,
	combout => \this_mram_controller|Selector18~0_combout\);

-- Location: LCFF_X20_Y10_N3
\this_mram_controller|MRAM_A[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector18~0_combout\,
	ena => \this_mram_controller|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_A\(4));

-- Location: LCCOMB_X18_Y10_N22
\this_mram_controller|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector17~0_combout\ = (\this_write_out_mram_manager|address_counter\(5) & ((\this_mram_controller|curr_state.reading~regout\) # ((\this_mram_controller|curr_state.writing~regout\ & \this_read_adc_manager|address_counter\(5))))) # 
-- (!\this_write_out_mram_manager|address_counter\(5) & (((\this_mram_controller|curr_state.writing~regout\ & \this_read_adc_manager|address_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_write_out_mram_manager|address_counter\(5),
	datab => \this_mram_controller|curr_state.reading~regout\,
	datac => \this_mram_controller|curr_state.writing~regout\,
	datad => \this_read_adc_manager|address_counter\(5),
	combout => \this_mram_controller|Selector17~0_combout\);

-- Location: LCFF_X18_Y10_N23
\this_mram_controller|MRAM_A[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector17~0_combout\,
	ena => \this_mram_controller|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_A\(5));

-- Location: LCFF_X19_Y10_N25
\this_write_out_mram_manager|address_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_write_out_mram_manager|address_counter[6]~23_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.write_out_mram~regout\,
	ena => \this_write_out_mram_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_write_out_mram_manager|address_counter\(6));

-- Location: LCFF_X24_Y10_N25
\this_read_adc_manager|address_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ADC_DCLKA~combout\,
	datain => \this_read_adc_manager|address_counter[6]~23_combout\,
	sclr => \this_state_manager|ALT_INV_curr_state.read_adc~regout\,
	ena => \this_read_adc_manager|address_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_read_adc_manager|address_counter\(6));

-- Location: LCCOMB_X20_Y10_N0
\this_mram_controller|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector16~0_combout\ = (\this_mram_controller|curr_state.writing~regout\ & ((\this_read_adc_manager|address_counter\(6)) # ((\this_write_out_mram_manager|address_counter\(6) & \this_mram_controller|curr_state.reading~regout\)))) # 
-- (!\this_mram_controller|curr_state.writing~regout\ & (\this_write_out_mram_manager|address_counter\(6) & ((\this_mram_controller|curr_state.reading~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.writing~regout\,
	datab => \this_write_out_mram_manager|address_counter\(6),
	datac => \this_read_adc_manager|address_counter\(6),
	datad => \this_mram_controller|curr_state.reading~regout\,
	combout => \this_mram_controller|Selector16~0_combout\);

-- Location: LCFF_X20_Y10_N1
\this_mram_controller|MRAM_A[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector16~0_combout\,
	ena => \this_mram_controller|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_A\(6));

-- Location: LCCOMB_X18_Y10_N20
\this_mram_controller|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector15~0_combout\ = (\this_mram_controller|curr_state.writing~regout\ & ((\this_read_adc_manager|address_counter\(7)) # ((\this_write_out_mram_manager|address_counter\(7) & \this_mram_controller|curr_state.reading~regout\)))) # 
-- (!\this_mram_controller|curr_state.writing~regout\ & (\this_write_out_mram_manager|address_counter\(7) & (\this_mram_controller|curr_state.reading~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.writing~regout\,
	datab => \this_write_out_mram_manager|address_counter\(7),
	datac => \this_mram_controller|curr_state.reading~regout\,
	datad => \this_read_adc_manager|address_counter\(7),
	combout => \this_mram_controller|Selector15~0_combout\);

-- Location: LCFF_X18_Y10_N21
\this_mram_controller|MRAM_A[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector15~0_combout\,
	ena => \this_mram_controller|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_A\(7));

-- Location: LCCOMB_X18_Y10_N4
\this_mram_controller|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector14~0_combout\ = (\this_mram_controller|curr_state.reading~regout\ & ((\this_write_out_mram_manager|address_counter\(8)) # ((\this_mram_controller|curr_state.writing~regout\ & \this_read_adc_manager|address_counter\(8))))) # 
-- (!\this_mram_controller|curr_state.reading~regout\ & (((\this_mram_controller|curr_state.writing~regout\ & \this_read_adc_manager|address_counter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_write_out_mram_manager|address_counter\(8),
	datac => \this_mram_controller|curr_state.writing~regout\,
	datad => \this_read_adc_manager|address_counter\(8),
	combout => \this_mram_controller|Selector14~0_combout\);

-- Location: LCFF_X18_Y10_N5
\this_mram_controller|MRAM_A[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector14~0_combout\,
	ena => \this_mram_controller|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_A\(8));

-- Location: LCCOMB_X18_Y10_N12
\this_mram_controller|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector13~0_combout\ = (\this_mram_controller|curr_state.reading~regout\ & ((\this_write_out_mram_manager|address_counter\(9)) # ((\this_mram_controller|curr_state.writing~regout\ & \this_read_adc_manager|address_counter\(9))))) # 
-- (!\this_mram_controller|curr_state.reading~regout\ & (((\this_mram_controller|curr_state.writing~regout\ & \this_read_adc_manager|address_counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.reading~regout\,
	datab => \this_write_out_mram_manager|address_counter\(9),
	datac => \this_mram_controller|curr_state.writing~regout\,
	datad => \this_read_adc_manager|address_counter\(9),
	combout => \this_mram_controller|Selector13~0_combout\);

-- Location: LCFF_X18_Y10_N13
\this_mram_controller|MRAM_A[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector13~0_combout\,
	ena => \this_mram_controller|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_A\(9));

-- Location: LCCOMB_X22_Y10_N26
\this_mram_controller|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector0~1_combout\ = (\this_mram_controller|counter\(2) & (!\this_mram_controller|MRAM_EN~regout\)) # (!\this_mram_controller|counter\(2) & ((\this_mram_controller|MRAM_EN~regout\ & (\this_mram_controller|counter\(1) & 
-- !\this_mram_controller|counter\(0))) # (!\this_mram_controller|MRAM_EN~regout\ & ((\this_mram_controller|counter\(1)) # (!\this_mram_controller|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(2),
	datab => \this_mram_controller|MRAM_EN~regout\,
	datac => \this_mram_controller|counter\(1),
	datad => \this_mram_controller|counter\(0),
	combout => \this_mram_controller|Selector0~1_combout\);

-- Location: LCCOMB_X22_Y10_N16
\this_mram_controller|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector0~0_combout\ = (!\this_mram_controller|MRAM_EN~regout\ & ((\this_mram_controller|counter\(2)) # (!\this_mram_controller|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \this_mram_controller|MRAM_EN~regout\,
	datac => \this_mram_controller|counter\(1),
	datad => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|Selector0~0_combout\);

-- Location: LCCOMB_X22_Y10_N22
\this_mram_controller|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector0~2_combout\ = (\this_mram_controller|curr_state.writing~regout\ & (((!\this_mram_controller|Selector0~0_combout\ & \this_mram_controller|Selector2~0_combout\)) # (!\this_mram_controller|Selector0~1_combout\))) # 
-- (!\this_mram_controller|curr_state.writing~regout\ & (((!\this_mram_controller|Selector0~0_combout\ & \this_mram_controller|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|curr_state.writing~regout\,
	datab => \this_mram_controller|Selector0~1_combout\,
	datac => \this_mram_controller|Selector0~0_combout\,
	datad => \this_mram_controller|Selector2~0_combout\,
	combout => \this_mram_controller|Selector0~2_combout\);

-- Location: LCFF_X22_Y10_N23
\this_mram_controller|MRAM_EN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_EN~regout\);

-- Location: LCCOMB_X20_Y10_N28
\this_mram_controller|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector4~0_combout\ = (\this_mram_controller|curr_state.writing~regout\ & ((\this_mram_controller|counter\(0)) # ((\this_mram_controller|counter\(2)) # (!\this_mram_controller|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(0),
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|curr_state.writing~regout\,
	datad => \this_mram_controller|counter\(2),
	combout => \this_mram_controller|Selector4~0_combout\);

-- Location: LCCOMB_X20_Y10_N18
\this_mram_controller|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector2~1_combout\ = (\this_mram_controller|Selector4~0_combout\ & ((\this_mram_controller|Selector22~2_combout\) # ((\this_mram_controller|MRAM_WRITE_EN~regout\)))) # (!\this_mram_controller|Selector4~0_combout\ & 
-- (((\this_mram_controller|MRAM_WRITE_EN~regout\ & \this_mram_controller|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|Selector22~2_combout\,
	datab => \this_mram_controller|Selector4~0_combout\,
	datac => \this_mram_controller|MRAM_WRITE_EN~regout\,
	datad => \this_mram_controller|Selector2~0_combout\,
	combout => \this_mram_controller|Selector2~1_combout\);

-- Location: LCFF_X20_Y10_N19
\this_mram_controller|MRAM_WRITE_EN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_WRITE_EN~regout\);

-- Location: LCCOMB_X20_Y10_N22
\this_mram_controller|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector4~1_combout\ = ((!\this_mram_controller|MRAM_LOWER_EN~regout\ & ((\this_mram_controller|counter\(2)) # (!\this_mram_controller|counter\(1))))) # (!\this_mram_controller|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(2),
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|MRAM_LOWER_EN~regout\,
	datad => \this_mram_controller|Selector2~0_combout\,
	combout => \this_mram_controller|Selector4~1_combout\);

-- Location: LCCOMB_X20_Y10_N20
\this_mram_controller|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|Selector4~2_combout\ = ((\this_mram_controller|Selector4~0_combout\ & ((\this_mram_controller|Selector22~2_combout\) # (\this_mram_controller|MRAM_LOWER_EN~regout\)))) # (!\this_mram_controller|Selector4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|Selector22~2_combout\,
	datab => \this_mram_controller|Selector4~0_combout\,
	datac => \this_mram_controller|MRAM_LOWER_EN~regout\,
	datad => \this_mram_controller|Selector4~1_combout\,
	combout => \this_mram_controller|Selector4~2_combout\);

-- Location: LCFF_X20_Y10_N21
\this_mram_controller|MRAM_LOWER_EN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|MRAM_LOWER_EN~regout\);

-- Location: LCCOMB_X9_Y10_N2
\UART_Controller_1|uart_tx_1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector2~0_combout\ = (\UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\) # ((\UART_Controller_1|uart_tx_1|tx_curr_state.start~regout\ & !\UART_Controller_1|uart_tx_1|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	datac => \UART_Controller_1|uart_tx_1|tx_curr_state.start~regout\,
	datad => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector2~0_combout\);

-- Location: LCFF_X9_Y10_N3
\UART_Controller_1|uart_tx_1|tx_curr_state.start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|tx_curr_state.start~regout\);

-- Location: LCCOMB_X9_Y10_N6
\UART_Controller_1|uart_tx_1|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector3~0_combout\ = (\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & ((\UART_Controller_1|uart_tx_1|tx_curr_state.start~regout\) # ((!\UART_Controller_1|uart_tx_1|Selector4~0_combout\ & 
-- \UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\)))) # (!\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & (((\UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Selector4~0_combout\,
	datab => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datac => \UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\,
	datad => \UART_Controller_1|uart_tx_1|tx_curr_state.start~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector3~0_combout\);

-- Location: LCFF_X9_Y10_N7
\UART_Controller_1|uart_tx_1|tx_curr_state.data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\);

-- Location: LCCOMB_X9_Y10_N26
\UART_Controller_1|uart_tx_1|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector19~0_combout\ = (\UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\ & ((\UART_Controller_1|uart_tx_1|Equal0~2_combout\ $ (\UART_Controller_1|uart_tx_1|data_index\(0))))) # 
-- (!\UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\ & (\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & ((\UART_Controller_1|uart_tx_1|data_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datac => \UART_Controller_1|uart_tx_1|data_index\(0),
	datad => \UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\,
	combout => \UART_Controller_1|uart_tx_1|Selector19~0_combout\);

-- Location: LCFF_X9_Y10_N27
\UART_Controller_1|uart_tx_1|data_index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_index\(0));

-- Location: LCCOMB_X10_Y10_N0
\UART_Controller_1|uart_tx_1|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector18~0_combout\ = (\UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\ & (\UART_Controller_1|uart_tx_1|data_index\(1) $ (((\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & 
-- \UART_Controller_1|uart_tx_1|data_index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datab => \UART_Controller_1|uart_tx_1|data_index\(0),
	datac => \UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\,
	datad => \UART_Controller_1|uart_tx_1|data_index\(1),
	combout => \UART_Controller_1|uart_tx_1|Selector18~0_combout\);

-- Location: LCCOMB_X10_Y10_N28
\UART_Controller_1|uart_tx_1|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector18~1_combout\ = (\UART_Controller_1|uart_tx_1|Selector18~0_combout\) # ((\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & (!\UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\ & 
-- \UART_Controller_1|uart_tx_1|data_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\,
	datac => \UART_Controller_1|uart_tx_1|data_index\(1),
	datad => \UART_Controller_1|uart_tx_1|Selector18~0_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector18~1_combout\);

-- Location: LCFF_X10_Y10_N29
\UART_Controller_1|uart_tx_1|data_index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_index\(1));

-- Location: LCCOMB_X10_Y10_N2
\UART_Controller_1|uart_tx_1|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector17~0_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(0) & (\UART_Controller_1|uart_tx_1|Equal0~2_combout\ & \UART_Controller_1|uart_tx_1|data_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_tx_1|data_index\(0),
	datac => \UART_Controller_1|uart_tx_1|Equal0~2_combout\,
	datad => \UART_Controller_1|uart_tx_1|data_index\(1),
	combout => \UART_Controller_1|uart_tx_1|Selector17~0_combout\);

-- Location: LCCOMB_X10_Y10_N14
\UART_Controller_1|uart_tx_1|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Selector17~1_combout\ = (\UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\ & ((\UART_Controller_1|uart_tx_1|data_index\(2) $ (\UART_Controller_1|uart_tx_1|Selector17~0_combout\)))) # 
-- (!\UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\ & (\UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\ & (\UART_Controller_1|uart_tx_1|data_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|tx_curr_state.idle~regout\,
	datab => \UART_Controller_1|uart_tx_1|tx_curr_state.data~regout\,
	datac => \UART_Controller_1|uart_tx_1|data_index\(2),
	datad => \UART_Controller_1|uart_tx_1|Selector17~0_combout\,
	combout => \UART_Controller_1|uart_tx_1|Selector17~1_combout\);

-- Location: LCFF_X10_Y10_N15
\UART_Controller_1|uart_tx_1|data_index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_index\(2));

-- Location: LCCOMB_X13_Y10_N4
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ = (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ & \this_write_out_mram_manager|MRAM_READ_DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \this_write_out_mram_manager|MRAM_READ_DATA~regout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\);

-- Location: LCCOMB_X14_Y10_N24
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ = (\UART_Controller_1|curr_state.reading_fifo1~regout\ & \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_Controller_1|curr_state.reading_fifo1~regout\,
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\);

-- Location: LCCOMB_X12_Y10_N12
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

-- Location: LCCOMB_X20_Y10_N8
\this_mram_controller|data_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|data_out[0]~0_combout\ = (\this_mram_controller|counter\(0) & (\this_mram_controller|counter\(1) & (!\this_mram_controller|counter\(2) & \this_mram_controller|curr_state.reading~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \this_mram_controller|counter\(0),
	datab => \this_mram_controller|counter\(1),
	datac => \this_mram_controller|counter\(2),
	datad => \this_mram_controller|curr_state.reading~regout\,
	combout => \this_mram_controller|data_out[0]~0_combout\);

-- Location: LCFF_X12_Y10_N13
\this_mram_controller|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[0]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(0));

-- Location: LCCOMB_X12_Y10_N20
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

-- Location: LCFF_X12_Y10_N21
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

-- Location: LCCOMB_X12_Y10_N22
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\)) # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
-- ((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # (GND)))
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ = CARRY((!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1),
	datad => VCC,
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\);

-- Location: LCFF_X12_Y10_N23
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1));

-- Location: LCCOMB_X12_Y10_N24
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ = (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ $ (GND))) # (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & 
-- (!\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ & VCC))
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ = CARRY((\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & 
-- !\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2),
	datad => VCC,
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	cout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\);

-- Location: LCFF_X12_Y10_N25
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2));

-- Location: LCCOMB_X12_Y10_N26
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

-- Location: LCFF_X12_Y10_N27
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3));

-- Location: LCCOMB_X14_Y10_N4
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

-- Location: LCFF_X14_Y10_N5
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

-- Location: LCCOMB_X14_Y10_N6
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

-- Location: LCFF_X14_Y10_N7
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1));

-- Location: LCCOMB_X14_Y10_N8
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

-- Location: LCFF_X14_Y10_N9
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2));

-- Location: LCCOMB_X14_Y10_N10
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\ = \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ $ 
-- (\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3),
	cin => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\,
	combout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\);

-- Location: LCFF_X14_Y10_N11
\UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\,
	ena => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3));

-- Location: LCFF_X15_Y10_N11
\this_mram_controller|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MRAM_D[1]~1\,
	sload => VCC,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(1));

-- Location: LCCOMB_X12_Y10_N4
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

-- Location: LCFF_X12_Y10_N5
\this_mram_controller|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[2]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(2));

-- Location: LCCOMB_X12_Y10_N28
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

-- Location: LCFF_X12_Y10_N29
\this_mram_controller|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[3]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(3));

-- Location: LCCOMB_X12_Y10_N18
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

-- Location: LCFF_X12_Y10_N19
\this_mram_controller|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[4]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(4));

-- Location: LCCOMB_X12_Y10_N10
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

-- Location: LCFF_X12_Y10_N11
\this_mram_controller|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[5]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(5));

-- Location: LCCOMB_X12_Y10_N16
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

-- Location: LCFF_X12_Y10_N17
\this_mram_controller|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[6]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(6));

-- Location: LCCOMB_X12_Y10_N8
\this_mram_controller|data_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \this_mram_controller|data_out[7]~feeder_combout\ = \MRAM_D[7]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MRAM_D[7]~7\,
	combout => \this_mram_controller|data_out[7]~feeder_combout\);

-- Location: LCFF_X12_Y10_N9
\this_mram_controller|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \this_mram_controller|data_out[7]~feeder_combout\,
	ena => \this_mram_controller|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \this_mram_controller|data_out\(7));

-- Location: LCFF_X10_Y10_N23
\UART_Controller_1|uart_tx_1|data_send[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(3),
	sload => VCC,
	ena => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(3));

-- Location: LCFF_X10_Y10_N27
\UART_Controller_1|uart_tx_1|data_send[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \UART_Controller_1|uart_fifo|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|q_b\(0),
	sload => VCC,
	ena => \UART_Controller_1|uart_tx_1|tx_curr_state.sync~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|data_send\(0));

-- Location: LCCOMB_X10_Y10_N26
\UART_Controller_1|uart_tx_1|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Mux0~2_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(0) & (((\UART_Controller_1|uart_tx_1|data_index\(1))) # (!\UART_Controller_1|uart_tx_1|data_send\(1)))) # (!\UART_Controller_1|uart_tx_1|data_index\(0) & 
-- (((\UART_Controller_1|uart_tx_1|data_send\(0) & !\UART_Controller_1|uart_tx_1|data_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_send\(1),
	datab => \UART_Controller_1|uart_tx_1|data_index\(0),
	datac => \UART_Controller_1|uart_tx_1|data_send\(0),
	datad => \UART_Controller_1|uart_tx_1|data_index\(1),
	combout => \UART_Controller_1|uart_tx_1|Mux0~2_combout\);

-- Location: LCCOMB_X10_Y10_N22
\UART_Controller_1|uart_tx_1|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Mux0~3_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(1) & ((\UART_Controller_1|uart_tx_1|Mux0~2_combout\ & ((\UART_Controller_1|uart_tx_1|data_send\(3)))) # (!\UART_Controller_1|uart_tx_1|Mux0~2_combout\ & 
-- (!\UART_Controller_1|uart_tx_1|data_send\(2))))) # (!\UART_Controller_1|uart_tx_1|data_index\(1) & (((\UART_Controller_1|uart_tx_1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|data_send\(2),
	datab => \UART_Controller_1|uart_tx_1|data_index\(1),
	datac => \UART_Controller_1|uart_tx_1|data_send\(3),
	datad => \UART_Controller_1|uart_tx_1|Mux0~2_combout\,
	combout => \UART_Controller_1|uart_tx_1|Mux0~3_combout\);

-- Location: LCCOMB_X9_Y10_N8
\UART_Controller_1|uart_tx_1|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|Mux0~4_combout\ = (\UART_Controller_1|uart_tx_1|data_index\(2) & (\UART_Controller_1|uart_tx_1|Mux0~1_combout\)) # (!\UART_Controller_1|uart_tx_1|data_index\(2) & ((\UART_Controller_1|uart_tx_1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_Controller_1|uart_tx_1|Mux0~1_combout\,
	datab => \UART_Controller_1|uart_tx_1|data_index\(2),
	datad => \UART_Controller_1|uart_tx_1|Mux0~3_combout\,
	combout => \UART_Controller_1|uart_tx_1|Mux0~4_combout\);

-- Location: LCCOMB_X9_Y10_N4
\UART_Controller_1|uart_tx_1|tx_curr_state.start~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_Controller_1|uart_tx_1|tx_curr_state.start~_wirecell_combout\ = !\UART_Controller_1|uart_tx_1|tx_curr_state.start~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_Controller_1|uart_tx_1|tx_curr_state.start~regout\,
	combout => \UART_Controller_1|uart_tx_1|tx_curr_state.start~_wirecell_combout\);

-- Location: LCFF_X9_Y10_N9
\UART_Controller_1|uart_tx_1|TX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \UART_Controller_1|uart_tx_1|Mux0~4_combout\,
	sdata => \UART_Controller_1|uart_tx_1|tx_curr_state.start~_wirecell_combout\,
	sload => \UART_Controller_1|uart_tx_1|ALT_INV_tx_curr_state.data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_Controller_1|uart_tx_1|TX~regout\);

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
	open_drain_output => "true",
	operation_mode => "output",
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
	padio => ww_ADC_SYNC);

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
	datain => \adc_spi_controller|spi_tx_component|SPI_MOSI~reg0_regout\,
	oe => \adc_spi_controller|spi_tx_component|SPI_MOSI~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ADC_SPI_SDIN);

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
	padio => MRAM_D(8));

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
	padio => MRAM_D(9));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => MRAM_D(10));

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
	padio => MRAM_D(11));

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
	padio => MRAM_D(12));

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
	padio => MRAM_D(13));

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
	datain => \this_mram_controller|MRAM_A\(4),
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
	datain => \this_mram_controller|MRAM_A\(5),
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
	datain => \this_mram_controller|MRAM_A\(6),
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
	datain => \this_mram_controller|MRAM_A\(7),
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
	datain => \this_mram_controller|MRAM_A\(8),
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
	datain => \this_mram_controller|MRAM_A\(9),
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

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	datain => \UART_Controller_1|uart_tx_1|TX~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_UART_TX);
END structure;


