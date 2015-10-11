Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_signed.ALL;

entity top_alarm is 
	port(
	CLOCK_50:in std_logic; --DE2115 is 50MHZ
	SW:in std_logic_vector(1 downto 0 );   --sw0 global UD and  sw1 reset
	LEDR:out std_logic;  --1 seconde clock
	HEX0:out std_logic_vector(6 downto 0); --sencond
	HEX1:out std_logic_vector(6 downto 0) -- ten second
--	LED0:out std_logic_vector(3 downto 0);--for simulation test purpose
--	LED1:out std_logic_vector(3 downto 0)
	);
end top_alarm;

architecture bhv_alarm of top_alarm is 

component counter_sig 
  port ( UP, CLK, RESET : in std_logic;
			OUT1 : out std_logic;
			OUT2 : out std_logic_vector(3 downto 0)
  );
end component counter_sig;

component counter_sig_10 
  port ( UP, CLK, RESET : in std_logic;
	 COUT1: in  std_logic;
    OUT1 : out std_logic;
    OUT2 : out std_logic_vector(3 downto 0)
  );
end component counter_sig_10;

component divider 
  port ( clk_in, reset : in std_logic;
			clk_out : out std_logic
	 );
end component divider;

component clk_controller  
	port( out1:in std_logic_vector(3 downto 0);
			out2:in std_logic_vector(3 downto 0);	
			reset1,reset2:out std_logic;
			global_updown:in std_logic;
			updown1,updown2:out std_logic
			);
end component clk_controller;

component bcd2_7seg 
	port(
	bcd:in std_logic_vector (3 downto 0);
	seg:out std_logic_vector (6 downto 0)
			);
end component;

signal clk_1s,clk_10s:std_logic;
signal updown1,updown2:std_logic:= '1';
signal reset1,reset2:std_logic := '0';
signal count1_out1, count2_out1:std_logic;
signal count1_out2, count2_out2:std_logic_vector( 3 downto 0);

begin
LEDR <= clk_1s;


CLK1:divider port map (CLOCK_50, '0', clk_1s);

--CLK_CON:clk_controller port map (count1_out2,count2_out2,reset1,reset2,SW,updown1,updown2);

COUNT1:counter_sig port map (SW(0),clk_1s,SW(1),count1_out1,count1_out2);

COUNT2:counter_sig_10 port map (SW(0),clk_1s,SW(1),count1_out1,count2_out1,count2_out2);

--LED0 <= count1_out2;
--LED1 <= count2_out2;

W1:bcd2_7seg port map (count1_out2,HEX0(6 downto 0));
W2:bcd2_7seg port map (count2_out2,HEX1(6 downto 0));

end bhv_alarm;