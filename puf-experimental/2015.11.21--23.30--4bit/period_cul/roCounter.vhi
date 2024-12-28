
-- VHDL Instantiation Created from source file roCounter.vhd -- 02:15:43 07/09/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT roCounter
	PORT(
		counterClk : IN std_logic;
		counterEna : IN std_logic;
		countRst : IN std_logic;          
		counterOut : OUT std_logic_vector(31 downto 0);
		counterCarry : OUT std_logic
		);
	END COMPONENT;

	Inst_roCounter: roCounter PORT MAP(
		counterClk => ,
		counterEna => ,
		counterOut => ,
		countRst => ,
		counterCarry => 
	);


