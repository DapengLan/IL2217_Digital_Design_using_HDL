------------------------------------------------------
-- Four Bit Up-Down Counter
-- File Name : counter_sig_10.vhd
-- Data Type : std_logic_vector
-- Reset : Asynchronous
-- Active : Low
------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_signed.ALL;

entity counter_sig_10 is
  port ( UP, CLK, RESET : in std_logic;
	 COUT1: in  std_logic;
    OUT1 : out std_logic;
    OUT2 : out std_logic_vector(3 downto 0)
  );
end counter_sig_10;

architecture Arch_counter_sig_10 of counter_sig_10 is
  signal COUNT : std_logic_vector(3 downto 0):="0000";
  
begin
-----------------------------------------------------
  process (CLK, RESET)
  begin
    if RESET = '1' then
      COUNT <= (others=>'0');
    elsif clk'event AND clk='1' then
		if COUT1 = '1' then
			case UP is
			when '1' => if (COUNT = 5 ) then
						  COUNT <= "0000";
						  else COUNT<=COUNT+1;
						  end if;
			when others => if (COUNT = 0) then
						  COUNT <= "0101";
						  else COUNT<=COUNT-1;
						  end if;
			end case;
		end if;
    end if;
  end process;
-----------------------------------------------------
  OUT1 <= '1' when (UP='1' and COUNT=6) or
                   (UP='0' and COUNT=0)
					else '0';
  OUT2 <= COUNT;
-----------------------------------------------------
	
end; -- Arch_counter_sig
