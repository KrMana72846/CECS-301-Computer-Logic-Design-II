library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux_5bit is
  Port ( 
  A : in std_logic_vector (4 downto 0);
  B : in std_logic_vector (4 downto 0);
  Sel : std_logic;
  Q : out std_logic_vector (4 downto 0)
  );
end mux_5bit;  

architecture Behavioral of mux_5bit is
begin
    with sel select
    Q <= A when '0',
         B when '1',
         B when others;
end Behavioral;