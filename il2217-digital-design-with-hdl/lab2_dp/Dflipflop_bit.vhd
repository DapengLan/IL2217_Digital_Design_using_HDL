
ENTITY Dflipflop_bit IS
  PORT(
    d: IN bit;
    clk: IN bit;
    q: OUT bit:='0');
END Dflipflop_bit;

ARCHITECTURE behavioural OF Dflipflop_bit IS
BEGIN
  PROCESS(clk,d)
  BEGIN
    IF (clk='1' and clk'event) THEN
      q<=d;
    END IF;
  END PROCESS;
END behavioural;