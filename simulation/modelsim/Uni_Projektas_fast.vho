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

-- DATE "03/13/2023 18:34:12"

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

ENTITY 	SPI_Test_projektas IS
    PORT (
	CLK : IN std_logic;
	SPI_MOSI : OUT std_logic;
	SPI_SCLK : OUT std_logic;
	SPI_CS : OUT std_logic;
	LED_OUT : OUT std_logic
	);
END SPI_Test_projektas;

-- Design Ports Information
-- SPI_MOSI	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SPI_SCLK	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SPI_CS	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_OUT	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF SPI_Test_projektas IS
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
SIGNAL ww_SPI_MOSI : std_logic;
SIGNAL ww_SPI_SCLK : std_logic;
SIGNAL ww_SPI_CS : std_logic;
SIGNAL ww_LED_OUT : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi_controller_1|spi_tx_component|bits_sent[2]~16_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~2_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[0]~15_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ : std_logic;
SIGNAL \spi_controller_1|curr_state.transmiting~regout\ : std_logic;
SIGNAL \spi_controller_1|Selector2~0_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~27_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~28_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~29_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~30_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~31_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~32_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM3\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM5\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[2]_OTERM7\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[2]_OTERM9\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[3]_OTERM11\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[3]_OTERM13\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[4]_OTERM15\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[4]_OTERM17\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[5]_OTERM19\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[5]_OTERM21\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[6]_OTERM25\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[7]_OTERM27\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[7]_OTERM27~feeder_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[5]_OTERM19~feeder_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[4]_OTERM15~feeder_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[3]_OTERM11~feeder_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[2]_OTERM7~feeder_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM3~feeder_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM5~feeder_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~7\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~8_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|clk_counter~3_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~9\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~10_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|clk_counter~4_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~11\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~12_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|clk_counter~5_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~13\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~14_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|clk_counter~6_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Equal0~1_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Equal0~1_OTERM63\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~15\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~16_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|clk_counter~2_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|clk_counter~1_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~1\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~3\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~4_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|clk_counter~0_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~5\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Add1~6_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Equal0~0_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Equal0~0_OTERM65\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|Equal0~2_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|sclk~0_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|sclk~regout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|bits_sent[0]~11\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|bits_sent[1]~14_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|bits_sent[2]~12_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|bits_sent[0]~10_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|SPI_MOSI~0_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|SPI_MOSI~3_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|bits_sent[2]~13_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|bits_sent[1]~15\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|bits_sent[2]~17\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|bits_sent[3]~18_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|bits_sent[3]~19\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|bits_sent[4]~20_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|curr_state~0_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|curr_state~feeder_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|SEND_DONE~0_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|SEND_DONE~regout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \counter~10_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \counter~9_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \counter~8_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \counter~12_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \counter~11_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \SPI_send_irq~regout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ : std_logic;
SIGNAL \spi_controller_1|fifo_rdreq~0_combout\ : std_logic;
SIGNAL \spi_controller_1|fifo_rdreq~regout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ : std_logic;
SIGNAL \spi_controller_1|Selector0~0_combout\ : std_logic;
SIGNAL \spi_controller_1|curr_state.idle~regout\ : std_logic;
SIGNAL \spi_controller_1|Selector1~0_combout\ : std_logic;
SIGNAL \spi_controller_1|curr_state.reading_fifo~regout\ : std_logic;
SIGNAL \spi_controller_1|tx_send_irq~regout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|curr_state~regout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|SPI_MOSI~1_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\ : std_logic;
SIGNAL \SPI_send_data[4]~0_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[15]_OTERM59\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[8]_OTERM31\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[6]_OTERM23~feeder_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[6]_OTERM23\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~26_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[7]_OTERM29\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~25_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[8]_OTERM33\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~24_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[9]_OTERM37\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[9]_OTERM35~feeder_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[9]_OTERM35\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~23_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[10]_OTERM41\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[10]_OTERM39~feeder_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[10]_OTERM39\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~22_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[11]_OTERM45\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[11]_OTERM43~feeder_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[11]_OTERM43\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~21_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[12]_OTERM49\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[12]_OTERM47~feeder_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[12]_OTERM47\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~20_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[13]_OTERM53\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[13]_OTERM51~feeder_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[13]_OTERM51\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~19_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[14]_OTERM57\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[14]_OTERM55~feeder_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[14]_OTERM55\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~18_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf[15]_OTERM61\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|tx_buf~16_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|SPI_MOSI~2_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|SPI_MOSI~regout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|SPI_CS~0_combout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|SPI_CS~regout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \LED_OUT~0_combout\ : std_logic;
SIGNAL \LED_OUT~reg0_regout\ : std_logic;
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi_controller_1|spi_tx_component|bits_sent\ : std_logic_vector(4 DOWNTO 0);
SIGNAL SPI_send_data : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi_controller_1|spi_tx_component|tx_buf\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi_controller_1|spi_tx_component|clk_counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL counter : std_logic_vector(25 DOWNTO 0);
SIGNAL \spi_controller_1|spi_tx_component|ALT_INV_curr_state~regout\ : std_logic;
SIGNAL \ALT_INV_LED_OUT~reg0_regout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|ALT_INV_SPI_CS~regout\ : std_logic;
SIGNAL \spi_controller_1|spi_tx_component|ALT_INV_sclk~regout\ : std_logic;

BEGIN

ww_CLK <= CLK;
SPI_MOSI <= ww_SPI_MOSI;
SPI_SCLK <= ww_SPI_SCLK;
SPI_CS <= ww_SPI_CS;
LED_OUT <= ww_LED_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTADATAIN_bus\ <= (SPI_send_data(4) & SPI_send_data(4) & SPI_send_data(4) & SPI_send_data(4) & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & SPI_send_data(4) & SPI_send_data(4) & SPI_send_data(4) & SPI_send_data(4) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3) & 
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) & 
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & 
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(0) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(0);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(1) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(1);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(2) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(2);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(3) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(3);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(4) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(4);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(5) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(5);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(6) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(6);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(7) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(7);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(8) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(8);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(9) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(9);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(10) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(10);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(11) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(11);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(12) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(12);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(13) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(13);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(14) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(14);
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(15) <= \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\(15);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);
\spi_controller_1|spi_tx_component|ALT_INV_curr_state~regout\ <= NOT \spi_controller_1|spi_tx_component|curr_state~regout\;
\ALT_INV_LED_OUT~reg0_regout\ <= NOT \LED_OUT~reg0_regout\;
\spi_controller_1|spi_tx_component|ALT_INV_SPI_CS~regout\ <= NOT \spi_controller_1|spi_tx_component|SPI_CS~regout\;
\spi_controller_1|spi_tx_component|ALT_INV_sclk~regout\ <= NOT \spi_controller_1|spi_tx_component|sclk~regout\;

-- Location: LCFF_X10_Y6_N21
\spi_controller_1|spi_tx_component|bits_sent[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|bits_sent[2]~16_combout\,
	sdata => \~GND~combout\,
	sload => \spi_controller_1|spi_tx_component|bits_sent[2]~12_combout\,
	ena => \spi_controller_1|spi_tx_component|bits_sent[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|bits_sent\(2));

-- Location: LCCOMB_X10_Y6_N20
\spi_controller_1|spi_tx_component|bits_sent[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|bits_sent[2]~16_combout\ = (\spi_controller_1|spi_tx_component|bits_sent\(2) & (\spi_controller_1|spi_tx_component|bits_sent[1]~15\ $ (GND))) # (!\spi_controller_1|spi_tx_component|bits_sent\(2) & 
-- (!\spi_controller_1|spi_tx_component|bits_sent[1]~15\ & VCC))
-- \spi_controller_1|spi_tx_component|bits_sent[2]~17\ = CARRY((\spi_controller_1|spi_tx_component|bits_sent\(2) & !\spi_controller_1|spi_tx_component|bits_sent[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|bits_sent\(2),
	datad => VCC,
	cin => \spi_controller_1|spi_tx_component|bits_sent[1]~15\,
	combout => \spi_controller_1|spi_tx_component|bits_sent[2]~16_combout\,
	cout => \spi_controller_1|spi_tx_component|bits_sent[2]~17\);

-- Location: LCCOMB_X9_Y4_N12
\spi_controller_1|spi_tx_component|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|Add1~2_combout\ = (\spi_controller_1|spi_tx_component|clk_counter\(1) & (!\spi_controller_1|spi_tx_component|Add1~1\)) # (!\spi_controller_1|spi_tx_component|clk_counter\(1) & 
-- ((\spi_controller_1|spi_tx_component|Add1~1\) # (GND)))
-- \spi_controller_1|spi_tx_component|Add1~3\ = CARRY((!\spi_controller_1|spi_tx_component|Add1~1\) # (!\spi_controller_1|spi_tx_component|clk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|clk_counter\(1),
	datad => VCC,
	cin => \spi_controller_1|spi_tx_component|Add1~1\,
	combout => \spi_controller_1|spi_tx_component|Add1~2_combout\,
	cout => \spi_controller_1|spi_tx_component|Add1~3\);

-- Location: LCCOMB_X14_Y7_N24
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter(9) & (!\Add0~17\)) # (!counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X14_Y6_N10
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter(18) & (\Add0~35\ $ (GND))) # (!counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X14_Y6_N22
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (counter(24) & (\Add0~47\ $ (GND))) # (!counter(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((counter(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X14_Y6_N24
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \Add0~49\ $ (counter(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(25),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

-- Location: LCFF_X13_Y5_N25
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\,
	ena => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3));

-- Location: LCCOMB_X13_Y5_N22
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ = (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) & ((VCC)))) # (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) $ (((VCC) # (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))))
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ = 
-- CARRY((!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) $ 
-- (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datab => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	cin => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	cout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X13_Y5_N24
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3) $ 
-- (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	cin => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\);

-- Location: LCFF_X10_Y4_N29
\spi_controller_1|spi_tx_component|tx_buf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[0]~15_combout\,
	sdata => \spi_controller_1|spi_tx_component|tx_buf~32_combout\,
	sload => \spi_controller_1|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf\(0));

-- Location: M4K_X11_Y5
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "SPI_Controller:spi_controller_1|wizard_spi_fifo:spi_fifo_component|scfifo:scfifo_component|scfifo_3c21:auto_generated|a_dpfifo_ai21:dpfifo|dpram_bv01:FIFOram|altsyncram_0vj1:altsyncram1|ALTSYNCRAM",
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
	portawe => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portbrewe => VCC,
	clk0 => \CLK~clkctrl_outclk\,
	clk1 => \CLK~clkctrl_outclk\,
	ena0 => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	ena1 => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	portadatain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portaaddr => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|ram_block2a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X10_Y4_N28
\spi_controller_1|spi_tx_component|tx_buf[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[0]~15_combout\ = (\spi_controller_1|tx_send_irq~regout\ & ((\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(0)))) # (!\spi_controller_1|tx_send_irq~regout\ & 
-- (\spi_controller_1|spi_tx_component|tx_buf\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|tx_send_irq~regout\,
	datac => \spi_controller_1|spi_tx_component|tx_buf\(0),
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(0),
	combout => \spi_controller_1|spi_tx_component|tx_buf[0]~15_combout\);

-- Location: LCFF_X9_Y4_N13
\spi_controller_1|spi_tx_component|clk_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|Add1~2_combout\,
	ena => \spi_controller_1|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|clk_counter\(1));

-- Location: LCFF_X9_Y4_N17
\spi_controller_1|spi_tx_component|clk_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|Add1~6_combout\,
	ena => \spi_controller_1|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|clk_counter\(3));

-- Location: LCFF_X14_Y6_N11
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LCFF_X14_Y6_N31
\counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(25));

-- Location: LCFF_X14_Y7_N25
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X13_Y6_N10
\Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (counter(20) & (counter(19) & (counter(13) & counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datab => counter(19),
	datac => counter(13),
	datad => counter(14),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X14_Y6_N30
\counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add0~50_combout\ & ((!\Equal3~4_combout\) # (!\Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~2_combout\,
	datac => \Add0~50_combout\,
	datad => \Equal3~4_combout\,
	combout => \counter~1_combout\);

-- Location: LCCOMB_X13_Y5_N16
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ = (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) & 
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\);

-- Location: LCCOMB_X13_Y5_N12
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ = (\SPI_send_irq~regout\) # (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_send_irq~regout\,
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\);

-- Location: LCFF_X13_Y5_N7
\spi_controller_1|curr_state.transmiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|curr_state.transmiting~regout\);

-- Location: LCCOMB_X13_Y5_N6
\spi_controller_1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|Selector2~0_combout\ = (\spi_controller_1|curr_state.reading_fifo~regout\) # ((\spi_controller_1|curr_state.transmiting~regout\ & !\spi_controller_1|spi_tx_component|SEND_DONE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|curr_state.reading_fifo~regout\,
	datac => \spi_controller_1|curr_state.transmiting~regout\,
	datad => \spi_controller_1|spi_tx_component|SEND_DONE~regout\,
	combout => \spi_controller_1|Selector2~0_combout\);

-- Location: LCCOMB_X10_Y5_N10
\spi_controller_1|spi_tx_component|tx_buf~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~27_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & (\spi_controller_1|spi_tx_component|tx_buf[5]_OTERM21\)) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- ((\spi_controller_1|spi_tx_component|tx_buf[5]_OTERM19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|tx_buf[5]_OTERM21\,
	datac => \spi_controller_1|spi_tx_component|tx_buf[5]_OTERM19\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~27_combout\);

-- Location: LCCOMB_X9_Y5_N12
\spi_controller_1|spi_tx_component|tx_buf~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~28_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & ((\spi_controller_1|spi_tx_component|tx_buf[4]_OTERM17\))) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- (\spi_controller_1|spi_tx_component|tx_buf[4]_OTERM15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	datac => \spi_controller_1|spi_tx_component|tx_buf[4]_OTERM15\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[4]_OTERM17\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~28_combout\);

-- Location: LCCOMB_X10_Y5_N6
\spi_controller_1|spi_tx_component|tx_buf~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~29_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & (\spi_controller_1|spi_tx_component|tx_buf[3]_OTERM13\)) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- ((\spi_controller_1|spi_tx_component|tx_buf[3]_OTERM11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|tx_buf[3]_OTERM13\,
	datac => \spi_controller_1|spi_tx_component|tx_buf[3]_OTERM11\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~29_combout\);

-- Location: LCCOMB_X10_Y5_N0
\spi_controller_1|spi_tx_component|tx_buf~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~30_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & (\spi_controller_1|spi_tx_component|tx_buf[2]_OTERM9\)) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- ((\spi_controller_1|spi_tx_component|tx_buf[2]_OTERM7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|tx_buf[2]_OTERM9\,
	datac => \spi_controller_1|spi_tx_component|tx_buf[2]_OTERM7\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~30_combout\);

-- Location: LCCOMB_X9_Y5_N2
\spi_controller_1|spi_tx_component|tx_buf~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~31_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM3\)) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- ((\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM3\,
	datab => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM5\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~31_combout\);

-- Location: LCCOMB_X10_Y4_N8
\spi_controller_1|spi_tx_component|tx_buf~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~32_combout\ = (\spi_controller_1|spi_tx_component|tx_buf\(0) & (((!\spi_controller_1|spi_tx_component|SPI_MOSI~3_combout\ & \spi_controller_1|spi_tx_component|sclk~regout\)) # 
-- (!\spi_controller_1|spi_tx_component|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|Equal0~2_combout\,
	datab => \spi_controller_1|spi_tx_component|tx_buf\(0),
	datac => \spi_controller_1|spi_tx_component|SPI_MOSI~3_combout\,
	datad => \spi_controller_1|spi_tx_component|sclk~regout\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~32_combout\);

-- Location: LCFF_X9_Y5_N11
\spi_controller_1|spi_tx_component|tx_buf[1]_NEW_REG2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM3~feeder_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM3\);

-- Location: LCFF_X10_Y5_N5
\spi_controller_1|spi_tx_component|tx_buf[1]_NEW_REG4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM5~feeder_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM5\);

-- Location: LCFF_X10_Y5_N25
\spi_controller_1|spi_tx_component|tx_buf[2]_NEW_REG6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[2]_OTERM7~feeder_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[2]_OTERM7\);

-- Location: LCFF_X9_Y5_N3
\spi_controller_1|spi_tx_component|tx_buf[2]_NEW_REG8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf~31_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[2]_OTERM9\);

-- Location: LCFF_X10_Y5_N21
\spi_controller_1|spi_tx_component|tx_buf[3]_NEW_REG10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[3]_OTERM11~feeder_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[3]_OTERM11\);

-- Location: LCFF_X10_Y5_N1
\spi_controller_1|spi_tx_component|tx_buf[3]_NEW_REG12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf~30_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[3]_OTERM13\);

-- Location: LCFF_X10_Y5_N27
\spi_controller_1|spi_tx_component|tx_buf[4]_NEW_REG14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[4]_OTERM15~feeder_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[4]_OTERM15\);

-- Location: LCFF_X10_Y5_N7
\spi_controller_1|spi_tx_component|tx_buf[4]_NEW_REG16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf~29_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[4]_OTERM17\);

-- Location: LCFF_X10_Y5_N17
\spi_controller_1|spi_tx_component|tx_buf[5]_NEW_REG18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[5]_OTERM19~feeder_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[5]_OTERM19\);

-- Location: LCFF_X9_Y5_N13
\spi_controller_1|spi_tx_component|tx_buf[5]_NEW_REG20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf~28_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[5]_OTERM21\);

-- Location: LCFF_X10_Y5_N11
\spi_controller_1|spi_tx_component|tx_buf[6]_NEW_REG24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf~27_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[6]_OTERM25\);

-- Location: LCFF_X10_Y5_N13
\spi_controller_1|spi_tx_component|tx_buf[7]_NEW_REG26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[7]_OTERM27~feeder_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[7]_OTERM27\);

-- Location: LCCOMB_X10_Y5_N12
\spi_controller_1|spi_tx_component|tx_buf[7]_OTERM27~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[7]_OTERM27~feeder_combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(7),
	combout => \spi_controller_1|spi_tx_component|tx_buf[7]_OTERM27~feeder_combout\);

-- Location: LCCOMB_X10_Y5_N16
\spi_controller_1|spi_tx_component|tx_buf[5]_OTERM19~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[5]_OTERM19~feeder_combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(5),
	combout => \spi_controller_1|spi_tx_component|tx_buf[5]_OTERM19~feeder_combout\);

-- Location: LCCOMB_X10_Y5_N26
\spi_controller_1|spi_tx_component|tx_buf[4]_OTERM15~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[4]_OTERM15~feeder_combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(4),
	combout => \spi_controller_1|spi_tx_component|tx_buf[4]_OTERM15~feeder_combout\);

-- Location: LCCOMB_X10_Y5_N20
\spi_controller_1|spi_tx_component|tx_buf[3]_OTERM11~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[3]_OTERM11~feeder_combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(3),
	combout => \spi_controller_1|spi_tx_component|tx_buf[3]_OTERM11~feeder_combout\);

-- Location: LCCOMB_X10_Y5_N24
\spi_controller_1|spi_tx_component|tx_buf[2]_OTERM7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[2]_OTERM7~feeder_combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(2),
	combout => \spi_controller_1|spi_tx_component|tx_buf[2]_OTERM7~feeder_combout\);

-- Location: LCCOMB_X9_Y5_N10
\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM3~feeder_combout\ = \spi_controller_1|spi_tx_component|tx_buf\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_tx_component|tx_buf\(0),
	combout => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM3~feeder_combout\);

-- Location: LCCOMB_X10_Y5_N4
\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM5~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM5~feeder_combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(1),
	combout => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM5~feeder_combout\);

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

-- Location: LCFF_X9_Y4_N5
\spi_controller_1|spi_tx_component|clk_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|clk_counter~5_combout\,
	ena => \spi_controller_1|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|clk_counter\(6));

-- Location: LCCOMB_X9_Y4_N16
\spi_controller_1|spi_tx_component|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|Add1~6_combout\ = (\spi_controller_1|spi_tx_component|clk_counter\(3) & (!\spi_controller_1|spi_tx_component|Add1~5\)) # (!\spi_controller_1|spi_tx_component|clk_counter\(3) & 
-- ((\spi_controller_1|spi_tx_component|Add1~5\) # (GND)))
-- \spi_controller_1|spi_tx_component|Add1~7\ = CARRY((!\spi_controller_1|spi_tx_component|Add1~5\) # (!\spi_controller_1|spi_tx_component|clk_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|clk_counter\(3),
	datad => VCC,
	cin => \spi_controller_1|spi_tx_component|Add1~5\,
	combout => \spi_controller_1|spi_tx_component|Add1~6_combout\,
	cout => \spi_controller_1|spi_tx_component|Add1~7\);

-- Location: LCCOMB_X9_Y4_N18
\spi_controller_1|spi_tx_component|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|Add1~8_combout\ = (\spi_controller_1|spi_tx_component|clk_counter\(4) & (\spi_controller_1|spi_tx_component|Add1~7\ $ (GND))) # (!\spi_controller_1|spi_tx_component|clk_counter\(4) & 
-- (!\spi_controller_1|spi_tx_component|Add1~7\ & VCC))
-- \spi_controller_1|spi_tx_component|Add1~9\ = CARRY((\spi_controller_1|spi_tx_component|clk_counter\(4) & !\spi_controller_1|spi_tx_component|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|clk_counter\(4),
	datad => VCC,
	cin => \spi_controller_1|spi_tx_component|Add1~7\,
	combout => \spi_controller_1|spi_tx_component|Add1~8_combout\,
	cout => \spi_controller_1|spi_tx_component|Add1~9\);

-- Location: LCCOMB_X9_Y4_N28
\spi_controller_1|spi_tx_component|clk_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|clk_counter~3_combout\ = (\spi_controller_1|spi_tx_component|Add1~8_combout\ & (((!\spi_controller_1|spi_tx_component|Equal0~0_OTERM65\) # (!\spi_controller_1|spi_tx_component|clk_counter\(8))) # 
-- (!\spi_controller_1|spi_tx_component|Equal0~1_OTERM63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|Equal0~1_OTERM63\,
	datab => \spi_controller_1|spi_tx_component|clk_counter\(8),
	datac => \spi_controller_1|spi_tx_component|Equal0~0_OTERM65\,
	datad => \spi_controller_1|spi_tx_component|Add1~8_combout\,
	combout => \spi_controller_1|spi_tx_component|clk_counter~3_combout\);

-- Location: LCFF_X9_Y4_N29
\spi_controller_1|spi_tx_component|clk_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|clk_counter~3_combout\,
	ena => \spi_controller_1|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|clk_counter\(4));

-- Location: LCCOMB_X9_Y4_N20
\spi_controller_1|spi_tx_component|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|Add1~10_combout\ = (\spi_controller_1|spi_tx_component|clk_counter\(5) & (!\spi_controller_1|spi_tx_component|Add1~9\)) # (!\spi_controller_1|spi_tx_component|clk_counter\(5) & 
-- ((\spi_controller_1|spi_tx_component|Add1~9\) # (GND)))
-- \spi_controller_1|spi_tx_component|Add1~11\ = CARRY((!\spi_controller_1|spi_tx_component|Add1~9\) # (!\spi_controller_1|spi_tx_component|clk_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|clk_counter\(5),
	datad => VCC,
	cin => \spi_controller_1|spi_tx_component|Add1~9\,
	combout => \spi_controller_1|spi_tx_component|Add1~10_combout\,
	cout => \spi_controller_1|spi_tx_component|Add1~11\);

-- Location: LCCOMB_X9_Y4_N0
\spi_controller_1|spi_tx_component|clk_counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|clk_counter~4_combout\ = (\spi_controller_1|spi_tx_component|Add1~10_combout\ & (((!\spi_controller_1|spi_tx_component|clk_counter\(8)) # (!\spi_controller_1|spi_tx_component|Equal0~0_OTERM65\)) # 
-- (!\spi_controller_1|spi_tx_component|Equal0~1_OTERM63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|Equal0~1_OTERM63\,
	datab => \spi_controller_1|spi_tx_component|Equal0~0_OTERM65\,
	datac => \spi_controller_1|spi_tx_component|Add1~10_combout\,
	datad => \spi_controller_1|spi_tx_component|clk_counter\(8),
	combout => \spi_controller_1|spi_tx_component|clk_counter~4_combout\);

-- Location: LCFF_X9_Y4_N1
\spi_controller_1|spi_tx_component|clk_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|clk_counter~4_combout\,
	ena => \spi_controller_1|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|clk_counter\(5));

-- Location: LCCOMB_X9_Y4_N22
\spi_controller_1|spi_tx_component|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|Add1~12_combout\ = (\spi_controller_1|spi_tx_component|clk_counter\(6) & (\spi_controller_1|spi_tx_component|Add1~11\ $ (GND))) # (!\spi_controller_1|spi_tx_component|clk_counter\(6) & 
-- (!\spi_controller_1|spi_tx_component|Add1~11\ & VCC))
-- \spi_controller_1|spi_tx_component|Add1~13\ = CARRY((\spi_controller_1|spi_tx_component|clk_counter\(6) & !\spi_controller_1|spi_tx_component|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|clk_counter\(6),
	datad => VCC,
	cin => \spi_controller_1|spi_tx_component|Add1~11\,
	combout => \spi_controller_1|spi_tx_component|Add1~12_combout\,
	cout => \spi_controller_1|spi_tx_component|Add1~13\);

-- Location: LCCOMB_X9_Y4_N4
\spi_controller_1|spi_tx_component|clk_counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|clk_counter~5_combout\ = (\spi_controller_1|spi_tx_component|Add1~12_combout\ & (((!\spi_controller_1|spi_tx_component|Equal0~0_OTERM65\) # (!\spi_controller_1|spi_tx_component|clk_counter\(8))) # 
-- (!\spi_controller_1|spi_tx_component|Equal0~1_OTERM63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|Equal0~1_OTERM63\,
	datab => \spi_controller_1|spi_tx_component|clk_counter\(8),
	datac => \spi_controller_1|spi_tx_component|Equal0~0_OTERM65\,
	datad => \spi_controller_1|spi_tx_component|Add1~12_combout\,
	combout => \spi_controller_1|spi_tx_component|clk_counter~5_combout\);

-- Location: LCFF_X9_Y4_N3
\spi_controller_1|spi_tx_component|clk_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|clk_counter~6_combout\,
	ena => \spi_controller_1|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|clk_counter\(7));

-- Location: LCCOMB_X9_Y4_N24
\spi_controller_1|spi_tx_component|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|Add1~14_combout\ = (\spi_controller_1|spi_tx_component|clk_counter\(7) & (!\spi_controller_1|spi_tx_component|Add1~13\)) # (!\spi_controller_1|spi_tx_component|clk_counter\(7) & 
-- ((\spi_controller_1|spi_tx_component|Add1~13\) # (GND)))
-- \spi_controller_1|spi_tx_component|Add1~15\ = CARRY((!\spi_controller_1|spi_tx_component|Add1~13\) # (!\spi_controller_1|spi_tx_component|clk_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|clk_counter\(7),
	datad => VCC,
	cin => \spi_controller_1|spi_tx_component|Add1~13\,
	combout => \spi_controller_1|spi_tx_component|Add1~14_combout\,
	cout => \spi_controller_1|spi_tx_component|Add1~15\);

-- Location: LCCOMB_X9_Y4_N2
\spi_controller_1|spi_tx_component|clk_counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|clk_counter~6_combout\ = (\spi_controller_1|spi_tx_component|Add1~14_combout\ & (((!\spi_controller_1|spi_tx_component|clk_counter\(8)) # (!\spi_controller_1|spi_tx_component|Equal0~0_OTERM65\)) # 
-- (!\spi_controller_1|spi_tx_component|Equal0~1_OTERM63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|Equal0~1_OTERM63\,
	datab => \spi_controller_1|spi_tx_component|Equal0~0_OTERM65\,
	datac => \spi_controller_1|spi_tx_component|Add1~14_combout\,
	datad => \spi_controller_1|spi_tx_component|clk_counter\(8),
	combout => \spi_controller_1|spi_tx_component|clk_counter~6_combout\);

-- Location: LCCOMB_X9_Y4_N6
\spi_controller_1|spi_tx_component|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|Equal0~1_combout\ = (\spi_controller_1|spi_tx_component|clk_counter~3_combout\ & (\spi_controller_1|spi_tx_component|clk_counter~5_combout\ & (\spi_controller_1|spi_tx_component|clk_counter~4_combout\ & 
-- \spi_controller_1|spi_tx_component|clk_counter~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|clk_counter~3_combout\,
	datab => \spi_controller_1|spi_tx_component|clk_counter~5_combout\,
	datac => \spi_controller_1|spi_tx_component|clk_counter~4_combout\,
	datad => \spi_controller_1|spi_tx_component|clk_counter~6_combout\,
	combout => \spi_controller_1|spi_tx_component|Equal0~1_combout\);

-- Location: LCFF_X9_Y4_N7
\spi_controller_1|spi_tx_component|Equal0~1_NEW_REG62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|Equal0~1_combout\,
	ena => \spi_controller_1|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|Equal0~1_OTERM63\);

-- Location: LCCOMB_X9_Y4_N26
\spi_controller_1|spi_tx_component|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|Add1~16_combout\ = \spi_controller_1|spi_tx_component|Add1~15\ $ (!\spi_controller_1|spi_tx_component|clk_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_tx_component|clk_counter\(8),
	cin => \spi_controller_1|spi_tx_component|Add1~15\,
	combout => \spi_controller_1|spi_tx_component|Add1~16_combout\);

-- Location: LCCOMB_X10_Y4_N30
\spi_controller_1|spi_tx_component|clk_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|clk_counter~2_combout\ = (\spi_controller_1|spi_tx_component|Add1~16_combout\ & (((!\spi_controller_1|spi_tx_component|clk_counter\(8)) # (!\spi_controller_1|spi_tx_component|Equal0~1_OTERM63\)) # 
-- (!\spi_controller_1|spi_tx_component|Equal0~0_OTERM65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|Equal0~0_OTERM65\,
	datab => \spi_controller_1|spi_tx_component|Equal0~1_OTERM63\,
	datac => \spi_controller_1|spi_tx_component|clk_counter\(8),
	datad => \spi_controller_1|spi_tx_component|Add1~16_combout\,
	combout => \spi_controller_1|spi_tx_component|clk_counter~2_combout\);

-- Location: LCFF_X10_Y4_N31
\spi_controller_1|spi_tx_component|clk_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|clk_counter~2_combout\,
	ena => \spi_controller_1|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|clk_counter\(8));

-- Location: LCCOMB_X9_Y4_N30
\spi_controller_1|spi_tx_component|clk_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|clk_counter~1_combout\ = (!\spi_controller_1|spi_tx_component|clk_counter\(0) & (((!\spi_controller_1|spi_tx_component|clk_counter\(8)) # (!\spi_controller_1|spi_tx_component|Equal0~0_OTERM65\)) # 
-- (!\spi_controller_1|spi_tx_component|Equal0~1_OTERM63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|Equal0~1_OTERM63\,
	datab => \spi_controller_1|spi_tx_component|Equal0~0_OTERM65\,
	datac => \spi_controller_1|spi_tx_component|clk_counter\(0),
	datad => \spi_controller_1|spi_tx_component|clk_counter\(8),
	combout => \spi_controller_1|spi_tx_component|clk_counter~1_combout\);

-- Location: LCFF_X9_Y4_N31
\spi_controller_1|spi_tx_component|clk_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|clk_counter~1_combout\,
	ena => \spi_controller_1|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|clk_counter\(0));

-- Location: LCCOMB_X9_Y4_N10
\spi_controller_1|spi_tx_component|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|Add1~1\ = CARRY(\spi_controller_1|spi_tx_component|clk_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|clk_counter\(0),
	datad => VCC,
	cout => \spi_controller_1|spi_tx_component|Add1~1\);

-- Location: LCCOMB_X9_Y4_N14
\spi_controller_1|spi_tx_component|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|Add1~4_combout\ = (\spi_controller_1|spi_tx_component|clk_counter\(2) & (\spi_controller_1|spi_tx_component|Add1~3\ $ (GND))) # (!\spi_controller_1|spi_tx_component|clk_counter\(2) & 
-- (!\spi_controller_1|spi_tx_component|Add1~3\ & VCC))
-- \spi_controller_1|spi_tx_component|Add1~5\ = CARRY((\spi_controller_1|spi_tx_component|clk_counter\(2) & !\spi_controller_1|spi_tx_component|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|clk_counter\(2),
	datad => VCC,
	cin => \spi_controller_1|spi_tx_component|Add1~3\,
	combout => \spi_controller_1|spi_tx_component|Add1~4_combout\,
	cout => \spi_controller_1|spi_tx_component|Add1~5\);

-- Location: LCCOMB_X9_Y4_N8
\spi_controller_1|spi_tx_component|clk_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|clk_counter~0_combout\ = (\spi_controller_1|spi_tx_component|Add1~4_combout\ & (((!\spi_controller_1|spi_tx_component|clk_counter\(8)) # (!\spi_controller_1|spi_tx_component|Equal0~0_OTERM65\)) # 
-- (!\spi_controller_1|spi_tx_component|Equal0~1_OTERM63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|Equal0~1_OTERM63\,
	datab => \spi_controller_1|spi_tx_component|Equal0~0_OTERM65\,
	datac => \spi_controller_1|spi_tx_component|Add1~4_combout\,
	datad => \spi_controller_1|spi_tx_component|clk_counter\(8),
	combout => \spi_controller_1|spi_tx_component|clk_counter~0_combout\);

-- Location: LCFF_X9_Y4_N9
\spi_controller_1|spi_tx_component|clk_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|clk_counter~0_combout\,
	ena => \spi_controller_1|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|clk_counter\(2));

-- Location: LCCOMB_X10_Y4_N0
\spi_controller_1|spi_tx_component|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|Equal0~0_combout\ = (!\spi_controller_1|spi_tx_component|Add1~2_combout\ & (!\spi_controller_1|spi_tx_component|Add1~6_combout\ & (!\spi_controller_1|spi_tx_component|clk_counter~1_combout\ & 
-- \spi_controller_1|spi_tx_component|clk_counter~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|Add1~2_combout\,
	datab => \spi_controller_1|spi_tx_component|Add1~6_combout\,
	datac => \spi_controller_1|spi_tx_component|clk_counter~1_combout\,
	datad => \spi_controller_1|spi_tx_component|clk_counter~0_combout\,
	combout => \spi_controller_1|spi_tx_component|Equal0~0_combout\);

-- Location: LCFF_X10_Y4_N1
\spi_controller_1|spi_tx_component|Equal0~0_NEW_REG64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|Equal0~0_combout\,
	ena => \spi_controller_1|spi_tx_component|curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|Equal0~0_OTERM65\);

-- Location: LCCOMB_X10_Y4_N12
\spi_controller_1|spi_tx_component|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|Equal0~2_combout\ = (\spi_controller_1|spi_tx_component|Equal0~0_OTERM65\ & (\spi_controller_1|spi_tx_component|Equal0~1_OTERM63\ & \spi_controller_1|spi_tx_component|clk_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|Equal0~0_OTERM65\,
	datac => \spi_controller_1|spi_tx_component|Equal0~1_OTERM63\,
	datad => \spi_controller_1|spi_tx_component|clk_counter\(8),
	combout => \spi_controller_1|spi_tx_component|Equal0~2_combout\);

-- Location: LCCOMB_X10_Y6_N14
\spi_controller_1|spi_tx_component|sclk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|sclk~0_combout\ = (\spi_controller_1|spi_tx_component|sclk~regout\ $ (\spi_controller_1|spi_tx_component|Equal0~2_combout\)) # (!\spi_controller_1|spi_tx_component|curr_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|curr_state~regout\,
	datac => \spi_controller_1|spi_tx_component|sclk~regout\,
	datad => \spi_controller_1|spi_tx_component|Equal0~2_combout\,
	combout => \spi_controller_1|spi_tx_component|sclk~0_combout\);

-- Location: LCFF_X10_Y6_N15
\spi_controller_1|spi_tx_component|sclk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|sclk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|sclk~regout\);

-- Location: LCCOMB_X10_Y6_N16
\spi_controller_1|spi_tx_component|bits_sent[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|bits_sent[0]~10_combout\ = \spi_controller_1|spi_tx_component|bits_sent\(0) $ (VCC)
-- \spi_controller_1|spi_tx_component|bits_sent[0]~11\ = CARRY(\spi_controller_1|spi_tx_component|bits_sent\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|bits_sent\(0),
	datad => VCC,
	combout => \spi_controller_1|spi_tx_component|bits_sent[0]~10_combout\,
	cout => \spi_controller_1|spi_tx_component|bits_sent[0]~11\);

-- Location: LCCOMB_X10_Y6_N18
\spi_controller_1|spi_tx_component|bits_sent[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|bits_sent[1]~14_combout\ = (\spi_controller_1|spi_tx_component|bits_sent\(1) & (!\spi_controller_1|spi_tx_component|bits_sent[0]~11\)) # (!\spi_controller_1|spi_tx_component|bits_sent\(1) & 
-- ((\spi_controller_1|spi_tx_component|bits_sent[0]~11\) # (GND)))
-- \spi_controller_1|spi_tx_component|bits_sent[1]~15\ = CARRY((!\spi_controller_1|spi_tx_component|bits_sent[0]~11\) # (!\spi_controller_1|spi_tx_component|bits_sent\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|bits_sent\(1),
	datad => VCC,
	cin => \spi_controller_1|spi_tx_component|bits_sent[0]~11\,
	combout => \spi_controller_1|spi_tx_component|bits_sent[1]~14_combout\,
	cout => \spi_controller_1|spi_tx_component|bits_sent[1]~15\);

-- Location: LCCOMB_X10_Y6_N30
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

-- Location: LCCOMB_X10_Y6_N26
\spi_controller_1|spi_tx_component|bits_sent[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|bits_sent[2]~12_combout\ = (\spi_controller_1|spi_tx_component|sclk~regout\) # (!\spi_controller_1|spi_tx_component|curr_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|sclk~regout\,
	datac => \spi_controller_1|spi_tx_component|curr_state~regout\,
	combout => \spi_controller_1|spi_tx_component|bits_sent[2]~12_combout\);

-- Location: LCFF_X10_Y6_N17
\spi_controller_1|spi_tx_component|bits_sent[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|bits_sent[0]~10_combout\,
	sdata => \spi_controller_1|spi_tx_component|curr_state~regout\,
	sload => \spi_controller_1|spi_tx_component|bits_sent[2]~12_combout\,
	ena => \spi_controller_1|spi_tx_component|bits_sent[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|bits_sent\(0));

-- Location: LCCOMB_X10_Y6_N10
\spi_controller_1|spi_tx_component|SPI_MOSI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|SPI_MOSI~0_combout\ = (!\spi_controller_1|spi_tx_component|bits_sent\(2) & (!\spi_controller_1|spi_tx_component|bits_sent\(1) & (!\spi_controller_1|spi_tx_component|bits_sent\(0) & 
-- !\spi_controller_1|spi_tx_component|bits_sent\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|bits_sent\(2),
	datab => \spi_controller_1|spi_tx_component|bits_sent\(1),
	datac => \spi_controller_1|spi_tx_component|bits_sent\(0),
	datad => \spi_controller_1|spi_tx_component|bits_sent\(3),
	combout => \spi_controller_1|spi_tx_component|SPI_MOSI~0_combout\);

-- Location: LCCOMB_X10_Y6_N28
\spi_controller_1|spi_tx_component|SPI_MOSI~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|SPI_MOSI~3_combout\ = (!\spi_controller_1|spi_tx_component|bits_sent\(4) & \spi_controller_1|spi_tx_component|SPI_MOSI~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_controller_1|spi_tx_component|bits_sent\(4),
	datad => \spi_controller_1|spi_tx_component|SPI_MOSI~0_combout\,
	combout => \spi_controller_1|spi_tx_component|SPI_MOSI~3_combout\);

-- Location: LCCOMB_X10_Y6_N4
\spi_controller_1|spi_tx_component|bits_sent[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|bits_sent[2]~13_combout\ = ((\spi_controller_1|spi_tx_component|Equal0~2_combout\ & ((\spi_controller_1|spi_tx_component|SPI_MOSI~3_combout\) # (!\spi_controller_1|spi_tx_component|sclk~regout\)))) # 
-- (!\spi_controller_1|spi_tx_component|curr_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|Equal0~2_combout\,
	datab => \spi_controller_1|spi_tx_component|curr_state~regout\,
	datac => \spi_controller_1|spi_tx_component|sclk~regout\,
	datad => \spi_controller_1|spi_tx_component|SPI_MOSI~3_combout\,
	combout => \spi_controller_1|spi_tx_component|bits_sent[2]~13_combout\);

-- Location: LCFF_X10_Y6_N19
\spi_controller_1|spi_tx_component|bits_sent[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|bits_sent[1]~14_combout\,
	sdata => \~GND~combout\,
	sload => \spi_controller_1|spi_tx_component|bits_sent[2]~12_combout\,
	ena => \spi_controller_1|spi_tx_component|bits_sent[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|bits_sent\(1));

-- Location: LCCOMB_X10_Y6_N22
\spi_controller_1|spi_tx_component|bits_sent[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|bits_sent[3]~18_combout\ = (\spi_controller_1|spi_tx_component|bits_sent\(3) & (!\spi_controller_1|spi_tx_component|bits_sent[2]~17\)) # (!\spi_controller_1|spi_tx_component|bits_sent\(3) & 
-- ((\spi_controller_1|spi_tx_component|bits_sent[2]~17\) # (GND)))
-- \spi_controller_1|spi_tx_component|bits_sent[3]~19\ = CARRY((!\spi_controller_1|spi_tx_component|bits_sent[2]~17\) # (!\spi_controller_1|spi_tx_component|bits_sent\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|bits_sent\(3),
	datad => VCC,
	cin => \spi_controller_1|spi_tx_component|bits_sent[2]~17\,
	combout => \spi_controller_1|spi_tx_component|bits_sent[3]~18_combout\,
	cout => \spi_controller_1|spi_tx_component|bits_sent[3]~19\);

-- Location: LCFF_X10_Y6_N23
\spi_controller_1|spi_tx_component|bits_sent[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|bits_sent[3]~18_combout\,
	sdata => \~GND~combout\,
	sload => \spi_controller_1|spi_tx_component|bits_sent[2]~12_combout\,
	ena => \spi_controller_1|spi_tx_component|bits_sent[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|bits_sent\(3));

-- Location: LCCOMB_X10_Y6_N24
\spi_controller_1|spi_tx_component|bits_sent[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|bits_sent[4]~20_combout\ = \spi_controller_1|spi_tx_component|bits_sent\(4) $ (!\spi_controller_1|spi_tx_component|bits_sent[3]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|bits_sent\(4),
	cin => \spi_controller_1|spi_tx_component|bits_sent[3]~19\,
	combout => \spi_controller_1|spi_tx_component|bits_sent[4]~20_combout\);

-- Location: LCFF_X10_Y6_N25
\spi_controller_1|spi_tx_component|bits_sent[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|bits_sent[4]~20_combout\,
	sdata => \~GND~combout\,
	sload => \spi_controller_1|spi_tx_component|bits_sent[2]~12_combout\,
	ena => \spi_controller_1|spi_tx_component|bits_sent[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|bits_sent\(4));

-- Location: LCCOMB_X10_Y6_N12
\spi_controller_1|spi_tx_component|curr_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|curr_state~0_combout\ = ((\spi_controller_1|spi_tx_component|sclk~regout\) # ((!\spi_controller_1|spi_tx_component|Equal0~2_combout\) # (!\spi_controller_1|spi_tx_component|bits_sent\(4)))) # 
-- (!\spi_controller_1|spi_tx_component|SPI_MOSI~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|SPI_MOSI~0_combout\,
	datab => \spi_controller_1|spi_tx_component|sclk~regout\,
	datac => \spi_controller_1|spi_tx_component|bits_sent\(4),
	datad => \spi_controller_1|spi_tx_component|Equal0~2_combout\,
	combout => \spi_controller_1|spi_tx_component|curr_state~0_combout\);

-- Location: LCCOMB_X9_Y6_N6
\spi_controller_1|spi_tx_component|curr_state~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|curr_state~feeder_combout\ = \spi_controller_1|spi_tx_component|curr_state~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|curr_state~0_combout\,
	combout => \spi_controller_1|spi_tx_component|curr_state~feeder_combout\);

-- Location: LCCOMB_X9_Y5_N6
\spi_controller_1|spi_tx_component|SEND_DONE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|SEND_DONE~0_combout\ = (\spi_controller_1|spi_tx_component|SEND_DONE~regout\) # (!\spi_controller_1|spi_tx_component|curr_state~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_controller_1|spi_tx_component|SEND_DONE~regout\,
	datad => \spi_controller_1|spi_tx_component|curr_state~0_combout\,
	combout => \spi_controller_1|spi_tx_component|SEND_DONE~0_combout\);

-- Location: LCFF_X9_Y5_N7
\spi_controller_1|spi_tx_component|SEND_DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|SEND_DONE~0_combout\,
	sclr => \spi_controller_1|spi_tx_component|ALT_INV_curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|SEND_DONE~regout\);

-- Location: LCCOMB_X14_Y7_N8
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X14_Y7_N10
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X14_Y7_N12
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X14_Y7_N14
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & (\Add0~7\ $ (GND))) # (!counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCFF_X14_Y7_N15
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X14_Y7_N16
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (!\Add0~9\)) # (!counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X14_Y7_N18
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter(6) & (\Add0~11\ $ (GND))) # (!counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCFF_X14_Y7_N19
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X14_Y7_N20
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(7) & (!\Add0~13\)) # (!counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCFF_X14_Y7_N11
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCFF_X14_Y7_N17
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCFF_X14_Y7_N13
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X14_Y6_N4
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter(15) & (!\Add0~29\)) # (!counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X14_Y6_N6
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter(16) & (\Add0~31\ $ (GND))) # (!counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X14_Y6_N8
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter(17) & (!\Add0~33\)) # (!counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X15_Y6_N24
\counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\Add0~34_combout\ & ((!\Equal3~4_combout\) # (!\Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~2_combout\,
	datac => \Equal3~4_combout\,
	datad => \Add0~34_combout\,
	combout => \counter~3_combout\);

-- Location: LCFF_X15_Y6_N25
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCCOMB_X14_Y6_N12
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (counter(19) & (!\Add0~37\)) # (!counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X13_Y6_N4
\counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~10_combout\ = (\Add0~38_combout\ & ((!\Equal4~2_combout\) # (!\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datac => \Add0~38_combout\,
	datad => \Equal4~2_combout\,
	combout => \counter~10_combout\);

-- Location: LCFF_X13_Y6_N5
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCCOMB_X14_Y6_N14
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (counter(20) & (\Add0~39\ $ (GND))) # (!counter(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((counter(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X13_Y6_N6
\counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~9_combout\ = (\Add0~40_combout\ & ((!\Equal4~2_combout\) # (!\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datac => \Add0~40_combout\,
	datad => \Equal4~2_combout\,
	combout => \counter~9_combout\);

-- Location: LCFF_X13_Y6_N7
\counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(20));

-- Location: LCCOMB_X14_Y6_N16
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (counter(21) & (!\Add0~41\)) # (!counter(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X14_Y6_N18
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (counter(22) & (\Add0~43\ $ (GND))) # (!counter(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((counter(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X14_Y6_N28
\counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (\Add0~44_combout\ & ((!\Equal3~4_combout\) # (!\Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~2_combout\,
	datac => \Equal3~4_combout\,
	datad => \Add0~44_combout\,
	combout => \counter~6_combout\);

-- Location: LCFF_X14_Y6_N29
\counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(22));

-- Location: LCCOMB_X13_Y6_N8
\Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (counter(21) & (counter(22) & (!counter(0) & !counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datab => counter(22),
	datac => counter(0),
	datad => counter(1),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X14_Y7_N4
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!counter(9) & (!counter(10) & (!counter(4) & !counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(10),
	datac => counter(4),
	datad => counter(8),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X13_Y6_N26
\Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (\Equal3~2_combout\ & (!counter(3) & (\Equal3~1_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => counter(3),
	datac => \Equal3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X13_Y6_N24
\Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (counter(12) & (!counter(2) & (!counter(5) & \Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(2),
	datac => counter(5),
	datad => \Equal3~3_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X14_Y7_N0
\counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Add0~14_combout\ & ((!\Equal3~4_combout\) # (!\Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~2_combout\,
	datac => \Add0~14_combout\,
	datad => \Equal3~4_combout\,
	combout => \counter~0_combout\);

-- Location: LCFF_X14_Y7_N1
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X14_Y7_N22
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter(8) & (\Add0~15\ $ (GND))) # (!counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCFF_X14_Y7_N23
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCCOMB_X14_Y7_N26
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter(10) & (\Add0~19\ $ (GND))) # (!counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCFF_X14_Y7_N27
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X14_Y7_N28
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter(11) & (!\Add0~21\)) # (!counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCFF_X14_Y7_N29
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X14_Y7_N30
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter(12) & (\Add0~23\ $ (GND))) # (!counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X14_Y7_N2
\counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\Add0~24_combout\ & ((!\Equal3~4_combout\) # (!\Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~2_combout\,
	datab => \Add0~24_combout\,
	datad => \Equal3~4_combout\,
	combout => \counter~5_combout\);

-- Location: LCFF_X14_Y7_N3
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCCOMB_X14_Y6_N0
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter(13) & (!\Add0~25\)) # (!counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X14_Y6_N2
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter(14) & (\Add0~27\ $ (GND))) # (!counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X15_Y6_N14
\counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\Add0~30_combout\ & ((!\Equal3~4_combout\) # (!\Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~2_combout\,
	datac => \Add0~30_combout\,
	datad => \Equal3~4_combout\,
	combout => \counter~4_combout\);

-- Location: LCFF_X15_Y6_N15
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X14_Y6_N20
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (counter(23) & (!\Add0~45\)) # (!counter(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X14_Y6_N26
\counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\Add0~46_combout\ & ((!\Equal3~4_combout\) # (!\Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~2_combout\,
	datac => \Add0~46_combout\,
	datad => \Equal3~4_combout\,
	combout => \counter~2_combout\);

-- Location: LCFF_X14_Y6_N27
\counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(23));

-- Location: LCCOMB_X15_Y6_N18
\Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (counter(25) & (counter(15) & (counter(17) & counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(25),
	datab => counter(15),
	datac => counter(17),
	datad => counter(23),
	combout => \Equal4~1_combout\);

-- Location: LCFF_X14_Y6_N23
\counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(24));

-- Location: LCFF_X14_Y6_N7
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCCOMB_X15_Y6_N30
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!counter(18) & (!counter(24) & (!counter(16) & !counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(24),
	datac => counter(16),
	datad => counter(11),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X15_Y6_N22
\Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (counter(7) & (\Equal4~1_combout\ & (!counter(6) & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => \Equal4~1_combout\,
	datac => counter(6),
	datad => \Equal4~0_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X15_Y6_N8
\counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~8_combout\ = (!counter(0) & ((!\Equal3~4_combout\) # (!\Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~2_combout\,
	datac => counter(0),
	datad => \Equal3~4_combout\,
	combout => \counter~8_combout\);

-- Location: LCFF_X15_Y6_N9
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X14_Y7_N6
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	cout => \Add0~1\);

-- Location: LCFF_X14_Y7_N9
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X15_Y6_N2
\Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (!counter(25) & (!counter(15) & (!counter(17) & !counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(25),
	datab => counter(15),
	datac => counter(17),
	datad => counter(23),
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X15_Y6_N20
\Equal3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (counter(6) & (!counter(7) & \Equal3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datac => counter(7),
	datad => \Equal3~5_combout\,
	combout => \Equal3~8_combout\);

-- Location: LCCOMB_X13_Y6_N14
\counter~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~12_combout\ = (\Add0~26_combout\ & ((!\Equal4~2_combout\) # (!\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datac => \Add0~26_combout\,
	datad => \Equal4~2_combout\,
	combout => \counter~12_combout\);

-- Location: LCFF_X13_Y6_N15
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCCOMB_X13_Y6_N30
\counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~11_combout\ = (\Add0~28_combout\ & ((!\Equal3~4_combout\) # (!\Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~2_combout\,
	datac => \Equal3~4_combout\,
	datad => \Add0~28_combout\,
	combout => \counter~11_combout\);

-- Location: LCFF_X13_Y6_N31
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCCOMB_X13_Y6_N0
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!counter(12) & (!counter(13) & (counter(5) & !counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(13),
	datac => counter(5),
	datad => counter(14),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X13_Y6_N12
\counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (\Add0~42_combout\ & ((!\Equal4~2_combout\) # (!\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datac => \Add0~42_combout\,
	datad => \Equal4~2_combout\,
	combout => \counter~7_combout\);

-- Location: LCFF_X13_Y6_N13
\counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(21));

-- Location: LCCOMB_X13_Y6_N20
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!counter(20) & (!counter(22) & (!counter(19) & !counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datab => counter(22),
	datac => counter(19),
	datad => counter(21),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X13_Y6_N18
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (counter(2) & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X13_Y6_N22
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal3~0_combout\ & (!counter(3) & (\Equal3~8_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => counter(3),
	datac => \Equal3~8_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X13_Y6_N16
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (counter(1) & ((\Equal0~3_combout\ & (!counter(0))) # (!\Equal0~3_combout\ & ((\SPI_send_irq~regout\))))) # (!counter(1) & (((\SPI_send_irq~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => \SPI_send_irq~regout\,
	datad => \Equal0~3_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X13_Y6_N17
SPI_send_irq : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SPI_send_irq~regout\);

-- Location: LCCOMB_X13_Y5_N18
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) $ (((VCC) # 
-- (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ = CARRY(\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) $ 
-- (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datab => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	cout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X13_Y5_N20
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ = (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ & 
-- (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) $ (((\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\) # (VCC))))) # 
-- (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ & ((\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1)) # ((GND))))
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ = CARRY((\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) $ 
-- (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)) # (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datab => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	cin => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	cout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X13_Y5_N30
\spi_controller_1|fifo_rdreq~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|fifo_rdreq~0_combout\ = (!\spi_controller_1|curr_state.idle~regout\ & ((\spi_controller_1|fifo_rdreq~regout\) # (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|curr_state.idle~regout\,
	datac => \spi_controller_1|fifo_rdreq~regout\,
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \spi_controller_1|fifo_rdreq~0_combout\);

-- Location: LCFF_X13_Y5_N31
\spi_controller_1|fifo_rdreq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|fifo_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|fifo_rdreq~regout\);

-- Location: LCCOMB_X13_Y5_N10
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ = (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & (\spi_controller_1|fifo_rdreq~regout\ $ 
-- (((!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ & \SPI_send_irq~regout\))))) # (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & 
-- (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ & (\SPI_send_irq~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datab => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datac => \SPI_send_irq~regout\,
	datad => \spi_controller_1|fifo_rdreq~regout\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\);

-- Location: LCFF_X13_Y5_N23
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	ena => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2));

-- Location: LCCOMB_X13_Y5_N4
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ = (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3) & 
-- (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) & (\SPI_send_irq~regout\ & \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	datab => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datac => \SPI_send_irq~regout\,
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\);

-- Location: LCCOMB_X13_Y5_N26
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ = (!\spi_controller_1|fifo_rdreq~regout\ & ((\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\) # 
-- ((\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ & \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\,
	datab => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\,
	datac => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \spi_controller_1|fifo_rdreq~regout\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\);

-- Location: LCFF_X13_Y5_N27
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\);

-- Location: LCCOMB_X13_Y5_N28
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ = (\SPI_send_irq~regout\ & !\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPI_send_irq~regout\,
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\);

-- Location: LCFF_X13_Y5_N19
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	ena => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0));

-- Location: LCFF_X13_Y5_N21
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	ena => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1));

-- Location: LCCOMB_X13_Y5_N0
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ = (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3)) # 
-- ((\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2)) # ((\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1)) # 
-- (!\spi_controller_1|fifo_rdreq~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	datab => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datac => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datad => \spi_controller_1|fifo_rdreq~regout\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\);

-- Location: LCCOMB_X13_Y5_N14
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ = (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\) # 
-- ((\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & ((\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\) # 
-- (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\,
	datab => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datac => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\);

-- Location: LCFF_X13_Y5_N15
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\);

-- Location: LCCOMB_X13_Y5_N2
\spi_controller_1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|Selector0~0_combout\ = (\spi_controller_1|curr_state.transmiting~regout\ & (!\spi_controller_1|spi_tx_component|SEND_DONE~regout\ & ((\spi_controller_1|curr_state.idle~regout\) # 
-- (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)))) # (!\spi_controller_1|curr_state.transmiting~regout\ & (((\spi_controller_1|curr_state.idle~regout\) # 
-- (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|curr_state.transmiting~regout\,
	datab => \spi_controller_1|spi_tx_component|SEND_DONE~regout\,
	datac => \spi_controller_1|curr_state.idle~regout\,
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \spi_controller_1|Selector0~0_combout\);

-- Location: LCFF_X13_Y5_N3
\spi_controller_1|curr_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|curr_state.idle~regout\);

-- Location: LCCOMB_X13_Y5_N8
\spi_controller_1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|Selector1~0_combout\ = (!\spi_controller_1|curr_state.idle~regout\ & \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|curr_state.idle~regout\,
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \spi_controller_1|Selector1~0_combout\);

-- Location: LCFF_X13_Y5_N9
\spi_controller_1|curr_state.reading_fifo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|curr_state.reading_fifo~regout\);

-- Location: LCFF_X13_Y5_N13
\spi_controller_1|tx_send_irq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \spi_controller_1|curr_state.reading_fifo~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|tx_send_irq~regout\);

-- Location: LCFF_X9_Y6_N7
\spi_controller_1|spi_tx_component|curr_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|curr_state~feeder_combout\,
	sdata => \spi_controller_1|tx_send_irq~regout\,
	sload => \spi_controller_1|spi_tx_component|ALT_INV_curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|curr_state~regout\);

-- Location: LCCOMB_X10_Y6_N8
\spi_controller_1|spi_tx_component|SPI_MOSI~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|SPI_MOSI~1_combout\ = ((!\spi_controller_1|spi_tx_component|bits_sent\(4) & \spi_controller_1|spi_tx_component|SPI_MOSI~0_combout\)) # (!\spi_controller_1|spi_tx_component|sclk~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|bits_sent\(4),
	datac => \spi_controller_1|spi_tx_component|sclk~regout\,
	datad => \spi_controller_1|spi_tx_component|SPI_MOSI~0_combout\,
	combout => \spi_controller_1|spi_tx_component|SPI_MOSI~1_combout\);

-- Location: LCCOMB_X10_Y5_N18
\spi_controller_1|spi_tx_component|tx_buf[15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\ = (\spi_controller_1|spi_tx_component|curr_state~regout\ & (((\spi_controller_1|spi_tx_component|Equal0~2_combout\ & \spi_controller_1|spi_tx_component|SPI_MOSI~1_combout\)))) # 
-- (!\spi_controller_1|spi_tx_component|curr_state~regout\ & (\spi_controller_1|tx_send_irq~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|tx_send_irq~regout\,
	datab => \spi_controller_1|spi_tx_component|Equal0~2_combout\,
	datac => \spi_controller_1|spi_tx_component|curr_state~regout\,
	datad => \spi_controller_1|spi_tx_component|SPI_MOSI~1_combout\,
	combout => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\);

-- Location: LCFF_X10_Y5_N19
\spi_controller_1|spi_tx_component|tx_buf[1]_NEW_REG0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \spi_controller_1|spi_tx_component|curr_state~regout\,
	sload => VCC,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\);

-- Location: LCCOMB_X12_Y5_N20
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ = (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & \spi_controller_1|fifo_rdreq~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \spi_controller_1|fifo_rdreq~regout\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\);

-- Location: LCCOMB_X12_Y4_N10
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0) $ (VCC)
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ = CARRY(\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0),
	datad => VCC,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	cout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\);

-- Location: LCFF_X12_Y4_N11
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	ena => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

-- Location: LCCOMB_X12_Y4_N12
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ = (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
-- (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\)) # (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
-- ((\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # (GND)))
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ = CARRY((!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # 
-- (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1),
	datad => VCC,
	cin => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	cout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\);

-- Location: LCFF_X12_Y4_N13
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	ena => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1));

-- Location: LCCOMB_X12_Y4_N14
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ = (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & 
-- (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ $ (GND))) # (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & 
-- (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ & VCC))
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ = CARRY((\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & 
-- !\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2),
	datad => VCC,
	cin => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	cout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\);

-- Location: LCFF_X12_Y4_N15
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	ena => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2));

-- Location: LCCOMB_X12_Y4_N16
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3) $ 
-- (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3),
	cin => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\);

-- Location: LCFF_X12_Y4_N17
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	ena => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3));

-- Location: LCCOMB_X12_Y5_N8
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0) $ (VCC)
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ = CARRY(\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0),
	datad => VCC,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	cout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\);

-- Location: LCFF_X12_Y5_N9
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	ena => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

-- Location: LCCOMB_X12_Y5_N10
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\ = (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & 
-- (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\)) # (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & 
-- ((\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\) # (GND)))
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ = CARRY((!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\) # 
-- (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1),
	datad => VCC,
	cin => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	cout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\);

-- Location: LCFF_X12_Y5_N11
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	ena => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1));

-- Location: LCCOMB_X12_Y5_N12
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\ = (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ $ (GND))) # (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- (!\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ & VCC))
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ = CARRY((\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
-- !\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2),
	datad => VCC,
	cin => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	cout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\);

-- Location: LCFF_X12_Y5_N13
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	ena => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2));

-- Location: LCCOMB_X12_Y5_N14
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) $ 
-- (\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3),
	cin => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\,
	combout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\);

-- Location: LCFF_X12_Y5_N15
\spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit4a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\,
	ena => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3));

-- Location: LCCOMB_X13_Y6_N28
\SPI_send_data[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SPI_send_data[4]~0_combout\ = (SPI_send_data(4)) # ((!counter(0) & (!counter(1) & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => SPI_send_data(4),
	datad => \Equal0~3_combout\,
	combout => \SPI_send_data[4]~0_combout\);

-- Location: LCFF_X13_Y6_N29
\SPI_send_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \SPI_send_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SPI_send_data(4));

-- Location: LCFF_X10_Y5_N31
\spi_controller_1|spi_tx_component|tx_buf[15]_NEW_REG58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(15),
	sload => VCC,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[15]_OTERM59\);

-- Location: LCFF_X10_Y5_N29
\spi_controller_1|spi_tx_component|tx_buf[8]_NEW_REG30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(8),
	sload => VCC,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[8]_OTERM31\);

-- Location: LCCOMB_X10_Y5_N22
\spi_controller_1|spi_tx_component|tx_buf[6]_OTERM23~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[6]_OTERM23~feeder_combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(6),
	combout => \spi_controller_1|spi_tx_component|tx_buf[6]_OTERM23~feeder_combout\);

-- Location: LCFF_X10_Y5_N23
\spi_controller_1|spi_tx_component|tx_buf[6]_NEW_REG22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[6]_OTERM23~feeder_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[6]_OTERM23\);

-- Location: LCCOMB_X10_Y5_N2
\spi_controller_1|spi_tx_component|tx_buf~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~26_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & (\spi_controller_1|spi_tx_component|tx_buf[6]_OTERM25\)) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- ((\spi_controller_1|spi_tx_component|tx_buf[6]_OTERM23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|tx_buf[6]_OTERM25\,
	datab => \spi_controller_1|spi_tx_component|tx_buf[6]_OTERM23\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~26_combout\);

-- Location: LCFF_X10_Y5_N3
\spi_controller_1|spi_tx_component|tx_buf[7]_NEW_REG28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf~26_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[7]_OTERM29\);

-- Location: LCCOMB_X10_Y5_N8
\spi_controller_1|spi_tx_component|tx_buf~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~25_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & ((\spi_controller_1|spi_tx_component|tx_buf[7]_OTERM29\))) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- (\spi_controller_1|spi_tx_component|tx_buf[7]_OTERM27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|tx_buf[7]_OTERM27\,
	datab => \spi_controller_1|spi_tx_component|tx_buf[7]_OTERM29\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~25_combout\);

-- Location: LCFF_X10_Y5_N9
\spi_controller_1|spi_tx_component|tx_buf[8]_NEW_REG32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf~25_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[8]_OTERM33\);

-- Location: LCCOMB_X10_Y5_N14
\spi_controller_1|spi_tx_component|tx_buf~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~24_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & ((\spi_controller_1|spi_tx_component|tx_buf[8]_OTERM33\))) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- (\spi_controller_1|spi_tx_component|tx_buf[8]_OTERM31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|tx_buf[8]_OTERM31\,
	datac => \spi_controller_1|spi_tx_component|tx_buf[8]_OTERM33\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~24_combout\);

-- Location: LCFF_X10_Y5_N15
\spi_controller_1|spi_tx_component|tx_buf[9]_NEW_REG36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf~24_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[9]_OTERM37\);

-- Location: LCCOMB_X12_Y5_N28
\spi_controller_1|spi_tx_component|tx_buf[9]_OTERM35~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[9]_OTERM35~feeder_combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(9),
	combout => \spi_controller_1|spi_tx_component|tx_buf[9]_OTERM35~feeder_combout\);

-- Location: LCFF_X12_Y5_N29
\spi_controller_1|spi_tx_component|tx_buf[9]_NEW_REG34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[9]_OTERM35~feeder_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[9]_OTERM35\);

-- Location: LCCOMB_X9_Y5_N24
\spi_controller_1|spi_tx_component|tx_buf~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~23_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & (\spi_controller_1|spi_tx_component|tx_buf[9]_OTERM37\)) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- ((\spi_controller_1|spi_tx_component|tx_buf[9]_OTERM35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	datac => \spi_controller_1|spi_tx_component|tx_buf[9]_OTERM37\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[9]_OTERM35\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~23_combout\);

-- Location: LCFF_X9_Y5_N25
\spi_controller_1|spi_tx_component|tx_buf[10]_NEW_REG40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf~23_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[10]_OTERM41\);

-- Location: LCCOMB_X12_Y5_N22
\spi_controller_1|spi_tx_component|tx_buf[10]_OTERM39~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[10]_OTERM39~feeder_combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(10),
	combout => \spi_controller_1|spi_tx_component|tx_buf[10]_OTERM39~feeder_combout\);

-- Location: LCFF_X12_Y5_N23
\spi_controller_1|spi_tx_component|tx_buf[10]_NEW_REG38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[10]_OTERM39~feeder_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[10]_OTERM39\);

-- Location: LCCOMB_X9_Y5_N26
\spi_controller_1|spi_tx_component|tx_buf~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~22_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & (\spi_controller_1|spi_tx_component|tx_buf[10]_OTERM41\)) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- ((\spi_controller_1|spi_tx_component|tx_buf[10]_OTERM39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	datac => \spi_controller_1|spi_tx_component|tx_buf[10]_OTERM41\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[10]_OTERM39\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~22_combout\);

-- Location: LCFF_X9_Y5_N27
\spi_controller_1|spi_tx_component|tx_buf[11]_NEW_REG44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf~22_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[11]_OTERM45\);

-- Location: LCCOMB_X12_Y5_N18
\spi_controller_1|spi_tx_component|tx_buf[11]_OTERM43~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[11]_OTERM43~feeder_combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(11),
	combout => \spi_controller_1|spi_tx_component|tx_buf[11]_OTERM43~feeder_combout\);

-- Location: LCFF_X12_Y5_N19
\spi_controller_1|spi_tx_component|tx_buf[11]_NEW_REG42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[11]_OTERM43~feeder_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[11]_OTERM43\);

-- Location: LCCOMB_X9_Y5_N22
\spi_controller_1|spi_tx_component|tx_buf~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~21_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & (\spi_controller_1|spi_tx_component|tx_buf[11]_OTERM45\)) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- ((\spi_controller_1|spi_tx_component|tx_buf[11]_OTERM43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|tx_buf[11]_OTERM45\,
	datac => \spi_controller_1|spi_tx_component|tx_buf[11]_OTERM43\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~21_combout\);

-- Location: LCFF_X9_Y5_N23
\spi_controller_1|spi_tx_component|tx_buf[12]_NEW_REG48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf~21_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[12]_OTERM49\);

-- Location: LCCOMB_X12_Y5_N4
\spi_controller_1|spi_tx_component|tx_buf[12]_OTERM47~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[12]_OTERM47~feeder_combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(12),
	combout => \spi_controller_1|spi_tx_component|tx_buf[12]_OTERM47~feeder_combout\);

-- Location: LCFF_X12_Y5_N5
\spi_controller_1|spi_tx_component|tx_buf[12]_NEW_REG46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[12]_OTERM47~feeder_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[12]_OTERM47\);

-- Location: LCCOMB_X9_Y5_N0
\spi_controller_1|spi_tx_component|tx_buf~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~20_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & (\spi_controller_1|spi_tx_component|tx_buf[12]_OTERM49\)) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- ((\spi_controller_1|spi_tx_component|tx_buf[12]_OTERM47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|tx_buf[12]_OTERM49\,
	datac => \spi_controller_1|spi_tx_component|tx_buf[12]_OTERM47\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~20_combout\);

-- Location: LCFF_X9_Y5_N1
\spi_controller_1|spi_tx_component|tx_buf[13]_NEW_REG52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf~20_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[13]_OTERM53\);

-- Location: LCCOMB_X12_Y5_N26
\spi_controller_1|spi_tx_component|tx_buf[13]_OTERM51~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[13]_OTERM51~feeder_combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(13),
	combout => \spi_controller_1|spi_tx_component|tx_buf[13]_OTERM51~feeder_combout\);

-- Location: LCFF_X12_Y5_N27
\spi_controller_1|spi_tx_component|tx_buf[13]_NEW_REG50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[13]_OTERM51~feeder_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[13]_OTERM51\);

-- Location: LCCOMB_X9_Y5_N28
\spi_controller_1|spi_tx_component|tx_buf~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~19_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & (\spi_controller_1|spi_tx_component|tx_buf[13]_OTERM53\)) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- ((\spi_controller_1|spi_tx_component|tx_buf[13]_OTERM51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|tx_buf[13]_OTERM53\,
	datac => \spi_controller_1|spi_tx_component|tx_buf[13]_OTERM51\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~19_combout\);

-- Location: LCFF_X9_Y5_N29
\spi_controller_1|spi_tx_component|tx_buf[14]_NEW_REG56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf~19_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[14]_OTERM57\);

-- Location: LCCOMB_X12_Y5_N24
\spi_controller_1|spi_tx_component|tx_buf[14]_OTERM55~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf[14]_OTERM55~feeder_combout\ = \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_controller_1|spi_fifo_component|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram1|q_b\(14),
	combout => \spi_controller_1|spi_tx_component|tx_buf[14]_OTERM55~feeder_combout\);

-- Location: LCFF_X12_Y5_N25
\spi_controller_1|spi_tx_component|tx_buf[14]_NEW_REG54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf[14]_OTERM55~feeder_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[14]_OTERM55\);

-- Location: LCCOMB_X9_Y5_N14
\spi_controller_1|spi_tx_component|tx_buf~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~18_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & (\spi_controller_1|spi_tx_component|tx_buf[14]_OTERM57\)) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- ((\spi_controller_1|spi_tx_component|tx_buf[14]_OTERM55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|tx_buf[14]_OTERM57\,
	datac => \spi_controller_1|spi_tx_component|tx_buf[14]_OTERM55\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~18_combout\);

-- Location: LCFF_X9_Y5_N15
\spi_controller_1|spi_tx_component|tx_buf[15]_NEW_REG60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|tx_buf~18_combout\,
	ena => \spi_controller_1|spi_tx_component|tx_buf[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|tx_buf[15]_OTERM61\);

-- Location: LCCOMB_X10_Y5_N30
\spi_controller_1|spi_tx_component|tx_buf~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|tx_buf~16_combout\ = (\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & ((\spi_controller_1|spi_tx_component|tx_buf[15]_OTERM61\))) # (!\spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\ & 
-- (\spi_controller_1|spi_tx_component|tx_buf[15]_OTERM59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_controller_1|spi_tx_component|tx_buf[1]_OTERM1\,
	datac => \spi_controller_1|spi_tx_component|tx_buf[15]_OTERM59\,
	datad => \spi_controller_1|spi_tx_component|tx_buf[15]_OTERM61\,
	combout => \spi_controller_1|spi_tx_component|tx_buf~16_combout\);

-- Location: LCCOMB_X9_Y5_N16
\spi_controller_1|spi_tx_component|SPI_MOSI~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|SPI_MOSI~2_combout\ = (\spi_controller_1|spi_tx_component|Equal0~2_combout\ & ((\spi_controller_1|spi_tx_component|SPI_MOSI~1_combout\ & (\spi_controller_1|spi_tx_component|tx_buf~16_combout\)) # 
-- (!\spi_controller_1|spi_tx_component|SPI_MOSI~1_combout\ & ((\spi_controller_1|spi_tx_component|SPI_MOSI~regout\))))) # (!\spi_controller_1|spi_tx_component|Equal0~2_combout\ & (((\spi_controller_1|spi_tx_component|SPI_MOSI~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|Equal0~2_combout\,
	datab => \spi_controller_1|spi_tx_component|tx_buf~16_combout\,
	datac => \spi_controller_1|spi_tx_component|SPI_MOSI~regout\,
	datad => \spi_controller_1|spi_tx_component|SPI_MOSI~1_combout\,
	combout => \spi_controller_1|spi_tx_component|SPI_MOSI~2_combout\);

-- Location: LCFF_X9_Y5_N17
\spi_controller_1|spi_tx_component|SPI_MOSI\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|SPI_MOSI~2_combout\,
	sclr => \spi_controller_1|spi_tx_component|ALT_INV_curr_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|SPI_MOSI~regout\);

-- Location: LCCOMB_X9_Y6_N4
\spi_controller_1|spi_tx_component|SPI_CS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_controller_1|spi_tx_component|SPI_CS~0_combout\ = (\spi_controller_1|spi_tx_component|curr_state~regout\ & ((\spi_controller_1|spi_tx_component|SPI_CS~regout\))) # (!\spi_controller_1|spi_tx_component|curr_state~regout\ & 
-- (\spi_controller_1|tx_send_irq~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_controller_1|spi_tx_component|curr_state~regout\,
	datab => \spi_controller_1|tx_send_irq~regout\,
	datac => \spi_controller_1|spi_tx_component|SPI_CS~regout\,
	combout => \spi_controller_1|spi_tx_component|SPI_CS~0_combout\);

-- Location: LCFF_X9_Y6_N5
\spi_controller_1|spi_tx_component|SPI_CS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \spi_controller_1|spi_tx_component|SPI_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_controller_1|spi_tx_component|SPI_CS~regout\);

-- Location: LCCOMB_X15_Y6_N12
\Equal3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (counter(18) & (counter(24) & (counter(16) & counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(24),
	datac => counter(16),
	datad => counter(11),
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X15_Y6_N6
\Equal3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (!counter(7) & (\Equal3~5_combout\ & (counter(6) & \Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => \Equal3~5_combout\,
	datac => counter(6),
	datad => \Equal3~6_combout\,
	combout => \Equal3~7_combout\);

-- Location: LCCOMB_X13_Y6_N2
\LED_OUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED_OUT~0_combout\ = (\Equal3~4_combout\ & (!\Equal4~2_combout\ & ((\Equal3~7_combout\) # (\LED_OUT~reg0_regout\)))) # (!\Equal3~4_combout\ & (((\LED_OUT~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datab => \Equal3~7_combout\,
	datac => \LED_OUT~reg0_regout\,
	datad => \Equal4~2_combout\,
	combout => \LED_OUT~0_combout\);

-- Location: LCFF_X13_Y6_N3
\LED_OUT~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \LED_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_OUT~reg0_regout\);

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \spi_controller_1|spi_tx_component|SPI_MOSI~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SPI_MOSI);

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \spi_controller_1|spi_tx_component|ALT_INV_sclk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SPI_SCLK);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \spi_controller_1|spi_tx_component|ALT_INV_SPI_CS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SPI_CS);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_OUT~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALT_INV_LED_OUT~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_OUT);
END structure;


