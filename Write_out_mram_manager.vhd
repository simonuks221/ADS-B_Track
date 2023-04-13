library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Write_out_mram_manager is

port(
	CLK : in std_logic := '0';
	UART_SEND_DATA : out std_logic_vector(7 downto 0);
	UART_DATA_IRQ : out std_logic := '0';
	UART_FIFO_EMPTY : in std_logic := '0';
	
	MRAM_DATA_OUT : in std_logic_vector(15 downto 0) := (others => '0');
	MRAM_ADDRESS_IN : out std_logic_vector(17 downto 0) := (others => '0');
	MRAM_READ_DATA : out std_logic := '0';
	MRAM_DONE : in std_logic := '0';

	WRITE_OUT_DONE : out std_logic := '0';
	EN_WRITE_OUT_MRAM : in std_logic := '0'
);

end entity;

architecture arc of Write_out_mram_manager is

signal address_counter : integer range 0 to 1000 := 0;

begin

MRAM_ADDRESS_IN <= std_logic_vector(to_unsigned(address_counter, MRAM_ADDRESS_IN'length));
UART_SEND_DATA <= MRAM_DATA_OUT(7 downto 0);

process(CLK)
begin
	if rising_edge(CLK) then
		UART_DATA_IRQ <= '0';
		if(EN_WRITE_OUT_MRAM = '1') then
			if(MRAM_DONE = '1') then
				if(UART_FIFO_EMPTY = '1') then
					UART_DATA_IRQ <= '1';
				end if;
			end if;
			MRAM_READ_DATA <= '1';
		end if;
	end if;
end process;

end architecture;