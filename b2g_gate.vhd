----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:15:52 02/01/2019 
-- Design Name: 
-- Module Name:    b2g_gate - Behavioral 
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

entity b2g_gate is
    Port ( b0 : in  bit;
           b1 : in  bit;
           b2 : in  bit;
           b3 : in  bit;
           g : out  bit_vector(3 downto 0));
end b2g_gate;

architecture Behavioral of b2g_gate is

begin
process(b0,b1,b2,b3)
begin
g(0) <= b0;
g(1) <= b0 xor b1;
g(2) <= b1 xor b2;
g(3) <= b2 xor b3;
end process;

end Behavioral;

