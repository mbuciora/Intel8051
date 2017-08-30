LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY memoryROMtest_memoryROMtest_sch_tb IS
END memoryROMtest_memoryROMtest_sch_tb;
ARCHITECTURE behavioral OF memoryROMtest_memoryROMtest_sch_tb IS 

   COMPONENT memoryROMtest
   PORT( ADR_IN	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          data_out	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          clock	:	IN	STD_LOGIC; 
          reset	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL ADR_IN	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL data_out	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL clock	:	STD_LOGIC;
   SIGNAL reset	:	STD_LOGIC;

BEGIN

   UUT: memoryROMtest PORT MAP(
		ADR_IN => ADR_IN, 
		data_out => data_out, 
		clock => clock, 
		reset => reset
   );

   tb : PROCESS
   BEGIN
		ADR_IN <= "0000000000000000";
		reset <= '1';
		wait for 100 ns;
		
		reset <= '0';
				
      WAIT; 
   END PROCESS;

END;
