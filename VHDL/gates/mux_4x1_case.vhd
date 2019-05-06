----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:49:22 02/01/2019 
-- Design Name: 
-- Module Name:    mux_4x1_case - Behavioral 
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

entity mux_4x1_case is
    Port ( a,b,c,d : in  STD_LOGIC;
           a1 : in  STD_LOGIC;
			  b2 : in STD_LOGIC;
           y: out  STD_LOGIC);
end mux_4x1_case;

architecture Behavioral of mux_4x1_case is

begin
	process(a,b,c,d,a1)
	variable a2:STD_LOGIC_vector(1 downto 0);
	variable y1:STD_LOGIC;
	begin
		a2(0) := a1;
		a2(1) := b2;
			case a2 is 
				when "00" => y1 := a;
				when "01" => y1 := b;
				when "10" => y1 := c;
				when others => y1 := d;
			end case;
		y <= y1;
	end process;
end Behavioral;

