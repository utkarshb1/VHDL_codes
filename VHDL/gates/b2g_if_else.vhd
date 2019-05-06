----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:17:50 02/12/2019 
-- Design Name: 
-- Module Name:    b2g_if_else - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity b2g_if_else is
    Port ( b0 : in  bit;
           b1 : in  bit;
           b2 : in  bit;
           b3 : in  bit;
           g : out  bit_vector(3 downto 0));
end b2g_if_else;

architecture Behavioral of b2g_if_else is

begin
process(b0,b1,b2,b3)
variable s:bit_vector(3 downto 0);
variable h: bit_vector(3 downto 0);
begin
s(0) := b0;
s(1) := b1;
s(2) := b2;
s(3) := b3;
if    s = "0000" then 
	h := "0000";
elsif s = "0001" then
	h := "0001";
elsif s = "0010" then
	h := "0011";
elsif s = "0011" then
	h := "0010";
elsif s = "0100" then
	h := "0110";
elsif s = "0101" then
	h := "0111";
elsif s = "0110" then
	h := "0101";
elsif s = "0111" then
	h := "0100";
elsif s = "1000" then
	h := "1100";
elsif s = "1001" then
	h := "1101";
elsif s = "1010" then
	h := "1111";
elsif s = "1011" then
	h := "1110";
elsif s = "1100" then
	h := "1010";
elsif s = "1101" then
	h := "1011";
elsif s = "1110" then
	h := "1001";
elsif s = "1111" then
	h := "0000";
end if;
g <= h;
end process;
end Behavioral;

