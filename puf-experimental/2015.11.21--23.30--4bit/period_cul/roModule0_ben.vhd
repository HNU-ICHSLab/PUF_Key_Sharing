--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:34:58 11/15/2015
-- Design Name:   
-- Module Name:   D:/Xilinx/period_cul/roModule0_ben.vhd
-- Project Name:  period_cul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: roModule0
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
 
ENTITY roModule0_ben IS
END roModule0_ben;
 
ARCHITECTURE behavior OF roModule0_ben IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT roModule0
    PORT(
         roModuleEna : IN  std_logic;
         roModuleConf0 : IN  std_logic;
         roModuleConf1 : IN  std_logic;
         roModuleOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal roModuleEna : std_logic := '0';
   signal roModuleConf0 : std_logic := '0';
   signal roModuleConf1 : std_logic := '0';

 	--Outputs
   signal roModuleOut : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: roModule0 PORT MAP (
          roModuleEna => roModuleEna,
          roModuleConf0 => roModuleConf0,
          roModuleConf1 => roModuleConf1,
          roModuleOut => roModuleOut
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 

      wait;
   end process;

END;
