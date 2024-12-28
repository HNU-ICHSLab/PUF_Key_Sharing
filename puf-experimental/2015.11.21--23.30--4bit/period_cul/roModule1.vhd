----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:51:07 11/21/2015 
-- Design Name: 
-- Module Name:    roMoudle1 - Behavioral 
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

entity roModule1 is
		Port ( roModuleEna : in  STD_LOGIC;
				roModuleConf0 : in  STD_LOGIC;
           roModuleConf1 : in  STD_LOGIC;
           roModuleOut : out  STD_LOGIC);
end roModule1;

architecture Behavioral of roModule1 is

component HM_ro is
	port ( 
			HM_conf0:in std_logic;
		   HM_conf1:in std_logic;
		   HM_out :out std_logic;
		   HM_ena :in std_logic);
end component;
begin

roModule1_inst : HM_ro port map( HM_conf0 => roModuleConf0,
								HM_conf1 => roModuleConf1,
								HM_ena => roModuleEna,
								HM_out => roModuleOut);

end Behavioral;
