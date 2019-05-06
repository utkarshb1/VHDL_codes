----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:40:08 02/10/2019 
-- Design Name: 
-- Module Name:    decoder3x8_if - Behavioral 
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
library IEEE;									--Importing Library 
use IEEE.STD_LOGIC_1164.ALL;

entity decoder3x8_if is						-- Entity Declaration
    Port ( x,y,z : in  bit;
           e : out  bit_vector(7 downto 0));
end decoder3x8_if;

architecture Behavioral of decoder3x8_if is	--Architecture Declaration

begin
process(x,y,z)											-- Start of process
variable a,b,c : bit;								--Declaring Variables
variable n:bit_vector(7 downto 0);
begin
a := x;
b := y;
c := z;
if a = '0' and b = '0' and c = '0' then		--Start of if 
	n:= "00000001";
elsif a = '0' and b = '0' and c = '1' then
	n:= "00000010";
elsif a = '0' and b = '1' and c = '0' then
	n:= "00000010";
elsif a = '0' and b = '1' and c = '1' then
	n:= "00000010";
elsif a = '1' and b = '0' and c = '0' then
	n:= "00000010";
elsif a = '1' and b = '0' and c = '1' then
	n:= "00000010";
elsif a = '1' and b = '1' and c = '0' then
	n:= "00000010";
elsif a = '1' and b = '1' and c = '1' then
	n:= "00000010";
end if;													--End of if
e<=n;														--Assigning value to signal
end process;											--End of Process
end Behavioral;										--End of Architecture

