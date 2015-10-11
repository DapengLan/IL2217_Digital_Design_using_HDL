LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY Dflipflop IS
  PORT(
    d: IN std_logic;
    clk: IN std_logic;
    q: OUT std_logic:='0');
END Dflipflop;

ARCHITECTURE behavioural OF Dflipflop IS
BEGIN
  PROCESS(clk,d)
  BEGIN
    IF (clk='1' and clk'event) THEN
      q<=d;
    END IF;
  END PROCESS;
END behavioural;