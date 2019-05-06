----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:48:27 01/26/2019 
-- Design Name: 
-- Module Name:    half_full_sub - Behavioral 
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

entity half_full_sub is
    Port ( x,y,bin : in bit;
			  d :out bit_vector (1 downto 0);
			  b :out bit_vector (1 downto 0));
end half_full_sub;

architecture Behavioral of half_full_sub is
signal s4,s5,s6:bit;
begin

P1: process(x,y)
begin
d(0) <= x xor y;
b(0) <= not(x) and y;
end process P1;

P2: process(x,y,bin)
begin
s4 <=  x xor y;
d(1) <= bin xor s4;
s5 <= bin and not(s4);
s6 <= not(x) and y;
b(1) <= s5 or s6;
end process P2;


end Behavioral;

