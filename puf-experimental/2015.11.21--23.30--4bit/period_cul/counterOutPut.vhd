----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:01:49 07/09/2015 
-- Design Name: 
-- Module Name:    counterOutPut - Behavioral 
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

entity counterOutPut is
    Port ( counterIn : in  STD_LOGIC_VECTOR (7 downto 0);
				counterIn1 : IN std_logic_vector(7 downto 0);
				counterIn2 : IN std_logic_vector(7 downto 0);
				counterIn3 : IN std_logic_vector(7 downto 0);
           ctrlBit : in  STD_LOGIC_VECTOR (3 downto 0);
           countPart : out  STD_LOGIC_VECTOR (3 downto 0));
end counterOutPut;

architecture Behavioral of counterOutPut is

signal countPartBuf :std_logic_vector(7 downto 0);

begin
		countPartBuf(0 downto 0) <=  counterin(0 downto 0) ;
		countPartBuf(1 downto 1) <=  counterin1(1 downto 1) ;
		countPartBuf(2 downto 2) <=  counterin2(2 downto 2) ;
		countPartBuf(3 downto 3) <=  counterin3(3 downto 3) ;
		
countPart<= countPartBuf(3 downto 0) when  ctrlBit(0) = '1'  else
			counterin1(3 downto 0) when  ctrlBit(1) = '1'  else
			counterin2(3 downto 0) when  ctrlBit(2) = '1'  else
			counterin3(3 downto 0) when  ctrlBit(3) = '1'  else
			"0000";	
			

end Behavioral;

