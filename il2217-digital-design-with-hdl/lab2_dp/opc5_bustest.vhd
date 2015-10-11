use work.opc5_pack.all;

library IEEE;
use IEEE.std_logic_1164.all;

entity opc5_bustest is 
	generic (n: integer:=4);
	port (
		SW:in opc5_vector(7 downto 0);
		LEDR:out  opc5_vector(n-1 downto 0);
		clk:in bit;
		clear:in bit
		);
end entity;
		
architecture blv of opc5_bustest is 

component reg_gen
	generic (n: integer:=4);
	port (
	d:in opc5_vector(n-1 downto 0);
	q:out opc5_vector(n-1 downto 0);
	clk,clear:in bit
	);
end component;

signal q_prim1:opc5_vector (3 downto 0);
signal q_prim2:opc5_vector (3 downto 0);
signal bus0,bus1,bus2,bus3:open_collector opc5;

begin

T1:reg_gen port map (SW(3 downto 0), q_prim1(3 downto 0), clk, clear);
T2:reg_gen port map (SW(7 downto 4), q_prim2(3 downto 0), clk, clear);

bus0<=q_prim1(0);
bus0<=q_prim2(0);
LEDR(0)<=bus0;

bus1<=q_prim1(1);
bus1<=q_prim2(1);
LEDR(1)<=bus1;

bus2<=q_prim1(2);
bus2<=q_prim2(2);
LEDR(2)<=bus2;

bus3<=q_prim1(3);
bus3<=q_prim2(3);
LEDR(3)<=bus3;

end architecture;





