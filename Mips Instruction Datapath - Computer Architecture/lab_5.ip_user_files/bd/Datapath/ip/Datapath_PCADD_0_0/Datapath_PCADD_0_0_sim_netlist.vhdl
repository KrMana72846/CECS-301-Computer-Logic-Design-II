-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri May  8 21:21:02 2020
-- Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {C:/Users/Kenny Khut/Desktop/CECS
--               440/Labs/lab_5/lab_5.srcs/sources_1/bd/Datapath/ip/Datapath_PCADD_0_0/Datapath_PCADD_0_0_sim_netlist.vhdl}
-- Design      : Datapath_PCADD_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath_PCADD_0_0_PCADD is
  port (
    PCADDout : out STD_LOGIC_VECTOR ( 30 downto 0 );
    PCADDin : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Datapath_PCADD_0_0_PCADD : entity is "PCADD";
end Datapath_PCADD_0_0_PCADD;

architecture STRUCTURE of Datapath_PCADD_0_0_PCADD is
  signal \PCADDout[13]_INST_0_n_0\ : STD_LOGIC;
  signal \PCADDout[13]_INST_0_n_1\ : STD_LOGIC;
  signal \PCADDout[13]_INST_0_n_2\ : STD_LOGIC;
  signal \PCADDout[13]_INST_0_n_3\ : STD_LOGIC;
  signal \PCADDout[17]_INST_0_n_0\ : STD_LOGIC;
  signal \PCADDout[17]_INST_0_n_1\ : STD_LOGIC;
  signal \PCADDout[17]_INST_0_n_2\ : STD_LOGIC;
  signal \PCADDout[17]_INST_0_n_3\ : STD_LOGIC;
  signal \PCADDout[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \PCADDout[1]_INST_0_n_0\ : STD_LOGIC;
  signal \PCADDout[1]_INST_0_n_1\ : STD_LOGIC;
  signal \PCADDout[1]_INST_0_n_2\ : STD_LOGIC;
  signal \PCADDout[1]_INST_0_n_3\ : STD_LOGIC;
  signal \PCADDout[21]_INST_0_n_0\ : STD_LOGIC;
  signal \PCADDout[21]_INST_0_n_1\ : STD_LOGIC;
  signal \PCADDout[21]_INST_0_n_2\ : STD_LOGIC;
  signal \PCADDout[21]_INST_0_n_3\ : STD_LOGIC;
  signal \PCADDout[25]_INST_0_n_0\ : STD_LOGIC;
  signal \PCADDout[25]_INST_0_n_1\ : STD_LOGIC;
  signal \PCADDout[25]_INST_0_n_2\ : STD_LOGIC;
  signal \PCADDout[25]_INST_0_n_3\ : STD_LOGIC;
  signal \PCADDout[29]_INST_0_n_2\ : STD_LOGIC;
  signal \PCADDout[29]_INST_0_n_3\ : STD_LOGIC;
  signal \PCADDout[5]_INST_0_n_0\ : STD_LOGIC;
  signal \PCADDout[5]_INST_0_n_1\ : STD_LOGIC;
  signal \PCADDout[5]_INST_0_n_2\ : STD_LOGIC;
  signal \PCADDout[5]_INST_0_n_3\ : STD_LOGIC;
  signal \PCADDout[9]_INST_0_n_0\ : STD_LOGIC;
  signal \PCADDout[9]_INST_0_n_1\ : STD_LOGIC;
  signal \PCADDout[9]_INST_0_n_2\ : STD_LOGIC;
  signal \PCADDout[9]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_PCADDout[29]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_PCADDout[29]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\PCADDout[13]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCADDout[9]_INST_0_n_0\,
      CO(3) => \PCADDout[13]_INST_0_n_0\,
      CO(2) => \PCADDout[13]_INST_0_n_1\,
      CO(1) => \PCADDout[13]_INST_0_n_2\,
      CO(0) => \PCADDout[13]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => PCADDout(15 downto 12),
      S(3 downto 0) => PCADDin(15 downto 12)
    );
\PCADDout[17]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCADDout[13]_INST_0_n_0\,
      CO(3) => \PCADDout[17]_INST_0_n_0\,
      CO(2) => \PCADDout[17]_INST_0_n_1\,
      CO(1) => \PCADDout[17]_INST_0_n_2\,
      CO(0) => \PCADDout[17]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => PCADDout(19 downto 16),
      S(3 downto 0) => PCADDin(19 downto 16)
    );
\PCADDout[1]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \PCADDout[1]_INST_0_n_0\,
      CO(2) => \PCADDout[1]_INST_0_n_1\,
      CO(1) => \PCADDout[1]_INST_0_n_2\,
      CO(0) => \PCADDout[1]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => PCADDin(1),
      DI(0) => '0',
      O(3 downto 0) => PCADDout(3 downto 0),
      S(3 downto 2) => PCADDin(3 downto 2),
      S(1) => \PCADDout[1]_INST_0_i_1_n_0\,
      S(0) => PCADDin(0)
    );
\PCADDout[1]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PCADDin(1),
      O => \PCADDout[1]_INST_0_i_1_n_0\
    );
\PCADDout[21]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCADDout[17]_INST_0_n_0\,
      CO(3) => \PCADDout[21]_INST_0_n_0\,
      CO(2) => \PCADDout[21]_INST_0_n_1\,
      CO(1) => \PCADDout[21]_INST_0_n_2\,
      CO(0) => \PCADDout[21]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => PCADDout(23 downto 20),
      S(3 downto 0) => PCADDin(23 downto 20)
    );
\PCADDout[25]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCADDout[21]_INST_0_n_0\,
      CO(3) => \PCADDout[25]_INST_0_n_0\,
      CO(2) => \PCADDout[25]_INST_0_n_1\,
      CO(1) => \PCADDout[25]_INST_0_n_2\,
      CO(0) => \PCADDout[25]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => PCADDout(27 downto 24),
      S(3 downto 0) => PCADDin(27 downto 24)
    );
\PCADDout[29]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCADDout[25]_INST_0_n_0\,
      CO(3 downto 2) => \NLW_PCADDout[29]_INST_0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \PCADDout[29]_INST_0_n_2\,
      CO(0) => \PCADDout[29]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_PCADDout[29]_INST_0_O_UNCONNECTED\(3),
      O(2 downto 0) => PCADDout(30 downto 28),
      S(3) => '0',
      S(2 downto 0) => PCADDin(30 downto 28)
    );
\PCADDout[5]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCADDout[1]_INST_0_n_0\,
      CO(3) => \PCADDout[5]_INST_0_n_0\,
      CO(2) => \PCADDout[5]_INST_0_n_1\,
      CO(1) => \PCADDout[5]_INST_0_n_2\,
      CO(0) => \PCADDout[5]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => PCADDout(7 downto 4),
      S(3 downto 0) => PCADDin(7 downto 4)
    );
\PCADDout[9]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \PCADDout[5]_INST_0_n_0\,
      CO(3) => \PCADDout[9]_INST_0_n_0\,
      CO(2) => \PCADDout[9]_INST_0_n_1\,
      CO(1) => \PCADDout[9]_INST_0_n_2\,
      CO(0) => \PCADDout[9]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => PCADDout(11 downto 8),
      S(3 downto 0) => PCADDin(11 downto 8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath_PCADD_0_0 is
  port (
    PCADDin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PCADDout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Datapath_PCADD_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Datapath_PCADD_0_0 : entity is "Datapath_PCADD_0_0,PCADD,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Datapath_PCADD_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Datapath_PCADD_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Datapath_PCADD_0_0 : entity is "PCADD,Vivado 2019.1";
end Datapath_PCADD_0_0;

architecture STRUCTURE of Datapath_PCADD_0_0 is
  signal \^pcaddin\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^pcaddout\ : STD_LOGIC_VECTOR ( 31 downto 1 );
begin
  PCADDout(31 downto 1) <= \^pcaddout\(31 downto 1);
  PCADDout(0) <= \^pcaddin\(0);
  \^pcaddin\(31 downto 0) <= PCADDin(31 downto 0);
U0: entity work.Datapath_PCADD_0_0_PCADD
     port map (
      PCADDin(30 downto 0) => \^pcaddin\(31 downto 1),
      PCADDout(30 downto 0) => \^pcaddout\(31 downto 1)
    );
end STRUCTURE;
