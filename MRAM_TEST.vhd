library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity MRAM_TEST is
	port(
	CLK : in std_logic := '0';
	
	MRAM_EN : out std_logic := '1';
	MRAM_OUTPUT_EN : out std_logic := '1';
	MRAM_WRITE_EN : out std_logic := '1';
	MRAM_UPPER_EN : out std_logic := '1';
	MRAM_LOWER_EN : out std_logic := '1';
	MRAM_A : out std_logic_vector(17 downto 0) := (others => '0');
	MRAM_D : inout std_logic_vector(15 downto 0) := (others => 'Z')
	);
end entity;

architecture arc of MRAM_TEST is
signal counter : integer range 0 to 1000000 := 0;
signal got_data : std_logic_vector(15 downto 0) := (others => '0');
signal output_en : std_logic := '1';
begin

--MRAM_OUTPUT_EN <= output_en;

process(CLK)
begin
	if(rising_edge(CLK)) then
		case counter is
			when 0 =>
				MRAM_EN <= '1';
				MRAM_OUTPUT_EN <= '1';
				MRAM_WRITE_EN <= '1';
				MRAM_UPPER_EN <= '1';
				MRAM_LOWER_EN <= '1';
				MRAM_A <= (others => '0');
				MRAM_D <= (others => 'Z');
			when 4099 =>
				--MRAM_A <= std_logic_vector(to_unsigned(1, MRAM_A'length));
			when 5000 => --Write
				MRAM_A <= std_logic_vector(to_unsigned(1, MRAM_A'length));
				--MRAM_EN <= '0';
				MRAM_WRITE_EN <= '0';
				MRAM_LOWER_EN <= '0';
				MRAM_UPPER_EN <= '0';
			when 5000+1 =>
				MRAM_EN <= '0';
				MRAM_D <= "1010101001010000";
			when 5000+2=>
				MRAM_EN <='1';
				MRAM_LOWER_EN <= '1';
				MRAM_UPPER_EN <= '1';
				MRAM_WRITE_EN <= '1';
			when 5000+3 =>
				MRAM_D <= (others => 'Z');
				
			when 5045 =>
				--MRAM_A <= std_logic_vector(to_unsigned(1, MRAM_A'length));
			when 5050 => --Read start
				MRAM_A <= std_logic_vector(to_unsigned(0, MRAM_A'length));
				MRAM_D <= (others => 'Z');
				MRAM_EN <= '0';
				MRAM_OUTPUT_EN <= '0';
				MRAM_UPPER_EN <= '0';
				MRAM_LOWER_EN <= '0';
			when 5050+2 =>
				got_data <= MRAM_D;
				MRAM_EN <= '1';
				MRAM_OUTPUT_EN <= '1';
				MRAM_UPPER_EN <= '1';
				MRAM_WRITE_EN <= '1';
				MRAM_LOWER_EN <= '1';
				MRAM_D <= (others => 'Z');
			when 5050+3 =>
				
			when 5050+102 =>
				MRAM_A <= "00" & got_data;
			when others =>
				
		end case;
	end if;
end process;

--Counter process
process(CLK)
begin
	if rising_edge(CLK) then
		if(counter /= 1000000) then
			counter <= counter + 1;
		end if;
	end if;
end process;

end architecture;