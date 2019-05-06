----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:47:25 02/22/2019 
-- Design Name: 
-- Module Name:    binadder4 - Behavioral 
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
entity binadder4 is
    Port ( p,q : in  bit_vector(3 downto 0);
           sum : inout  bit_vector(3 downto 0);
           carry : inout  bit_vector(3 downto 0));
end binadder4;

architecture Behavioral of binadder4 is
component full_adder 
    Port ( x,y,z : in  bit;
				c:  inout bit;
           s : inout  bit_vector(2 downto 0));
end component;
begin
f1 : full_adder port map(p(0),q(0),'0',carry(0),sum(0));
f2 : full_adder port map(p(1),q(1),carry(0),carry(1),sum(1));
f3 : full_adder port map(p(2),q(2),carry(1),carry(2),sum(2));
f4 : full_adder port map(p(3),q(3),carry(2),carry(3),sum(3));

end Behavioral;

