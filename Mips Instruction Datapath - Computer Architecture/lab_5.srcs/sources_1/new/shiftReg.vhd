library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_arith.all;

entity shiftReg is
  Port (D : in  std_logic_vector (31 downto 0);
        Q : out std_logic_vector (31 downto 0)
   );
end shiftReg;

architecture Behavioral of shiftReg is

begin
Q <= (D(29 downto 0) & "00");

end Behavioral;