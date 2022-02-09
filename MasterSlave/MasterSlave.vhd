LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY basculed IS
PORT ( Clk, Din: IN STD_LOGIC;
Qout : OUT STD_LOGIC);
END basculed ;
ARCHITECTURE Structural OF basculed IS
SIGNAL R,R_g, S_g, Qa, Qb : STD_LOGIC ;
--ATTRIBUTE keep : boolean;
--ATTRIBUTE keep of R_g, S_g, Qa, Qb : SIGNAL IS true;
BEGIN
R<=NOT Din;
R_g <= not(R NAND Clk);
S_g <= not (Din NAND Clk);
Qb <= NOT (R_g AND Qa);
Qa <= NOT (S_g AND Qb);
Qout <= Qa;
END Structural;
----------------main-----------------
library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
entity lab3_3 is
port( D,Clock: in std_logic;
Q,QN : out std_logic);
end lab3_3;
architecture behaviore of lab3_3 is
component basculed is
port (Clk,Din : in std_logic;
Qout : out std_logic);
end component;
signal Qm,C,QS: std_logic;
begin
C<=not(Clock);
G1:basculed port map (D,C,QM);
G2:basculed port map (Qm,Clock,QS);
Q<=Qs;
QN<=not Qs;
end behaviore;