library ieee;
use ieee.std_logic_1164.all;
Entity DFF is port
(D,CLK: in std_logic;
 Q: out std_logic
);
end DFF;

Architecture archofDFF of DFF is
  signal R,Sg,Rg,Qa,Qb: std_logic;
begin
  Sg<=D nand clk;
  R<=not D;
  Rg<=R nand clk;
  Qa<=Qb nand Sg;
  Qb<=Qa nand Rg;
end archofDFF;
 
  
