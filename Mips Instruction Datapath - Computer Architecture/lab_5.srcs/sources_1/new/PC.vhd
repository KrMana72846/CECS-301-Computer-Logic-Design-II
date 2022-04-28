library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
  Port ( 
  Clock : in std_logic;
  Reset : in std_logic;
  PCin : in std_logic_vector (31 downto 0);
  PCout : out std_logic_vector (31 downto 0)
  );
end PC;

architecture Behavioral of PC is
signal Q : std_logic_vector (31 downto 0);
signal zeros: std_logic_vector(31 downto 0):=(others=>'0');

begin
process (Clock, Reset) begin
    if Reset = '1' then
    Q <= zeros;
    elsif Clock'Event and Clock = '1' then
    Q <= PCin;
    end if;
end process;
PCout <= Q;
end Behavioral;