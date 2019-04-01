----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:29:40 03/22/2019 
-- Design Name: 
-- Module Name:    using_if_generate - Behavioral 
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

entity using_if_generate is
    Port ( count,clk : in  bit;
           Q : inout  bit_vector(0 to 3));
end using_if_generate;

architecture Behavioral of using_if_generate is
component dff 
	port(clk,din: in bit;
			dout: out bit);
end component ;
begin
GK:for k in 0 to 3 generate
		GK0:if k=0 generate
				Dff1:dff port map(clk,count,Q(k));
		end generate GK0;
		
		GK1_3:if k>0 generate
				dff1:dff port map(clk,Q(k-1),Q(k));
		end generate GK1_3;
end generate GK;
end Behavioral;

