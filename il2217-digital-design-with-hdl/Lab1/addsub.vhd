LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY addsub IS
  GENERIC (size: INTEGER:=8);
  PORT (
    a: bit_vector(size-1 downto 0);
    b: IN bit_vector(size-1 downto 0);
    -- cin:IN std_logic;
    sub: IN bit; -- sub = 0 => addition;
                       -- sub = 1 => subtraction
    sum:OUT bit_vector(size-1 downto 0);
    cout:OUT bit);
END addsub;




ARCHITECTURE structural OF addsub IS
	COMPONENT full_adder
		PORT(A, B, cin: IN bit;
			cout, sum: OUT bit);
	END COMPONENT;

	SIGNAL carry: bit_vector(size downto 0);
	SIGNAL B_int: bit_vector(size-1 downto 0);

BEGIN
	carry(0) <= sub;
	cout <= carry(size);
	G1: FOR i IN size-1 downto 0 GENERATE
		U0: full_adder PORT MAP (
			A(i),
			B_int(i),
			carry(i),
			carry(i+1),
			sum(i));
		U1: B_int(i) <= B(i) xor sub;
	END GENERATE G1;
	
--	PROCESS(sub)
--	BEGIN
--		IF sub = '0' THEN
--			B_int <= B;
--		ELSE
--			B_int <= NOT(B);
--		END IF;
--	END PROCESS;
	
END structural;
