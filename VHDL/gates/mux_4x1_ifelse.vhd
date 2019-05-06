----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:41:17 02/01/2019 
-- Design Name: 
-- Module Name:    mux_4x1_ifelse - Behavioral 
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

entity mux_4x1_ifelse is
    Port ( a,b,c,d : in  bit;
			  a1,b1:in bit;
           y : out  bit);
end mux_4x1_ifelse;

architecture Behavioral of mux_4x1_ifelse is

begin
process(a,b,c,d,a1,b1)
variable a2,b2:bit;
begin
if a2 = '0' and b2 = '0' then
	y <= a;
elsif a2 = '0' and b2 = '1' then
	y <= b;
elsif a2 = '1' and b2 = '0' then
	y <= c;
elsif a2 = '1' and b2 = '1' then
	y <= d;	
end if;
end process;
end Behavioral;

