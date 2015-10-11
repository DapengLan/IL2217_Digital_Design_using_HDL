LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DLatch_new IS
  PORT(
    d: IN std_logic;
    clk: IN std_logic;
    q: OUT std_logic:='0');
END DLatch_new;

ARCHITECTURE behavioural OF DLatch_new IS
BEGIN
  PROCESS(clk,d)
  BEGIN
    IF (clk='1') THEN
      q<=d;
    END IF;
  END PROCESS;
END behavioural;
