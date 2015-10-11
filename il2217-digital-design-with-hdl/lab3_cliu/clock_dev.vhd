------------------------------------------------------
-- File Name : counter_var.vhd
------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_signed.ALL;
use ieee.std_logic_arith.all;
use work.ALL;

entity clock_dev is
  port ( UP, CLK, RESET : in std_logic;
    OUT1 : out std_logic
    --OUT2 : out std_logic_vector(3 downto 0)
  );
end clock_dev;

architecture Arch_clock_dev of clock_dev is
begin
-----------------------------------------------------
  process (CLK, RESET)
    variable COUNT : std_logic_vector(24 downto 0);
	 variable temp: std_logic;
  begin
    if RESET = '0' then
      COUNT := (others=>'0');
      OUT1 <= '0';
		temp := '0';
      --OUT2 <= (others=>'0');
    elsif clk'event AND clk='1' then
      case UP is
        when '1' => COUNT:=COUNT+1;
        when others=> COUNT:=COUNT-1;
      end case;
      if (UP='1' and COUNT=24999999) or (UP='0' and COUNT=0) then
		  temp := NOT(temp);
        OUT1 <= temp;
				if (UP='1') then 
					COUNT := conv_std_logic_vector(0, 25);
				elsif (UP='0') then
					COUNT := conv_std_logic_vector(24999999, 25);
				end if;
      --else
        --OUT1 <= '0';
      end if;
      --OUT2 <= COUNT;
  end if;
end process;
-----------------------------------------------------
end; -- Arch_clock_dev








