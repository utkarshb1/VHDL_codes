----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:11:12 04/12/2019 
-- Design Name: 
-- Module Name:    hf - Behavioral 
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

entity hf is
    Port ( a,b : in  bit;
           s,c : in  bit);
end hf;

architecture Behavioral of hf is

begin
process(a,b)
begin
s<= a xor b;
c <= a and b;
end process;
end Behavioral;

