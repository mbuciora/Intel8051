library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CycleCounter is
    Port ( CC_XTAL2 : in  STD_LOGIC;
			  CC_Reset : in STD_LOGIC;
           CC_Phase : inout  STD_LOGIC;
           CC_State : inout  STD_LOGIC_VECTOR (2 downto 0);
           CC_ALE : inout  STD_LOGIC);
end CycleCounter;

architecture Behavioral of CycleCounter is

begin

	process (CC_XTAL2, CC_Reset) 
	begin
		if CC_Reset = '1' then
			CC_Phase <= '0';
			CC_State <= "000";
			CC_ALE <= '0';
		elsif falling_edge(CC_XTAL2) then
			if CC_Phase = '1' then
				CC_Phase <= '0';
				case CC_State is
					when "000" => CC_State <= "001";
					when "001" => CC_State <= "010";
					when "010" => CC_State <= "011";
					when "011" => CC_State <= "100";
					when "100" => CC_State <= "101";
					when others => CC_State <= "000";
				end case;
			else
				CC_Phase <= '1';
				if CC_State = "000" or CC_State = "011" then
					CC_ALE <= '1';
				elsif CC_State = "001" or CC_State = "100" then
					CC_ALE <= '0';
				end if;
				
			end if;
			if CC_State = "110" then
				CC_State <= "000";
			end if;
		end if;
	end process;

end Behavioral;

