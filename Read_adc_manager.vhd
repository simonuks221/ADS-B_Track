library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Read_adc_manager is
generic(
	MAX_ADDRESS_COUNTS : integer :=  100;
	READ_COUNTER_MAX : integer := 4
);
port(
	CLK : in std_logic := '0';
	DCLK : in std_logic := '0';
	ADC_BIT : in std_logic_vector(9 downto 0) := (others => 'Z');
	ADC_BIT_VALID : out std_logic := '0';
	MRAM_DATA_OUT : out std_logic_vector(15 downto 0) := (others => '0');
	MRAM_ADDRESS_OUT : out std_logic_vector(17 downto 0) := (others => '0');
	MRAM_WRITE_DATA : out std_logic := '0';
	MRAM_DONE : in std_logic := '0';
	
	EN_READ_ADC : in std_logic := '0';
	READ_ADC_DONE : out std_logic := '0'
);
end entity;

architecture arc of Read_adc_manager is
	signal read_counter : integer range 0 to READ_COUNTER_MAX := 0;
	signal last_state : std_logic := '0';
	signal address_counter : integer range 0 to MAX_ADDRESS_COUNTS := 0;
	signal real_data_counter : integer range 0 to 255 := 255;
begin

MRAM_ADDRESS_OUT <= std_logic_vector(to_unsigned(address_counter, MRAM_ADDRESS_OUT'length));

READ_ADC_DONE <= '1' when address_counter = MAX_ADDRESS_COUNTS else '0';

process(CLK)
begin
	if rising_edge(CLK) then
		if(EN_READ_ADC = '0') then
			read_counter <= 0;
			--READ_ADC_DONE <= '0';
			MRAM_WRITE_DATA <= '0';
			ADC_BIT_VALID <= '0';
			address_counter <= 0;
			last_state <= '0';
		else
			last_state <= DCLK;
			if(DCLK = '1' and last_state = '0') then
				if(read_counter = READ_COUNTER_MAX) then
					if(MRAM_DONE = '1') then
						read_counter <= 0;
						address_counter <= address_counter + 1;
						
						if(real_data_counter = 0) then
							real_data_counter <= 255;
						else
							real_data_counter <= real_data_counter - 1;
						end if;

						MRAM_DATA_OUT <= "000000" & ADC_BIT;
						
						--MRAM_DATA_OUT <= "000000" & std_logic_vector(to_unsigned(real_data_counter, ADC_BIT'length)); --FAKE ADC
						MRAM_WRITE_DATA <= '1';
						ADC_BIT_VALID <= '1';
						--READ_ADC_DONE <= '1';
					else
						MRAM_WRITE_DATA <= '0';
						ADC_BIT_VALID <= '0';
					end if;
				else
					if(read_counter /= READ_COUNTER_MAX) then
						read_counter <= read_counter + 1;
					end if;
					MRAM_WRITE_DATA <= '0';
					ADC_BIT_VALID <= '0';
				end if;
			end if;
		end if;
	end if;
end process;

end architecture;