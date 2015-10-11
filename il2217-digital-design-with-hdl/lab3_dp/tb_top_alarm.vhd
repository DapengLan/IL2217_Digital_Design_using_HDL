Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_signed.ALL;

entity test_top_alarm is end test_top_alarm;

architecture  tb_top_alarm of test_top_alarm is 

component top_alarm 
	port(
	CLOCK_50:in std_logic; --DE2115 is 50MHZ
	SW:in std_logic_vector(1 downto 0 );
	LEDR:out std_logic;  --1 seconde clock
	LED0:out std_logic_vector(3 downto 0);
	LED1:out std_logic_vector(3 downto 0)
	);
end component;

signal ledr,clk:std_logic:= '0';
signal led0,led1: std_logic_vector(3 downto 0):= "0000";
signal sw:std_logic_vector (1 downto 0):="00";

begin 
T1:top_alarm port map (clk, sw, ledr, led0, led1);

clk <= not(clk) after 10 ns;

sw(0)  <= not(sw(0))  after 1000000ns;

end tb_top_alarm;