LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Intel8051_Intel8051_sch_tb IS
END Intel8051_Intel8051_sch_tb;
ARCHITECTURE behavioral OF Intel8051_Intel8051_sch_tb IS 

   COMPONENT Intel8051
   PORT( RST	:	IN	STD_LOGIC; 
          PCOut	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          DataOut	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          StateOut	:	OUT	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          PhaseOut	:	OUT	STD_LOGIC; 
          OP2	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          OP1	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          AcumulatorOut	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          RegisterOut	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          CLK	:	IN	STD_LOGIC; 
          Dec_AOut	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          Dec_BOut	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dec_select	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          ALUOut	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL RST	:	STD_LOGIC;
   SIGNAL PCOut	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL DataOut	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL StateOut	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL PhaseOut	:	STD_LOGIC;
   SIGNAL OP2	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL OP1	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL AcumulatorOut	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL RegisterOut	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL Dec_AOut	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL Dec_BOut	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dec_select	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL ALUOut	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	constant CLK_period : time := 10 ns;
BEGIN

   UUT: Intel8051 PORT MAP(
		RST => RST, 
		PCOut => PCOut, 
		DataOut => DataOut, 
		StateOut => StateOut, 
		PhaseOut => PhaseOut, 
		OP2 => OP2, 
		OP1 => OP1, 
		AcumulatorOut => AcumulatorOut, 
		RegisterOut => RegisterOut, 
		CLK => CLK, 
		Dec_AOut => Dec_AOut, 
		Dec_BOut => Dec_BOut, 
		dec_select => dec_select, 
		ALUOut => ALUOut
   );


	CLK_process :process
	begin
		CLK <= '0';
		wait for CLK_period;
		CLK <= '1';
		wait for CLK_period;
	end process;

   tb : PROCESS
   BEGIN
		RST <= '1';
		wait for 100 ns;
		RST <= '0';
      WAIT;
   END PROCESS;


END;
