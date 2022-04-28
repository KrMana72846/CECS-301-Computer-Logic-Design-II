-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri May  8 21:23:31 2020
-- Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {C:/Users/Kenny Khut/Desktop/CECS
--               440/Labs/lab_5/lab_5.srcs/sources_1/bd/Datapath/ip/Datapath_mux_1_0/Datapath_mux_1_0_sim_netlist.vhdl}
-- Design      : Datapath_mux_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath_mux_1_0_mux is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Datapath_mux_1_0_mux : entity is "mux";
end Datapath_mux_1_0_mux;

architecture STRUCTURE of Datapath_mux_1_0_mux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Q[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Q[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Q[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Q[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Q[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Q[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Q[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Q[18]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Q[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Q[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q[20]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Q[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Q[22]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Q[23]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Q[24]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Q[25]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Q[26]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Q[27]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Q[28]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Q[29]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Q[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q[30]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Q[31]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Q[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Q[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Q[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Q[9]_INST_0\ : label is "soft_lutpair4";
begin
\Q[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      I2 => sel,
      O => Q(0)
    );
\Q[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      I2 => sel,
      O => Q(10)
    );
\Q[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(11),
      I1 => A(11),
      I2 => sel,
      O => Q(11)
    );
\Q[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(12),
      I1 => A(12),
      I2 => sel,
      O => Q(12)
    );
\Q[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(13),
      I1 => A(13),
      I2 => sel,
      O => Q(13)
    );
\Q[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(14),
      I1 => A(14),
      I2 => sel,
      O => Q(14)
    );
\Q[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => sel,
      O => Q(15)
    );
\Q[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(16),
      I1 => A(16),
      I2 => sel,
      O => Q(16)
    );
\Q[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(17),
      I1 => A(17),
      I2 => sel,
      O => Q(17)
    );
\Q[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(18),
      I1 => A(18),
      I2 => sel,
      O => Q(18)
    );
\Q[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(19),
      I1 => A(19),
      I2 => sel,
      O => Q(19)
    );
\Q[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      I2 => sel,
      O => Q(1)
    );
\Q[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(20),
      I1 => A(20),
      I2 => sel,
      O => Q(20)
    );
\Q[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(21),
      I1 => A(21),
      I2 => sel,
      O => Q(21)
    );
\Q[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(22),
      I1 => A(22),
      I2 => sel,
      O => Q(22)
    );
\Q[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(23),
      I1 => A(23),
      I2 => sel,
      O => Q(23)
    );
\Q[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(24),
      I1 => A(24),
      I2 => sel,
      O => Q(24)
    );
\Q[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(25),
      I1 => A(25),
      I2 => sel,
      O => Q(25)
    );
\Q[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(26),
      I1 => A(26),
      I2 => sel,
      O => Q(26)
    );
\Q[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(27),
      I1 => A(27),
      I2 => sel,
      O => Q(27)
    );
\Q[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(28),
      I1 => A(28),
      I2 => sel,
      O => Q(28)
    );
\Q[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(29),
      I1 => A(29),
      I2 => sel,
      O => Q(29)
    );
\Q[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      I2 => sel,
      O => Q(2)
    );
\Q[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(30),
      I1 => A(30),
      I2 => sel,
      O => Q(30)
    );
\Q[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(31),
      I1 => A(31),
      I2 => sel,
      O => Q(31)
    );
\Q[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
      I2 => sel,
      O => Q(3)
    );
\Q[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      I2 => sel,
      O => Q(4)
    );
\Q[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      I2 => sel,
      O => Q(5)
    );
\Q[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      I2 => sel,
      O => Q(6)
    );
\Q[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      I2 => sel,
      O => Q(7)
    );
\Q[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      I2 => sel,
      O => Q(8)
    );
\Q[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      I2 => sel,
      O => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath_mux_1_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sel : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Datapath_mux_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Datapath_mux_1_0 : entity is "Datapath_mux_1_0,mux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Datapath_mux_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Datapath_mux_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Datapath_mux_1_0 : entity is "mux,Vivado 2019.1";
end Datapath_mux_1_0;

architecture STRUCTURE of Datapath_mux_1_0 is
begin
U0: entity work.Datapath_mux_1_0_mux
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      Q(31 downto 0) => Q(31 downto 0),
      sel => sel
    );
end STRUCTURE;
