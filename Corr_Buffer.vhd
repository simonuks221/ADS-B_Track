library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Corr_Buffer is
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
end entity;

architecture arc of CORR_BUFFER is
	signal buffer_0 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_1 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_2 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_3 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_4 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_5 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_6 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_7 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
begin

DATA_OUT_0 <= buffer_0;
DATA_OUT_1 <= buffer_1;
DATA_OUT_2 <= buffer_2;
DATA_OUT_3 <= buffer_3;
DATA_OUT_4 <= buffer_4;
DATA_OUT_5 <= buffer_5;
DATA_OUT_6 <= buffer_6;
DATA_OUT_7 <= buffer_7;

process(CLK)
begin
	if rising_edge(CLK) then
		buffer_0 <= buffer_0(BUFFER_LENGTH - 2 downto 0) & DATA_IN(0);
		buffer_1 <= buffer_1(BUFFER_LENGTH - 2 downto 0) & DATA_IN(1);
		buffer_2 <= buffer_2(BUFFER_LENGTH - 2 downto 0) & DATA_IN(2);
		buffer_3 <= buffer_3(BUFFER_LENGTH - 2 downto 0) & DATA_IN(3);
		buffer_4 <= buffer_4(BUFFER_LENGTH - 2 downto 0) & DATA_IN(4);
		buffer_5 <= buffer_5(BUFFER_LENGTH - 2 downto 0) & DATA_IN(5);
		buffer_6 <= buffer_6(BUFFER_LENGTH - 2 downto 0) & DATA_IN(6);
		buffer_7 <= buffer_7(BUFFER_LENGTH - 2 downto 0) & DATA_IN(7);
	end if;
end process;

end architecture;