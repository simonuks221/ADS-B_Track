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
		
		new_adc_in : std_logic_vector(7 downto 0) := (others => '0')
	);
end entity;

architecture arc of ADC_ram_shifter is

signal count : std_logic := '0';

begin

address_a_1 <= "000";
address_a_2 <= "000";
address_b_1 <= "000";
address_b_2 <= "000";

process(CLK)
begin
	if(rising_edge(CLK)) then
		wren_a_1 <= '1';
		data_a_1 <= q_a_1(119 downto 0) & new_adc_in;
		wren_b_1 <= '1';
		data_b_1 <= q_b_1(119 downto 0) & q_a_1(127 downto 120);
		wren_a_2 <= '1';
		data_a_2 <= q_a_2(119 downto 0) & q_b_1(127 downto 120);
		wren_b_2 <= '1';
		data_b_2 <= q_b_2(119 downto 0) & q_a_2(127 downto 120);
	end if;
end process;
end architecture;