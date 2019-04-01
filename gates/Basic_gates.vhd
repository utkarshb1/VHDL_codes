----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:49:01 01/22/2019 
-- Design Name: 
-- Module Name:    Basic_gates - Behavioral 
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

entity Basic_gates is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           q,w,e,r,t,y,u : out  STD_LOGIC);
end Basic_gates;

architecture Dataflow of Basic_gates is

begin
q <= a and b;
w <= a or b;
e <= a nor b;
r <= a xor b;
t <= a xnor b;
y <= not(a);
u <= a nand b;


end Dataflow;

