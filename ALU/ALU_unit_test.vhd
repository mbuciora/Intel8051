LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ALU_unit_test IS
END ALU_unit_test;
 
ARCHITECTURE behavior OF ALU_unit_test IS 

 
    COMPONENT ALU_unit
    PORT(
         ALU_IN1 : IN  std_logic_vector(7 downto 0);
         ALU_IN2 : IN  std_logic_vector(7 downto 0);
         ALU_Control : IN  std_logic_vector(3 downto 0);
         ALU_CarryIn : IN  std_logic;
         ALU_CarryOut : OUT  std_logic;
         ALU_OUTPUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ALU_IN1 : std_logic_vector(7 downto 0) := (others => '0');
   signal ALU_IN2 : std_logic_vector(7 downto 0) := (others => '0');
   signal ALU_Control : std_logic_vector(3 downto 0) := (others => '0');
   signal ALU_CarryIn : std_logic := '0';

 	--Outputs
   signal ALU_CarryOut : std_logic;
   signal ALU_OUTPUT : std_logic_vector(7 downto 0);
 
BEGIN
   uut: ALU_unit PORT MAP (
          ALU_IN1 => ALU_IN1,
          ALU_IN2 => ALU_IN2,
          ALU_Control => ALU_Control,
          ALU_CarryIn => ALU_CarryIn,
          ALU_CarryOut => ALU_CarryOut,
          ALU_OUTPUT => ALU_OUTPUT
        );

   stim_proc: process
   begin		
      wait for 100 ns;	
      wait;
   end process;

END;
