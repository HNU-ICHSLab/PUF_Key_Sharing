
-- VHDL Instantiation Created from source file counterOutPut.vhd -- 02:19:54 07/09/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT counterOutPut
	PORT(
		counterIn : IN std_logic_vector(31 downto 0);
		ctrlBit : IN std_logic_vector(3 downto 0);          
		countPart : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_counterOutPut: counterOutPut PORT MAP(
		counterIn => ,
		ctrlBit => ,
		countPart => 
	);


