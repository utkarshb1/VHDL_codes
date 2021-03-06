--TESTBENCH OF DIT_IFFT_8PT
LIBRARY ieee;														--IMPORTING LIBRARY
USE ieee.std_logic_1164.ALL;							
library work;														--WORKING IN CURRENT(WORK) FOLDER
use work.dit_ifft_pkg.all;										--USING PACKAGE DIT_IFFT_PKG FROM WORK DIRECTORY
----------------------------------------------------------------------------------------------------
ENTITY tb IS														--TESTBENCH ENTITY DECLARATION
END tb;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
ARCHITECTURE behavior OF tb IS 								--ARCHITECTURE DECLARATION
signal s,y : ar;													--SIGNAL DECLARATION
begin    
uut: entity work.dit_ifft_8pt PORT MAP (s => s,y => y);-- Instantiating the Unit Under Test (UUT)
   -- Stimulus process
   stim_proc: process
   begin        
      s(0) <= (1.0,0.0);   									--GIVING INPUTS
        s(1) <= (2.0,0.0); 
        s(2) <= (1.0,0.0); 
        s(3) <= (2.0,0.0);    
        s(4) <= (1.0,0.0); 
        s(5) <= (2.0,0.0); 
        s(6) <= (1.0,0.0);  
        s(7) <= (2.0,0.0);
     wait;															--WAIT STATEMENT 		
   end process;													--END OF PROCESS
end behavior;														--END OF ARCHITECTURE
--------------------------------------------------------------------------------------------------