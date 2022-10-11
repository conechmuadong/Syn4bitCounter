--libraries to be used are specified here
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture behavior of testbench is
--Signal declarations
signal clk,reset : std_logic := '0';
signal counter : std_logic_vector(3 downto 0):="0000";
-- Clock period definitions
constant clk_period : time := 100 ns;

begin
-- Instantiate the Unit Under Test (UUT)
UUT : entity work.syn_count4 port map (clk,reset,counter);

-- Clock process definitions
clk_process :process
begin
        clk <= '0';
      	wait for clk_period/2;
	clk <= '1';
	wait for clk_period/2;
end process;
end;