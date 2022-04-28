-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri May  8 21:23:32 2020
-- Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {C:/Users/Kenny Khut/Desktop/CECS
--               440/Labs/lab_5/lab_5.srcs/sources_1/bd/Datapath/ip/Datapath_mux_5bit_0_0/Datapath_mux_5bit_0_0_sim_netlist.vhdl}
-- Design      : Datapath_mux_5bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath_mux_5bit_0_0_mux_5bit is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    B : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Sel : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Datapath_mux_5bit_0_0_mux_5bit : entity is "mux_5bit";
end Datapath_mux_5bit_0_0_mux_5bit;

architecture STRUCTURE of Datapath_mux_5bit_0_0_mux_5bit is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q[3]_INST_0\ : label is "soft_lutpair1";
begin
\Q[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(0),
      I1 => Sel,
      I2 => A(0),
      O => Q(0)
    );
\Q[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(1),
      I1 => Sel,
      I2 => A(1),
      O => Q(1)
    );
\Q[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(2),
      I1 => Sel,
      I2 => A(2),
      O => Q(2)
    );
\Q[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(3),
      I1 => Sel,
      I2 => A(3),
      O => Q(3)
    );
\Q[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(4),
      I1 => Sel,
      I2 => A(4),
      O => Q(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath_mux_5bit_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 4 downto 0 );
    B : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Sel : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Datapath_mux_5bit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Datapath_mux_5bit_0_0 : entity is "Datapath_mux_5bit_0_0,mux_5bit,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Datapath_mux_5bit_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Datapath_mux_5bit_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Datapath_mux_5bit_0_0 : entity is "mux_5bit,Vivado 2019.1";
end Datapath_mux_5bit_0_0;

architecture STRUCTURE of Datapath_mux_5bit_0_0 is
begin
U0: entity work.Datapath_mux_5bit_0_0_mux_5bit
     port map (
      A(4 downto 0) => A(4 downto 0),
      B(4 downto 0) => B(4 downto 0),
      Q(4 downto 0) => Q(4 downto 0),
      Sel => Sel
    );
end STRUCTURE;
