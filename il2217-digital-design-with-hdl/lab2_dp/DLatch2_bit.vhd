
ENTITY DLatch2_bit IS
  PORT(
    d: IN bit;
    clk: IN bit;
    q: OUT bit:='0');
END DLatch2_bit;

ARCHITECTURE behavioural OF DLatch2_bit IS
BEGIN
  PROCESS(clk,d)
  BEGIN
    IF (clk='1') THEN
      q<=d;
    END IF;
  END PROCESS;
END behavioural;
