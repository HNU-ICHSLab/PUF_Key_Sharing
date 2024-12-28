--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:12:29 07/09/2015
-- Design Name:   
-- Module Name:   F:/PUF/period_cul/roModule_Ben.vhd
-- Project Name:  period_cul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: roModule
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
 
ENTITY roModule_Ben IS
END roModule_Ben;
 
ARCHITECTURE behavior OF roModule_Ben IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT roModule
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
 
  --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: roModule PORT MAP (
          roModuleEna => roModuleEna,
          roModuleConf0 => roModuleConf0,
          roModuleConf1 => roModuleConf1,
          roModuleOut => roModuleOut
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
      wait for 100 ns;
		roModuleEna <= '1';
		wait for 100 ns;
		roModuleConf0 <= '0';
		roModuleConf1 <= '1';
		wait for 100 ns;
		roModuleConf0 <= '1';
		roModuleConf1 <= '0';
		wait for 100 ns;
		roModuleConf0 <= '1';
		roModuleConf1 <= '1';
		wait for 100 ns;
		roModuleEna <= '0';
		


      -- insert stimulus here 

      wait;
   end process;

END;
