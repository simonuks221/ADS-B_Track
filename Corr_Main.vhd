library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Corr_Main is
generic(
	BUFFER_LENGTH : integer := 50;
	BUFFER_WIDTH : integer := 8
);
port(
	CLK : in std_logic := '0';
	ADC_BITS : in std_logic_vector(15 downto 0) := (others => '0');
	ADC_BITS_VALID : in std_logic := '0';
	PREAMBULE_FOUND : out std_logic := '0'
);
end entity;

architecture arc of Corr_Main is


component Corr_Buffer is
	generic(
		BUFFER_LENGTH: integer := 50;
		BUFFER_WIDTH : integer := 8
	);
	port (
		CLK : in std_logic := '0';
		DATA_IN : in std_logic_vector(BUFFER_WIDTH - 1 downto 0) := (others => '0');
		DATA_OUT_0 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_1 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_2 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_3 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_4 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_5 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_6 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_7 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0')
	);
end component;

signal corr_buffer_update : std_logic := '0';
signal DATA_IN : std_logic_vector(BUFFER_WIDTH - 1 downto 0) := (others => '0');
signal DATA_OUT_0 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_1 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_2 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_3 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_4 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_5 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_6 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
signal DATA_OUT_7 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');

signal corr_value : integer := 0;
signal preambule_coef : std_logic_vector(50-1 downto 0) := "11111000001111100000000000000000000111110000011111";

begin

buff : corr_buffer generic map(BUFFER_LENGTH, BUFFER_WIDTH) port map(corr_buffer_update, DATA_IN, DATA_OUT_0, DATA_OUT_1, DATA_OUT_2, DATA_OUT_3, DATA_OUT_4,
									DATA_OUT_5, DATA_OUT_6, DATA_OUT_7);

DATA_IN <= 	ADC_BITS(7 downto 0);

PREAMBULE_FOUND <= '1' when corr_value > 2000 else '0'; 
									
process(CLK)
variable corr_value_var : integer := 0;
variable currByte : std_logic_vector(BUFFER_WIDTH-1 downto 0) := (others => '0');
begin
	if rising_edge(CLK) then
		if(ADC_BITS_VALID = '1') then
			corr_buffer_update <= '1';
			corr_value_var := 0;
			for i in 0 to 10 loop
				currByte(0) := DATA_OUT_0(i);
				currByte(1) := DATA_OUT_1(i);
				currByte(2) := DATA_OUT_2(i);
				currByte(3) := DATA_OUT_3(i);
				currByte(4) := DATA_OUT_4(i);
				currByte(5) := DATA_OUT_5(i);
				currByte(6) := DATA_OUT_6(i);
				currByte(7) := DATA_OUT_7(i);
				
				if(preambule_coef(i) = '1') then
				corr_value_var := corr_value_var + to_integer(unsigned(currByte));
				corr_value <= corr_value_var;
				end if;
			end loop;
		else
			corr_buffer_update <= '0';
		end if;
	end if;
end process;
									
end architecture;