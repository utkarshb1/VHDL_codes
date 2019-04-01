----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:39:39 01/25/2019 
-- Design Name: 
-- Module Name:    decoder_3x8 - Behavioral 
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
-- GIVE TP AS X = 200NS;Y = 100NS; Z = 50NS;
entity decoder_3x8 is
    Port ( x : in  bit;
           y : in  bit;
           z ,str: in  bit;
           e : out  bit_vector(7 downto 0));
end decoder_3x8;

architecture Behavioral of decoder_3x8 is

begin
process(x,y,z,str)
begin
if str = '0' then
	e(0) <= not(x) and not(y) and not(z);
	e(1) <= not(x) and not(y) and z;
	e(2) <= not(x) and y and not(z);
	e(3) <= not(x) and y and z;
	e(4) <= x and not(y) and not(z);
	e(5) <= x and not(y) and z;
	e(6) <= x and y and not(z);
	e(7) <= x and y and z;
else 
	NULL;
end if;
end process;
end Behavioral;