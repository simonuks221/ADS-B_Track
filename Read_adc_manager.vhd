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
	signal address_counter : integer range 0 to MAX_ADDRESS_COUNTS := 0;
	
	--Synchronisation --TODO: could make fifo instead
	signal DCLK_sync_1 : std_logic := '0';
	signal DCLK_sync_2 : std_logic := '0';
	signal DCLK_sync_3 : std_logic := '0';
	signal ADC_BIT_sync_1 : std_logic_vector(9 downto 0) := (others => '0');
	signal ADC_BIT_sync_2 : std_logic_vector(9 downto 0) := (others => '0');
begin

MRAM_ADDRESS_OUT <= std_logic_vector(to_unsigned(address_counter, MRAM_ADDRESS_OUT'length));
READ_ADC_DONE <= '1' when address_counter = MAX_ADDRESS_COUNTS else '0';

process(CLK)
begin
	if rising_edge(CLK) then
		DCLK_sync_1 <= DCLK;
		DCLK_sync_2 <= DCLK_sync_1;
		DCLK_sync_3 <= DCLK_sync_2;
		
		ADC_BIT_sync_1 <= ADC_BIT;
		ADC_BIT_sync_2 <= ADC_BIT_sync_1;
	end if;
end process;

process(CLK)
begin
	if rising_edge(CLK) then
		if(EN_READ_ADC = '0') then
			read_counter <= 0;
			MRAM_WRITE_DATA <= '0';
			ADC_BIT_VALID <= '0';
			address_counter <= 0;
		else
			if(DCLK_sync_2 = '1' and DCLK_sync_3 = '0') then
				--Rising DCLK edge
				if(read_counter = READ_COUNTER_MAX) then
					if(MRAM_DONE = '1') then
						read_counter <= 0;
						address_counter <= address_counter + 1;
						
						--MRAM_DATA_OUT <= "000000" & std_logic_vector(to_unsigned(to_integer(unsigned(ADC_BIT))-300, 10));
						MRAM_DATA_OUT <= "000000" & std_logic_vector(to_unsigned(to_integer(unsigned(ADC_BIT_sync_2)), 10));
						--MRAM_DATA_OUT <= "000000" & ADC_BIT_sync_2;
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