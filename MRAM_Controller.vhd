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
	data_in : in std_logic_vector(15 downto 0) := (others => '0');
	data_out : out std_logic_vector(15 downto 0) := (others => '0');
	address_in_write : in std_logic_vector(17 downto 0) := (others => '0');
	address_in_read : in std_logic_vector(17 downto 0) := (others => '0');
	write_data : in std_logic := '0';
	read_data : in std_logic := '0';
	done : out std_logic := '0';
	
	MRAM_EN : out std_logic := '1';
	MRAM_OUTPUT_EN : out std_logic := '1';
	MRAM_WRITE_EN : out std_logic := '1';
	MRAM_UPPER_EN : out std_logic := '1';
	MRAM_LOWER_EN : out std_logic := '1';
	MRAM_A : out std_logic_vector(17 downto 0) := (others => '0');
	MRAM_D : inout std_logic_vector(15 downto 0) := (others => 'Z')
	);
end entity;

architecture arc of MRAM_Controller is
type state is (idle, reading, writing);
signal curr_state : state := idle;
signal counter : integer range 0 to 4 := 0;
begin

--MRAM_EN <= '1' when curr_state = idle else '0';
--MRAM_WRITE_EN <= '0' when curr_state = writing else '1';
--MRAM_UPPER_EN <= '0' when curr_state /= idle else '1';
--MRAM_LOWER_EN <= '0' when curr_state /= idle else '1';
--MRAM_OUTPUT_EN <= '0' when curr_state = reading else '1';
done <= '1' when curr_state = idle else '0';

--MRAM_A <= address_in_write when curr_state = writing else address_in_read when curr_state = reading else (others => '0');
--MRAM_D <= (others => 'Z');
--MRAM_OUTPUT_EN <= '0';
process(CLK)
begin
	if rising_edge(CLK) then
		case curr_state is
			when idle =>
				MRAM_EN <= '1';
				MRAM_OUTPUT_EN <= '1';
				MRAM_WRITE_EN <= '1';
				MRAM_UPPER_EN <= '1';
				MRAM_LOWER_EN <= '1';
				MRAM_A <= (others => '0');
				MRAM_D <= (others => 'Z');
				--MRAM_A <= (others => '0');
				--done <= '1';
			when writing =>
				--done <= '0';
				case counter is
					when 0 =>
						--Set data
						MRAM_A <= address_in_write;
						MRAM_WRITE_EN <= '0';
						MRAM_LOWER_EN <= '0';
						MRAM_UPPER_EN <= '0';
						MRAM_D <= (others => 'Z');
					when 1 =>
						MRAM_EN <= '0';
						MRAM_D <= data_in;
						--Idle, wait for 20ns
					when 2 =>
						MRAM_EN <= '1';
						MRAM_LOWER_EN <= '1';
						MRAM_UPPER_EN <= '1';
						MRAM_WRITE_EN <= '1';
						MRAM_D <= data_in;
						--done <= '1'
					when 3 =>
						MRAM_D <= (others => 'Z');
					when others =>
						MRAM_D <= (others => 'Z');
				end case;
			when reading =>
				case counter is
					when 0 =>
						--Set data
						MRAM_A <= address_in_read;
						MRAM_D <= (others => 'Z');
						MRAM_EN <= '0';
						MRAM_OUTPUT_EN <= '0';
						MRAM_UPPER_EN <= '0';
						MRAM_LOWER_EN <= '0';
					when 1 =>
						--Idle, wait for 20ns
						MRAM_D <= (others => 'Z');
					when 2 =>
						data_out <= MRAM_D;
						MRAM_EN <= '1';
						MRAM_OUTPUT_EN <= '1';
						MRAM_UPPER_EN <= '1';
						MRAM_WRITE_EN <= '1';
						MRAM_LOWER_EN <= '1';
						MRAM_D <= (others => 'Z');
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
			if(curr_state = writing and counter = 3) then
				curr_state <= idle;
			elsif(curr_state = reading and counter = 3) then
				curr_state <= idle;
			end if;
		end if;
	end if;
end process;

--Counter process
process(CLK)
begin
if rising_edge(CLK) then
		if(curr_state = reading or curr_state = writing) then
		--if(curr_state = writing) then
			counter <= counter + 1;
		else 
			counter <= 0;
		end if;
	end if;
end process;

end architecture;