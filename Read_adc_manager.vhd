library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Read_adc_manager is
port(
	CLK : in std_logic := '0';
	DCLK : in std_logic := '0';
	ADC_BIT : in std_logic_vector(9 downto 0) := (others => 'Z');
	MRAM_DATA_OUT : out std_logic_vector(15 downto 0) := (others => '0');
	MRAM_ADDRESS_OUT : out std_logic_vector(17 downto 0) := (others => '0');
	MRAM_WRITE_DATA : out std_logic := '0';
	MRAM_DONE : in std_logic := '0';
	
	EN_READ_ADC : in std_logic := '0';
	READ_ADC_DONE : out std_logic := '0'
);
end entity;

architecture arc of Read_adc_manager is
	--signal read_counter : integer range 0 to 10 := 0;
	--signal address_counter : integer range 0 to 1000 := 0;
	signal real_data_counter : integer range 0 to 17 := 0;
begin

MRAM_ADDRESS_OUT <= std_logic_vector(to_unsigned(0, MRAM_ADDRESS_OUT'length));

--READ_ADC_DONE <= '1' when address_counter = 10 else '0';

process(DCLK)
begin
	if rising_edge(DCLK) then
		if(EN_READ_ADC = '0') then
			--read_counter <= 0;
			READ_ADC_DONE <= '0';
			MRAM_WRITE_DATA <= '0';
			--address_counter <= 0;
		else
			--if(read_counter = 10) then
				if(MRAM_DONE = '1') then
					--read_counter <= 0;
					--address_counter <= address_counter + 1;
					MRAM_DATA_OUT <= "000000" & ADC_BIT;
					if(real_data_counter = 16) then
						real_data_counter <= 0;
					else
						real_data_counter <= real_data_counter + 1;
					end if;
					--MRAM_DATA_OUT <= "000000" & std_logic_vector(to_unsigned(real_data_counter, ADC_BIT'length));
					MRAM_WRITE_DATA <= '1';
					READ_ADC_DONE <= '1';
				else
					MRAM_WRITE_DATA <= '0';
				end if;
--			else
--				if(read_counter /= 10) then
--					read_counter <= read_counter + 1;
--					MRAM_WRITE_DATA <= '0';
--				end if;
--				MRAM_WRITE_DATA <= '0';
--			end if;
		end if;
	end if;
end process;

end architecture;