----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:18:39 02/06/2019 
-- Design Name: 
-- Module Name:    demux1x4 - Behavioral 
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

entity demux1x4 is
    Port ( sl1,sl2 : in  bit;
           a : in  bit;
--           s0,s1,s2,s3 : out  bit);
			  s : out bit_vector(3 downto 0));
end demux1x4;

architecture Behavioral of demux1x4 is

begin
process(sl1,sl2,a)
variable sele : bit_vector(1 downto 0);
--variable b0,b1,b2,b3: bit;
variable b: bit_vector(3 downto 0);
begin
sele(0) := sl1;
sele(1) := sl2;
--b : = '0000';
case sele is 
	when "00"=> 
		b(0):= a;b(1) := '0';b(2):= '0'; b(3) := '0';
--		b(1):= '0';
--		b(2):= '0';
--		b(3):= '0';
	when "01"=> 
		b(0):= '0';
		b(1):= a;
		b(2):= '0';
		b(3):= '0';
	when "10"=> 
		b(0):= '0';
		b(1):= '0';
		b(2):= a;
		b(3):= '0';
	when "11"=> 
		b(0):= '0';
		b(1):= '0';
		b(2):= '0';
		b(3):= a;
	end case;
--	s(0) <= b(0);
--	s(1) <= b(1);
--	s(2) <= b(2);
--	s(3) <= b(3);
	s <= b;
end process;
end Behavioral;

