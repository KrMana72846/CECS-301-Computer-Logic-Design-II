library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_unsigned.all;


entity PCADD is
Port ( 
  PCADDin : in std_logic_vector (31 downto 0);
  PCADDout : out std_logic_vector (31 downto 0)
  );
end PCADD;

architecture Behavioral of PCADD is

begin

PCADDout <= PCADDin + 4;

end Behavioral;