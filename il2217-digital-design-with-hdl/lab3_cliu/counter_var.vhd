------------------------------------------------------
-- File Name : counter_var.vhd
------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_signed.ALL;
use work.ALL;

entity counter_var is
  port ( UP, CLK, RESET : in std_logic;
    OUT1 : out std_logic;
    OUT2 : out std_logic_vector(3 downto 0)
  );
end counter_var;

architecture Arch_counter_var of counter_var is
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
      case UP is
        when '1' => COUNT:=COUNT+1;
        when others=> COUNT:=COUNT-1;
      end case;
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
