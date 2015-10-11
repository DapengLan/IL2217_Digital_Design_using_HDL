USE WORK.ALL;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY test IS END test;

ARCHITECTURE tb_addSub OF test IS

   CONSTANT width : integer:=8;  	-- Determines the width of the add/sub unit.

   COMPONENT addSub
     GENERIC (
	size: INTEGER :=8
	);
     PORT (
	a: IN bit_vector(size-1 downto 0);
	b: IN bit_vector(size-1 downto 0);
	sub: IN bit; -- sub = 0 => addition; sub = 1 => subtraktion 
	sum:OUT bit_vector(size-1 downto 0);
	cout:OUT bit
	);
  END component;  
  
  FUNCTION to_bitvector(a:INTEGER;length:NATURAL) RETURN bit_vector IS
     -- This function converts an integer to a bitvecor of length.
     -- To do this conversion are conversiob functions from 
     -- IEEE library used. 
   BEGIN
     RETURN to_bitvector(std_logic_vector (to_signed(a,length)));
   END;

   SIGNAL a,b,ar:bit_vector(width-1 downto 0);
   SIGNAL sub,cut:bit;

   
BEGIN

  T1:addSub GENERIC MAP (width) PORT MAP (a,b,sub,ar,cut);
  
  a <=  to_bitvector(0,width),
        to_bitvector(-1,width) AFTER 10 ns,
        to_bitvector(5,width) AFTER 20 ns;
       
  b <= to_bitvector(0,width),
       to_bitvector(-1,width) AFTER 5 ns,
       to_bitvector(5,width) AFTER 15 ns;
       
   sub <= '0',
          '1' AFTER 2 ns,
          '0' AFTER 7 ns,
          '1' AFTER 12 ns,
          '0' AFTER 17 ns;


END tb_addSub;