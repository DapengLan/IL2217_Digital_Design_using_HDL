Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_signed.ALL;
use work.ALL;

ENTITY alarm IS
	PORT ( UP, CLK, RESET: in std_logic;
		reseta, resetb : out std_logic;
		ref : out std_logic;
		out0 : out std_logic_vector(3 downto 0);
		out1 : out std_logic_vector(3 downto 0);
		HEX0 : out std_logic_vector(6 downto 0);
		HEX1 : out std_logic_vector(6 downto 0)
	);
END alarm;

ARCHITECTURE test_alarm OF alarm IS 
component bcd2_7seg 
	port(
	bcd:in std_logic_vector (3 downto 0);
	seg:out std_logic_vector (6 downto 0)
			);
end component bcd2_7seg;

	COMPONENT clock_dev
	port ( UP, CLK, RESET : in std_logic;
		OUT1 : out std_logic
		--OUT2 : out std_logic_vector(3 downto 0)
	);
	END COMPONENT;
	
	COMPONENT clock_ctrl
	PORT( GlobalUP : in std_logic;
		in0 : in std_logic_vector(3 downto 0);
		in1 : in std_logic_vector(3 downto 0);
		up0, reset0, up1, reset1 : out std_logic
	);
	END COMPONENT;
	
	COMPONENT counter_en
	GENERIC (size : integer);
	PORT ( UP, CLK, RESET : in std_logic;
		OUT1 : out std_logic;
		OUT2 : out std_logic_vector(3 downto 0);
		en : in std_logic
	);
	END COMPONENT;

	--signal UP : std_logic := '1';
	--signal RESET : std_logic := '0';
	signal reset0 : std_logic := '0';
	signal reset1 : std_logic := '0';
	signal up0 : std_logic := '0';
	signal up1 : std_logic := '0';
	--signal CLK : std_logic := '0';
	signal ref_clk : std_logic := '0';
	signal o0 : std_logic_vector(3 downto 0):=(others=>'0');
	signal o1 : std_logic_vector(3 downto 0):=(others=>'0');
	--signal counter0 : std_logic_vector(3 downto 0):=(others=>'0');
	signal counter1 : std_logic := '0';
	signal counter2 : std_logic := '0';
	signal en0: std_logic := '1';
	signal en1: std_logic := '1';
	
	
BEGIN

	U1: clock_dev port map ( UP, CLK, RESET, ref_clk);
	E0: counter_en generic map (10) port map ( UP, ref_clk, RESET, counter1, o0, en0);
	E1: counter_en generic map (6) port map ( UP, ref_clk, RESET, counter2, o1, counter1);
	--C : clock_ctrl port map( UP, o0, o1, up0, reset0, up1, reset1);
	
	W1:bcd2_7seg port map (o0(3 downto 0), HEX0(6 downto 0));
	W2:bcd2_7seg port map (o1(3 downto 0), HEX1(6 downto 0));
	
	out0 <= o0;
	out1 <= o1;
	ref <= ref_clk;
	reseta <= reset0;
	resetb <= reset1;
	
	reset0 <= '1' after 2 ns;
	reset1 <= '1' after 2 ns;
	
END; -- alarm








