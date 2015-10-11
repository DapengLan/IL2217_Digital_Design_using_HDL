library IEEE;
use IEEE.std_logic_1164.ALL;
use work.opc_pkg.all;

entity resolution_func is 
	port (a, b: IN opc5; z: OUT opc5);
end resolution_func;

architecture example of resolution_func is

	signal bus_wire : open_collector opc5;
	--signal a, b : opc5 := 'Z';

BEGIN 

	bus_wire <= a;
	bus_wire <= b;
	z <= bus_wire;

end example;

