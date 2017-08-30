LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Decoder8051_test IS
END Decoder8051_test;
 
ARCHITECTURE behavior OF Decoder8051_test IS 

    COMPONENT Decoder8051
    PORT(
         DEC_Phase : IN  std_logic;
         DEC_State : IN  std_logic_vector(2 downto 0);
         DEC_CarryIn : IN  std_logic;
         DEC_Offset : OUT  std_logic_vector(7 downto 0);
         DEC_RegNo : OUT  std_logic_vector(2 downto 0);
         DEC_Reg_CE : OUT  std_logic;
         DEC_RegBankIn : IN  std_logic_vector(7 downto 0);
         DEC_Acc_CE : OUT  std_logic;
         DEC_AccIn : IN  std_logic_vector(7 downto 0);
         DEC_A : OUT  std_logic_vector(7 downto 0);
         DEC_B : OUT  std_logic_vector(7 downto 0);
         DEC_Sel : OUT  std_logic_vector(3 downto 0);
         DEC_OpCode : IN  std_logic_vector(7 downto 0);
         DEC_Arg : IN  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DEC_Phase : std_logic := '0';
   signal DEC_State : std_logic_vector(2 downto 0) := (others => '0');
   signal DEC_CarryIn : std_logic := '0';
   signal DEC_RegBankIn : std_logic_vector(7 downto 0) := (others => '0');
   signal DEC_AccIn : std_logic_vector(7 downto 0) := (others => '0');
   signal DEC_OpCode : std_logic_vector(7 downto 0) := (others => '0');
   signal DEC_Arg : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal DEC_Offset : std_logic_vector(7 downto 0);
   signal DEC_RegNo : std_logic_vector(2 downto 0);
   signal DEC_Reg_CE : std_logic;
   signal DEC_Acc_CE : std_logic;
   signal DEC_A : std_logic_vector(7 downto 0);
   signal DEC_B : std_logic_vector(7 downto 0);
   signal DEC_Sel : std_logic_vector(3 downto 0); 
 
   constant CLK_period : time := 20 ns;
 
BEGIN

   uut: Decoder8051 PORT MAP (
          DEC_Phase => DEC_Phase,
          DEC_State => DEC_State,
          DEC_CarryIn => DEC_CarryIn,
          DEC_Offset => DEC_Offset,
          DEC_RegNo => DEC_RegNo,
          DEC_Reg_CE => DEC_Reg_CE,
          DEC_RegBankIn => DEC_RegBankIn,
          DEC_Acc_CE => DEC_Acc_CE,
          DEC_AccIn => DEC_AccIn,
          DEC_A => DEC_A,
          DEC_B => DEC_B,
          DEC_Sel => DEC_Sel,
          DEC_OpCode => DEC_OpCode,
          DEC_Arg => DEC_Arg
        );

	CLK_process :process
	begin
		DEC_Phase <= '0';
		wait for CLK_period/2;
		DEC_Phase <= '1';
		wait for CLK_period/2;
	end process;
	
	State_process :process
	begin
		DEC_State <= "000";
		wait for CLK_period;
		DEC_State <= "001";
		wait for CLK_period;
		DEC_State <= "010";
		wait for CLK_period;
		DEC_State <= "011";
		wait for CLK_period;
		DEC_State <= "100";
		wait for CLK_period;
		DEC_State <= "101";
		wait for CLK_period;
	end process;
	
   tb : PROCESS
   BEGIN
		DEC_CarryIn <= '1';
		DEC_RegBankIn <= "11001000";
		DEC_AccIn <= "00110011";
		DEC_Arg <= "10101011";
		
		
		
		-- loop opps
		DEC_OpCode <= "01100000";
		wait for 120 ns;
		DEC_OpCode <= "01110000";
		wait for 120 ns;
		DEC_OpCode <= "10000000";
		wait for 120 ns;
		
		
		-- arith opps
		DEC_OpCode <= "00000000";
		wait for 120 ns;
		DEC_OpCode <= "00000011";
		wait for 120 ns;
		DEC_OpCode <= "00000100";
		wait for 120 ns;
		DEC_OpCode <= "00001000";
		wait for 120 ns;
		
		DEC_OpCode <= "00010100";
		wait for 120 ns;
		DEC_OpCode <= "00011110";
		wait for 120 ns;
		DEC_OpCode <= "00100011";
		wait for 120 ns;
		DEC_OpCode <= "00100100";
		wait for 120 ns;
		DEC_OpCode <= "00101101";
		wait for 120 ns;
		DEC_OpCode <= "00110100";
		wait for 120 ns;
		DEC_OpCode <= "00111010";
		wait for 120 ns;
		DEC_OpCode <= "01000100";
		wait for 120 ns;
		DEC_OpCode <= "01001011";
		wait for 120 ns;
		DEC_OpCode <= "01010100";
		wait for 120 ns;
		DEC_OpCode <= "01011011";
		wait for 120 ns;
		DEC_OpCode <= "01100100";
		wait for 120 ns;
		DEC_OpCode <= "01101010";
		wait for 120 ns;
		DEC_OpCode <= "01110100";
		wait for 120 ns;
		DEC_OpCode <= "01111010";
		wait for 120 ns;
		DEC_OpCode <= "10000100";
		wait for 120 ns;
		DEC_OpCode <= "10010100";
		wait for 120 ns;
		DEC_OpCode <= "10011011";
		wait for 120 ns;
		DEC_OpCode <= "10100100";
		wait for 120 ns;
		DEC_OpCode <= "10110011";
		wait for 120 ns;
		DEC_OpCode <= "11000011";
		wait for 120 ns;
		DEC_OpCode <= "11000100";
		wait for 120 ns;
		DEC_OpCode <= "11100100";
		wait for 120 ns;
		DEC_OpCode <= "11101111";
		wait for 120 ns;
		DEC_OpCode <= "11110100";
		wait for 120 ns;
		DEC_OpCode <= "11111010";
		wait for 120 ns;

      WAIT; 
   END PROCESS;

END;
