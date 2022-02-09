library ieee;
use ieee.std_logic_1164.all;

entity RS is port
(clk,R,S:in std_logic;
Q:out std_logic
);
end RS;
architecture archofRS of RS is
signal qa,qb,sg,rg:std_logic;
begin
 rg<=R and clk;
 sg<=S and clk;
 qa<=not(rg or qb) ;
 qb<=not(qa or sg);
 Q<=qa;
 end archofRS;
  