use work.all;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

entity teststd_logic is end teststd_logic;


ARCHITECTURE tb_std_logic OF teststd_logic IS
  COMPONENT DLatch2
    PORT (
      d:IN std_logic;
      clk:IN std_logic;
      q:OUT std_logic);
  END COMPONENT;

  COMPONENT Dflipflop
    PORT (
      d:IN std_logic;
      clk:IN std_logic;
      q:OUT std_logic);
  END COMPONENT;

	SIGNAL test,clk,qLatch,qFlop:std_logic:='0';
	
BEGIN

	test<= 	'0',
				'1' AFTER 15 ns,
				'0' AFTER 65 ns,
				'1' AFTER 70 ns,
				'0' AFTER 75 ns,
				'1' AFTER 125 ns;
		
	U1:DLatch2 PORT MAP(test, clk,qLatch);
	U2:Dflipflop PORT MAP(test, clk,qFlop);

	clk<='0',
			'1' AFTER 20 NS,
			'0' AFTER 40 NS,
			'H' AFTER 60 ns,
			'L' AFTER 80 ns,
			'H' AFTER 100 ns,
			'L' AFTER 120 ns;

END tb_std_logic;

