Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_signed.ALL;

entity clk_controller is 
	port( out1:in std_logic_vector(3 downto 0);
			out2:in std_logic_vector(3 downto 0);	
			reset1,reset2:out std_logic;
			
			global_updown:in std_logic;
			updown1,updown2:out std_logic
			);
end clk_controller;

architecture bhv_clk_controller of clk_controller is
	begin
--	signal out1_temp,out2_temp:std_logic_vector(3 downto 0);
reset1 <= '1' when (out1 = 10 and global_updown = '1')
				--	(out1 = 0 and global_updown = '0')
					else '0';
reset2 <= '1' when (out2 = 6) 
					else '0';		
					
updown1<= global_updown;
updown2<= global_updown;
end bhv_clk_controller;