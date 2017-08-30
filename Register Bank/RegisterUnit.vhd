LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Registers_Registers_sch_tb IS
END Registers_Registers_sch_tb;
ARCHITECTURE behavioral OF Registers_Registers_sch_tb IS 

   COMPONENT Registers
   PORT( CLEAR	:	IN	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC; 
          DataIn	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL CLEAR	:	STD_LOGIC;
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL DataIn	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

   UUT: Registers PORT MAP(
		CLEAR => CLEAR, 
		CLK => CLK, 
		DataIn => DataIn
   );

	clock : PROCESS
	BEGIN
		CLK <= '0';
		wait for 150 ns;		
		for i in 1 to 20 loop	
			CLK <= '1';
			wait for 50 ns;
			CLR <= '0';
			wait for 50 ns; 
		end loop;
		wait;
	END PROCESS;
	
   tb : PROCESS
   BEGIN
      WAIT; 
   END PROCESS;

END;
