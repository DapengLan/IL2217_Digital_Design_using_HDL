Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_signed.ALL;

entity divider is
  port ( clk_in, reset : in std_logic;
			clk_out : out std_logic
	 );
end divider;

architecture Arch_divider of divider is
  
begin
-----------------------------------------------------
  process (clk_in, reset)
  variable temp:std_logic:= '0';
  variable count:integer:=0;
  
  begin
    if reset = '1' then
      temp := '0';
		count:= 0;
    elsif rising_edge(clk_in) then
		count:=count + 1;
			if (count = 2000000) then  --50MHZ
			temp:= not temp;
			count := 0;
			end if;
    end if;
	 clk_out <= temp;
  end process;

-----------------------------------------------------
end; -- Arch_divider
