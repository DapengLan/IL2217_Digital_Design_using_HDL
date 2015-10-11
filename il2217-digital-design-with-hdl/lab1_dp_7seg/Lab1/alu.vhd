ENTITY alu IS
   GENERIC (size: INTEGER:=8);
   PORT (
      a: IN bit_vector(size-1 downto 0);
      b: IN bit_vector(size-1 downto 0);
      ctrl: IN bit_vector (1 downto 0);
      q:OUT bit_vector(size-1 downto 0);
      cout:OUT bit);
 END alu;

architecture structural of alu is 

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

--signal ctrl_prim:bit;
signal q_add:bit_vector(size-1 downto 0);
signal q_sub:bit_vector(size-1 downto 0);
signal q_nand:bit_vector(size-1 downto 0);
signal q_nor:bit_vector(size-1 downto 0);

signal cout_add:bit;
signal cout_sub:bit;

	BEGIN

	T1:addSub GENERIC MAP(size) port map (a,b,'0', q_add, cout_add);	
	T2:addSub GENERIC MAP(size) port map (a,b,'1', q_sub, cout_sub);
	q_nand <= a nand b;
	q_nor <= a nor b;
	
	process(ctrl,q_sub,q_add,q_nand,q_nor)
	begin
    CASE (ctrl) IS
   	WHEN "01" => 
		q <= q_sub;
		cout<=cout_sub;
		
      WHEN "00" => 
		q <= q_add;
		cout <= cout_add;
		
      WHEN "10" => 
		q <= q_nand;
		cout<= '0';
		
      WHEN "11" =>
		q <= q_nor;
		cout<= '0';
		
      WHEN OTHERS =>
      NULL;
		
    END CASE;
	 end process;

END structural;

 