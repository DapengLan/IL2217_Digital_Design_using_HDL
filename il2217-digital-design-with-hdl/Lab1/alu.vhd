USE WORK.all; -- all compiled components end up in the
              -- library work.
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.std_logic_unsigned.all;

ENTITY alu IS
GENERIC (size: INTEGER:=8);
  PORT (
    a:IN bit_vector (size-1 downto 0);
    b:IN bit_vector (size-1 downto 0);
    ctrl:IN bit_vector (1 downto 0);
    q:OUT bit_vector (size-1 downto 0);
    cout:OUT bit);
END alu;



ARCHITECTURE Behavioral of alu IS

	SIGNAL sig1, sig2, sig3: bit_vector(size-1 downto 0);
	SIGNAL temp: bit_vector(size downto 0);
	SIGNAL control: bit_vector(1 downto 0);
	SIGNAL tout: bit;

BEGIN

	sig1 <= a;
	sig2 <= b;
	control <= ctrl;
	q <= sig3;
	cout <= tout;

	PROCESS (sig1, sig2, control, temp)
	BEGIN
		CASE control IS
			WHEN "00" =>
				temp <= TO_BITVECTOR(std_logic_vector(unsigned( "0" & TO_STDLOGICVECTOR(sig1)) + unsigned(TO_STDLOGICVECTOR(sig2))));
				sig3 <= temp(size-1 downto 0);
				tout <= temp(size);
			WHEN "01" =>
				sig3 <= TO_BITVECTOR(std_logic_vector(unsigned(TO_STDLOGICVECTOR(sig1)) - unsigned(TO_STDLOGICVECTOR(sig2))));
				tout <= '0';
			WHEN "10" => 
				sig3 <= sig1 nand sig2;
				tout <= '0';
			WHEN "11" =>
				sig3 <= sig1 nor sig2;
				tout <= '0';	
		END CASE;
	END PROCESS;



END Behavioral; 