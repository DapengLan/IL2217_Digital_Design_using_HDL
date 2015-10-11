Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_signed.ALL;
use work.ALL;

ENTITY tb_alarm IS
END tb_alarm;

ARCHITECTURE test_alarm OF tb_alarm IS 
	COMPONENT alarm
	port ( UP, CLK, RESET : in std_logic;
		reseta, resetb : out std_logic;
		ref : out std_logic;
		out0 : out std_logic_vector(3 downto 0);
		out1 : out std_logic_vector(3 downto 0)
	);
	END COMPONENT;

	signal UP : std_logic := '1';
	signal RESET : std_logic := '0';
	signal CLK : std_logic := '0';
	signal out0 : std_logic_vector(3 downto 0);
	signal out1 : std_logic_vector(3 downto 0);
	signal ref : std_logic;
	signal reseta : std_logic := '0';
	signal resetb : std_logic := '0';
	
BEGIN

	U1: alarm port map ( UP, CLK, RESET, reseta, resetb, ref, out0, out1);
	
	CLK <= not(CLK) after 2 ps;
	RESET <= '1' after 4 ns;


END; -- tb_alarm
