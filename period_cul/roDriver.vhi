
-- VHDL Instantiation Created from source file roDriver.vhd -- 02:16:28 07/09/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT roDriver
	PORT(
		driverClk : IN std_logic;
		driverRst : IN std_logic;          
		driverToCounter : OUT std_logic;
		driverOut : OUT std_logic
		);
	END COMPONENT;

	Inst_roDriver: roDriver PORT MAP(
		driverClk => ,
		driverRst => ,
		driverToCounter => ,
		driverOut => 
	);


