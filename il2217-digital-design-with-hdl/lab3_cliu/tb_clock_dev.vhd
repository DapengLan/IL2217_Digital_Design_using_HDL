LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_clock_dev IS
END tb_clock_dev;

ARCHITECTURE test_clock_dev OF tb_clock_dev IS 
	COMPONENT clock_dev
	port ( UP, CLK, RESET : in std_logic;
		OUT1 : out std_logic;
		OUT2 : out std_logic_vector(3 downto 0)
	);
	END COMPONENT;

	-- Inputs
	signal UP : std_logic := '1';
	signal RESET : std_logic := '0';
	signal CLK : std_logic := '0';
	signal Out1 : std_logic := '0';
	signal Out2 : std_logic_vector(3 downto 0):=(others=>'0');
BEGin
  U1: clock_dev port map ( UP, CLK, RESET, OUT1, OUT2);
  RESET <= '1' after 125 ns;
  CLK <= not(CLK) after 50 ns;
-----------------------------------------------------
  --tb: process
      --begin
        --UP <= transport '0' after 945 ns;
        --UP <= transport '1' after 1825 ns;
        --UP <= transport '0' after 2025 ns;
        --wait;
      --end process; --tb
-----------------------------------------------------
END; -- tb_clock_dev
