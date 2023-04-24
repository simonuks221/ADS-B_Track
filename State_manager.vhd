library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity STATE_MANAGER is
port (
	CLK : in std_logic := '0';
	SETUP_DONE : in std_logic := '0';
	READ_ADC_DONE : in std_logic := '0';
	WRITE_OUT_DONE : in std_logic := '0';
	
	EN_SETUP : out std_logic := '1';
	EN_READ_ADC : out std_logic := '0';
	EN_WRITE_OUT_MRAM : out std_logic := '0'
);
end entity;

architecture arc of STATE_MANAGER is
type state is (setup, read_adc, write_out_mram, wait_1);
signal curr_state : state := setup;
signal counter : integer := 0;

begin

process(curr_state)
begin
	case curr_state is
		when setup =>
			EN_SETUP <= '1';
			EN_READ_ADC <= '0';
			EN_WRITE_OUT_MRAM <= '0';
		when read_adc =>
			EN_SETUP <= '0';
			EN_READ_ADC <= '1';
			EN_WRITE_OUT_MRAM <= '0';
		when write_out_mram =>
			EN_SETUP <= '0';
			EN_READ_ADC <= '0';
			EN_WRITE_OUT_MRAM <= '1';
		when others =>
			EN_SETUP <= '0';
			EN_READ_ADC <= '0';
			EN_WRITE_OUT_MRAM <= '0';
	end case;
end process;

process(CLK)
begin
	if(rising_edge(CLK)) then
		case curr_state is
			when setup =>
				if(SETUP_DONE = '1') then
					curr_state <= read_adc;
					--curr_state <= write_out_mram;
				end if;
			when read_adc =>
				if(READ_ADC_DONE = '1') then
					curr_state <= wait_1;
				end if;
			when wait_1 =>
				counter <= counter + 1;
				if(counter = 100) then
					counter <= 0;
					curr_state <= write_out_mram;
				end if;
			when write_out_mram =>
				if(WRITE_OUT_DONE = '1') then
					curr_state <= read_adc;
				end if;
			
		end case;
	end if;
end process;

end architecture;