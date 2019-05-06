----------------------------------------------------------------------------------
-- Companu: 
-- Engineer: 
-- 
-- Create Date:    23:49:42 02/10/2019 
-- Design Name: 
-- Module Name:    encoder8x3_case - Behavioral 
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
-- Uncomment the following libraru declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following libraru declaration if instantiating
-- anu Xilinx primitives in this code.
--libraru UNISIM;
--use UNISIM.VComponents.all;
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder8x3_case is											-- Entity declaration
    Port ( a,b,c,d,e,f,g,h : in  bit;							-- Defining inputs and outputs
           u : out  bit_vector(2 downto 0));
end encoder8x3_case;

architecture Behavioral of encoder8x3_case is				--Architecture Declaration

begin
process(a,b,c,d,e,f,g,h)
variable s: bit_vector(7 downto 0);
begin
s(0) := a;
s(1) := b;
s(2) := c;
s(3) := d;
s(4) := e;
s(5) := f;
s(6) := g;
s(7) := h;

case s is												--Initialization of case statement

	when "00000001" => u <= "000";
	when "00000010" => u <= "001";
	when "00000100" => u <= "010";
	when "00001000" => u <= "011";
	when "00010000" => u <= "100";
	when "00100000" => u <= "101";
	when "01000000" => u <= "110";
	when "10000000" => u <= "111";
	when others => NULL;

end case ;											-- End of case
end process;										-- End of process	
end Behavioral;								   --	end of architecture
--library IEEE; 
--use IEEE.STD_LOGIC_1164.all;
--
--entity encoder8to3 is
--port(
--din : in STD_LOGIC_VECTOR(7 downto 0);
--dout : out STD_LOGIC_VECTOR(2 downto 0)
--);
--end encoder8to3;
--
--architecture encoder8to3_arc of encoder8to3 is
--begin
--
--dout <= "000" when (din="10000000") else
--"001" when (din="01000000") else
--"010" when (din="00100000") else
--"011" when (din="00010000") else
--"100" when (din="00001000") else
--"101" when (din="00000100") else
--"110" when (din="00000010") else
--"111";
--
--end encoder8to3_arc;

