----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:45:19 02/10/2019 
-- Design Name: 
-- Module Name:    decoder_3x8_case - Behavioral 
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
library IEEE;											--Importing Library
use IEEE.STD_LOGIC_1164.ALL;		
	
entity decoder_3x8_case is							--Entity Declaration
    Port ( x : in  bit;								--Defining inputs and outputs
           y : in  bit;
           z : in  bit;
           e : out  bit_vector (7 downto 0));
end decoder_3x8_case;								--End of entity

architecture Behavioral of decoder_3x8_case is		--Architecture Declaration
begin
process(x,y,z)													--Process Initialization
variable s : bit_vector(2 downto 0);					--Defining Variables
begin
s(0) := z;
s(1) := y;
s(2) := x;
case s is 														--Start of case statement
	when "000"=> e<= "00000001";
	when "001"=> e<= "00000010";
	when "010"=> e<= "00000100";
	when "011"=> e<= "00001000";
	when "100"=> e<= "00010000";
	when "101"=> e<= "00100000";
	when "110"=> e<= "01000000";
	when "111"=> e<= "10000000";
end case;														--End of case
end process;													--End of Process
end Behavioral;												--End of architecture
