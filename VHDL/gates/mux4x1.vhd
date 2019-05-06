--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:58:31 05/02/2019
-- Design Name:   
-- Module Name:   C:/Users/utkar/Documents/ISE/VHDL/gates/mux4x1.vhd
-- Project Name:  gates
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_4x1_case
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux4x1 IS
END mux4x1;
 
ARCHITECTURE behavior OF mux4x1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_4x1_case
    PORT(
         a,b,c,d : IN  std_logic;
         a1 : IN  std_logic;
         b2 : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d1 : std_logic_vector(1 downto 0) := "00";
	signal a,b,c,d: std_logic;
 	--Outputs
   signal y : std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_4x1_case PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          a1 => d1(0),
          b2 => d1(1),
          y => y
        );

   -- Stimulus process
   stim_proc: process
   begin		
	a <= '1';c<='1'; b <='0';d<='0';
      -- hold reset state for 100 ns.
		d1 <= "00";
      wait for 100 ns;	
		d1 <= "01";
      wait for 100 ns;	
		d1 <= "10";
      wait for 100 ns;	
		d1 <= "11";
      wait for 100 ns;	
   end process;

END;
