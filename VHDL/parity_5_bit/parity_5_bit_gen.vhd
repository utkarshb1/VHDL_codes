----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:13:37 03/08/2019 
-- Design Name: 
-- Module Name:    parity_5_bit_gen - Behavioral 
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

entity parity_5_bit_gen is
    Port ( a : in  bit_vector(4 downto 0);
           b : inout  bit);
end parity_5_bit_gen;

architecture Behavioral of parity_5_bit_gen is
component xor1
    Port ( a,b : in  bit;
           c : inout  bit);
end component;
			  
			  
signal s1, s2,s3: bit;
begin
x1 : xor1 port map (a(0),a(1),s1);
x2 : xor1 port map (a(2),a(3),s2);
x3 : xor1 port map (s1,s2,s3);
x4 : xor1 port map (a(4),s3,b);



end Behavioral;

