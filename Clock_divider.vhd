library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Clock_divider is
port(
CLK: in std_logic;
Prescaler : in std_logic_vector(15 downto 0);

CLK_OUT: out std_logic
);
end entity;

architecture arc of Clock_divider is
signal counter : integer range 0 to 65535 := 0;
signal half_clock: integer range 0 to 65535 := 0;
signal clock_out : std_logic := '0';
begin

CLK_OUT <= clock_out;

process(CLK)
begin
	if(rising_edge(CLK)) then
		half_clock <= to_integer(unsigned('0'&Prescaler(15 downto 1)));
		if(counter < half_clock)  then
			counter <= counter + 1;
			clock_out <= '0';
		elsif(counter = to_integer(unsigned(Prescaler))-1) then
			counter <= 0;
			clock_out <= '1';
		else
			counter <= counter + 1;
			clock_out <= '1';
		end if;
	end if;
end process;

end architecture;