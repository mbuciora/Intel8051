library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8bit8 is
    Port ( MuxIn0 : in  STD_LOGIC_VECTOR (7 downto 0);
           MuxIn1 : in  STD_LOGIC_VECTOR (7 downto 0);
           MuxIn2 : in  STD_LOGIC_VECTOR (7 downto 0);
           MuxIn3 : in  STD_LOGIC_VECTOR (7 downto 0);
           MuxIn4 : in  STD_LOGIC_VECTOR (7 downto 0);
           MuxIn5 : in  STD_LOGIC_VECTOR (7 downto 0);
           MuxIn6 : in  STD_LOGIC_VECTOR (7 downto 0);
           MuxIn7 : in  STD_LOGIC_VECTOR (7 downto 0);
           MuxSel : in  STD_LOGIC_VECTOR (2 downto 0);
           MuxOut : out  STD_LOGIC_VECTOR (7 downto 0));
end mux8bit8;

architecture Behavioral of mux8bit8 is

begin
	process (MuxIn0, MuxIn1, MuxIn2, MuxIn3, MuxIn4, MuxIn5, MuxIn6, MuxIn7, MuxSel) 
	begin
		case MuxSel is
			when "000" => MuxOut <= MuxIn0;
			when "001" => MuxOut <= MuxIn1;
			when "010" => MuxOut <= MuxIn2;
			when "011" => MuxOut <= MuxIn3;
			when "100" => MuxOut <= MuxIn4;
			when "101" => MuxOut <= MuxIn5;
			when "110" => MuxOut <= MuxIn6;
			when others => MuxOut <= MuxIn7;
		end case;
	end process;

end Behavioral;

