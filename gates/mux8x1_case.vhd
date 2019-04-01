----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:14:44 02/12/2019 
-- Design Name: 
-- Module Name:    mux8x1_case - Behavioral 
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


entity mux8x1_case is									-- Entity Declaration
    Port ( a0,a1,a2,a3,a4,a5,a6,a7 : in std_logic;		--Defining inputs and outputs
				x,y,z: in std_logic;
           b : out  STD_LOGIC);
end mux8x1_case;											--End of Entity

architecture Behavioral of mux8x1_case is			--Architecture Declaration

begin
	process(a0,a1,a2,a3,a4,a5,a6,a7,x,y,z)			--Process Intialization
	variable s: STD_LOGIC_vector(2 downto 0);		--Variable Declaration
	begin
	s(0):= x;
	s(1):= y;
	s(2):= z;
		case s is											--Start of case Statement
			when "000" => b <= a0;
			when "001" => b <= a1;
			when "010" => b <= a2;
			when "011" => b <= a3;
			when "100" => b <= a4;
			when "101" => b <= a5;
			when "110" => b <= a6;
			when "111" => b <= a7;
			when others => null;
		end case;											--End of Case
end process;												--End of Process
end Behavioral;											--End of Architecture

