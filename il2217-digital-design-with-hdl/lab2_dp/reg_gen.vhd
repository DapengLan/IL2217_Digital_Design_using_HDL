use work.opc5_pack.all;

library IEEE;
use IEEE.std_logic_1164.all;

entity reg_gen is 
	generic (n: integer:=4);
	port (
	d:in opc5_vector(n-1 downto 0);
	q:out opc5_vector(n-1 downto 0);
	clk,clear:in bit
	);
end entity;

architecture bhv of reg_gen is 
begin
	process ( clk, d, clear)
	begin 
	if (clear='1') then 
	q <= (others => '0');
	elsif (clk'event and clk = '1') then 
	q <= d;
	end if;
	end process;
end architecture;