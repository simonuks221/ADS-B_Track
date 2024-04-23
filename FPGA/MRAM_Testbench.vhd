library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity MRAM_Testbench is
end MRAM_Testbench;

architecture tb of MRAM_Testbench is

    component MRAM_Controller
        port (CLK              : in std_logic;
              data_in          : in std_logic_vector (15 downto 0) := (others => '0');
              data_out         : out std_logic_vector (15 downto 0) := (others => '0');
              address_in       : in std_logic_vector(17 downto 0) := (others => '0');
              write_data       : in std_logic;
              read_data        : in std_logic;
              done             : out std_logic;
              MRAM_EN          : out std_logic;
              MRAM_OUTPUT_EN   : out std_logic;
              MRAM_WRITE_EN    : out std_logic;
              MRAM_UPPER_EN    : out std_logic;
              MRAM_LOWER_EN    : out std_logic;
              MRAM_A           : out std_logic_vector (17 downto 0) := (others => '0');
              MRAM_D           : inout std_logic_vector (15 downto 0) := (others => 'Z'));
    end component;

    signal CLK              : std_logic := '0';
    signal data_in          : std_logic_vector (15 downto 0) := (others => '0');
    signal data_out         : std_logic_vector (15 downto 0) := (others => '0');
    signal address_in       : std_logic_vector(17 downto 0) := (others => '0');
    signal write_data       : std_logic := '1';
    signal read_data        : std_logic := '0';
    signal done             : std_logic := '1';
    signal MRAM_EN          : std_logic := '0';
    signal MRAM_OUTPUT_EN   : std_logic := '0';
    signal MRAM_WRITE_EN    : std_logic := '0';
    signal MRAM_UPPER_EN    : std_logic := '0';
    signal MRAM_LOWER_EN    : std_logic := '0';
    signal MRAM_A           : std_logic_vector (17 downto 0) := (others => '0');
    signal MRAM_D           : std_logic_vector (15 downto 0) := (others => 'Z');

    constant TbPeriod : time := 6.66 ns;
    signal TbClock : std_logic := '0';
	 
	 type mram_data_type is array(0 to 25600) of std_logic_vector(15 downto 0); --Not the max amount of memory because of simulation software limitations
	 signal mram_data : mram_data_type := (others => (others => '0'));
	 
	 signal address_counter : integer := 0;
	 signal data_counter : integer := 0;
	 signal do_write : std_logic := '1';

begin

    dut : MRAM_Controller
    port map (CLK              => CLK,
              data_in          => data_in,
              data_out         => data_out,
              address_in       => address_in,
              write_data       => write_data,
              read_data        => read_data,
              done             => done,
              MRAM_EN          => MRAM_EN,
              MRAM_OUTPUT_EN   => MRAM_OUTPUT_EN,
              MRAM_WRITE_EN    => MRAM_WRITE_EN,
              MRAM_UPPER_EN    => MRAM_UPPER_EN,
              MRAM_LOWER_EN    => MRAM_LOWER_EN,
              MRAM_A           => MRAM_A,
              MRAM_D           => MRAM_D);

TbClock <= not TbClock after TbPeriod/2;
CLK <= TbClock;

process(CLK)
begin
	if rising_edge(CLK) then
		if done = '1' then
			if(address_counter = 5) then
				do_write <= not do_write;
				address_counter <= 0;
				data_counter <= 0;
				write_data <= not do_write;
				read_data <= do_write;
			else
				address_counter <= address_counter + 1;
			end if;
				address_in <= std_logic_vector(to_unsigned(address_counter, address_in'length));
				if do_write = '1' then --write
					data_counter <= data_counter + 1;
					data_in <= std_logic_vector(to_unsigned(data_counter, data_in'length));
				else -- read
					
				end if;
			--end if;
		end if;
	end if;
end process;
 
process --MRAM WRITE/READ emulation
begin
	wait until falling_edge(MRAM_EN);
		MRAM_D <= (others => 'Z');
		if(MRAM_WRITE_EN = '0') then
			wait until rising_edge(MRAM_WRITE_EN);
			mram_data(to_integer(unsigned(MRAM_A))) <= MRAM_D;
		else
			if(MRAM_OUTPUT_EN = '0') then
				wait for 35ns;
				MRAM_D <= mram_data(to_integer(unsigned(MRAM_A)));
				wait until rising_edge(MRAM_EN);
				wait for 15ns;
				MRAM_D <= (others => 'Z');
			end if;
		end if;
end process;

end architecture;