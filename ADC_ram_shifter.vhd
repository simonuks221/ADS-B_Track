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
		data_a_1		: out STD_LOGIC_VECTOR (127 DOWNTO 0) := (others => '0');
		data_b_1		: out STD_LOGIC_VECTOR (127 DOWNTO 0) := (others => '0');
		
		address_a_2		: out STD_LOGIC_VECTOR (2 DOWNTO 0) := (others => '0');
		address_b_2		: out STD_LOGIC_VECTOR (2 DOWNTO 0) := (others => '0');
		data_a_2		: out STD_LOGIC_VECTOR (127 DOWNTO 0) := (others => '0');
		data_b_2		: out STD_LOGIC_VECTOR (127 DOWNTO 0) := (others => '0');
		
		q_a_1		: in STD_LOGIC_VECTOR (127 DOWNTO 0) := (others => '0');
		q_b_1		: in STD_LOGIC_VECTOR (127 DOWNTO 0) := (others => '0');
		
		q_a_2		: in STD_LOGIC_VECTOR (127 DOWNTO 0) := (others => '0');
		q_b_2		: in STD_LOGIC_VECTOR (127 DOWNTO 0) := (others => '0');
		
		wren_a_1		: out STD_LOGIC  := '1';
		wren_b_1		: out STD_LOGIC  := '1';
		
		wren_a_2		: out STD_LOGIC  := '1';
		wren_b_2		: out STD_LOGIC  := '1';
		
		new_adc_in : in std_logic_vector(9 downto 0) := (others => '0');
		stop_shift : in std_logic := '0'
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
			wren_a_1 <= '1';
			wren_b_1 <= '1';
			wren_a_2 <= '1';
			wren_b_2 <= '1';
			if(last_stop = '1') then
				last_stop <= '0';
				data_a_1 <= q_a_1(119-16 downto 0) & temp_shift & new_adc_in(7 downto 0);
				data_b_1 <= q_b_1(119-16 downto 0) & q_a_1(127 downto 120-16);
				data_a_2 <= q_a_2(119-16 downto 0) & q_b_1(127 downto 120-16);
				data_b_2 <= q_b_2(119-16 downto 0) & q_a_2(127 downto 120-16);
			else
				data_a_1 <= q_a_1(119 downto 0) & new_adc_in(7 downto 0);
				data_b_1 <= q_b_1(119 downto 0) & q_a_1(127 downto 120);
				data_a_2 <= q_a_2(119 downto 0) & q_b_1(127 downto 120);
				data_b_2 <= q_b_2(119 downto 0) & q_a_2(127 downto 120);
			end if;
			
		else
			--Stop shifting
			last_stop <= '1';	
			temp_shift <= temp_shift(7 downto 0) & new_adc_in(7 downto 0);
		end if;
	end if;
end process;
end architecture;