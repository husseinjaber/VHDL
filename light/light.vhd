LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY light is port 
(
x1,x2: in std_logic;
f:out std_logic
);
end light;
 architecture logicfunction of light is 
 begin 
 f<=(x1 and not x2) or (not x1 and x2);
 end logicfunction;
 