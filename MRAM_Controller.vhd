library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

--50MHz 20ns
--Read Address, E low, G low, Lb UB low, Q valid after 35ns. When E high Hi-z after 15ns
--Write Address, E low, W low. Write cycle time 35ns, address setup 0ns. Data valid untill W high 10ns

entity MRAM_Controller is
	port(
	CLK : in std_logic := '0';
	data_in : in std_logic_vector(7 downto 0) := (others => '0');
	data_out : out std_logic_vector(7 downto 0) := (others => '0');
	address_in : in std_logic_vector(15 downto 0) := (others => '0');
	write_data : in std_logic := '0';
	read_data : in std_logic := '0';
	done : out std_logic := '1';
	
	MRAM_EN : out std_logic := '1';
	MRAM_OUTPUT_EN : out std_logic := '1';
	MRAM_WRITE_EN : out std_logic := '1';
	MRAM_A : out std_logic_vector(15 downto 0) := (others => '0');
	MRAM_D : inout std_logic_vector(7 downto 0) := (others => 'Z')
	);
end entity;

architecture arc of MRAM_Controller is
type state is (idle, reading, writing);
signal curr_state : state := idle;
signal counter : integer range 0 to 8 := 0;
begin

done <= '1' when curr_state = idle else '0';
MRAM_A <= address_in(15 downto 0);

process(CLK)
begin
	if rising_edge(CLK) then
		if(curr_state = reading or curr_state = writing) then
			counter <= counter + 1;
		else 
			counter <= 0;
		end if;
	
		case curr_state is
			when idle =>
				MRAM_EN <= '1';
				MRAM_OUTPUT_EN <= '1';
				MRAM_WRITE_EN <= '1';
				MRAM_D <= (others => 'Z');
			when writing =>
				case counter is
					when 0 =>
						--Set data
						MRAM_WRITE_EN <= '0';
						MRAM_EN <= '0';
						MRAM_D <= data_in(7 downto 0);
					when 3 =>
						MRAM_EN <= '1';
						MRAM_WRITE_EN <= '1';
					when others =>
				end case;
			when reading =>
				case counter is
					when 0 =>
						--Set data
						MRAM_D <= (others => 'Z');
						MRAM_EN <= '0';
						MRAM_OUTPUT_EN <= '0';
					when 6 =>
						data_out <= MRAM_D;
						MRAM_EN <= '1';
						MRAM_OUTPUT_EN <= '1';
						MRAM_WRITE_EN <= '1';
					when others =>
				end case;
		end case;
	end if;
end process;

process(CLK)
begin
	if rising_edge(CLK) then
		if(curr_state = idle) then
			if(write_data = '1') then
				curr_state <= writing;
			elsif(read_data = '1') then
				curr_state <= reading;
			end if;
		else
			if(curr_state = writing and counter = 4) then
				curr_state <= idle;
			elsif(curr_state = reading and counter = 7) then
				curr_state <= idle;
			end if;
		end if;
	end if;
end process;

end architecture;