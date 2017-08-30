library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
    Port ( ALU_in_1 : in  STD_LOGIC_VECTOR (7 downto 0);
           ALU_in_2 : in  STD_LOGIC_VECTOR (7 downto 0);
           OpCode : in  STD_LOGIC_VECTOR (3 downto 0);
           CarryIn : in  STD_LOGIC_VECTOR (7 downto 0);
           Result : out  STD_LOGIC_VECTOR (7 downto 0);
           CarryOut : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is
begin

end Behavioral;

