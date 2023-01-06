library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package corr_package is
	--https://stackoverflow.com/questions/28468334/using-array-of-std-logic-vector-as-a-port-type-with-both-ranges-using-a-generic
	type double_array is array(natural range<>) of std_logic_vector(7 downto 0);
end package;