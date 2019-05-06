----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:20:49 03/08/2019 
-- Design Name: 
-- Module Name:    xor1 - Behavioral 
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

entity xor1 is
    Port ( a,b : in  bit;
           c : inout  bit);
end xor1;

architecture Behavioral of xor1 is
begin
process(a,b)
begin
c <= a xor b;
end process;
end Behavioral;

