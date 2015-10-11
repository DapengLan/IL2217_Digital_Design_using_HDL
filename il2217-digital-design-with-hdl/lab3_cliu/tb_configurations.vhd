--use work.ALL;

--configuration cfg_counter_sig2 of tb_counter_sig2 is
--  for test_counter_sig2
--    for U1: counter_sig use entity
--            work.counter_sig2(Arch_counter_sig2);
--    end for;
--  end for;
--end cfg_counter_sig2;

--configuration cfg_counter_var of counter_sig2 is
--  for tb_counter_sig
--    for U1: counter_sig use entity
--            work.counter_sig(Arch_counter_var);
--    end for;
--  end for;
--end cfg_counter_var;
