library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Setup_manager is
port(
	CLK : in std_logic := '0';
	EN_SETUP : in std_logic := '0';
	SPI_send_data : out std_logic_vector(16-1 downto 0) := (others => '0');
	SPI_send_irq : out std_logic := '0';
	SPI_DONE : in std_logic := '0';
	ADC_SYNC : out std_logic := '0';
	SETUP_DONE : out std_logic := '0'
);

end entity;

architecture arc of Setup_manager is
	constant spi_cmd_amount : integer := 5;
	subtype spi_cmd is std_logic_vector(15 downto 0);
	type spi_cmds is array (0 to spi_cmd_amount - 1) of spi_cmd;
	
	constant read_cmd : spi_cmd := x"8000";
	constant write_cmd : spi_cmd := x"0000";
	
	--Register 00h power
	constant pwr_reg : spi_cmd := x"0000";
	constant ch_A_on : spi_cmd := x"0002";
	constant ch_B_on : spi_cmd := x"0001";
	
	--Register 06h clock divide/data format/test pattern
	constant format_reg : spi_cmd := x"0600";
	constant format_two_complement : spi_cmd := x"0000";
	constant format_offset_binary : spi_cmd := x"0010";
	constant format_gray_code : spi_cmd := x"0020";
	
	--Register 08h common mode
	constant common_mode_reg : spi_cmd := x"0800";
	constant pullup_A_en : spi_cmd := x"0008"; --Common mode pull up voltage enable
	constant pullup_A_900mV : spi_cmd := x"0000";
	constant pullup_A_1050mV : spi_cmd := x"0001";
	constant pullup_A_1200mV : spi_cmd := x"0002";
	constant pullup_A_1350mV : spi_cmd := x"0003";
	constant pullup_A_750mV : spi_cmd := x"0005";
	constant pullup_A_600mV : spi_cmd := x"0006";
	constant pullup_A_450mV : spi_cmd := x"0007";
	
	constant init_cmds : spi_cmds := (
		write_cmd or pwr_reg or ch_A_on or ch_B_on,
		read_cmd or pwr_reg,
		write_cmd or format_reg or format_offset_binary,
		read_cmd or format_reg,
		write_cmd or common_mode_reg --or pullup_A_en or pullup_A_900mV
	);
		
	signal spi_cmd_idx : integer range 0 to spi_cmd_amount := 0;
	signal SPI_DONE_last : std_logic := '0';
begin

process(CLK)
begin
	if rising_edge(CLK) then
		if EN_SETUP = '1' then
			SPI_DONE_last <= SPI_DONE;
			if SPI_DONE_last <= '0' and SPI_DONE = '1' then
				if spi_cmd_idx = spi_cmd_amount then
					SETUP_DONE <= '1';
				else
					spi_cmd_idx <= spi_cmd_idx + 1;
					SPI_send_data <= init_cmds(spi_cmd_idx);
					SPI_send_irq <= '1';
				end if;
			else
				SPI_send_irq <= '0';
			end if;
		else
			SPI_send_irq <= '0';
		end if;
	end if;
end process;

end architecture;