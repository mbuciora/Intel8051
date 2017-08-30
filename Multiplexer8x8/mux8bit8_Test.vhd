LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY mux8bit8_test IS
END mux8bit8_test;
 
ARCHITECTURE behavior OF mux8bit8_test IS 
 
    COMPONENT mux8bit8
    PORT(
         MuxIn0 : IN  std_logic_vector(7 downto 0);
         MuxIn1 : IN  std_logic_vector(7 downto 0);
         MuxIn2 : IN  std_logic_vector(7 downto 0);
         MuxIn3 : IN  std_logic_vector(7 downto 0);
         MuxIn4 : IN  std_logic_vector(7 downto 0);
         MuxIn5 : IN  std_logic_vector(7 downto 0);
         MuxIn6 : IN  std_logic_vector(7 downto 0);
         MuxIn7 : IN  std_logic_vector(7 downto 0);
         MuxSel : IN  std_logic_vector(2 downto 0);
         MuxOut : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal MuxIn0 : std_logic_vector(7 downto 0) := (others => '0');
   signal MuxIn1 : std_logic_vector(7 downto 0) := (others => '0');
   signal MuxIn2 : std_logic_vector(7 downto 0) := (others => '0');
   signal MuxIn3 : std_logic_vector(7 downto 0) := (others => '0');
   signal MuxIn4 : std_logic_vector(7 downto 0) := (others => '0');
   signal MuxIn5 : std_logic_vector(7 downto 0) := (others => '0');
   signal MuxIn6 : std_logic_vector(7 downto 0) := (others => '0');
   signal MuxIn7 : std_logic_vector(7 downto 0) := (others => '0');
   signal MuxSel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal MuxOut : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux8bit8 PORT MAP (
          MuxIn0 => MuxIn0,
          MuxIn1 => MuxIn1,
          MuxIn2 => MuxIn2,
          MuxIn3 => MuxIn3,
          MuxIn4 => MuxIn4,
          MuxIn5 => MuxIn5,
          MuxIn6 => MuxIn6,
          MuxIn7 => MuxIn7,
          MuxSel => MuxSel,
          MuxOut => MuxOut
        );

   stim_proc: process
   begin		
      wait for 100 ns;	

		-- set input values
		MuxSel <= "000";
		MuxIn0 <= "10100000";
		MuxIn1 <= "10100001";
		MuxIn2 <= "10100010";
		MuxIn3 <= "10100011";
		MuxIn4 <= "10100100";
		MuxIn5 <= "10100101";
		MuxIn6 <= "10100110";
		MuxIn7 <= "10100111";
		
		-- show values
		wait for 40 ns;
		for I in 0 to 7 loop
			wait for 40 ns;
			MuxSel <= MuxSel + '1';
		end loop;
		
      wait;
   end process;

END;
