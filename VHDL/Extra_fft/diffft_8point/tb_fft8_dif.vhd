LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
library work;
use work.fft_pkg_dif.all;

ENTITY tb IS
END tb;

ARCHITECTURE behavior OF tb IS 
   signal s,y : comp_array;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
   uut: entity work.fft_8_dif PORT MAP (
          s => s,
             y => y
        );
    
   -- Stimulus process
   stim_proc: process
   begin        
    --sample inputs in time domain.
      s(0) <= (1.0,0.0);   
        s(1) <= (2.0,0.0); 
        s(2) <= (3.0,0.0); 
        s(3) <= (4.0,0.0);     
        s(4) <= (5.0,0.0);  
        s(5) <= (6.0,0.0);  
        s(6) <= (7.0,0.0);   
        s(7) <= (8.0,0.0);     
      wait;
   end process;

END;