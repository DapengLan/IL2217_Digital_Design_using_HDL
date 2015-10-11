LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY test_nand IS END test_nand;
ARCHITECTURE tb_nand OF test_nand IS
  COMPONENT nand_gate
    PORT (
      a:IN STD_LOGIC;
      b:IN STD_LOGIC;
      q:OUT STD_LOGIC);
  END COMPONENT;
  SIGNAL a,b,q:STD_LOGIC;
  SIGNAL c:std_logic_vector(1 downto 0);
BEGIN
  C1:nand_gate PORT MAP(a,b,q);
  a <= c(1);
  b <= c(0);
  c<= "00",
      "01" AFTER 10 ns,
      "11" AFTER 20 ns,
      "10" AFTER 30 ns,
      "00" AFTER 40 ns;
END tb_nand;

