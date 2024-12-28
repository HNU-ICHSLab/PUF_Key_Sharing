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
    Port ( counterIn : in  STD_LOGIC_VECTOR (31 downto 0);
           ctrlBit : in  STD_LOGIC_VECTOR (3 downto 0);
           countPart : out  STD_LOGIC_VECTOR (7 downto 0));
end counterOutPut;

architecture Behavioral of counterOutPut is

begin

countPart<= counterIn(7 downto 0) when ctrlBit(0) ='1' else
			counterin(15 downto 8) when ctrlBit(1) = '1' else
			counterin(23 downto 16) when ctrlBit(2) = '1' else
			counterin(31 downto 24) when ctrlBit(3) = '1' else
			"00000000";

end Behavioral;

