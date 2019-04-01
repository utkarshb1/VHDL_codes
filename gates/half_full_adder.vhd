----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:06:42 01/26/2019 
-- Design Name: 
-- Module Name:    half_full_adder - Behavioral 
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
entity half_full_adder is
    Port ( x : in  bit;
           y : in  bit;
           cin: in  bit;
           s,c : out  bit_vector(1 downto 0));
end half_full_adder;

architecture Behavioral of half_full_adder is
signal s1,s2,s3: bit;
begin
P1: process(x,y)
begin
s(0) <= x xor y;
c(0) <= x and y;
end process P1;

P2: process(x,y,cin)
begin
s1 <= x xor y;
s(1) <= s1 xor cin;
s2 <= cin and s1;
s3 <= x and y;
c(1)<= s2 or s3;
end process P2;


end Behavioral;

