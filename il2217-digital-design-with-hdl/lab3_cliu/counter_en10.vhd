------------------------------------------------------
-- File Name : counter_var.vhd
------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_signed.ALL;
use work.ALL;

entity counter_en10 is
  port ( UP, CLK, RESET, C : in std_logic;
    OUT1 : out std_logic;
    OUT2 : out std_logic_vector(3 downto 0)
	 --en : in std_logic
  );
end counter_en10;

architecture Arch_counter_en of counter_en is
begin
-----------------------------------------------------
  process (CLK, RESET)
    variable COUNT : std_logic_vector(3 downto 0);
  begin
    if RESET = '0' then
      COUNT := (others=>'0');
      OUT1 <= '0';
      OUT2 <= (others=>'0');
    elsif clk'event AND clk='1' then
		if C = '1' then
			case UP is
				when '1' => COUNT:=COUNT+1;
				when others=> COUNT:=COUNT-1;
			end case;
		end if;
			if (UP='1' and COUNT=15) or (UP='0' and COUNT=0) then
				OUT1 <= '1';
			else
				OUT1 <= '0';
			end if;
			OUT2 <= COUNT;

	end if;
end process;
-----------------------------------------------------
end; -- Arch_counter_var