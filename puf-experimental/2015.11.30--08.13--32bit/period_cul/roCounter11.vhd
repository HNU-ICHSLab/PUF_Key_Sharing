----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:50:43 11/21/2015 
-- Design Name: 
-- Module Name:    roCounter11 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity roCounter11 is
			Port ( counterClk : in  STD_LOGIC;
					counterEna : in std_logic;
					counterOut : out  STD_LOGIC_VECTOR (31 downto 0);
					countRst : in  STD_LOGIC;
					counterCarry : out  STD_LOGIC);
end roCounter11;

architecture Behavioral of roCounter11 is

signal countBuf :std_logic_vector(31 downto 0);
signal carryBuf :std_logic;
begin

countPro:process( counterClk, countRst)
		 begin
		 if(countRst = '1')then
			countBuf<= "00000000000000000000000000000000";
			carryBuf <= '0';
		 elsif(counterClk'event and counterClk = '1') then
			if(counterEna = '0') then
				countBuf <= countBuf;
				carryBuf <= carryBuf;
			elsif(countBuf = "11111111111111111111111111111111")then
				countBuf <= "11111111111111111111111111111111";
				carryBuf <= '1';
			else
				countBuf <= countBuf + 1;
				carryBuf <= '0';
			end if;
		end if;
		end process;
		counterOut <= countBuf;
		counterCarry <= carryBuf;
end Behavioral;

