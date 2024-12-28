----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:44:56 11/29/2015 
-- Design Name: 
-- Module Name:    RO - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RO is
PORT(
		ROConf0 : in  STD_LOGIC;
      ROConf1 : in  STD_LOGIC;
		RORst	:	in  STD_LOGIC;
		driverToCounter : in std_logic;
		driverToRo : in std_logic;
		ROCompareOut	: OUT std_logic_vector(0 downto 0)
		);
		
end RO;

architecture Behavioral of RO is
---------------------------------------------------------------
---------------------------------------------------------------
---------------------------------------------------------------
-- ro module
COMPONENT roModule
	PORT(
		roModuleEna : IN std_logic;
		roModuleConf0 : IN std_logic;
		roModuleConf1 : IN std_logic;          
		roModuleOut : OUT std_logic
		);
END COMPONENT;

----------------------------------------------------------------------
-- counter
COMPONENT roCounter
	PORT(
		counterClk : IN std_logic;
		counterEna : IN std_logic;
		countRst : IN std_logic;          
		counterOut : OUT std_logic_vector(31 downto 0);
		counterCarry : OUT std_logic
		);
END COMPONENT;

-------------------------------------------------------------------------
---counterCompare
COMPONENT counterCompare
	PORT(
		counterIn : IN std_logic_vector(31 downto 0);
		counterIn0 : IN std_logic_vector(31 downto 0); 
		countPart : OUT std_logic_vector(0 downto 0)
		);
END COMPONENT;
-------------------------------------------------------------------------
---------------------------SIGNAL----------------------------------------
signal ro_to_counter: std_logic;
signal ro0_to_counter0: std_logic;

signal counter_out_vecter:std_logic_vector(31 downto 0);
signal counter0_out_vecter:std_logic_vector(31 downto 0);
signal carry: std_logic;
signal carry0: std_logic;
----------------------------------------------------------
signal compare_to_output: std_logic;

--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------
begin
-----roModule					
RO_inst : roModule port map(
									roModuleEna => driverToRo,
									roModuleConf0 => ROConf0,
									roModuleConf1 => ROConf1,
									roModuleOut=> ro_to_counter);
RO_inst0 : roModule port map(
									roModuleEna => driverToRo,
									roModuleConf0 => ROConf0,
									roModuleConf1 => ROConf1,
									roModuleOut=> ro0_to_counter0);
								
---------------------roCounter---------------------------------------	
--------roCounter								
RO_inst_counter: roCounter port map(
								  counterClk => ro_to_counter,
								  counterEna => driverToCounter,
								  countRst => RORst,
								  counterOut => counter_out_vecter,
								  counterCarry => carry);
RO_inst_counter0: roCounter port map(
								  counterClk => ro0_to_counter0,
								  counterEna => driverToCounter,
								  countRst => RORst,
								  counterOut => counter0_out_vecter,
								  counterCarry => carry0);
						  
--------------------counterCompare-----------------------------------
RO_inst_compare: counterCompare port map(
												counterIn => counter_out_vecter,
												counterIn0 => counter0_out_vecter, 
												countPart => ROCompareOut
												);


end Behavioral;


