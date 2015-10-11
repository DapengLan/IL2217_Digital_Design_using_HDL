LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY mux IS
  PORT (
    a:IN STD_LOGIC;
    b:IN STD_LOGIC;
    address:IN STD_LOGIC;
    q:OUT STD_LOGIC
  );
END mux;

ARCHITECTURE behavioural OF mux IS
BEGIN
  q <= a WHEN address = '0' ELSE b;
END behavioural;

ARCHITECTURE dataflow OF mux IS
  --SIGNAL int1,int2,int_adress: STD_LOGIC;
BEGIN
  P1:PROCESS(a, b, address)
  VARIABLE int1,int2,int_adrress: STD_LOGIC;
  BEGIN
    int_adrress := NOT address;
    --  q <= int1 OR int2;
    int1 := b and address;
    --  int_adress <= NOT address;
    int2 := int_adrress AND a;
    q <= int1 OR int2;
    -- WAIT ON a, b, address;
  END PROCESS P1;
END dataflow;
