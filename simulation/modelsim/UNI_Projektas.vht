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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "01/17/2023 15:51:45"
                                                            
-- Vhdl Test Bench template for design  :  UNI_Projektas
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;                               

ENTITY UNI_Projektas_vhd_tst IS
generic(
VOLTAGE_DATA_LEN: integer := 195
);
END UNI_Projektas_vhd_tst;
ARCHITECTURE UNI_Projektas_arch OF UNI_Projektas_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADC_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLK : STD_LOGIC := '0';
SIGNAL DATA_OUT : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL SYNC : STD_LOGIC;
signal arrIndex : integer := 0;

--Functions
--Read from file
file file_voltages: text;
type b_data is array(0 to VOLTAGE_DATA_LEN) of std_logic_vector(7 downto 0);
impure function init return b_data is
variable r : b_data := (others => (others => '0'));
variable iline: line;
variable temp_data : std_logic_vector(7 downto 0);
begin
	file_open(file_voltages, "testVoltage.txt",  read_mode);
	 for i in 0 to VOLTAGE_DATA_LEN-1 loop --Iskaitant 9
		readline(file_voltages, iline);
		read(iline, temp_data);
		r(i) := temp_data;
	end loop;
	return r;
end function init;
signal adc_buffer : b_data := init;


COMPONENT UNI_Projektas
	PORT (
	ADC_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLK : IN STD_LOGIC;
	DATA_OUT : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	SYNC : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
i1 : UNI_Projektas
	PORT MAP (
	-- list connections between master ports and signals
	ADC_IN => ADC_IN,
	CLK => CLK,
	DATA_OUT => DATA_OUT,
	SYNC => SYNC
);
	
CLK <= not CLK after 0.01us; --50MHz

process(SYNC)
begin
	if(rising_edge(SYNC)) then
		if now > 10us then
			if(arrIndex < VOLTAGE_DATA_LEN-1) then
				arrIndex <= arrIndex + 1;
				adc_in <= adc_buffer(arrIndex);
			else
				adc_in <= (others => '0');
			end if;
		else
			adc_in <= (others => '0');
		end if;
	end if;
end process;                                          
END UNI_Projektas_arch;
