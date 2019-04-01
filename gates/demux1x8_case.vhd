----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:39:39 02/11/2019 
-- Design Name: 
-- Module Name:    demux1x8_case1x8_case - Behavioral 
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
library IEEE;													--Importing Library 
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity demux1x8_case is									-- Entity Declaration
    Port ( a,s1,s2,s3 : in  bit;						--Defining inputs and outputs
           x : out  bit_vector(7 downto 0));
end demux1x8_case;											--End of Entity

architecture Behavioral of demux1x8_case is			--Architecture Declaration

begin
process(a,s1,s2,s3)										--Process Intialization
variable sel: bit_vector(2 downto 0);				--Variable Declaration
variable b: bit_vector(7 downto 0);					--Variable Declaration
begin
	sel(0):= s1;sel(1):= s2;sel(2):= s3;
	case sel is
		when "000" =>
			b(0):=a;b(1):='0';b(2):='0';b(3):='0';b(4):='0';b(5):='0';b(6):='0';b(7):='0';
			
		when "001" =>
			b(0):='0';b(1):= a;b(2):='0';b(3):='0';b(4):='0';b(5):='0';b(6):='0';b(7):='0';
		
		when "010" =>
			b(0):='0';b(1):='0';b(2):= a;b(3):='0';b(4):='0';b(5):='0';b(6):='0';b(7):='0';
			
		when "011" =>
			b(0):='0';b(1):= '0';b(2):='0';b(3):=a;b(4):='0';b(5):='0';b(6):='0';b(7):='0';
			
		when "100" =>
			b(0):='0';b(1):= '0';b(2):='0';b(3):= '0';b(4):=a;b(5):='0';b(6):='0';b(7):='0';
			
		when "101" =>
			b(0):='0';b(1):= '0';b(2):='0';b(3):= '0';b(4):='0';b(5):=a;b(6):='0';b(7):='0';
		
		when "110" =>
			b(0):='0';b(1):= '0';b(2):='0';b(3):= '0';b(4):='0';b(5):='0';b(6):=a;b(7):='0';
			
		when others =>
			b(0):='0';b(1):= '0';b(2):='0';b(3):= '0';b(4):='0';b(5):='0';b(6):='0';b(7):=a;
	
		end case;											--End of case
	x<=b;														--Assigning value back to original signal
	end process;											--End of Process

end Behavioral;											--End of Architecture

