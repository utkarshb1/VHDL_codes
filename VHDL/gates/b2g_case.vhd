----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:49:46 02/01/2019 
-- Design Name: 
-- Module Name:    b2g_case - Behavioral 
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

entity b2g_case is
    Port ( b0,b1,b2,b3 : in  bit;
           g : out  bit_vector(3 downto 0));
end b2g_case;

architecture Behavioral of b2g_case is

begin
process(b0,b1,b2,b3)
variable s: bit_vector(3 downto 0);
begin
s(0) := b0;
s(1) := b1;
s(2) := b2;
s(3) := b3;
case s is 
	when "0000" =>  g <= "0000";
	when "0001" =>  g <= "0001";
	when "0010" =>  g <= "0011";
	when "0011" =>  g <= "0010";
	when "0100" =>  g <= "0110";
	when "0101" =>  g <= "0111";
	when "0110" =>  g <= "0101";
	when "0111" =>  g <= "0100";
	when "1000" =>  g <= "1100";
	when "1001" =>  g <= "1101";
	when "1010" =>  g <= "1111";
	when "1011" =>  g <= "1110";
	when "1100" =>  g <= "1010";
	when "1101" =>  g <= "1011";
	when "1110" =>  g <= "1001";
	when "1111" =>  g <= "0000";
end case;
end process;
end Behavioral;

