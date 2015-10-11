use work.opc5_pack.all;

library IEEE;
use IEEE.std_logic_1164.all;

entity test_opc is end test_opc;

architecture arch of test_opc is

  signal clk1, clk2 : std_logic := '0';
  signal a, b : opc5;
  signal bus_wire : opc_logic;
  
begin  -- arch

  process
  begin
    for i in opc5 loop
      a <= i;
      bus_wire <= i;
      wait on clk1 until clk1='1';  
    end loop;
  end process;

  process
  begin
    for j in opc5 loop
      b <= j;
      bus_wire <= j;
      wait on clk2 until clk2='1';  
    end loop;
  end process; 

  clk1 <= not(clk1) after 10 ns;
  clk2 <= not(clk2) after 50 ns;
  
end arch;