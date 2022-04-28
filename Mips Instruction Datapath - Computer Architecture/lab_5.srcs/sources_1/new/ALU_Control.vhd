library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ALU_Control is
Port ( 
  ALU_op : in std_logic_vector (1 downto 0);
  Funct : in  std_logic_vector (5 downto 0);
  Operation : out std_logic_vector (3 downto 0)
  );
end ALU_Control;

architecture Behavioral of ALU_Control is

begin
process (ALU_op,Funct) begin
case ALU_op is 

 WHEN  "00"  => 
	Operation<= "0010"; --add- for sw, alu does addition
	
	WHEN "01" =>
	Operation<="0110"; --sub
	
	WHEN "10" =>
	if (Funct = "100000") then --add 
	Operation<="0010";
	
	elsif Funct = "100001" then --add unsigned
	Operation<="0010";

	elsif Funct = "100010" then --sub
	Operation<="0110";

	elsif Funct = "100011" then --sub unsigned
	Operation<="0110";

	elsif (Funct = "100100")or(Funct = "000000") then --and ->for instr andi $t1,t1,0
	Operation<="0000";

	elsif (Funct = "100101")or(Funct = "000111") then --or "000111" for instr ori $t2,t2,7
	Operation<="0001";

	elsif Funct = "100110" then --xor
	Operation<="0011";

	elsif Funct = "100111" then --nor
	Operation<="1100";

	elsif Funct = "001000" then --genrate jr signal with the funct code
	Operation<="1111";
	
		end if;
WHEN others=>
Operation<="0000";
end case;
end process;
end Behavioral;
