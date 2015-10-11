LIBRARY IEEE; -- These lines informs the the compiler
-- that the library IEEE is used
USE IEEE.std_logic_1164.all; -- contains the definition
-- for the std_logic type plus some useful
-- conversion functions
ENTITY nand_gate IS
  PORT (
    a:IN STD_LOGIC;
    b:IN STD_LOGIC;
    q:OUT STD_LOGIC
  );
END nand_gate;
ARCHITECTURE dataflow OF nand_gate IS
   SIGNAL int_q: STD_LOGIC;
BEGIN
  int_q <= a AND b AFTER 5 ns;
  q <= int_q;
END dataflow;

