library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Corr_Buffer is
	generic(
		BUFFER_LENGTH: integer := 50;
		BUFFER_WIDTH : integer := 9
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
		DATA_OUT_7 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
		DATA_OUT_8 : out std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0')
	);
end entity;

architecture arc of CORR_BUFFER is
	signal buf_b0 : std_logic_vector(BUFFER_WIDTH -1 downto 0) := (others => '0');
	signal buf_b1 : std_logic_vector(BUFFER_WIDTH -1 downto 0) := (others => '0');
	signal buf_b2 : std_logic_vector(BUFFER_WIDTH -1 downto 0) := (others => '0');

	signal buffer_0 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_1 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_2 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_3 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_4 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_5 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_6 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_7 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal buffer_8 : std_logic_vector(BUFFER_LENGTH - 1 downto 0) := (others => '0');
	signal diff : signed(BUFFER_WIDTH-1 downto 0) := (others => '0');
	signal energy : integer := 0;
	
	signal v1 : signed(BUFFER_WIDTH -1 downto 0) := (others => '0');
	signal v2 : signed(BUFFER_WIDTH -1 downto 0) := (others => '0');
	signal v22 : signed(BUFFER_WIDTH -1 downto 0) := (others => '0');
	
begin

DATA_OUT_0 <= buffer_0;
DATA_OUT_1 <= buffer_1;
DATA_OUT_2 <= buffer_2;
DATA_OUT_3 <= buffer_3;
DATA_OUT_4 <= buffer_4;
DATA_OUT_5 <= buffer_5;
DATA_OUT_6 <= buffer_6;
DATA_OUT_7 <= buffer_7;
DATA_OUT_8 <= buffer_8;

--buffer_before  0, 0, 1, 5, 6,  2,  0,  0
--buffer         0, 0, 1, 5, 5, -3, -6, -2

process(CLK)

begin
	if rising_edge(CLK) then
		v1 <= buffer_8(0)&buffer_7(0)&buffer_6(0)&
						buffer_5(0)&buffer_4(0)&buffer_3(0)&buffer_2(0)&
						buffer_1(0)&buffer_0(0);
		v2 <= buffer_8(BUFFER_LENGTH-1)&buffer_7(BUFFER_LENGTH-1)&buffer_6(BUFFER_LENGTH-1)&
						buffer_5(BUFFER_LENGTH-1)&buffer_4(BUFFER_LENGTH-1)&buffer_3(BUFFER_LENGTH-1)&buffer_2(BUFFER_LENGTH-1)&
						buffer_1(BUFFER_LENGTH-1)&buffer_0(BUFFER_LENGTH-1);
		v22 <= v2;
		energy <= energy + to_integer(abs(v1)) - to_integer(abs(v22));
	end if;
end process;

process(CLK)
begin
	if rising_edge(CLK) then
		buf_b0 <= DATA_IN;
		buf_b1 <= buf_b0;
		buf_b2 <= buf_b1;
		diff <= to_signed(to_integer(unsigned(buf_b0)) - to_integer(unsigned(buf_b2)), BUFFER_WIDTH);
		
		buffer_0 <= buffer_0(BUFFER_LENGTH - 2 downto 0) & diff(0);
		buffer_1 <= buffer_1(BUFFER_LENGTH - 2 downto 0) & diff(1);
		buffer_2 <= buffer_2(BUFFER_LENGTH - 2 downto 0) & diff(2);
		buffer_3 <= buffer_3(BUFFER_LENGTH - 2 downto 0) & diff(3);
		buffer_4 <= buffer_4(BUFFER_LENGTH - 2 downto 0) & diff(4);
		buffer_5 <= buffer_5(BUFFER_LENGTH - 2 downto 0) & diff(5);
		buffer_6 <= buffer_6(BUFFER_LENGTH - 2 downto 0) & diff(6);
		buffer_7 <= buffer_7(BUFFER_LENGTH - 2 downto 0) & diff(7);
		buffer_8 <= buffer_8(BUFFER_LENGTH - 2 downto 0) & diff(8);
	end if;
end process;

end architecture;