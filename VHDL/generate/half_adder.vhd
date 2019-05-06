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
           s2,c2 : out  bit);
end half_adder;

architecture Behavioral of half_adder is
signal k:bit_vector(1 downto 0);
begin
process(a,b)
begin
s2 <= a xor b;
c2 <= a and b;
--if a = '0' and b = '0' then
--	s2 <= '0';
--	c2 <= '0';
--elsif a = '0' and b = '1' then
--	s2 <= '1';
--	c2 <= '0';
--elsif a = '1' and b = '0' then
--	s2 <= '1';
--	c2 <= '0';
--elsif a = '1' and b = '1' then
--	s2 <= '1';
--	c2 <= '1';
--end if;	
--k(0)<= a;
--k(1)<= b;
--case k is
--	when "00"=> s2<= '0'; c2 <= '0';
--	when "01"=> s2<= '1'; c2 <= '0';
--	when "10"=> s2<= '1'; c2 <= '0';
--	when "11"=> s2<= '0'; c2 <= '1';
--end case;
-- when else

end process;
end Behavioral;

architecture conc of half_adder is
begin
s2 <= a xor b;
c2 <= a and b;
end conc;


