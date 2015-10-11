library IEEE;
use IEEE.std_logic_1164.ALL;
use work.opc_pkg.all;

entity tb_opc5 is end tb_opc5;

architecture test of tb_opc5 is
	
	signal clk1, clk2 : std_logic := '0';
	signal a, b : opc5;
	signal bus_wire : open_collector opc5; 

BEGIN 

	PROCESS
	BEGIN
		FOR i IN opc5 LOOP
			a <= i;
			bus_wire <= i;  
			WAIT ON clk1 UNTIL clk1 = '1';
		END LOOP;
	END PROCESS;

	PROCESS
	BEGIN
		FOR j IN opc5 LOOP
			b <= j;
			bus_wire <= j;
			WAIT ON clk2 UNTIL clk2 = '1';
		END LOOP;
	END PROCESS;
	
	clk1 <= NOT(clk1) AFTER 10 ns;
	clk2 <= NOT(clk2) AFTER 50 ns;

end test;

