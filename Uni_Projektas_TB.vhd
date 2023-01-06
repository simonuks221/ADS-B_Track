library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Uni_Projektas_TB is
generic(
VOLTAGE_DATA_LEN: integer := 195
);
end entity;

architecture arc of Uni_Projektas_TB is

--Signals
signal adc_out : std_logic_vector(7 downto 0);
signal arrIndex : integer := 0;
signal CLK : std_logic := '0';
signal data_out : std_logic_vector(5 downto 0);
signal SYNC : std_logic := '0';

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

--Components
component UNI_Projektas is
port(
CLK : in std_logic;
ADC_IN : in std_logic_vector(7 downto 0);
DATA_OUT : out std_logic_vector(6-1 downto 0);
SYNC : out std_logic
);
end component;
begin
projektas : UNI_Projektas port map(CLK => CLK, ADC_IN => adc_out, data_out => data_out, SYNC => SYNC);

CLK <= not CLK after 0.01us; --50MHz

process(SYNC)
begin
	if(rising_edge(SYNC)) then
		if now > 10us then
			if(arrIndex < VOLTAGE_DATA_LEN-1) then
				arrIndex <= arrIndex + 1;
				adc_out <= adc_buffer(arrIndex);
			else
				adc_out <= (others => '0');
			end if;
		else
			adc_out <= (others => '0');
		end if;
	end if;
end process;

end architecture;