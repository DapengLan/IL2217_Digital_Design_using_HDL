LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY DLatch2 IS
  PORT(
    d: IN std_logic;
    clk: IN std_logic;
    q: OUT std_logic:='0');
END DLatch2;

ARCHITECTURE behavioural OF DLatch2 IS
BEGIN
  PROCESS(clk,d)
  BEGIN
    IF rising_edge(clk) THEN
      q<=d;
    END IF;
  END PROCESS;
END behavioural;
