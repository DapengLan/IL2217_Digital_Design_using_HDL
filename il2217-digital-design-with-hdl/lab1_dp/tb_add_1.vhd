library IEEE;
use IEEE.std_logic_1164.all;

entity tb_add_1 is end tb_add_1;

architecture testadd_1 of tb_add_1 is 
	component add_1
		port (a,b,cin:in std_logic;
			cout,sum:out std_logic);
	end component;

	signal testvector:std_logic_vector(2 downto 0);
	signal sgcout,sgsum:std_logic;
	
begin
	c1:add_1 port map (a => testvector(1), b => testvector(2), cin => testvector(0),
					cout => sgcout, sum => sgsum);
					
	testvector <= "000",
	"001" after 10 ns,
	"010" after 20 ns,
	"011" after 30 ns,
	"100" after 40 ns,
	"101" after 50 ns,
	"110" after 60 ns,
	"111" after 70 ns;
	
end testadd_1;
	
	
	
	
	
	
	
	
	
	
	
	