LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY Operation_Register_test IS
END Operation_Register_test;
 
ARCHITECTURE behavior OF Operation_Register_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Operation_Register
    PORT(
         OP_State0 : IN  std_logic;
         OP_ALE : IN  std_logic;
         OP_DataIn : IN  std_logic_vector(7 downto 0);
         OP_OpCode : OUT  std_logic_vector(7 downto 0);
         OP_Arg : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal OP_State0 : std_logic := '0';
   signal OP_ALE : std_logic := '0';
   signal OP_DataIn : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal OP_OpCode : std_logic_vector(7 downto 0);
   signal OP_Arg : std_logic_vector(7 downto 0);
 
   constant ALE_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Operation_Register PORT MAP (
          OP_State0 => OP_State0,
          OP_ALE => OP_ALE,
          OP_DataIn => OP_DataIn,
          OP_OpCode => OP_OpCode,
          OP_Arg => OP_Arg
        );

   -- Clock process definitions
   CLK_process  :process
   begin
		OP_ALE <= '0';
		wait for ALE_period;
		OP_ALE <= '1';
		wait for ALE_period;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;
		OP_DataIn <= "00001111";
		OP_State0 <= '0';
		wait for 20ns;
		OP_DataIn <= "10101011";
		OP_State0 <= '1';
		wait for 20ns;
		OP_DataIn <= "00000010";
		OP_State0 <= '0';
		wait for 20ns;
		OP_DataIn <= "00000100";
		OP_State0 <= '1';
		wait for 20ns;
      wait;
   end process;

END;
