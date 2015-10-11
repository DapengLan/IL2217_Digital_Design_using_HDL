LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY full_adder IS
	PORT(A, B, cin: IN bit;
		cout, sum: OUT bit);
END full_adder;

ARCHITECTURE dataflow OF full_adder IS
BEGIN
	sum <= A xor B xor cin;
	cout <= (A and B) or (A and cin) or (B and cin);
END dataflow;

