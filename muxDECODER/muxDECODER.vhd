LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
entity mux5_1 is Port
(
u,v,w,x,y:In std_logic_vector(2 downto 0);
S0,S1,S2:in bit;
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
end arch1;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
entity decoder is port
(
totto:in std_logic_vector(2 downto 0);
display:out std_logic_vector(6 downto 0)
);
end decoder;
ARCHITECTURE arch of decoder is
begin
display<="0001001" when (totto <="000") else
"0000110" when (totto <="000") else
"0001001" when (totto <="001") else
"1000011" when (totto <="010") else
"1000111" when (totto <="011") else
"1000000" when (totto <="100") else
"1111111";
end arch;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
entity muxDECODER is port 
(
imp1,imp2,imp3,imp4,imp5:in std_logic_vector(2 downto 0);
s0,s1,s2:in bit;
display1:out std_logic_vector (6 downto 0)
);
end muxDECODER;

ARCHITECTURE main of muxDECODER is
signal sig:std_logic_vector (2 downto 0);
component decoder  port
(totto:in std_logic_vector (2 downto 0);
display:out std_logic_vector (6 downto 0)
);
end component;
component mux5_1 port(u,v,w,x,y:In std_logic_vector(2 downto 0);
S0,S1,S2:in bit;
M:out std_logic_vector(2 downto 0));
end component;
begin
u0: mux5_1 port map (imp1,imp2,imp3,imp4,imp5,s0,s1,s2,sig);
u1: DECODER port map (sig,display1);
end main;
