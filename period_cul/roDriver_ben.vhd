--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:44:27 07/08/2015
-- Design Name:   
-- Module Name:   F:/PUF/period_cul/roDriver_ben.vhd
-- Project Name:  period_cul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: roDriver
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
 
ENTITY roDriver_ben IS
END roDriver_ben;
 
ARCHITECTURE behavior OF roDriver_ben IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT roDriver
    PORT(
         driverClk : IN  std_logic;
         driverRst : IN  std_logic;
         driverOut : OUT  std_logic;
			driverToCounter :out STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal driverClk : std_logic := '0';
   signal driverRst : std_logic := '0';

 	--Outputs
   signal driverOut : std_logic;
	signal driverToCounter : std_logic;

   -- Clock period definitions
   constant driverClk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: roDriver PORT MAP (
          driverClk => driverClk,
          driverRst => driverRst,
          driverOut => driverOut,
			 driverToCounter => driverToCounter
        );

   -- Clock process definitions
   driverClk_process :process
   begin
		driverClk <= '0';
		wait for driverClk_period/2;
		driverClk <= '1';
		wait for driverClk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		driverRst <= '1';
      wait for driverClk_period*10;
		driverRst <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
