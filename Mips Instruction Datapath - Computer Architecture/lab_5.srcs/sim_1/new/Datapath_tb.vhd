library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Datapath_tb is
--  Port ( );
end Datapath_tb;

architecture Behavioral of Datapath_tb is
signal Clock, Reset, Zero, Overflow : std_logic;
signal Dout : std_logic_vector (31 downto 0);
constant clock_period : time := 20 ns;
component Datapath is
Port ( 
  Clock : in std_logic;
  Reset : in std_logic;
  Dout : out std_logic_vector (31 downto 0);
  Zero : out std_logic;
  Overflow : out std_logic
  );
end component Datapath;
begin
design: Datapath
    port map (
    Clock => Clock,
    Reset => Reset,
    Dout => Dout,
    Zero => Zero,
    Overflow => Overflow
    );

   clock_process :process
   begin
		Clock <= '0';
		wait for clock_period/2;
		Clock <= '1';
		wait for clock_period/2;
   end process;
   
process begin
Reset<= '1';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period; -- 10 Cycles
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period; -- 20 Cycles
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period;
Reset<='0';wait for clock_period; -- 30 Cycles
end process;
end Behavioral;