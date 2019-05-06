--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:44:39 05/02/2019
-- Design Name:   
-- Module Name:   C:/Users/utkar/Documents/ISE/VHDL/gates/encode8x3.vhd
-- Project Name:  gates
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: encoder8x3_case
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY encode8x3 IS
END encode8x3;
 
ARCHITECTURE behavior OF encode8x3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT encoder8x3_case
    PORT(
         a : IN  bit;
         b : IN  bit;
         c ,d,e,f,g,h: IN  bit;
         u : OUT  bit_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s : bit_vector(7 downto 0) := "00000000";

 	--Outputs
   signal un : bit_vector(2 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: encoder8x3_case PORT MAP (
          a => s(0),
          b => s(1),
          c => s(2),
          d => s(3),
          e => s(4),
          f => s(5),
          g => s(6),
          h => s(7),
          u => un
        );


   -- Stimulus process
   stim_proc: process
   begin		
       s<="00000001";
       wait for 100 ns;
       s<="00000010";
       wait for 100 ns;
       s<="00000100";
       wait for 100 ns;
       s<="00001000";
       wait for 100 ns;
       s<="00010000";
       wait for 100 ns;
       s<="00100000";
       wait for 100 ns;
       s<="01000000";
       wait for 100 ns;
       s<="10000000";
       wait for 100 ns;
   end process;

END behavior;
