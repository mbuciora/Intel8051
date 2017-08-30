library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder is
    Port ( DEC_Phase : in  STD_LOGIC;
           DEC_State : in  STD_LOGIC_VECTOR (2 downto 0);
           DEC_Opcode : in  STD_LOGIC_VECTOR (7 downto 0);
           DEC_AccVal : in  STD_LOGIC_VECTOR (7 downto 0);
           DEC_AccSave : out  STD_LOGIC;
           DEC_RegVal : in  STD_LOGIC_VECTOR (7 downto 0);
           DEC_RegNo : out  STD_LOGIC_VECTOR (2 downto 0);
           DEC_RegSave : out  STD_LOGIC;
           DEC_2bytesOp : out  STD_LOGIC;
           DEC_Jmp : out  STD_LOGIC;
           DEC_A : out  STD_LOGIC_VECTOR (7 downto 0);
           DEC_B : out  STD_LOGIC_VECTOR (7 downto 0);
           DEC_OppSel : out  STD_LOGIC_VECTOR (3 downto 0));
end Decoder;

architecture Behavioral of Decoder is

begin
	process (DEC_Phase, DEC_State, DEC_Opcode, DEC_RegVal, DEC_AccVal) 
	begin
	if(falling_edge(DEC_Phase) and DEC_Phase = "001") then
		if(DEC_Opcode = "00000000") then
			DEC_2bytesOp <= '0';
			DEC_RegCE <= '0';			
		end if;
	end if; 

	end process;

end Behavioral;

