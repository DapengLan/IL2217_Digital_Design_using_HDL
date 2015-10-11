library IEEE;
use IEEE.std_logic_1164.ALL;
use work.opc_pkg.all;

ENTITY res_bus IS 
	GENERIC (n: integer:=4);
	PORT (
		SWA : in opc5_vector(n-1 downto 0);
		SWB : in opc5_vector(n-1 downto 0);
		LEDR : out opc5_vector(n-1 downto 0);
		clk : in bit;
		clear : in bit
	);
END res_bus;


ARCHITECTURE test OF res_bus IS


	COMPONENT DReg
		Generic(size : integer := 4);
		Port ( D : in  opc5_vector(size-1 downto 0);
				 Q : out opc5_vector(size-1 downto 0);
				 clk : in bit;
				 reset: in bit);
	END COMPONENT;

	signal a : opc5_vector (n-1 downto 0);
	signal b : opc5_vector (n-1 downto 0);
	signal c0, c1, c2, c3 : open_collector opc5;

BEGIN

	R1:DReg PORT MAP (SWA(n-1 downto 0), a(n-1 downto 0), clk, clear);
	R2:DReg PORT MAP (SWB(n-1 downto 0), b(n-1 downto 0), clk, clear);

	
	c0 <= a(0);
	c0 <= b(0);
	LEDR(0) <= c0;
	
	c1 <= a(1);
	c1 <= b(1);
	LEDR(1) <= c1;
	
	c2 <= a(2);
	c2 <= b(2);
	LEDR(2) <= c2;
	
	c3 <= a(3);
	c3 <= b(3);
	LEDR(3) <= c3;
	
	
--PROCESS(a, b, c)	
--BEGIN
--	for i in (n-1) downto 0 loop
--		c(i) <= a(i);
--		c(i) <= b(i);
--		LEDR(i) <= c(i);
--	end loop;
--END PROCESS;


END test;