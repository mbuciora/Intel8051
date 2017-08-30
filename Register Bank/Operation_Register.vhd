library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Operation_Register is
    Port ( OP_State0 : in  STD_LOGIC;
           OP_ALE : in  STD_LOGIC;
           OP_DataIn : in  STD_LOGIC_VECTOR (7 downto 0);
           OP_OpCode : out  STD_LOGIC_VECTOR (7 downto 0);
           OP_Arg : out  STD_LOGIC_VECTOR (7 downto 0));
end Operation_Register;

architecture Behavioral of Operation_Register is

begin
	process (OP_ALE, OP_DataIn, OP_State0) 
	begin
		if rising_edge(OP_ALE) then
			if OP_State0 = '0' then
				OP_OpCode <= OP_DataIn;
			else
				OP_Arg <= OP_DataIn;
			end if;
		end if;
	end process;

end Behavioral;

