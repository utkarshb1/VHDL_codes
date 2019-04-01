----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:24:51 02/22/2019 
-- Design Name: 
-- Module Name:    half_adder - Behavioral 
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
entity half_adder is
    Port ( a,b : in  bit;
           s1,c1 : out  bit);
end half_adder;

architecture Behavioral of half_adder is

begin
process(a,b)
begin
s1 <= a xor b;
c1 <= a or b;

end process;
end Behavioral;

