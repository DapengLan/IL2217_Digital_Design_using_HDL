Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_signed.ALL;

entity test_divider is end test_divider;

architecture tb_divider of test_divider is

component divider
  port ( clk_in, reset : in std_logic;
			clk_out : out std_logic
	 );
end component;

  signal reset: std_logic := '0';
  signal clk_in : std_logic := '0';
  signal clk_out : std_logic := '0';

begin

U1:divider port map (clk_in, reset, clk_out);

  RESET <= '0' after 125 ns;
  clk_in <= not(clk_in) after 15 ns;
 
end tb_divider;
