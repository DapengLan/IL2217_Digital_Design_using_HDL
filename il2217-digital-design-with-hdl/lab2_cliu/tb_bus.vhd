library IEEE;
use IEEE.std_logic_1164.ALL;
use work.opc_pkg.all;

entity tb_bus is end tb_bus;

architecture test of tb_bus is
	
	COMPONENT res_bus
		GENERIC (n: integer:=4);
		PORT (
			SWA : in opc5_vector(n-1 downto 0);
			SWB : in opc5_vector(n-1 downto 0);
			LEDR : out opc5_vector;
			clk : in bit;
			clear : in bit
		);
	END COMPONENT;
	
	signal clk1, clk2 : bit := '0';
	signal clear : bit := '0';
	signal a, b : opc5_vector(3 downto 0);
	--signal bus_wire : open_collector opc5;
	signal c : opc5_vector(3 downto 0);

BEGIN 

	B1:res_bus PORT MAP (a(3 downto 0), b(3 downto 0), c, clk1, clear);

	PROCESS
	BEGIN
		FOR i IN opc5 LOOP
			a(0) <= i;
			a(1) <= i;
			a(2) <= i;
			a(3) <= i;
			--bus_wire <= i;  
			WAIT ON clk1 UNTIL clk1 = '1';
		END LOOP;
	END PROCESS;

	PROCESS
	BEGIN
		FOR j IN opc5 LOOP
			b(0) <= j;
			b(1) <= j;
			b(2) <= j;
			b(3) <= j;
			--bus_wire <= j;
			WAIT ON clk2 UNTIL clk2 = '1';
		END LOOP;
	END PROCESS;
	
	clk1 <= NOT(clk1) AFTER 10 ns;
	clk2 <= NOT(clk2) AFTER 50 ns;

end test;