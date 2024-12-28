----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:14:57 07/09/2015 
-- Design Name: 
-- Module Name:    topDesign - Behavioral 
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

entity topDesign is
    Port ( sysClock : in  STD_LOGIC;
           sysRst : in  STD_LOGIC;
           sysConf0 : in  STD_LOGIC;
           sysConf1 : in  STD_LOGIC;
			  sysSel : in  STD_LOGIC_VECTOR (3 downto 0);
           sysout : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end topDesign;

architecture Behavioral of topDesign is
---------------------------COMPONENT-----------------COMPONENT------------------------
---------------------------COMPONENT-----------------COMPONENT------------------------
---------------------------COMPONENT-----------------COMPONENT------------------------
------------------------------------------------------------------
--  10M clock
component clk_10Mc
port
 (-- Clock in ports
  CLK_IN1           : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic
 );
end component;
-----------------------------------------------------------------
-- ro driver
-- attention  the driver also has a wire to counter
COMPONENT roDriver
	PORT(
		driverClk : IN std_logic;
		driverRst : IN std_logic;          
		driverToCounter : OUT std_logic;
		driverOut : OUT std_logic
		);
	END COMPONENT;
---------------------------------------------------------------
---------------------------------------------------------------
-- ro module0
COMPONENT roModule
	PORT(
		roModuleEna : IN std_logic;
		roModuleConf0 : IN std_logic;
		roModuleConf1 : IN std_logic;          
		roModuleOut : OUT std_logic
		);
END COMPONENT;

COMPONENT roModule0
	PORT(
		roModuleEna : IN std_logic;
		roModuleConf0 : IN std_logic;
		roModuleConf1 : IN std_logic;          
		roModuleOut : OUT std_logic
		);
END COMPONENT;
---------------------------------------
-- ro module1
COMPONENT roModule1
	PORT(
		roModuleEna : IN std_logic;
		roModuleConf0 : IN std_logic;
		roModuleConf1 : IN std_logic;          
		roModuleOut : OUT std_logic
		);
END COMPONENT;

COMPONENT roModule11
	PORT(
		roModuleEna : IN std_logic;
		roModuleConf0 : IN std_logic;
		roModuleConf1 : IN std_logic;          
		roModuleOut : OUT std_logic
		);
END COMPONENT;
-----------------------------------------
-- ro module2
COMPONENT roModule2
	PORT(
		roModuleEna : IN std_logic;
		roModuleConf0 : IN std_logic;
		roModuleConf1 : IN std_logic;          
		roModuleOut : OUT std_logic
		);
END COMPONENT;

COMPONENT roModule22
	PORT(
		roModuleEna : IN std_logic;
		roModuleConf0 : IN std_logic;
		roModuleConf1 : IN std_logic;          
		roModuleOut : OUT std_logic
		);
END COMPONENT;
-----------------------------------------
-- ro module3
COMPONENT roModule3
	PORT(
		roModuleEna : IN std_logic;
		roModuleConf0 : IN std_logic;
		roModuleConf1 : IN std_logic;          
		roModuleOut : OUT std_logic
		);
END COMPONENT;

COMPONENT roModule33
	PORT(
		roModuleEna : IN std_logic;
		roModuleConf0 : IN std_logic;
		roModuleConf1 : IN std_logic;          
		roModuleOut : OUT std_logic
		);
END COMPONENT;
----------------------------------------------------------------------
----------------------------------------------------------------------
-- counter0
COMPONENT roCounter
	PORT(
		counterClk : IN std_logic;
		counterEna : IN std_logic;
		countRst : IN std_logic;          
		counterOut : OUT std_logic_vector(31 downto 0);
		counterCarry : OUT std_logic
		);
END COMPONENT;

COMPONENT roCounter0
	PORT(
		counterClk : IN std_logic;
		counterEna : IN std_logic;
		countRst : IN std_logic;          
		counterOut : OUT std_logic_vector(31 downto 0);
		counterCarry : OUT std_logic
		);
END COMPONENT;	
--------------------------------------
-- counter1
COMPONENT roCounter1
	PORT(
		counterClk : IN std_logic;
		counterEna : IN std_logic;
		countRst : IN std_logic;          
		counterOut : OUT std_logic_vector(31 downto 0);
		counterCarry : OUT std_logic
		);
END COMPONENT;

COMPONENT roCounter11
	PORT(
		counterClk : IN std_logic;
		counterEna : IN std_logic;
		countRst : IN std_logic;          
		counterOut : OUT std_logic_vector(31 downto 0);
		counterCarry : OUT std_logic
		);
END COMPONENT;	
--------------------------------------
-- counter2
COMPONENT roCounter2
	PORT(
		counterClk : IN std_logic;
		counterEna : IN std_logic;
		countRst : IN std_logic;          
		counterOut : OUT std_logic_vector(31 downto 0);
		counterCarry : OUT std_logic
		);
END COMPONENT;

COMPONENT roCounter22
	PORT(
		counterClk : IN std_logic;
		counterEna : IN std_logic;
		countRst : IN std_logic;          
		counterOut : OUT std_logic_vector(31 downto 0);
		counterCarry : OUT std_logic
		);
END COMPONENT;	
--------------------------------------
-- counter3
COMPONENT roCounter3
	PORT(
		counterClk : IN std_logic;
		counterEna : IN std_logic;
		countRst : IN std_logic;          
		counterOut : OUT std_logic_vector(31 downto 0);
		counterCarry : OUT std_logic
		);
END COMPONENT;

COMPONENT roCounter33
	PORT(
		counterClk : IN std_logic;
		counterEna : IN std_logic;
		countRst : IN std_logic;          
		counterOut : OUT std_logic_vector(31 downto 0);
		counterCarry : OUT std_logic
		);
END COMPONENT;	
-------------------------------------------------------------------------
-------------------------------------------------------------------------
---counterCompare0
COMPONENT counterCompare
	PORT(
		counterIn : IN std_logic_vector(31 downto 0);
		counterIn0 : IN std_logic_vector(31 downto 0); 
		countPart : OUT std_logic_VECTOR (7 downto 0)
		);
END COMPONENT;
---------------------------------------------------
---counterCompare1
COMPONENT counterCompare1
	PORT(
		counterIn : IN std_logic_vector(31 downto 0);
		counterIn0 : IN std_logic_vector(31 downto 0); 
		countPart : OUT std_logic_VECTOR (7 downto 0)
		);
END COMPONENT;
---------------------------------------------------
---counterCompare2
COMPONENT counterCompare2
	PORT(
		counterIn : IN std_logic_vector(31 downto 0);
		counterIn0 : IN std_logic_vector(31 downto 0); 
		countPart : OUT std_logic_VECTOR (7 downto 0)
		);
END COMPONENT;
---------------------------------------------------
---counterCompare3
COMPONENT counterCompare3
	PORT(
		counterIn : IN std_logic_vector(31 downto 0);
		counterIn0 : IN std_logic_vector(31 downto 0); 
		countPart : OUT std_logic_VECTOR (7 downto 0)
		);
END COMPONENT;
-------------------------------------------------------------------------
--------------------------------------------------------------------------
--- counterOutPut to led

COMPONENT counterOutPut
	PORT(
		counterIn : IN std_logic_vector(7 downto 0);
		counterIn1 : IN std_logic_vector(7 downto 0);
		counterIn2 : IN std_logic_vector(7 downto 0);
		counterIn3 : IN std_logic_vector(7 downto 0);
		ctrlBit : in  STD_LOGIC_VECTOR (3 downto 0);
		countPart : OUT std_logic_VECTOR (3 downto 0)
		);
END COMPONENT;
---------------------------SIGNAL------------------------SIGNAL--------------------------
---------------------------SIGNAL------------------------SIGNAL--------------------------
---------------------------SIGNAL------------------------SIGNAL--------------------------
signal clk_to_driver : std_logic; 
signal driver_to_ro :std_logic;
signal driver_to_counter:std_logic;
-------------------------------------------------------------
--------------------add signal----------------
signal ro_to_counter :std_logic;
signal ro0_to_counter0 :std_logic;

signal ro1_to_counter1 :std_logic;
signal ro11_to_counter11 :std_logic;

signal ro2_to_counter2 :std_logic;
signal ro22_to_counter22 :std_logic;

signal ro3_to_counter3 :std_logic;
signal ro33_to_counter33 :std_logic;
--------------------------------------------------------
signal counter_out_vecter:std_logic_vector(31 downto 0);
signal counter0_out_vecter:std_logic_vector(31 downto 0);
signal carry: std_logic;
signal carry0: std_logic;

signal counter1_out_vecter:std_logic_vector(31 downto 0);
signal counter11_out_vecter:std_logic_vector(31 downto 0);
signal carry1: std_logic;
signal carry11: std_logic;

signal counter2_out_vecter:std_logic_vector(31 downto 0);
signal counter22_out_vecter:std_logic_vector(31 downto 0);
signal carry2: std_logic;
signal carry22: std_logic;

signal counter3_out_vecter:std_logic_vector(31 downto 0);
signal counter33_out_vecter:std_logic_vector(31 downto 0);
signal carry3: std_logic;
signal carry33: std_logic;
----------------------------------------------------------
signal compare_to_output: std_logic_vector(7 downto 0);

signal compare1_to_output: std_logic_vector(7 downto 0);

signal compare2_to_output: std_logic_vector(7 downto 0);

signal compare3_to_output: std_logic_vector(7 downto 0);
--------------------------------------------------------------------------------------------
-------------------------MAP------MAP------MAP------------MAP-------------------------------
-------------------------MAP------MAP------MAP------------MAP-------------------------------
--------------------------------------------------------------------------------------------
-----------------------CLOCK---------------------------------
begin
clock_inst: clk_10Mc port map(
								CLK_IN1 => sysClock,
								CLK_OUT1=> clk_to_driver);
--------------------roDriver----------------------------------------------
roDriver_inst: roDriver port map(
								 driverClk => clk_to_driver,
								 driverRst => sysRst,
								 driverToCounter => driver_to_counter,
								 driverOut => driver_to_ro);
--------------------roModule-----------------------------------------------								 
-----roModule0							
ro_module_inst : roModule port map(
									roModuleEna => driver_to_ro,
									roModuleConf0 => sysConf0,
									roModuleConf1 => sysConf1,
									roModuleOut=> ro_to_counter);
ro_module0_inst : roModule0 port map(
									roModuleEna => driver_to_ro,
									roModuleConf0 => sysConf0,
									roModuleConf1 => sysConf1,
									roModuleOut=> ro0_to_counter0);
---------------------------------------------------------
-----roModule1							
ro_module1_inst : roModule1 port map(
									roModuleEna => driver_to_ro,
									roModuleConf0 => sysConf0,
									roModuleConf1 => sysConf1,
									roModuleOut=> ro1_to_counter1);
ro_module11_inst : roModule11 port map(
									roModuleEna => driver_to_ro,
									roModuleConf0 => sysConf0,
									roModuleConf1 => sysConf1,
									roModuleOut=> ro11_to_counter11);
---------------------------------------------------------
-----roModule2							
ro_module2_inst : roModule2 port map(
									roModuleEna => driver_to_ro,
									roModuleConf0 => sysConf0,
									roModuleConf1 => sysConf1,
									roModuleOut=> ro2_to_counter2);
ro_module22_inst : roModule22 port map(
									roModuleEna => driver_to_ro,
									roModuleConf0 => sysConf0,
									roModuleConf1 => sysConf1,
									roModuleOut=> ro22_to_counter22);
---------------------------------------------------------
-----roModule3							
ro_module3_inst : roModule3 port map(
									roModuleEna => driver_to_ro,
									roModuleConf0 => sysConf0,
									roModuleConf1 => sysConf1,
									roModuleOut=> ro3_to_counter3);
ro_module33_inst : roModule33 port map(
									roModuleEna => driver_to_ro,
									roModuleConf0 => sysConf0,
									roModuleConf1 => sysConf1,
									roModuleOut=> ro33_to_counter33);										
---------------------roCounter----------------------------------------------	
--------roCounter0								
counter_inst: roCounter port map(
								  counterClk => ro_to_counter,
								  counterEna => driver_to_counter,
								  countRst => sysRst,
								  counterOut => counter_out_vecter,
								  counterCarry => carry);
counter0_inst: roCounter0 port map(
								  counterClk => ro0_to_counter0,
								  counterEna => driver_to_counter,
								  countRst => sysRst,
								  counterOut => counter0_out_vecter,
								  counterCarry => carry0);
-----------------------------------------------------------
--------roCounter1								
counter1_inst: roCounter1 port map(
								  counterClk => ro1_to_counter1,
								  counterEna => driver_to_counter,
								  countRst => sysRst,
								  counterOut => counter1_out_vecter,
								  counterCarry => carry1);
counter11_inst: roCounter11 port map(
								  counterClk => ro11_to_counter11,
								  counterEna => driver_to_counter,
								  countRst => sysRst,
								  counterOut => counter11_out_vecter,
								  counterCarry => carry11);
-----------------------------------------------------------
--------roCounter2								
counter2_inst: roCounter2 port map(
								  counterClk => ro2_to_counter2,
								  counterEna => driver_to_counter,
								  countRst => sysRst,
								  counterOut => counter2_out_vecter,
								  counterCarry => carry2);
counter22_inst: roCounter22 port map(
								  counterClk => ro22_to_counter22,
								  counterEna => driver_to_counter,
								  countRst => sysRst,
								  counterOut => counter22_out_vecter,
								  counterCarry => carry22);
-----------------------------------------------------------
--------roCounter3								
counter3_inst: roCounter3 port map(
								  counterClk => ro3_to_counter3,
								  counterEna => driver_to_counter,
								  countRst => sysRst,
								  counterOut => counter3_out_vecter,
								  counterCarry => carry3);
counter33_inst: roCounter33 port map(
								  counterClk => ro33_to_counter33,
								  counterEna => driver_to_counter,
								  countRst => sysRst,
								  counterOut => counter33_out_vecter,
								  counterCarry => carry33);								  
--------------------counterCompare-----------------------------------------
counterCompare_inst: counterCompare port map(
												counterIn => counter_out_vecter,
												counterIn0 => counter0_out_vecter, 
												countPart => compare_to_output
												);
												
counterCompare1_inst: counterCompare1 port map(
												counterIn => counter1_out_vecter,
												counterIn0 => counter11_out_vecter, 
												countPart => compare1_to_output
												);

counterCompare2_inst: counterCompare2 port map(
												counterIn => counter2_out_vecter,
												counterIn0 => counter22_out_vecter, 
												countPart => compare2_to_output
												);	
counterCompare3_inst: counterCompare3 port map(
												counterIn => counter3_out_vecter,
												counterIn0 => counter33_out_vecter, 
												countPart => compare3_to_output
												);														
--------------------counterOutPut------------------------------------------
counterOutPut_inst: counterOutPut port map(
											counterIn => compare_to_output,
											counterIn1 => compare1_to_output,
											counterIn2 => compare2_to_output,
											counterIn3 => compare3_to_output,
											ctrlBit => sysSel,
											countPart => sysout
											);

end Behavioral;

