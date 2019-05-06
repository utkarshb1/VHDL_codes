library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( x,y,z : in  bit;
				s1,c1:  out bit);
end full_adder;

architecture Behavioral of full_adder is
component half_adder
	port(a,b: in bit;
			s2,c2: out bit);
end component;

for h1,h2:half_adder
	use entity work.half_adder(Behavioral);
	
for h3:half_adder
	use entity work.half_adder(conc);	
signal p,q,r,t:bit;

begin
h1 : half_adder port map(x,y,p,q);
h2 : half_adder port map(p,z,s1,r);
h3 : half_adder port map(q,r,c1,t);

end Behavioral;

