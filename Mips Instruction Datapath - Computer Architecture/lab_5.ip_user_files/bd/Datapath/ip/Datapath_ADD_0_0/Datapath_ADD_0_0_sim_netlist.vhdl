-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu May  7 22:50:01 2020
-- Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/Kenny Khut/Desktop/CECS
--               440/lab_4/lab_4.srcs/sources_1/bd/Datapath/ip/Datapath_ADD_0_0/Datapath_ADD_0_0_sim_netlist.vhdl}
-- Design      : Datapath_ADD_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath_ADD_0_0_ADD is
  port (
    ADDout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ADDinA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ADDinB : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Datapath_ADD_0_0_ADD : entity is "ADD";
end Datapath_ADD_0_0_ADD;

architecture STRUCTURE of Datapath_ADD_0_0_ADD is
  signal \ADDout[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADDout[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADDout[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADDout[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADDout[0]_INST_0_n_0\ : STD_LOGIC;
  signal \ADDout[0]_INST_0_n_1\ : STD_LOGIC;
  signal \ADDout[0]_INST_0_n_2\ : STD_LOGIC;
  signal \ADDout[0]_INST_0_n_3\ : STD_LOGIC;
  signal \ADDout[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADDout[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADDout[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADDout[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADDout[12]_INST_0_n_0\ : STD_LOGIC;
  signal \ADDout[12]_INST_0_n_1\ : STD_LOGIC;
  signal \ADDout[12]_INST_0_n_2\ : STD_LOGIC;
  signal \ADDout[12]_INST_0_n_3\ : STD_LOGIC;
  signal \ADDout[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADDout[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADDout[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADDout[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADDout[16]_INST_0_n_0\ : STD_LOGIC;
  signal \ADDout[16]_INST_0_n_1\ : STD_LOGIC;
  signal \ADDout[16]_INST_0_n_2\ : STD_LOGIC;
  signal \ADDout[16]_INST_0_n_3\ : STD_LOGIC;
  signal \ADDout[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADDout[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADDout[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADDout[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADDout[20]_INST_0_n_0\ : STD_LOGIC;
  signal \ADDout[20]_INST_0_n_1\ : STD_LOGIC;
  signal \ADDout[20]_INST_0_n_2\ : STD_LOGIC;
  signal \ADDout[20]_INST_0_n_3\ : STD_LOGIC;
  signal \ADDout[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADDout[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADDout[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADDout[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADDout[24]_INST_0_n_0\ : STD_LOGIC;
  signal \ADDout[24]_INST_0_n_1\ : STD_LOGIC;
  signal \ADDout[24]_INST_0_n_2\ : STD_LOGIC;
  signal \ADDout[24]_INST_0_n_3\ : STD_LOGIC;
  signal \ADDout[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADDout[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADDout[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADDout[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADDout[28]_INST_0_n_1\ : STD_LOGIC;
  signal \ADDout[28]_INST_0_n_2\ : STD_LOGIC;
  signal \ADDout[28]_INST_0_n_3\ : STD_LOGIC;
  signal \ADDout[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADDout[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADDout[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADDout[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADDout[4]_INST_0_n_0\ : STD_LOGIC;
  signal \ADDout[4]_INST_0_n_1\ : STD_LOGIC;
  signal \ADDout[4]_INST_0_n_2\ : STD_LOGIC;
  signal \ADDout[4]_INST_0_n_3\ : STD_LOGIC;
  signal \ADDout[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADDout[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADDout[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADDout[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADDout[8]_INST_0_n_0\ : STD_LOGIC;
  signal \ADDout[8]_INST_0_n_1\ : STD_LOGIC;
  signal \ADDout[8]_INST_0_n_2\ : STD_LOGIC;
  signal \ADDout[8]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_ADDout[28]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\ADDout[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ADDout[0]_INST_0_n_0\,
      CO(2) => \ADDout[0]_INST_0_n_1\,
      CO(1) => \ADDout[0]_INST_0_n_2\,
      CO(0) => \ADDout[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ADDinA(3 downto 0),
      O(3 downto 0) => ADDout(3 downto 0),
      S(3) => \ADDout[0]_INST_0_i_1_n_0\,
      S(2) => \ADDout[0]_INST_0_i_2_n_0\,
      S(1) => \ADDout[0]_INST_0_i_3_n_0\,
      S(0) => \ADDout[0]_INST_0_i_4_n_0\
    );
\ADDout[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(3),
      I1 => ADDinB(3),
      O => \ADDout[0]_INST_0_i_1_n_0\
    );
\ADDout[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(2),
      I1 => ADDinB(2),
      O => \ADDout[0]_INST_0_i_2_n_0\
    );
\ADDout[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(1),
      I1 => ADDinB(1),
      O => \ADDout[0]_INST_0_i_3_n_0\
    );
\ADDout[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(0),
      I1 => ADDinB(0),
      O => \ADDout[0]_INST_0_i_4_n_0\
    );
\ADDout[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADDout[8]_INST_0_n_0\,
      CO(3) => \ADDout[12]_INST_0_n_0\,
      CO(2) => \ADDout[12]_INST_0_n_1\,
      CO(1) => \ADDout[12]_INST_0_n_2\,
      CO(0) => \ADDout[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ADDinA(15 downto 12),
      O(3 downto 0) => ADDout(15 downto 12),
      S(3) => \ADDout[12]_INST_0_i_1_n_0\,
      S(2) => \ADDout[12]_INST_0_i_2_n_0\,
      S(1) => \ADDout[12]_INST_0_i_3_n_0\,
      S(0) => \ADDout[12]_INST_0_i_4_n_0\
    );
\ADDout[12]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(15),
      I1 => ADDinB(15),
      O => \ADDout[12]_INST_0_i_1_n_0\
    );
\ADDout[12]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(14),
      I1 => ADDinB(14),
      O => \ADDout[12]_INST_0_i_2_n_0\
    );
\ADDout[12]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(13),
      I1 => ADDinB(13),
      O => \ADDout[12]_INST_0_i_3_n_0\
    );
\ADDout[12]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(12),
      I1 => ADDinB(12),
      O => \ADDout[12]_INST_0_i_4_n_0\
    );
\ADDout[16]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADDout[12]_INST_0_n_0\,
      CO(3) => \ADDout[16]_INST_0_n_0\,
      CO(2) => \ADDout[16]_INST_0_n_1\,
      CO(1) => \ADDout[16]_INST_0_n_2\,
      CO(0) => \ADDout[16]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ADDinA(19 downto 16),
      O(3 downto 0) => ADDout(19 downto 16),
      S(3) => \ADDout[16]_INST_0_i_1_n_0\,
      S(2) => \ADDout[16]_INST_0_i_2_n_0\,
      S(1) => \ADDout[16]_INST_0_i_3_n_0\,
      S(0) => \ADDout[16]_INST_0_i_4_n_0\
    );
\ADDout[16]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(19),
      I1 => ADDinB(19),
      O => \ADDout[16]_INST_0_i_1_n_0\
    );
\ADDout[16]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(18),
      I1 => ADDinB(18),
      O => \ADDout[16]_INST_0_i_2_n_0\
    );
\ADDout[16]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(17),
      I1 => ADDinB(17),
      O => \ADDout[16]_INST_0_i_3_n_0\
    );
\ADDout[16]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(16),
      I1 => ADDinB(16),
      O => \ADDout[16]_INST_0_i_4_n_0\
    );
\ADDout[20]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADDout[16]_INST_0_n_0\,
      CO(3) => \ADDout[20]_INST_0_n_0\,
      CO(2) => \ADDout[20]_INST_0_n_1\,
      CO(1) => \ADDout[20]_INST_0_n_2\,
      CO(0) => \ADDout[20]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ADDinA(23 downto 20),
      O(3 downto 0) => ADDout(23 downto 20),
      S(3) => \ADDout[20]_INST_0_i_1_n_0\,
      S(2) => \ADDout[20]_INST_0_i_2_n_0\,
      S(1) => \ADDout[20]_INST_0_i_3_n_0\,
      S(0) => \ADDout[20]_INST_0_i_4_n_0\
    );
\ADDout[20]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(23),
      I1 => ADDinB(23),
      O => \ADDout[20]_INST_0_i_1_n_0\
    );
\ADDout[20]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(22),
      I1 => ADDinB(22),
      O => \ADDout[20]_INST_0_i_2_n_0\
    );
\ADDout[20]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(21),
      I1 => ADDinB(21),
      O => \ADDout[20]_INST_0_i_3_n_0\
    );
\ADDout[20]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(20),
      I1 => ADDinB(20),
      O => \ADDout[20]_INST_0_i_4_n_0\
    );
\ADDout[24]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADDout[20]_INST_0_n_0\,
      CO(3) => \ADDout[24]_INST_0_n_0\,
      CO(2) => \ADDout[24]_INST_0_n_1\,
      CO(1) => \ADDout[24]_INST_0_n_2\,
      CO(0) => \ADDout[24]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ADDinA(27 downto 24),
      O(3 downto 0) => ADDout(27 downto 24),
      S(3) => \ADDout[24]_INST_0_i_1_n_0\,
      S(2) => \ADDout[24]_INST_0_i_2_n_0\,
      S(1) => \ADDout[24]_INST_0_i_3_n_0\,
      S(0) => \ADDout[24]_INST_0_i_4_n_0\
    );
\ADDout[24]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(27),
      I1 => ADDinB(27),
      O => \ADDout[24]_INST_0_i_1_n_0\
    );
\ADDout[24]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(26),
      I1 => ADDinB(26),
      O => \ADDout[24]_INST_0_i_2_n_0\
    );
\ADDout[24]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(25),
      I1 => ADDinB(25),
      O => \ADDout[24]_INST_0_i_3_n_0\
    );
\ADDout[24]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(24),
      I1 => ADDinB(24),
      O => \ADDout[24]_INST_0_i_4_n_0\
    );
\ADDout[28]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADDout[24]_INST_0_n_0\,
      CO(3) => \NLW_ADDout[28]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \ADDout[28]_INST_0_n_1\,
      CO(1) => \ADDout[28]_INST_0_n_2\,
      CO(0) => \ADDout[28]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => ADDinA(30 downto 28),
      O(3 downto 0) => ADDout(31 downto 28),
      S(3) => \ADDout[28]_INST_0_i_1_n_0\,
      S(2) => \ADDout[28]_INST_0_i_2_n_0\,
      S(1) => \ADDout[28]_INST_0_i_3_n_0\,
      S(0) => \ADDout[28]_INST_0_i_4_n_0\
    );
\ADDout[28]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(31),
      I1 => ADDinB(31),
      O => \ADDout[28]_INST_0_i_1_n_0\
    );
\ADDout[28]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(30),
      I1 => ADDinB(30),
      O => \ADDout[28]_INST_0_i_2_n_0\
    );
\ADDout[28]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(29),
      I1 => ADDinB(29),
      O => \ADDout[28]_INST_0_i_3_n_0\
    );
\ADDout[28]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(28),
      I1 => ADDinB(28),
      O => \ADDout[28]_INST_0_i_4_n_0\
    );
\ADDout[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADDout[0]_INST_0_n_0\,
      CO(3) => \ADDout[4]_INST_0_n_0\,
      CO(2) => \ADDout[4]_INST_0_n_1\,
      CO(1) => \ADDout[4]_INST_0_n_2\,
      CO(0) => \ADDout[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ADDinA(7 downto 4),
      O(3 downto 0) => ADDout(7 downto 4),
      S(3) => \ADDout[4]_INST_0_i_1_n_0\,
      S(2) => \ADDout[4]_INST_0_i_2_n_0\,
      S(1) => \ADDout[4]_INST_0_i_3_n_0\,
      S(0) => \ADDout[4]_INST_0_i_4_n_0\
    );
\ADDout[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(7),
      I1 => ADDinB(7),
      O => \ADDout[4]_INST_0_i_1_n_0\
    );
\ADDout[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(6),
      I1 => ADDinB(6),
      O => \ADDout[4]_INST_0_i_2_n_0\
    );
\ADDout[4]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(5),
      I1 => ADDinB(5),
      O => \ADDout[4]_INST_0_i_3_n_0\
    );
\ADDout[4]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(4),
      I1 => ADDinB(4),
      O => \ADDout[4]_INST_0_i_4_n_0\
    );
\ADDout[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADDout[4]_INST_0_n_0\,
      CO(3) => \ADDout[8]_INST_0_n_0\,
      CO(2) => \ADDout[8]_INST_0_n_1\,
      CO(1) => \ADDout[8]_INST_0_n_2\,
      CO(0) => \ADDout[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ADDinA(11 downto 8),
      O(3 downto 0) => ADDout(11 downto 8),
      S(3) => \ADDout[8]_INST_0_i_1_n_0\,
      S(2) => \ADDout[8]_INST_0_i_2_n_0\,
      S(1) => \ADDout[8]_INST_0_i_3_n_0\,
      S(0) => \ADDout[8]_INST_0_i_4_n_0\
    );
\ADDout[8]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(11),
      I1 => ADDinB(11),
      O => \ADDout[8]_INST_0_i_1_n_0\
    );
\ADDout[8]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(10),
      I1 => ADDinB(10),
      O => \ADDout[8]_INST_0_i_2_n_0\
    );
\ADDout[8]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(9),
      I1 => ADDinB(9),
      O => \ADDout[8]_INST_0_i_3_n_0\
    );
\ADDout[8]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDinA(8),
      I1 => ADDinB(8),
      O => \ADDout[8]_INST_0_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath_ADD_0_0 is
  port (
    ADDinA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ADDinB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ADDout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Datapath_ADD_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Datapath_ADD_0_0 : entity is "Datapath_ADD_0_0,ADD,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Datapath_ADD_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Datapath_ADD_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Datapath_ADD_0_0 : entity is "ADD,Vivado 2019.1";
end Datapath_ADD_0_0;

architecture STRUCTURE of Datapath_ADD_0_0 is
begin
U0: entity work.Datapath_ADD_0_0_ADD
     port map (
      ADDinA(31 downto 0) => ADDinA(31 downto 0),
      ADDinB(31 downto 0) => ADDinB(31 downto 0),
      ADDout(31 downto 0) => ADDout(31 downto 0)
    );
end STRUCTURE;
