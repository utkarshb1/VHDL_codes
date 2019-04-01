----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:17:30 01/25/2019 
-- Design Name: 
-- Module Name:    lab_02 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab2 is
    Port ( x,y,cin,bin,z,str : in bit;
			  d :out bit_vector (1 downto 0);
			  b :out bit_vector (1 downto 0);
			  s :out bit_vector(1 downto 0);
			  c :out bit_vector (1 downto 0);
			  e :out bit_vector (7 downto 0));
end lab2;

architecture beh of lab2 is
signal s1,s2,s3,s4,s5,s6:bit; 
begin
--
--P1: process(x,y)
--begin
--s(0) <= x xor y;
--c(0) <= x and y;
--end process P1;
--
--P2: process(x,y,cin)
--begin
--s1 <= x xor y;
--s(1) <= s1 xor cin;
--s2 <= cin and s1;
--s3 <= x and y;
--c(1)<= s2 or s3;
--end process P2;
--
--P3: process(x,y)
--begin
--d(0) <= x xor y;
--b(0) <= not(x) and y;
--end process P3;
--
--P4: process(x,y,bin)
--begin
--s4 <=  x xor y;
--d(1) <= bin xor s4;
--s5 <= bin and not(s4);
--s6 <= not(x) and y;
--b(1) <= s5 or s6;
--end process P4;
--
P5: process(x,y,z,str)
begin
if str = '0' then
	e(0) <= (not(x) and not(y)) and not(z);
	e(1) <= (not(x) and not(y)) and z;
	e(2) <= (not(x) and y) and not(z);
	e(3) <= (not(x) and y) and z;
	e(4) <= (x and not(y)) and not(z);
	e(5) <= (x and not(y)) and z;
	e(6) <= (x and y) and not(z);
	e(7) <= (x and y) and z;
else 
	NULL;
end if;
end process P5;

end beh;
