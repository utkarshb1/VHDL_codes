----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:36:22 02/11/2019 
-- Design Name: 
-- Module Name:    demux1x8_if - Behavioral 
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
library IEEE;												--Importing Library
use IEEE.STD_LOGIC_1164.ALL;


entity demux1x8_if is									-- Entity Declaration
    Port ( a,s1,s2,s3 : in  bit;						--Defining inputs and outputs
           x : out  bit_vector(7 downto 0));
end demux1x8_if;											--End of Entity

architecture Behavioral of demux1x8_if is			--Architecture Declaration

begin
process(a,s1,s2,s3)										--Process Intialization
variable sel: bit_vector(2 downto 0);				--Variable Declaration
variable b: bit_vector(7 downto 0);					--Variable Declaration
begin
	sel(0):= s1;sel(1):= s2;sel(2):= s3;
	if sel="000" then										--Start of If-else statement
		b(0):= a;
	elsif sel="001" then
		b(1):= a;
	elsif sel="010" then
		b(2):= a;
	elsif sel="011" then
		b(3):= a;
	elsif sel="100" then
		b(4):= a;
	elsif sel="101" then
		b(5):= a;
	elsif sel="110" then
		b(6):= a;
	elsif sel="111" then
		b(7):= a;
	end if;													--End of If-else Statement
	x<=b;
	end process;											--End of Process
end Behavioral;											--End of Architecture


