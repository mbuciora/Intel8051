LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY RegisterBank8bit8_RegisterBank8bit8_sch_tb IS
END RegisterBank8bit8_RegisterBank8bit8_sch_tb;
ARCHITECTURE behavioral OF RegisterBank8bit8_RegisterBank8bit8_sch_tb IS 

   COMPONENT RegisterBank8bit8
   PORT( RegBankOut	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          CLR	:	IN	STD_LOGIC; 
          CE	:	IN	STD_LOGIC; 
          RegNo	:	IN	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          C	:	IN	STD_LOGIC; 
          RegBankIn	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL RegBankOut	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL CLR	:	STD_LOGIC;
   SIGNAL CE	:	STD_LOGIC;
   SIGNAL RegNo	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL C	:	STD_LOGIC;
   SIGNAL RegBankIn	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

   UUT: RegisterBank8bit8 PORT MAP(
		RegBankOut => RegBankOut, 
		CLR => CLR, 
		CE => CE, 
		RegNo => RegNo, 
		C => C, 
		RegBankIn => RegBankIn
   );

   tb : PROCESS
   BEGIN
      WAIT;
   END PROCESS;

END;
