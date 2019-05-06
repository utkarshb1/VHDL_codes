----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bin_4_adder is
    Port ( n1,n2 : in  bit_vector(3 downto 0);
           sum: inout  bit_vector(3 downto 0);
			  carry: out bit);
end bin_4_adder;

architecture Behavioral of bin_4_adder is
component full_adder 
    Port ( x,y,z : in  bit;
				s1,c1:  inout bit);
end component;
signal car : bit_vector (3 downto 0);
begin
f1 : full_adder port map(n1(0),n2(0),'0',sum(0),car(0));
f2 : full_adder port map(n1(1),n2(1),car(0),sum(1),car(1));
f3 : full_adder port map(n1(2),n2(2),car(1),sum(2),car(2));
f4 : full_adder port map(n1(3),n2(3),car(2),sum(3),car(3));
carry <= car(3);

end Behavioral;

