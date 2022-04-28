library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_unsigned.all;


entity ADD is
Port ( 
  ADDinA : in std_logic_vector (31 downto 0);
  ADDinB : in std_logic_vector (31 downto 0);
  ADDout : out std_logic_vector (31 downto 0)
  );
end ADD;

architecture Behavioral of ADD is

begin

ADDout <= ADDinA + ADDinB;

end Behavioral;