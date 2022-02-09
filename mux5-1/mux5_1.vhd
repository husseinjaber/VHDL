Library ieee;
use ieee.std_logic_1164.all;
entity mux5_1 is Port
(
u,v,w,x,y:In std_logic_vector(2 downto 0);
S0,S1,S2:in bit;
LedR: OUT std_logic_vector(14 downto 0);
M:out std_logic_vector(2 downto 0)
);
end mux5_1 ;
ARCHITECTURE arch1 of mux5_1  Is
Begin
M<=u when (S0='0' and S1='0' and S2='0') Else
v when(S0='0' and S1='0' and S2='1') Else
w when(S0='0' and S1='1' and S2='0')Else
x when (S0='0' and S1='1' and S2='1') Else
y when (S0='1' and S1='0' and S2='0')Else
y;
LedR<= y&x&w&v&u;
end arch1;
