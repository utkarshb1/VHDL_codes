----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:12:02 04/12/2019 
-- Design Name: 
-- Module Name:    fa - Behavioral 
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

entity fa is
    Port ( x,y,z : in  bit;
           s1,c1 : inout  bit);
end fa;

architecture Behavioral of fa is
component hf 
    Port ( a,b : in  bit;
           s,c : in  bit);
end component;
signal p,q,r,t: bit;

begin
process(x,y,z)
begin

hf1 := hf port map(x,y,p,q);
hf2 := hf port map(p,z,s1,r);
hf3 := hf port map(r,q,c1,t);

end process;
end Behavioral;

