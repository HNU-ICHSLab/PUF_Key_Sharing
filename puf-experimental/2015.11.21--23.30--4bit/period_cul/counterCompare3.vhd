----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:02 11/21/2015 
-- Design Name: 
-- Module Name:    counterCompare3 - Behavioral 
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

entity counterCompare3 is
    Port ( counterIn : in  STD_LOGIC_VECTOR (31 downto 0);
				counterIn0	:	in  STD_LOGIC_VECTOR (31 downto 0);
           countPart : out  STD_LOGIC_VECTOR (7 downto 0));
end counterCompare3;

architecture Behavioral of counterCompare3 is

begin
countPart<= "00001000" when ( counterIn > counterIn0  )  else
			"00000000";	

end Behavioral;

