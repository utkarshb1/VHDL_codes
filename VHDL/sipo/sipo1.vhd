----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:19:53 03/15/2019 
-- Design Name: 
-- Module Name:    sipo1 - Behavioral 
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

entity sipo1 is
    Port ( din1,clk1 : in  bit;
           dout1 : inout  bit_vector(3 downto 0));
end sipo1;

architecture Behavioral of sipo1 is
component dff is 
	port(clk,din: in bit;
		dout: out bit);
end component;
signal s: bit_vector(3 downto 0);
begin
u1: dff port map(clk1,din1,s(0));
u2: dff port map(clk1,s(0),s(1));
u3: dff port map(clk1,s(1),s(2));
u4: dff port map(clk1,s(2),s(3));
dout1 <= s;
end Behavioral;

