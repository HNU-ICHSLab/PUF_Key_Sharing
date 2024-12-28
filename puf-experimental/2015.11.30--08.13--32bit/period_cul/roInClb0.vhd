----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:34:59 06/11/2015 
-- Design Name: 
-- Module Name:    roInClb - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity roInClb0 is
    Port ( Ro_ena : in  STD_LOGIC;
           Ro_out : out  STD_LOGIC;
			  Ro_conf0, Ro_conf1 :in STD_LOGIC);
end roInClb0;

architecture Behavioral of roInClb0 is


signal LUT1_out, LUT2_out, LUT3_out, LUT4_out, LUT5_out, LUT6_out, LUT7_out : std_logic;
signal MUX1_out, MUX2_out : std_logic;

-- state the ena gate signal
signal NAND_out : std_logic;

-- constrain 
attribute rloc :string;
attribute rloc_range:string;


-- constrain the LUT into select slice
-- we now constrain the RO into two slices

-- COMPONENT IF THE FIRST SLICE
attribute rloc of LUT_inst1:label is "X0Y0";
attribute rloc of LUT_inst2:label is "X0Y0";
attribute rloc of LUT_inst3:label is "X0Y0";
attribute rloc of LUT_inst4:label is "X0Y0";

-- COMPONENT IN THE SECOND SLICE

attribute rloc of LUT_inst5:label is "X1Y0";
attribute rloc of LUT_inst6:label is "X1Y0";
attribute rloc of LUT_inst7:label is "X1Y0";
attribute rloc of LUT2_inst1:label is "X1Y0";


-- the mux int a slice

attribute rloc of MUXF7_inst1:label is "X0Y0";
attribute rloc of MUXF7_inst2:label is "X1Y0";


-- constrain  the CLB of the 
attribute rloc_range of LUT_inst1:label is "X0Y0:X16Y24";


begin

--inveter in LUT A  in slice 1;
LUT_inst1: LUT1
generic map(
	INIT => X"01")
port map(
	O => LUT1_out,
	I0 => NAND_out
	);
	
--invest in LUT C in slice 1;	
LUT_inst2:LUT1
generic map(
	INIT => X"01")
port map(
	O => LUT2_out,
	I0 => LUT1_out
	);

--inveter in LUT B slice 1;
LUT_inst3:LUT1
generic map(
	INIT => X"01")
port map(
	O => LUT3_out,
	I0 => LUT2_out
	);
-- MUX1 for LUT A and B;
MUXF7_inst1:MUXF7
port map(
	O => MUX1_out,
	I0 => LUT1_out,
	I1 => LUT3_out,
	S => Ro_conf0
	);

-- inveter in LUT D in slice 1;
LUT_inst4:LUT1
generic map(
	INIT => X"01")
port map(
	O => LUT4_out,
	I0 => MUX1_out
	);

-- inveter in LUT A in slice 2;	
LUT_inst5:LUT1
generic map(
	INIT => X"01")
port map(
	O => LUT5_out,
	I0 => LUT4_out
	);

--inveter in LUT C in slice 2
LUT_inst6:LUT1
generic map(
	INIT => X"01")
port map(
	O => LUT6_out,
	I0 => LUT5_out
	);
-- inveter in LUT B in slice 2
LUT_inst7:LUT1
generic map(
	INIT => X"01")
port map(
	O => LUT7_out,
	I0 => LUT6_out
	);

-- MUX 2 for Ro_conf2;
MUXF7_inst2:MUXF7
port map(
	O => MUX2_out,
	I0 => LUT5_out,
	I1 => LUT7_out,
	S => Ro_conf1
	);
	
-- ena the RO  with a nand gate!
-- this gate in LUT D in slice 2
LUT2_inst1:LUT2
generic map(
	INIT => X"8")
port map(
	O => NAND_out,
	I0 => Ro_ena,
	I1 => MUX2_out
	);
	
Ro_out <= MUX2_out;
end Behavioral;

