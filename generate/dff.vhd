----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:32:58 03/15/2019 
-- Design Name: 
-- Module Name:    dff - Behavioral 
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

entity dff is
	port(clk,din: in bit;
			dout: out bit);
end dff;

architecture Behavioral of dff is
begin
process(clk, din)
begin
if(clk'event and clk = '1') then
	dout<= din;
else 
	NULL;
end if;
end process;
end Behavioral;

