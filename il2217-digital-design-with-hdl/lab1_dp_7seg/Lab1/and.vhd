LIBRARY IEEE; -- These lines informs the the compiler
-- that the library IEEE is used
USE IEEE.std_logic_1164.all; -- contains the definition
-- for the std_logic type plus some useful
-- conversion functions
ENTITY and_gate IS
  PORT (
    a:IN STD_LOGIC;
    b:IN STD_LOGIC;
    q:OUT STD_LOGIC
  );
END and_gate;
ARCHITECTURE dataflow OF and_gate IS
BEGIN
  q <= a AND b AFTER 5 ns;
END dataflow;
