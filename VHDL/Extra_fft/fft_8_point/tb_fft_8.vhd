LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
library work;
use work.dit_ifft_pkg.all;

ENTITY tb IS
END tb;

ARCHITECTURE behavior OF tb IS 
   signal s,y : comp_array;

BEGIN
    -- Instantiate the Unit Under Test (UUT)
   uut: entity work.dit_ifft8 PORT MAP (
          s => s,
             y => y
        );    
   -- Stimulus process
   stim_proc: process
   begin        
    --sample inputs in time domain.
--      s(0) <= (-2.0,1.2);   
--        s(1) <= (-2.2,1.7); 
--        s(2) <= (1.0,-2.0); 
--        s(3) <= (-3.0,-3.2);    
--        s(4) <= (4.5,-2.5); 
--        s(5) <= (-1.6,0.2); 
--        s(6) <= (0.5,1.5);  
--        s(7) <= (-2.8,-4.2);    
      s(0) <= (1.0,0.0);   
        s(1) <= (2.0,0.0); 
        s(2) <= (3.0,0.0); 
        s(3) <= (4.0,0.0);    
        s(4) <= (5.0,0.0); 
        s(5) <= (6.0,0.0); 
        s(6) <= (7.0,0.0);  
        s(7) <= (8.0,0.0);
--      s(0) <= (36.0,0.0);   
--        s(1) <= (-4.0,0.0); 
--        s(2) <= (-4.0,4.0); 
--        s(3) <= (-4.0,-4.0);    
--        s(4) <= (-4.0,9.6569); 
--        s(5) <= (-4.0,-1.6569); 
--        s(6) <= (-4.0,1.6569);  
--        s(7) <= (-4.0,-9.6569);
      wait;
   end process;

END;