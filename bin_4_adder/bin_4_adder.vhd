----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:22:39 03/01/2019 
-- Design Name: 
-- Module Name:    bin_4_adder - Behavioral 
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

entity bin_4_adder is
	 generic(N: natural := 3);
    Port ( a : in  bit_vector(N downto 0);
           b : in  bit_vector(N downto 0);
			  cout: inout bit;
			  s : inout bit_vector(N downto 0));
end bin_4_adder;

architecture Behavioral of bin_4_adder is
component full_adder
	port( x,y,z: in  bit;
				s1,c1:  inout bit);
end component;
signal p,q,r:bit;
begin
h1 : full_adder port map (a(0),b(0),'0',s(0),p);
h2 : full_adder port map (a(1),b(1),p,s(1),q);
h3 : full_adder port map (a(2),b(2),q,s(2),r);
h4 : full_adder port map (a(3),b(3),r,s(3),cout);

end Behavioral;

