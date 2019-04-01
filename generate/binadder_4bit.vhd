----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity binadder_4bit is
    Port ( a,b : in  bit_vector(3 downto 0);
           cin : in  bit;
           sum : out  bit_vector(3 downto 0);
           Cout : out  bit);
end binadder_4bit;

architecture Behavioral of binadder_4bit is
component full_adder
	port(x,y,z:in bit;
			s1,c1: out bit);
end component;
signal car: bit_vector(4 downto 0);
begin
car(0) <= cin;
GK:for K in 3 downto 0 generate
		FAL:full_adder port map(car(K),a(K),b(K),sum(K),car(k+1));
end generate GK;
Cout <= car(4);
end Behavioral;

