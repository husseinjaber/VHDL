LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY tp0201 is port 
(inputs:in std_logic_vector(17 downto 0);
outputs : out std_logic_vector(17 downto 0)
);
end tp0201;
architecture arch2 of tp0201 is 
begin
outputs<=inputs;
end arch2;
