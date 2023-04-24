library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Setup_manager is
port(
	CLK : in std_logic := '0';
	EN_SETUP : in std_logic := '0';
	
	SPI_send_data : out std_logic_vector(16-1 downto 0) := (others => '0');
	SPI_send_irq : out std_logic := '0';
	SPI_FIFO_EMPTY : in std_logic := '0';
	ADC_SYNC : out std_logic := '0';
	
	SETUP_DONE : out std_logic := '0'
);

end entity;

architecture arc of Setup_manager is
	signal config_command_counter : integer range 0 to 100000 := 0;
begin

process(CLK)
begin
	if rising_edge(CLK) then
		if(EN_SETUP = '1') then
			case config_command_counter is --1 read, 0 write
				when 0 =>
					SPI_send_data <= "0000000000000011"; --00h
					SPI_send_irq <= '1';
				when 1=>
					SPI_send_irq <= '0';
					
				when 2 =>
					SPI_send_data <= "1000000000000000"; --00h
					SPI_send_irq <= '1';
				when 3 =>
					SPI_send_irq <= '0';
					
				when 4 =>
					--SPI_send_data <= "0000011011000000"; --TEST PATTERN 
					SPI_send_data <= "0000011000010000"; -- NORMAL WITH BIANRY OFFSET 06h
					SPI_send_irq <= '1';
				when 5 =>
					SPI_send_irq <= '0';
					
				when 6 =>
					SPI_send_data <= "1000011000000000"; -- 06h
					SPI_send_irq <= '1';
				when 7 =>
					SPI_send_irq <= '0';
					
				when 8 =>
					SPI_send_data <= "0000100000001000"; -- 08h --0.9V common mode i virsu
					SPI_send_irq <= '1';
				when 9 =>
					SPI_send_irq <= '0';
					
				when 25000=>
					ADC_SYNC <= '1';
				when 25001 =>
					ADC_SYNC <= '0';
					
				when others =>
					SPI_send_irq <= '0';
					--ADC_SYNC <= '0';
			end case;
			if(config_command_counter /= 26000) then --2ms = 100000
				config_command_counter <= config_command_counter + 1;
				SETUP_DONE <= '0';
			else
				SETUP_DONE <= '1';
			end if;
		end if;
	end if;
end process;

end architecture;