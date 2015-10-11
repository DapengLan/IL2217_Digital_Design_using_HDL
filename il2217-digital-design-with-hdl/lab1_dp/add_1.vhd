library IEEE;
use IEEE.std_logic_1164.all;


entity add_1 is 
	port (a,b,cin:in bit;
			cout,sum:out bit);
	end add_1;
	
architecture rtl of add_1 is
begin	
	sum <= a xor b xor cin;
	cout<= (a and b) or (a and cin) or (b and cin);
end rtl;
	