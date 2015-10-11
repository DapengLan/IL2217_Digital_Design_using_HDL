entity testreg is end testreg;

architecture tb_reg of testreg is 
constant width:integer:=4;
 
component reg_gen
	generic (n: integer:=4);
	port (
	d:in bit_vector(n-1 downto 0);
	q:out bit_vector(n-1 downto 0);
	clk,clear:in bit
	);
end component reg_gen;

signal clk,clear:bit;
signal d_temp, q_temp:bit_vector(width-1 downto 0);
 
begin
  d_temp <= "0000",
  "0000" after 10ns,
  "0001" after 20ns,
  "0010" after 30ns,
  "0011" after 40ns,
  "0100" after 50ns,
  "0101" after 60ns;
  
  U1:reg_gen port map (d_temp,q_temp,clk,clear);
  
  clk<='0',
       '1' AFTER 20 NS,
       '0' AFTER 40 NS,
       '1' AFTER 60 ns,
       '0' AFTER 80 ns,
       '1' AFTER 100 ns,
       '0' AFTER 120 ns;
		 
  clear<='0',
       '1' AFTER 20 NS,
       '0' AFTER 30 NS;
 
  
end tb_reg;