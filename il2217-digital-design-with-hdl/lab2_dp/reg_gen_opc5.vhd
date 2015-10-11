use work.opc5_pack.all;

library IEEE;
use IEEE.std_logic_1164.all;

entity reg_gen_opc5 is 
	generic (n: integer:=4);
	port (
	d:in opc5_logic_vector(n-1 downto 0);
	q:out opc5_logic_vector(n-1 downto 0);
	clk,clear:in std_logic
	);
end entity;

architecture bhv of reg_gen_opc5 is 
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