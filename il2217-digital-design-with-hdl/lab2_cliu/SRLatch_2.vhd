-- The S and R inputs are active high
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;


ENTITY SRLatch_2 IS
  PORT (
    s:IN std_logic;
    r:IN std_logic;
    qPrim:OUT std_logic;
    q:OUT std_logic
  );
END SRLatch_2;


ARCHITECTURE dataflow OF SRLatch_2 IS
  SIGNAL qPrimInt:std_logic:='0';
  SIGNAL qInt:std_logic:='0';
BEGIN
  qInt <= s nor qPrimInt;
  qPrimInt <= r nor qInt;
  q <= qInt;
  qPrim <= qPrimInt;
END dataflow;
