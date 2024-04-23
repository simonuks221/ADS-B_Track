library IEEE;
use IEEE.std_logic_1164.all;

--https://en.wikipedia.org/wiki/Cyclic_redundancy_check

entity CRC_24_Calc is
generic (
	CRC_LEN : integer := 24;
	DATA_LEN : integer := 112
);
port (
	CLK : in std_logic := '0';
	DATA: in std_logic := '0';
	CRC: out std_logic_vector(CRC_LEN downto 0) := (others => '0');
	VALID : out std_logic := '0'
);
end entity;

architecture arc of CRC_24_Calc is

constant crc_buf : std_logic_vector(CRC_LEN downto 0) := "1111111111111010000001001";
constant zero : std_logic_vector(CRC_LEN downto 0) := (others => '0');

signal bit_cnt : integer range 0 to DATA_LEN := 0;
signal data_buf : std_logic_vector(CRC_LEN downto 0) := (others => '0');
signal input_buf : std_logic_vector(CRC_LEN downto 0) := (others => '0');

begin

CRC <= data_buf;

process(CLK)
variable data_var : std_logic_vector(CRC_LEN downto 0) := (others => '0');
begin
	if rising_edge(CLK) then
		
		data_var := data_buf(CRC_LEN - 1 downto 0) & DATA;
		input_buf <= data_var;
		if data_var(CRC_LEN) = '1' then
			for i in 0 to CRC_LEN loop
				data_var(i) := crc_buf(i) xor data_var(i);
			end loop;
		end if;
		
		if bit_cnt = DATA_LEN then
			if data_var = zero then
				VALID <= '1';
			else
				VALID <= '0';
			end if;
			--data_var := (others => '0'); --TODO: uncomment for crc generation
		else
			bit_cnt <= bit_cnt + 1;
		end if;
		data_buf <= data_var;
	end if;
end process;

end architecture;