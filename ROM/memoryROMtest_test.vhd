LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY memoryROMtest_memoryROMtest_sch_tb IS
END memoryROMtest_memoryROMtest_sch_tb;
ARCHITECTURE behavioral OF memoryROMtest_memoryROMtest_sch_tb IS 

   COMPONENT memoryROMtest
   PORT( XLXN_1	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          XLXN_2	:	IN	STD_LOGIC; 
          XLXN_3	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL XLXN_1	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL XLXN_2	:	STD_LOGIC;
   SIGNAL XLXN_3	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
constant CLK_period : time := 20 ns;
BEGIN

   UUT: memoryROMtest PORT MAP(
		XLXN_1 => XLXN_1, 
		XLXN_2 => XLXN_2, 
		XLXN_3 => XLXN_3
   );

	CLK_process :process
	begin
		XLXN_2 <= '0';
		wait for CLK_period;
		XLXN_2 <= '1';
		wait for CLK_period;
	end process;
	
   tb : PROCESS
   BEGIN
	
		XLXN_1 <= "0000000000000000";
		wait for 60 ns;
		XLXN_1 <= "0000000000000010";
		wait for 60 ns;
		XLXN_1 <= "0000000000000011";
		wait for 60 ns;
		XLXN_1 <= "0000000000000100";
		wait for 60 ns;
		XLXN_1 <= "0000000000000101";
		wait for 60 ns;
		XLXN_1 <= "0000000000000110";
		wait for 60 ns;

      WAIT; 
   END PROCESS;

END;
