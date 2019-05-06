library IEEE;
use IEEE.std_logic_1164.all;
entity half_adder is
    Port ( a,b : in  bit;
           s2,c2 : out  bit);
end half_adder;

architecture Behavioral of half_adder is

begin
s2 <= a xor b;
c2 <= a and b;

end Behavioral;

