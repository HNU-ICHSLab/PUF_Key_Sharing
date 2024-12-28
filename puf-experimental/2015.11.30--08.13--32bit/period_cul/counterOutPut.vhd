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
end counterOutPut;

architecture Behavioral of counterOutPut is

signal countPartBuf :  std_logic_VECTOR (31 downto 0);
  
begin
		
		countPartBuf(0 downto 0)  <= counterIn(0 downto 0) ;
		countPartBuf(1 downto 1)  <= counterIn1(0 downto 0) ;
		countPartBuf(2 downto 2)  <= counterIn2(0 downto 0) ;
		countPartBuf(3 downto 3)  <= counterIn3(0 downto 0) ;
		countPartBuf(4 downto 4)  <= counterIn4(0 downto 0) ;
		countPartBuf(5 downto 5)  <= counterIn5(0 downto 0) ;
		countPartBuf(6 downto 6)  <= counterIn6(0 downto 0) ;
		countPartBuf(7 downto 7)  <= counterIn7(0 downto 0) ;
		countPartBuf(8 downto 8)  <= counterIn8(0 downto 0) ;
		countPartBuf(9 downto 9)  <= counterIn9(0 downto 0) ;
		countPartBuf(10 downto 10)  <= counterIn10(0 downto 0) ;
		countPartBuf(11 downto 11)  <= counterIn11(0 downto 0) ;
		countPartBuf(12 downto 12)  <= counterIn12(0 downto 0) ;
		countPartBuf(13 downto 13)  <= counterIn13(0 downto 0) ;
		countPartBuf(14 downto 14)  <= counterIn14(0 downto 0) ;
		countPartBuf(15 downto 15)  <= counterIn15(0 downto 0) ;
		countPartBuf(16 downto 16)  <= counterIn16(0 downto 0) ;
		countPartBuf(17 downto 17)  <= counterIn17(0 downto 0) ;
		countPartBuf(18 downto 18)  <= counterIn18(0 downto 0) ;
		countPartBuf(19 downto 19)  <= counterIn19(0 downto 0) ;
		countPartBuf(20 downto 20)  <= counterIn20(0 downto 0) ;
		countPartBuf(21 downto 21)  <= counterIn21(0 downto 0) ;
		countPartBuf(22 downto 22)  <= counterIn22(0 downto 0) ;
		countPartBuf(23 downto 23)  <= counterIn23(0 downto 0) ;
		countPartBuf(24 downto 24)  <= counterIn24(0 downto 0) ;
		countPartBuf(25 downto 25)  <= counterIn25(0 downto 0) ;
		countPartBuf(26 downto 26)  <= counterIn26(0 downto 0) ;
		countPartBuf(27 downto 27)  <= counterIn27(0 downto 0) ;
		countPartBuf(28 downto 28)  <= counterIn28(0 downto 0) ;
		countPartBuf(29 downto 29)  <= counterIn29(0 downto 0) ;
		countPartBuf(30 downto 30)  <= counterIn30(0 downto 0) ;
		countPartBuf(31 downto 31)  <= counterIn31(0 downto 0) ;
		
		process(ctrlBit)
		begin
		case ctrlBit is
			when  "0001"  => countPart <= countPartBuf(3 downto 0) ;
			when  "0010"  => countPart <= countPartBuf(7 downto 4) ;
			when  "0011"  => countPart <= countPartBuf(11 downto 8) ;
			when  "0100"  => countPart <= countPartBuf(15 downto 12) ;
			when  "0101"  => countPart <= countPartBuf(19 downto 16) ;
			when  "0110"  => countPart <= countPartBuf(23 downto 20) ;
			when  "0111"  => countPart <= countPartBuf(27 downto 24) ;
			when  "1000"  => countPart <= countPartBuf(31 downto 28) ;
			when others => countPart <= "0000";
		end case;
		end process;

end Behavioral;

