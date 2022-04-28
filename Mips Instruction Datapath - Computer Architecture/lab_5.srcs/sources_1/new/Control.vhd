library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control is
    Port ( 
		   opcode : in  std_logic_Vector (5 downto 0);
           RegWrite : out  std_logic;
		   RegDst: out std_logic;
		   ALUSrc:out std_logic;
		   MemtoReg: out std_logic;
		   Branch: out std_logic;
		   MemWrite:out std_logic;
		   MemRead: out std_logic;
		   ALUop: out std_logic_vector (1 downto 0)
			  );
end Control;

architecture Behavioral of Control is
signal Rwrite:std_logic;
begin
with opcode select
-- RegWrite
RegWrite <=     '1' when "000000",
				'1' when "100011", --lw
				'1' when "001000",--addi
				'1' when "001100",--andi
			    '1' when "001101",--ori
			    '1' when "000011", --jal
				'0' when others;
-- RegDst				
with opcode select
RegDst<=    '1' when "000000",	--Rtype 0
			'0' when "001000",--addi -need to write to rt
			'0' when "001100",--andi
			'0' when "001101",--ori
			'0' when others;
-- ALUSrc			
with opcode select
ALUSrc<= '1' when "100011", --lw
			'1' when "101011", --sw 
			'1' when "001000",--addi
			'1' when "001100",--andi
			'1' when "001101",--ori
			'0' when others;
-- MemtoReg			
with opcode select
MemtoReg<= '1' when "100011", --lw
			'0' when others;
-- Branch			
with opcode select
Branch<= '1' when "000100",	--beq
			'0' when others;
-- MemWrite
with opcode select
MemWrite <= '1' when "101011", --sw 
				'0' when others;
-- MemRead
with opcode select
MemRead <= '1' when "100011", --lw
				'0' when others;
-- ALUop				
with opcode select
ALUop<=     "10" when "000000", --R-type
			"10" when "001100",--andi	
			"10" when "001101",--ori
			"01" when "000100", --beq
			"00" when others;

end Behavioral;