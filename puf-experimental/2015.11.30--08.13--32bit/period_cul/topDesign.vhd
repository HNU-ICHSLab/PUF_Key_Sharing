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
-----------------------COMPONENT-----------------COMPONENT------------------------
-----------------------COMPONENT-----------------COMPONENT------------------------
-----------------------COMPONENT-----------------COMPONENT------------------------
--  10M clock
component clk_10Mc
port
 (
  CLK_IN1           : in     std_logic;
  CLK_OUT1          : out    std_logic
 );
end component;
---------------------------------------------------------------
-- ro driver
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
---------------------------------------------------------------
COMPONENT RO
	PORT(
		ROConf0 : in  STD_LOGIC;
      ROConf1 : in  STD_LOGIC;
		RORst	:	in  STD_LOGIC;		
		driverToCounter : in std_logic;
		driverToRo : in std_logic;
		roCompareOut	: in std_logic_VECTOR (0 downto 0)
		);
	END COMPONENT;	
---------------------------------------------------------------
---------------------------------------------------------------
--- counterOutPut to led

COMPONENT counterOutPut
    Port ( counterIn : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn1 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn2 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn3 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn4 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn5 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn6 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn7 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn8 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn9 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn10 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn11 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn12 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn13 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn14 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn15 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn16 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn17 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn18 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn19 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn20 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn21 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn22 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn23 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn24 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn25 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn26 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn27 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn28 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn29 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn30 : in  STD_LOGIC_VECTOR (0 downto 0);
				counterIn31 : in  STD_LOGIC_VECTOR (0 downto 0);
           ctrlBit : in  STD_LOGIC_VECTOR (3 downto 0);
           countPart : out  STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;
---------------------------SIGNAL--------------------------------------------------
---------------------------SIGNAL--------------------------------------------------
---------------------------SIGNAL--------------------------------------------------
signal clk_to_driver : std_logic; 
signal driver_to_ro :std_logic;
signal driver_to_counter:std_logic;
---------------------------------------------------------

----------------------------------------------------------
signal compare_to_output: std_logic_VECTOR (0 downto 0);
signal compare_to_output1: std_logic_VECTOR (0 downto 0);
signal compare_to_output2: std_logic_VECTOR (0 downto 0);
signal compare_to_output3: std_logic_VECTOR (0 downto 0);
signal compare_to_output4: std_logic_VECTOR (0 downto 0);
signal compare_to_output5: std_logic_VECTOR (0 downto 0);
signal compare_to_output6: std_logic_VECTOR (0 downto 0);
signal compare_to_output7: std_logic_VECTOR (0 downto 0);
signal compare_to_output8: std_logic_VECTOR (0 downto 0);
signal compare_to_output9: std_logic_VECTOR (0 downto 0);
signal compare_to_output10: std_logic_VECTOR (0 downto 0);
signal compare_to_output11: std_logic_VECTOR (0 downto 0);
signal compare_to_output12: std_logic_VECTOR (0 downto 0);
signal compare_to_output13: std_logic_VECTOR (0 downto 0);
signal compare_to_output14: std_logic_VECTOR (0 downto 0);
signal compare_to_output15: std_logic_VECTOR (0 downto 0);
signal compare_to_output16: std_logic_VECTOR (0 downto 0);
signal compare_to_output17: std_logic_VECTOR (0 downto 0);
signal compare_to_output18: std_logic_VECTOR (0 downto 0);
signal compare_to_output19: std_logic_VECTOR (0 downto 0);
signal compare_to_output20: std_logic_VECTOR (0 downto 0);
signal compare_to_output21: std_logic_VECTOR (0 downto 0);
signal compare_to_output22: std_logic_VECTOR (0 downto 0);
signal compare_to_output23: std_logic_VECTOR (0 downto 0);
signal compare_to_output24: std_logic_VECTOR (0 downto 0);
signal compare_to_output25: std_logic_VECTOR (0 downto 0);
signal compare_to_output26: std_logic_VECTOR (0 downto 0);
signal compare_to_output27: std_logic_VECTOR (0 downto 0);
signal compare_to_output28: std_logic_VECTOR (0 downto 0);
signal compare_to_output29: std_logic_VECTOR (0 downto 0);
signal compare_to_output30: std_logic_VECTOR (0 downto 0);
signal compare_to_output31: std_logic_VECTOR (0 downto 0);
--------------------------------------------------------------------------------------------
-------------------------MAP------MAP------MAP------------MAP-------------------------------
--------------------------------------------------------------------------------------------
-----------------------CLOCK---------------------------------
begin
clock_inst: clk_10Mc port map(
								CLK_IN1 => sysClock,
								CLK_OUT1=> clk_to_driver);
--------------------roDriver-------------------------------
roDriver_inst: roDriver port map(
								 driverClk => clk_to_driver,
								 driverRst => sysRst,
								 driverToCounter => driver_to_counter,
								 driverOut => driver_to_ro);						
---------------------ROMAP-----------------------------------
ro_inst_top:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output	);
					
ro_inst_top_1:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output1	);

ro_inst_top_2:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output2	);
ro_inst_top_3:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output3	);
ro_inst_top_4:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output4	);
ro_inst_top_5:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output5	);
ro_inst_top_6:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output6	);
ro_inst_top_7:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output7	);
ro_inst_top_8:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output8	);
ro_inst_top_9:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output9	);
ro_inst_top_10:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output10	);
ro_inst_top_11:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output11	);
ro_inst_top_12:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output12	);
ro_inst_top_13:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output13	);
ro_inst_top_14:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output14	);
ro_inst_top_15:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output15	);
ro_inst_top_16:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output16	);
ro_inst_top_17:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output17	);
ro_inst_top_18:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output18	);
ro_inst_top_19:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output19	);
ro_inst_top_20:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output20	);
ro_inst_top_21:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output21	);

ro_inst_top_22:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output22	);
ro_inst_top_23:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output23	);
ro_inst_top_24:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output24	);
ro_inst_top_25:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output25	);
ro_inst_top_26:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output26	);
ro_inst_top_27:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output27	);
ro_inst_top_28:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output28	);
ro_inst_top_29:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output29	);
ro_inst_top_30:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output30	);	
ro_inst_top_31:	RO port map(
						ROConf0 => sysConf0,
						ROConf1 => sysConf1,
						RORst => sysRst,
						driverToCounter => driver_to_counter,
						driverToRo => driver_to_ro,
						roCompareOut	=>	compare_to_output31	);							
--------------------counterOutPut------------------------------------------
counterOutPut_inst: counterOutPut port map(
											counterIn => compare_to_output,
											counterIn1 => compare_to_output1,
											counterIn2 => compare_to_output2,
											counterIn3 => compare_to_output3,
											counterIn4 => compare_to_output4,
											counterIn5 => compare_to_output5,
											counterIn6 => compare_to_output6,
											counterIn7 => compare_to_output7,
											counterIn8 => compare_to_output8,
											counterIn9 => compare_to_output9,
											counterIn10 => compare_to_output10,
											counterIn11 => compare_to_output11,
											counterIn12 => compare_to_output12,
											counterIn13 => compare_to_output13,
											counterIn14 => compare_to_output14,
											counterIn15 => compare_to_output15,
											counterIn16 => compare_to_output16,
											counterIn17 => compare_to_output17,
											counterIn18 => compare_to_output18,
											counterIn19 => compare_to_output19,
											counterIn20 => compare_to_output20,
											counterIn21 => compare_to_output21,
											counterIn22 => compare_to_output22,
											counterIn23 => compare_to_output23,
											counterIn24 => compare_to_output24,
											counterIn25 => compare_to_output25,
											counterIn26 => compare_to_output26,
											counterIn27 => compare_to_output27,
											counterIn28 => compare_to_output28,
											counterIn29 => compare_to_output29,
											counterIn30 => compare_to_output30,
											counterIn31 => compare_to_output31,
											
											ctrlBit => sysSel,
											countPart => sysout
											);

end Behavioral;

