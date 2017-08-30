library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder8051 is
    Port ( DEC_Phase : in  STD_LOGIC;
           DEC_State : in  STD_LOGIC_VECTOR (2 downto 0);
			  DEC_CarryIn: in STD_LOGIC;
           DEC_Offset : out  STD_LOGIC_VECTOR (7 downto 0);
           DEC_RegNo : out  STD_LOGIC_VECTOR (2 downto 0);
           DEC_Reg_CE : out  STD_LOGIC;
           DEC_RegBankIn : in  STD_LOGIC_VECTOR (7 downto 0);
           DEC_Acc_CE : out  STD_LOGIC;
           DEC_AccIn : in  STD_LOGIC_VECTOR (7 downto 0);
           DEC_A : out  STD_LOGIC_VECTOR (7 downto 0);
           DEC_B : out  STD_LOGIC_VECTOR (7 downto 0);
           DEC_Sel : out  STD_LOGIC_VECTOR (3 downto 0);
           DEC_OpCode : in  STD_LOGIC_VECTOR (7 downto 0);
           DEC_Arg : in  STD_LOGIC_VECTOR (7 downto 0));
end Decoder8051;

architecture Behavioral of Decoder8051 is
signal is2byteOpcode: STD_LOGIC := '0';
begin
	process (DEC_Phase, DEC_State, DEC_OpCode, DEC_Arg, DEC_RegBankIn, DEC_AccIn)
	begin
		DEC_Offset <= "00000001";
		
		if is2byteOpcode = '0' then
			if (DEC_OpCode(3 downto 0) = "0100" and
			    (DEC_OpCode(7 downto 4) = "0010" or
				  DEC_OpCode(7 downto 4) = "0011" or
			     DEC_OpCode(7 downto 4) = "0100" or
				  DEC_OpCode(7 downto 4) = "0110" or
				  DEC_OpCode(7 downto 4) = "0111" or
				  DEC_OpCode(7 downto 4) = "1001"))
				or
			   (DEC_OpCode(3 downto 0) = "0100" and
			    (DEC_OpCode(7 downto 4) = "0101" or
				  DEC_OpCode(7 downto 4) = "0110" or
				  DEC_OpCode(7 downto 4) = "0111" or
				  DEC_OpCode(7 downto 4) = "1000"))
				or
				 DEC_OpCode(7 downto 0) = "01000001"
				or
				 DEC_OpCode(7 downto 0) = "01111"
				or
				 DEC_OpCode(7 downto 0) = "11011" then
				
				is2byteOpcode <= '1';
				end if;
		else
			is2byteOpcode <= '0';
		end if;
		
		if is2byteOpcode = '0' then
			if falling_edge(DEC_Phase) and DEC_State = "000" then
				DEC_Offset <= "00000001";
			end if;
			if falling_edge(DEC_Phase) and DEC_State = "001" then
				if DEC_OpCode(3) = '1' then
					DEC_RegNo <= DEC_OpCode(2 downto 0); 
					-- inc/dec Rx
					if DEC_OpCode(7 downto 5) = "000" then 
						DEC_A <= DEC_RegBankIn;
					else
						DEC_A <= DEC_AccIn;
						DEC_B <= DEC_RegBankIn;
					end if;
				end if;
				if DEC_OpCode(3 downto 0) = "0100" then 
					DEC_A <= DEC_AccIn;
					DEC_B <= DEC_Arg;
				end if;
				DEC_Sel <= DEC_OpCode(7 downto 4);
				
				
				-- RR A
				if DEC_OpCode(7 downto 0) = "00000011" then
					DEC_A <= DEC_AccIn;
					DEC_Sel <= "1110";
				-- RL A
				elsif DEC_OpCode(7 downto 0) = "00100011" then
					DEC_A <= DEC_AccIn;
					DEC_Sel <= "1101";
				end if;
				-- move immed
				if DEC_OpCode(7 downto 4) = "0111" then 
					DEC_B <= DEC_Arg;
				end if;
				-- swap A
				if DEC_OpCode(7 downto 0) = "11000100" then 
					DEC_Sel <= "1100";
				end if;
				-- mov
				if DEC_OpCode(7 downto 4) = "1110" then 
					DEC_Sel <= "0111";
				end if;
				-- CLR
				if DEC_OpCode(7 downto 0) = "11000011" or 
					DEC_OpCode(7 downto 0) = "11100100" then 
					DEC_Sel <= "1111";
				end if;
				-- CPL
				if DEC_OpCode(7 downto 0) = "10110011" or 
					DEC_OpCode(7 downto 0) = "11110100" then 
					DEC_Sel <= "1011";
				end if;
				-- mov Acc to Rx
				if DEC_OpCode(7 downto 4) = "1111" then 
					DEC_B <= DEC_AccIn;
					DEC_Sel <= "0111";
				end if;
			end if;
			
			
			-- State 2 - 
			if falling_edge(DEC_Phase) and DEC_State = "010" then
				DEC_Offset <= "00000001";
			end if;
			
			-- State 3 - 
			if falling_edge(DEC_Phase) and DEC_State = "011" then
			end if;
			
			-- State 4 - Set CE's
			if falling_edge(DEC_Phase) and DEC_State = "100" then
				-- check Result is saved in Registers
				if (DEC_OpCode(3) = '1' and
					(DEC_OpCode(7 downto 5) = "000" or
					DEC_OpCode(7 downto 4) = "0111" or
					DEC_OpCode(7 downto 4) = "1101" or
					DEC_OpCode(7 downto 4) = "1111")) then
				DEC_RegNo <= DEC_OpCode(2 downto 0);
				DEC_Reg_CE <= '1';
					
				-- check Result is saved in Acc
				elsif ((DEC_OpCode(3 downto 0) = "0100" and 
					DEC_OpCode(7 downto 4) /= "1011" and 
					DEC_OpCode(7 downto 4) /= "1101") or
					
					(DEC_OpCode(3 downto 0) = "0011" and 
					(DEC_OpCode(7 downto 4) = "0000" or
					DEC_OpCode(7 downto 4) = "0010")) or
					
					(DEC_OpCode(3) = '1' and
					(DEC_OpCode(7 downto 5) = "001" or
					DEC_OpCode(7 downto 5) = "010" or
					DEC_OpCode(6 downto 4) = "110" or
					DEC_OpCode(7 downto 4) = "1001"))) then
				
				DEC_Acc_CE <= '1';
				end if;	
			end if;
			
			-- State 5 - Set Defaults & offset
			if falling_edge(DEC_Phase) and DEC_State = "101" then
				DEC_Reg_CE <= '0';
				DEC_Acc_CE <= '0';
				-- SJMP
				if DEC_OpCode(7 downto 0) = "10000000" then
					DEC_Offset <= DEC_Arg;
				-- JZ
				elsif DEC_OpCode(7 downto 0) = "01100000" and 
					DEC_AccIn = "00000000" then
					DEC_Offset <= DEC_Arg;
				-- JNZ
				elsif DEC_OpCode(7 downto 0) = "01110000" and 
					DEC_AccIn /= "00000000" then
					DEC_Offset <= DEC_Arg;
				end if;
			end if;
		end if;
	end process;

end Behavioral;

