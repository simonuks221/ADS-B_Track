library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Clock_divider is
generic(
Prescaler : integer := 434;
Half_Prescaler : integer := 217
);
port(
CLK: in std_logic;
CLK_OUT: out std_logic
);
end entity;

architecture arc of Clock_divider is
signal counter : integer range 0 to Half_Prescaler := 0;
signal clock_out : std_logic := '0';
begin

CLK_OUT <= clock_out;

process(CLK)
begin
	if(rising_edge(CLK)) then
		if(counter = Half_Prescaler) then
			clock_out <= not clock_out;
			counter <= 0;
		else
			counter <= counter + 1;
		end if;
		--if(counter < half_clock)  then
		--	counter <= counter + 1;
		--	clock_out <= '0';
		--elsif(counter = to_integer(unsigned(Prescaler))-1) then
		--	counter <= 0;
		--	clock_out <= '1';
		--else
		--	counter <= counter + 1;
		--	clock_out <= '1';
		--end if;
	end if;
end process;

end architecture;