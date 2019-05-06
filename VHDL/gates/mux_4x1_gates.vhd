----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:12:26 02/01/2019 
-- Design Name: 
-- Module Name:    mux_4x1_gates - Behavioral 
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

entity mux_4x1_gates is
    Port ( a,b,c,d : in  bit;
           y : out  bit;
			  a1,b1 : in  bit);
end mux_4x1_gates;

architecture Behavioral of mux_4x1_gates is
begin
process(a,b,c,d,a1,b1)
variable s1,s2,s3,s4,a2,b2: bit;

begin
a2 := a1;
b2 := b1;
s1 := a and not(a2) and not(b2);
s2 := b and not(b2) and a2;
s3 := c and b2 and not(a2);
s4 := d and a2 and b2;
y <= s1 or s2 or s3 or s4;
end process;


end Behavioral;

