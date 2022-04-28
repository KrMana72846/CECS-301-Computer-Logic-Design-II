library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux is
  Port ( 
  A : in std_logic_vector (31 downto 0);
  B : in std_logic_vector (31 downto 0);
  sel : std_logic;
  Q : out std_logic_vector (31 downto 0)
  );
end mux;  

architecture Behavioral of mux is
begin
    with sel select
    Q <= A when '0',
         B when '1',
         B when others;

end Behavioral;