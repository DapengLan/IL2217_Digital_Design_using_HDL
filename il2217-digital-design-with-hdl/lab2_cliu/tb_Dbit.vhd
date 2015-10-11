library IEEE;
use IEEE.std_logic_1164.ALL;

entity test_db is end test_db;

ARCHITECTURE tb_Dbit OF test_db IS
  COMPONENT DLatch_new
    PORT (
      d:IN std_logic;
      clk:IN std_logic;
      q:OUT std_logic);
  END COMPONENT;
  COMPONENT DFlipFlop
    PORT (
      d:IN std_logic;
      clk:IN std_logic;
      q:OUT std_logic);
  END COMPONENT;
  SIGNAL test,clk,qLatch,qFlipFlop:std_logic:='0';
BEGIN
  test<= '0',
         '1' AFTER 15 ns,
         '0' AFTER 65 ns,
         '1' AFTER 70 ns,
         '0' AFTER 75 ns,
         '1' AFTER 125 ns;
U1:DLatch_new PORT MAP(test, clk, qLatch);
U2:DFlipFlop PORT MAP(test, clk, qFlipFlop);
  clk<='0',
       '1' AFTER 20 NS,
       '0' AFTER 40 NS,
       '1' AFTER 60 ns,
       '0' AFTER 80 ns,
       '1' AFTER 100 ns,
       '0' AFTER 120 ns;
  -- This assignment can also be used but then you cannot type
  -- run -all in the simulation
  -- clk <= not(clk) after 20 ns;
END tb_Dbit;
