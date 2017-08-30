library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ProgramCounter is
    Port ( PC_Phase : in  STD_LOGIC;
           PC_State : in  STD_LOGIC_VECTOR (2 downto 0);
           PC_Offset : in  STD_LOGIC_VECTOR (7 downto 0);
			  PC_Reset : in STD_LOGIC;
           PC_Addr : inout  STD_LOGIC_VECTOR (15 downto 0));
end ProgramCounter;

architecture Behavioral of ProgramCounter is

begin
	
	process (PC_Reset, PC_Phase, PC_State)
	begin
		if PC_Reset = '1' then
			PC_Addr <= "0000000000000000";
		elsif falling_edge(PC_Phase) and (PC_State = "010" or PC_State = "101") then
			PC_Addr <= std_logic_vector(unsigned(PC_Addr) + unsigned(PC_Offset));
		end if;
	end process;
	
	
end Behavioral;

