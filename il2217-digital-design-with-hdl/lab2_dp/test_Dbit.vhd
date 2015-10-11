use work.all;
entity testdbit is end testdbit;


ARCHITECTURE tb_Dbit OF testdbit IS
  COMPONENT DLatch2_bit
    PORT (
      d:IN bit;
      clk:IN bit;
      q:OUT bit);
  END COMPONENT;

  COMPONENT Dflipflop_bit
    PORT (
      d:IN bit;
      clk:IN bit;
      q:OUT bit);
  END COMPONENT;

  SIGNAL test,clk,qLatch,qFlipFlop:bit:='0';
BEGIN
  test<= '0',
         '1' AFTER 15 ns,
         '0' AFTER 65 ns,
         '1' AFTER 70 ns,
         '0' AFTER 75 ns,
         '1' AFTER 125 ns;

U1:DLatch2_bit PORT MAP(test, clk, qLatch);
U2:Dflipflop_bit PORT MAP(test, clk, qFlipFlop);

  clk<='0',
       '1' AFTER 20 NS,
       '0' AFTER 40 NS,
       '1' AFTER 60 ns,
       '0' AFTER 80 ns,
       '1' AFTER 100 ns,
       '0' AFTER 120 ns;
       
  -- This assignment can also be used but then you cannot type
  -- run -all in the simulation
  -- clk <= not(clk) after 20 ns;
END tb_Dbit;
