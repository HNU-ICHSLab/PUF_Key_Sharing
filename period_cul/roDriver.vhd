----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:23:26 07/08/2015 
-- Design Name: 
-- Module Name:    roDriver - Behavioral 
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


entity roDriver is
    Port ( driverClk : in  STD_LOGIC;
           driverRst : in  STD_LOGIC;
		   driverToCounter :out STD_LOGIC;
           driverOut : out  STD_LOGIC);
end roDriver;

------------------------------------------------------------------------------------
-- this driver has a 10M clock 

architecture Behavioral of roDriver is
signal timeInv : integer range 0 to 25000;
signal diverOutBuf:std_logic;
signal dCounterBuf:std_logic;
begin
driverPro:process(driverClk, driverRst)
		  begin
			if(driverRst = '1')then
			timeInv <= 0;
			diverOutBuf <= '0';
			dCounterBuf <= '0';
			elsif(driverClk'event and driverClk = '1') then
				if (timeInv = 25000 ) then
					timeInv <=25000;
					diverOutBuf <= '0';
					dCounterBuf <= '0';
				elsif (timeInv >10000)then
					timeInv<= timeInv +1;
					diverOutBuf <= '1';
					dCounterBuf <= '1';
				elsif(timeInv >500)then
					timeInv<= timeInv +1;
					diverOutBuf <= '1';
					dCounterBuf <= '0';
				else
					timeInv <= timeInv +1;
					diverOutBuf <= '0';
					dCounterBuf <= '0';
				end if;
			end if;
		  end process;
		  
-------------------------------------------------------------
-- this module has to drive the RO and the counter to ensure the counter has the right time  to counte
 driverOut <= diverOutBuf;
 driverToCounter<= dCounterBuf;

end Behavioral;

