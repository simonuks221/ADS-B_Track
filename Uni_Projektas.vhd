library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity UNI_Projektas is
port(
CLK : in std_logic;
ADC_IN : in std_logic_vector(7 downto 0);
DATA_OUT : out std_logic_vector(6-1 downto 0);
SYNC : out std_logic
);
end entity;

architecture arc of UNI_Projektas is

--Components
component ADC_Manager is
port(
CLK : in std_logic;
ADC_IN : in std_logic_vector(7 downto 0);
DATA_OUT : out std_logic_vector(6-1 downto 0);
RAM_DATA_BUS : in std_logic_vector(7 downto 0);
RAM_ADDRESS_BUS : out std_logic_vector(7 downto 0);
SYNC: in std_logic
);
end component;

component Clock_divider is
port(
CLK: in std_logic;
Prescaler : in std_logic_vector(7 downto 0);

CLK_OUT: out std_logic
);
end component;

component wizard_ram IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END component;

--Function ram signals
signal func_ram_address_bus : std_logic_vector(7 downto 0) := (others => '0');
signal func_ram_en : std_logic := '0';
signal func_ram_out : std_logic_vector(7 downto 0);

signal sync_clk : std_logic := '0';

--State machine signals
--signal reset_SM : STD_LOGIC := '0';
--signal doneReadMemory_SM : STD_LOGIC := '0';
--signal start_SM : STD_LOGIC := '1';

signal RECEIVED_CODE : std_logic_vector(5 downto 0);
begin
ADC_Manager1 : ADC_Manager port map(CLK => CLK, ADC_IN => ADC_IN, DATA_OUT => RECEIVED_CODE, RAM_DATA_BUS => func_ram_out, RAM_ADDRESS_BUS => func_ram_address_bus, SYNC => sync_clk);
wizard_ram_1 : wizard_ram port map(address => func_ram_address_bus, clock => CLK, data => "00000000", wren => '0', q => func_ram_out);
--state_machine : StateMachineWizard port map(reset => reset_SM, clock => CLK, doneReadMemory => doneReadMemory_SM, start => start_SM, readMemoryEN => readMemoryEN, searchSignalEN => searchSignalEN);
clock_divider1 : clock_divider port map(CLK => CLK, Prescaler => "00000101", CLK_OUT => sync_clk);

DATA_OUT <= RECEIVED_CODE;
SYNC <= sync_clk;

end architecture;