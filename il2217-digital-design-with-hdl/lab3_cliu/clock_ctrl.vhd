Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_signed.ALL;
use work.ALL;

entity clock_ctrl is 
	port( GlobalUP : in std_logic;
		in0 : in std_logic_vector(3 downto 0);
		in1 : in std_logic_vector(3 downto 0);
		up0, reset0, up1, reset1 : out std_logic
	);
end clock_ctrl;

architecture controller of clock_ctrl is 
begin

	--up0 <= GlobalUP;
	--up1 <= GlobalUP;

	process (in0, in1, GlobalUP)
	begin
		up0 <= GlobalUP;
		up1 <= GlobalUP;
		case GlobalUP is 
			when '1' =>
				-- UP
				if ( in0="1001" ) then --9
					reset0 <= '0';
					if ( in1="0101" ) then --5
						reset1 <= '0';
					else
						reset1 <= '1';
					end if;
				else
					reset0 <= '1';
					reset1 <= '1';
				end if;
			---------------------------------
			when others =>
				-- DOWN
				if ( in0="0000" ) then
					reset0 <= '0';
					if ( in1="0000" ) then
						reset1 <= '0';
					else
						reset1 <= '1';	
					end if;
				else
					reset0 <= '1';	
					reset1 <= '1';
				end if;
		end case;
	end process;


end architecture;



