library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Opcode_Register is
    Port ( OPC_Code : in  STD_LOGIC_VECTOR (7 downto 0);
           OPC_ALE : in  STD_LOGIC;
           OPC_State : in  STD_LOGIC;
           OPC_Opcode : out  STD_LOGIC_VECTOR (7 downto 0));
end Opcode_Register;

architecture Behavioral of Opcode_Register is

begin
end Behavioral;

