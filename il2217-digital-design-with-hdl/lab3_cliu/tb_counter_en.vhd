---------------------------------------------------------
---
-- Test Bench for Four Bit Up-Down Counter
-- File name : counter_sig_tb.vhd
---------------------------------------------------------
---
Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_signed.ALL;
use work.ALL;

entity tb_counter_en is end tb_counter_en;

architecture test_counter_en of tb_counter_en is
  component counter_en
    port( UP, CLK, RESET : in std_logic;
          OUT1 : out std_logic;
          OUT2 : out std_logic_vector(3 downto 0);
			 en : std_logic
    );
  end component;
  signal UP : std_logic := '1';
  signal RESET : std_logic := '0';
  signal CLK : std_logic := '0';
  signal Out1 : std_logic := '0';
  signal Out2 : std_logic_vector(3 downto 0):=(others=>'0');
  signal en : std_logic := '1';
  --for U1:counter_sig use entity work.counter_sig(Arch_counter_var);
begin
  U1: counter_en port map ( UP, CLK, RESET, OUT1, OUT2, en);

  RESET <= '1' after 5 ns;
  CLK <= not(CLK) after 1 ns;
  --en <= not(en) after 10 ns;
-----------------------------------------------------
  --tb: process
      --begin
        --UP <= transport '0' after 945 ns;
        --UP <= transport '1' after 1825 ns;
        --UP <= transport '0' after 2025 ns;
        --wait;
      --end process; --tb
		
      --process 
      --begin
			--en <= transport '1' after 80 ns;
			--en <= transport '0' after 1500 ns;
			--wait;
      --end process; --en
-----------------------------------------------------
end; -- tb_counter_var
