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

	constant CLK_period : time := 20 ns;

BEGIN

   UUT: RegisterBank8bit8 PORT MAP(
		RegBankOut => RegBankOut, 
		CLR => CLR, 
		CE => CE, 
		RegNo => RegNo, 
		C => C, 
		RegBankIn => RegBankIn
   );
	
		CLK_process :process
	begin
		C <= '0';
		wait for CLK_period;
		C <= '1';
		wait for CLK_period;
	end process;

   tb : PROCESS
   BEGIN
		RegNo <= "000";
		RegBankIn <= "00000000";
		CE <= '0';
		CLR <= '0';
	
			wait for 30 ns;

		CE <= '1';
		
		-- save $32 in %r0
		RegBankIn <= "00100000";
		RegNo <= "000";
		wait for 40 ns;
		
		-- save $33 in %r1
		RegBankIn <= "00100001";
		RegNo <= "001";
		wait for 40 ns;
		
		-- save $34 in %r2
		RegBankIn <= "00100010";
		RegNo <= "010";
		wait for 40 ns;
		
		
		-- save $35 in %r3
		RegBankIn <= "00100011";
		RegNo <= "011";
		wait for 40 ns;
		
		-- save $35 in %r4
		RegBankIn <= "00100100";
		RegNo <= "100";
		wait for 40 ns;
		
		-- save $35 in %r5
		RegBankIn <= "00100101";
		RegNo <= "101";
		wait for 40 ns;
		
		-- save $35 in %r6
		RegBankIn <= "00100110";
		RegNo <= "110";
		wait for 40 ns;
		
		-- save $35 in %r7
		RegBankIn <= "00100111";
		RegNo <= "111";
		wait for 40 ns;
		
		CE <= '0';
				
		RegNo <= "000";
		wait for 20 ns;	
		RegNo <= "001";
		wait for 20 ns;	
		RegNo <= "010";
		wait for 20 ns;	
		RegNo <= "011";
		wait for 20 ns;	
		RegNo <= "100";
		wait for 20 ns;	
		RegNo <= "101";
		wait for 20 ns;	
		RegNo <= "110";
		wait for 20 ns;	
		RegNo <= "111";
	
      WAIT; 
   END PROCESS;

END;
