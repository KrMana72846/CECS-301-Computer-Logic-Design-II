library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity signExtend is
    Port (
    D : in std_logic_vector (15 downto 0);
    Q : out std_logic_vector (31 downto 0)
    );
end signExtend;
    
architecture Behavioral of signExtend is
begin

  Q <= std_logic_vector(resize(signed(D),Q'length));

end Behavioral;