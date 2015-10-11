ENTITY alu IS
   GENERIC (size: INTEGER:=8);
   PORT (
      SW: IN bit_vector(17 downto 0);
      LEDR:OUT bit_vector(8 downto 0);
		LEDR_temp:buffer bit_vector(7 downto 0);
		HEX0:out bit_vector(6 downto 0);
		HEX1:out bit_vector(6 downto 0);
		HEX2:out bit_vector(6 downto 0);
		HEX3:out bit_vector(6 downto 0);
		HEX4:out bit_vector(6 downto 0);
		HEX5:out bit_vector(6 downto 0);
		HEX6:out bit_vector(6 downto 0)
		);
 END alu;

architecture structural of alu is 
component bcd2_7seg 
	port(
	bcd:in bit_vector (3 downto 0);
	seg:out bit_vector (6 downto 0)
			);
end component bcd2_7seg;

	component addSub   
		GENERIC (size: INTEGER:= 8);
			PORT (
			a: IN bit_vector(size-1 downto 0);
			b: IN bit_vector(size-1 downto 0);
			--    cin:IN bit;
			sub: IN bit; -- sub = 0 => addition;
                       -- sub = 1 => subtraction
			sum:OUT bit_vector(size-1 downto 0);
			cout:OUT bit);
	END component addSub;


signal q_add:bit_vector(size-1 downto 0);
signal q_sub:bit_vector(size-1 downto 0);
signal q_nand:bit_vector(size-1 downto 0);
signal q_nor:bit_vector(size-1 downto 0);

signal cout_add:bit;
signal cout_sub:bit;

	BEGIN

	T1:addSub GENERIC MAP(size) port map (SW(7 downto 0), SW(15  downto 8),'0', q_add, cout_add);	
	T2:addSub GENERIC MAP(size) port map (SW(7 downto 0), SW(15  downto 8),'1', q_sub, cout_sub);
	q_nand <=SW(7 downto 0) nand SW(15  downto 8);
	q_nor <= SW(7 downto 0) nor SW(15  downto 8);
	

	
	W1:bcd2_7seg port map (SW(3 downto 0), HEX0(6 downto 0));
	W2:bcd2_7seg port map (SW(7 downto 4), HEX1(6 downto 0));
	W3:bcd2_7seg port map (SW(11 downto 8), HEX2(6 downto 0));
	W4:bcd2_7seg port map (SW(15 downto 12), HEX3(6 downto 0));
	W5:bcd2_7seg port map (LEDR_temp(3 downto 0), HEX4(6 downto 0));
	W6:bcd2_7seg port map (LEDR_temp(7 downto 4), HEX5(6 downto 0));
	W7:bcd2_7seg port map ("00"&SW(17 downto 16), HEX6(6 downto 0));

	
	process(SW(17  downto 16),q_sub,q_add,q_nand,q_nor)
	begin
    CASE (SW(17  downto 16)) IS
   	when "01" => 
		LEDR(7 downto 0) <= q_sub;
		LEDR_temp(7 downto 0) <= q_sub;
		LEDR(8)<=cout_sub;
		
      when "00" => 
		LEDR(7 downto 0) <= q_add;
		LEDR_temp(7 downto 0) <= q_add;
		LEDR(8) <= cout_add;
		
      when "10" => 
		LEDR(7 downto 0) <= q_nand;
		LEDR_temp(7 downto 0) <= q_nand;
		LEDR(8)<= '0';
		
      when "11" =>
		LEDR(7 downto 0) <= q_nor;
		LEDR_temp(7 downto 0) <= q_nor;
		LEDR(8)<= '0';
		
      when OTHERS =>
      NULL;
		
    END CASE;
	 end process;

END structural;

entity bcd2_7seg is 
	port(
	bcd:in bit_vector (3 downto 0);
	seg:out bit_vector (6 downto 0)
			);
end bcd2_7seg;

architecture bhv of bcd2_7seg is 
begin
process (bcd)
begin
	case(bcd) is 		 --gfedcba
	when "0000"=>seg<="1000000";
	when "0001"=>seg<="1111001"; 
	when "0010"=>seg<="0100100"; 
	when "0011"=>seg<="0110000"; 
	when "0100"=>seg<="0011001";
	when "0101"=>seg<="0010010";
	when "0110"=>seg<="0000011"; 
	when "0111"=>seg<="1111000";
	when "1000"=>seg<="0000000";
	when "1001"=>seg<="0011000"; 
	when "1010"=>seg<="0001000"; 
	when "1011"=>seg<="0000011";
	when "1100"=>seg<="1000110";
	when "1101"=>seg<="0100001";
	when "1110"=>seg<="0000110"; 
	when "1111"=>seg<="0001110"; 
	when others=>seg<="1111111"; 
	END CASE; 

END PROCESS; 
END ARCHITECTURE bhv;
	
	
	
	
	