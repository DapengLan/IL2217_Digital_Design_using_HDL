library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.opc_pkg.all;

entity DReg is
	Generic(size : integer := 4);
	Port ( D : in  opc5_vector(size-1 downto 0);
			 Q : out opc5_vector(size-1 downto 0);
			 clk : in bit;
			 reset: in bit);
end DReg;
    
architecture behavioral of DReg is
begin
	process(clk, D, reset)
	begin
		if (reset = '1') then
			Q <= "0000";
		elsif (clk'event and clk = '1') then
			Q <= D;
		end if;
	end process;
end architecture;