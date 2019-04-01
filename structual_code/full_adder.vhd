----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:17:55 02/22/2019 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( x,y,z : in  bit;
				c:  inout bit;
           s : inout  bit);
end full_adder;

architecture Behavioral of full_adder is
component half_adder
	port(a,b: in bit;
			s1,c1: out bit);
end component;
signal p,q,r,t:bit;
begin
h1 : half_adder port map(x,y,p,q);
h2 : half_adder port map(p,z,s,r);
h3 : half_adder port map(q,r,c,t);

end Behavioral;

