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
           sysout : out  STD_LOGIC_VECTOR (3 downto 0));
end topDesign;

architecture Behavioral of topDesign is

---------------------------------------------------------------------------
-- counter component
COMPONENT roCounter
	PORT(
		counterClk : IN std_logic;
		counterEna : IN std_logic;
		countRst : IN std_logic;          
		counterOut : OUT std_logic_vector(31 downto 0);
		counterCarry : OUT std_logic
		);
END COMPONENT;

----------------------------------------------------------------------------
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

	
------------------------------------------------------------------------------
-- ro module
COMPONENT roModule
	PORT(
		roModuleEna : IN std_logic;
		roModuleConf0 : IN std_logic;
		roModuleConf1 : IN std_logic;          
		roModuleOut : OUT std_logic
		);
END COMPONENT;

-------------------------------------------------------------------------------
--- counter to led

COMPONENT counterOutPut
	PORT(
		counterIn : IN std_logic_vector(31 downto 0);
		ctrlBit : IN std_logic_vector(3 downto 0);          
		countPart : OUT std_logic_vector(3 downto 0)
		);
END COMPONENT;

-------------------------------------------------------------------------------
--  10M clock
component clk_10Mc
port
 (-- Clock in ports
  CLK_IN1           : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic
 );
end component;

signal clk_to_driver : std_logic;
signal driver_to_ro :std_logic;
signal driver_to_counter:std_logic;
signal ro_to_counter :std_logic;
signal counter_out_vecter:std_logic_vector(31 downto 0);
signal carry: std_logic;


begin
clock_inst: clk_10Mc port map(
								CLK_IN1 => sysClock,
								CLK_OUT1=> clk_to_driver);

roDriver_inst: roDriver port map(
								 driverClk => clk_to_driver,
								 driverRst => sysRst,
								 driverToCounter => driver_to_counter,
								 driverOut => driver_to_ro);
							
ro_module_inst : roModule port map(
									roModuleEna => driver_to_ro,
									roModuleConf0 => sysConf0,
									roModuleConf1 => sysConf1,
									roModuleOut=> ro_to_counter);
counter_inst: roCounter port map(
								  counterClk => ro_to_counter,
								  counterEna => driver_to_counter,
								  countRst => sysRst,
								  counterOut => counter_out_vecter,
								  counterCarry => carry);

counterOutPut_inst: counterOutPut port map(
											counterIn => counter_out_vecter,
											ctrlBit =>sysSel,
											countPart => sysout
											);

end Behavioral;

