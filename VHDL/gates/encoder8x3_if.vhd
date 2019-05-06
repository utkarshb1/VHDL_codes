----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:29:40 02/11/2019 
-- Design Name: 
-- Module Name:    encoder3x8_if - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
----------------------------------------------------------------------------------
library IEEE;						--Importing library
use IEEE.STD_LOGIC_1164.ALL;


entity encoder8x3_if is			--Entity Declaration
    Port ( a,b,c,d,e,f,g,h : in  bit;
           p : out  bit_vector(2 downto 0));
end encoder8x3_if;

architecture Behavioral of encoder8x3_if is		--Architecture Declaration

begin
process(a,b,c,d,e,f,g,h)
variable s:bit_vector(7 downto 0);					--defining variables
variable n: bit_vector(2 downto 0);
begin
s(0):=a;s(1):=b;s(2):=c;s(3):=d;s(4):=e;s(5):=f;s(6):=g;s(7):=h;
if s = "00000001" then									--Assigning value to output variable based on the input as per Truth table.
	n:= "000";
elsif s = "00000010" then
	n:= "001";
elsif s = "00000010" then
	n:= "010";
elsif s = "00000010" then
	n:= "011";
elsif s = "00000010" then
	n:= "100";
elsif s = "00000010" then
	n:= "101";
elsif s = "00000010" then
	n:= "110";
elsif s = "00000010" then
	n:= "111";
end if;												-- End of if
p <= n;												-- Assigning output variable value to Output Signal
end process;										-- End of proces
end Behavioral;									-- End of architecture

