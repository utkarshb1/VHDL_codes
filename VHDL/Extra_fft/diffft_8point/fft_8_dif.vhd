library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.MATH_REAL.ALL;
library work;
use work.fft_pkg_dif.ALL;

entity fft_8_dif is
port(   s : in comp_array; --input signals in time domain
        y : out comp_array  --output signals in frequency domain
        );
end fft_8_dif;

architecture Behavioral of fft_8_dif is

component butterfly is 
   port(
      s1,s2 : in complex;      --inputs
      w :in complex;      -- phase factor
      g1,g2 :out complex      -- outputs
   );
end component;  
    
signal g1,g2 : comp_array := (others => (0.0,0.0));
--phase factor, W_N = e^(-j*2*pi/N)  and N=8 here.
--W_N^i = cos(2*pi*i/N) - j*sin(2*pi*i/N);  and i has range from 0 to 7.
constant w : comp_array2 := ( (1.0,0.0), (0.7071,-0.7071), (0.0,-1.0), (-0.7071,-0.7071) );

begin

--first stage of butterfly's.
bf11 : butterfly port map(s(0),s(4),w(0),g1(0),g1(1));
bf12 : butterfly port map(s(2),s(6),w(2),g1(2),g1(3));
bf13 : butterfly port map(s(1),s(5),w(1),g1(4),g1(5));
bf14 : butterfly port map(s(3),s(7),w(3),g1(6),g1(7));

--second stage of butterfly's.
bf21 : butterfly port map(g1(0),g1(2),w(0),g2(0),g2(2));
bf22 : butterfly port map(g1(1),g1(3),w(0),g2(1),g2(3));
bf23 : butterfly port map(g1(4),g1(6),w(2),g2(4),g2(6));
bf24 : butterfly port map(g1(5),g1(7),w(2),g2(5),g2(7));

--third stage of butterfly's.
bf31 : butterfly port map(g2(0),g2(4),w(0),y(0),y(4));
bf32 : butterfly port map(g2(1),g2(5),w(0),y(1),y(5));
bf33 : butterfly port map(g2(2),g2(6),w(0),y(2),y(6));
bf34 : butterfly port map(g2(3),g2(7),w(0),y(3),y(7));
    
end Behavioral;