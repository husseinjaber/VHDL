library ieee;
use ieee.std_logic_1164.all;

Entity segmentDisplay is port
(
in0:in std_logic_vector(3 downto 0);
in1:in std_logic_vector(7 downto 4);
in2:in std_logic_vector(11 downto 8);
in3:in std_logic_vector(15 downto 12);
hex0,hex1,hex2,hex3:out std_logic_vector(6 downto 0)
);
end segmentDisplay;
Architecture archof7segment of segmentDisplay is
begin
hex0<="1000000" when in0="0000" else
     "1111001" when in0="0001"   else
	  "0100100" when  in0="0010" else
	  "0110000" when in0="0011" else
	  "0011001" when in0="0100" else
	  "0010010" when in0="0101" else
	  "0000010" when in0="0110" else
	  "0111000" when in0="0111" else
	  "0000000" when in0="1000" else
	  "0010000";
	  
hex1<="1000000" when in1="0000" else
     "1111001" when in1="0001"   else
	  "0100100" when  in1="0010" else
	  "0110000" when in1="0011" else
	  "0011001" when in1="0100" else
	  "0010010" when in1="0101" else
	  "0000010" when in1="0110" else
	  "0111000" when in1="0111" else
	  "0000000" when in1="1000" else
	  "0010000";
	  
hex2<="1000000" when in2="0000" else
     "1111001" when in2="0001"   else
	  "0100100" when  in2="0010" else
	  "0110000" when in2="0011" else
	  "0011001" when in2="0100" else
	  "0010010" when in2="0101" else
	  "0000010" when in2="0110" else
	  "0111000" when in2="0111" else
	  "0000000" when in2="1000" else
	  "0010000";
	  
hex3<="1000000" when in3="0000" else
     "1111001" when in3="0001"   else
	  "0100100" when  in3="0010" else
	  "0110000" when in3="0011" else
	  "0011001" when in3="0100" else
	  "0010010" when in3="0101" else
	  "0000010" when in3="0110" else
	  "0111000" when in3="0111" else
	  "0000000" when in3="1000" else
	  "0010000";
	  
end archof7segment;  
                



