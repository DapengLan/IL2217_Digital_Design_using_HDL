LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY addSub IS
  GENERIC (size: INTEGER:= 8);
  PORT (
    a: IN bit_vector(size-1 downto 0);
    b: IN bit_vector(size-1 downto 0);
--    cin:IN bit;
    sub: IN bit; -- sub = 0 => addition;
                       -- sub = 1 => subtraction
    sum:OUT bit_vector(size-1 downto 0);
    cout:OUT bit);
END addSub;

architecture structural of addSub is 
 component add_1
 	port (a,b,cin:in bit;
			cout,sum:out bit);
	end component;

signal carry:bit_vector (size downto 0);
signal b_inv:bit_vector (size-1 downto 0);

begin
carry(0) <= sub;
cout <= carry(size);

	G0: For i in size-1 downto 0  generate
		U0: add_1 port map (a(i),b_inv(i),carry(i),carry(i+1),sum(i));
		U1: b_inv(i) <= b(i) xor sub;
	end generate G0;		

end structural;










	
