library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CRC_Testbench is
end entity;

architecture arc of CRC_Testbench is

component CRC_24_Calc is
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
end component;

signal CLK : std_logic := '0';
signal DATA: std_logic := '0';
signal CRC: std_logic_vector(24 downto 0) := (others => '0');
signal VALID : std_logic := '0';

signal adsb : std_logic_vector(111 downto 0) := x"8D4CA251204994B1C36E60A5343D";

begin

crc_mod : CRC_24_Calc generic map(24, 112) port map(CLK, DATA, CRC, VALID);

CLK <= not CLK after 3.33ns; --50MHz 20ns 150Mhz 6.66ns

process(CLK)
begin
	if rising_edge(CLK) then
		DATA <= adsb(111);
		adsb <= adsb(110 downto 0) & '0';
	end if;
end process;


end architecture;