--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:00:20 07/08/2015
-- Design Name:   
-- Module Name:   F:/PUF/period_cul/roCounter_ben.vhd
-- Project Name:  period_cul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: roCounter
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
 
ENTITY roCounter_ben IS
END roCounter_ben;
 
ARCHITECTURE behavior OF roCounter_ben IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT roCounter
    PORT(
         counterClk : IN  std_logic;
			 counterEna : in std_logic;
         counterOut : OUT  std_logic_vector(31 downto 0);
         countRst : IN  std_logic;
         counterCarry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal counterClk : std_logic := '0';
   signal countRst : std_logic := '0';
	signal counterEna : std_logic := '0';

 	--Outputs
   signal counterOut : std_logic_vector(31 downto 0);
   signal counterCarry : std_logic;

   -- Clock period definitions
   constant counterClk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: roCounter PORT MAP (
          counterClk => counterClk,
			 counterEna => counterEna,
          counterOut => counterOut,
          countRst => countRst,
          counterCarry => counterCarry
        );

   -- Clock process definitions
   counterClk_process :process
   begin
		counterClk <= '0';
		wait for counterClk_period/2;
		counterClk <= '1';
		wait for counterClk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	  countRst <= '1';
	  wait for 10 ns;
	  countRst <= '0';
	  wait for 40 ns;
	  counterEna <= '1';
      wait for counterClk_period*10;
		 wait for 500 ns;
		 counterEna <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;