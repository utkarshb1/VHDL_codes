----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:11:43 02/12/2019 
-- Design Name: 
-- Module Name:    mux8x1_if - Behavioral 
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
library IEEE;														--Importing Library
use IEEE.STD_LOGIC_1164.ALL;

entity mux8x1_if is												-- Entity Declaration
    Port ( a0,a1,a2,a3,a4,a5,a6,a7 : in std_logic;		--Defining inputs and outputs
				x,y,z: in std_logic;
           b : out  STD_LOGIC);
end mux8x1_if;														--End of Entity

architecture Behavioral of mux8x1_if is					--Architecture Declaration

begin
	process(a0,a1,a2,a3,a4,a5,a6,a7,x,y,z)					--Process Intialization
	variable s: STD_LOGIC_vector(2 downto 0);				--Variable Declaration
	begin
	s(0):= x;
	s(1):= y;
	s(2):= z;
	if s = "000" then												--Start of If-else statement
		b <= a0;
	elsif s = "001" then
		b <= a1;
	elsif s = "010" then
		b <= a2;
	elsif s = "011" then
		b <= a3;
	elsif s= "100" then
		b <= a4;
	elsif s="101" then
		b <= a5;
	elsif s= "110" then
		b <= a6;
	elsif s = "111" then
		b <= a7;
	end if;															--End of If-else Statement
	
end process;														--End of Process
end Behavioral;													--End of Architecture
