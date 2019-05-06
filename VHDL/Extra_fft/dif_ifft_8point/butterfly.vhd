library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.fft_pkg_dif.ALL;

entity butterfly is 
   port(
      s1,s2 : in complex;      --inputs
      w :in complex;           -- phase factor
      g1,g2 :out complex       -- outputs
   );
end butterfly;

architecture Behavioral of butterfly is 
signal g2_temp : complex;

begin 
--butterfly equations.
g1 <= add(s1,s2);
g2_temp <= sub(s1,s2);
g2 <= mult(g2_temp,w);
end Behavioral;