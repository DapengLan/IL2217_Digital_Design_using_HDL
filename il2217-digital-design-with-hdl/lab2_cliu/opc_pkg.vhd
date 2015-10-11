library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

package opc_pkg is

	TYPE opc5 IS ('X','0','1','Z','H');
	TYPE opc5_vector IS ARRAY(integer range<>) OF opc5;
	TYPE opc5_LUT IS ARRAY(opc5, opc5) OF opc5;
	
	------------------------------------------------------------------

	CONSTANT resolution_tab : opc5_LUT := (
		-- X    0    1    Z    H –
		( 'X', 'X', 'X', 'X', 'X' ), -- X
		( 'X', '0', 'X', '0', '0' ), -- 0
		( 'X', 'X', '1', '1', '1' ), -- 1
		( 'X', '0', '1', 'Z', 'X' ), -- Z
		( 'X', '0', '1', 'H', 'H' )  -- H
	);

	------------------------------------------------------------------

	CONSTANT xor_tab : opc5_LUT := (
		-- X    0    1    Z    H 
		( 'X', 'X', 'X', 'X', 'X'), --  X
		( 'X', '0', '1', 'X', '1'), --  0
		( 'X', '1', '0', 'X', '0'), --  1
		( 'X', 'X', 'X', 'X', 'X'), --  Z
		( 'X', '1', '0', 'X', '0')  --  H  
	);

	------------------------------------------------------------------

	CONSTANT xnor_tab : opc5_LUT := (
		-- X    0    1    Z    H
		( 'X', 'X', 'X', 'X', 'X'), -- X
		( 'X', '1', '0', 'X', '0'), -- 0 
		( 'X', '0', '1', 'X', '1'), -- 1
		( 'X', 'X', 'X', 'X', 'X'), -- Z 
		( 'X', '0', '1', 'X', '1')  -- H
	);

	------------------------------------------------------------------	
	
	function open_collector ( s : opc5_vector ) return opc5 ;

	function "xor" (a:opc5; b:opc5) return opc5;
	function "xnor" (a:opc5; b:opc5) return opc5;

end;


--------------------------------------------------------------------------------------------------


package body opc_pkg is

	------------------------------------------------------------------

	function open_collector ( s : opc5_vector ) return opc5 is
		variable result : opc5 := 'Z';  -- weakest state default
	begin
		-- the test for a single driver is essential otherwise the
		-- loop would return 'X' for a single driver of '-' and that
		-- would conflict with the value of a single driver unresolved
		-- signal.
		if (s'length = 1) then
			return s(s'low);
		else
			for i in s'range loop
				result := resolution_tab(result, s(i));
			end loop;
		end if;
		return result;
	end open_collector;

	------------------------------------------------------------------

	function "xor" (a:opc5; b:opc5) return opc5 is
	begin
		return xor_tab(a,b);
	end "xor";

	------------------------------------------------------------------

	function "xnor" (a:opc5; b:opc5) return opc5 is
	begin
		return xnor_tab(a,b);
	end "xnor";

	------------------------------------------------------------------

end package body;