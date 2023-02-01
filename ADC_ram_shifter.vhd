library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity ADC_ram_shifter is
	port (
		CLK : in std_logic := '0';
		address_a_1		: out STD_LOGIC_VECTOR (2 DOWNTO 0) := (others => '0');
		address_b_1		: out STD_LOGIC_VECTOR (2 DOWNTO 0) := (others => '0');
		
		address_a_2		: out STD_LOGIC_VECTOR (2 DOWNTO 0) := (others => '0');
		address_b_2		: out STD_LOGIC_VECTOR (2 DOWNTO 0) := (others => '0');
		
		new_adc_in : in std_logic_vector(7 downto 0) := (others => '0');
		stop_shift : in std_logic := '0';
		q : in std_logic_vector(511 downto 0);
		data : out std_logic_vector(512 downto 0)
	);
end entity;

architecture arc of ADC_ram_shifter is

signal count : std_logic := '0';
signal stop_shift_sig : std_logic := '0';
signal last_stop : std_logic := '0';
signal temp_shift : std_logic_vector(2*8-1 downto 0) := (others => '0');

begin

address_a_1 <= "000"; --75 62 40
address_a_2 <= "000";
address_b_1 <= "000";
address_b_2 <= "000";

stop_shift_sig <= stop_shift;

process(CLK, stop_shift_sig) --10Mhz clk
begin
	if(rising_edge(CLK)) then
		if(stop_shift_sig = '0') then
			if(last_stop = '1') then
				last_stop <= '0';
				data <= q(512-3*8 downto 0) & temp_shift & new_adc_in;
			else
				data <= q(512-1*8 downto 0)& new_adc_in;
			end if;
			
		else
			--Stop shifting
			last_stop <= '1';
			temp_shift <= temp_shift(7 downto 0) & new_adc_in;
		end if;
	end if;
end process;
end architecture;