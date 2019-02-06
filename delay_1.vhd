----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:13:25 01/31/2019 
-- Design Name: 
-- Module Name:    delay_1 - Behavioral 
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

entity delay_1 is
    Port ( a : in  STD_LOGIC;
           b,F : out  STD_LOGIC;
			  c,d,e: out integer);
end delay_1;

architecture Behavioral of delay_1 is

begin
process(a)
begin
b <= a after 25ns;
c <= reject 1ns inertial 1 after 1100ns;
d <= transport 1 after 1200ns;
f <= a after 30ns;
e <= 1 after 8ns, 21 after 9ns,6 after 10ns, 12 after 19ns;
--e <= reject 4ns inertial 6 after 12ns, 20 after 19ns;
end process;
end Behavioral;

