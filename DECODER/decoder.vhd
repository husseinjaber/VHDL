library ieee;
use ieee.std_logic_1164.all;
entity decoder is port
(
totto:in std_logic_vector (2 downto 0);
display:out std_logic_vector (6 downto 0)
);
end decoder;
ARCHITECTURE arch of decoder is
begin
display<="0001001" when totto ="000" else
"0000110" when totto="000" else
"0001001" when totto="001" else
"1000111" when totto="010" else
"1000111" when totto="011" else
"1000000" when totto="100" else
"1111111";
end arch;



