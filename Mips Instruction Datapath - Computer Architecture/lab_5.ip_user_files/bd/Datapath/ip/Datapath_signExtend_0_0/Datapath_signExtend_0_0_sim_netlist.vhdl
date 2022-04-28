-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri May  8 21:22:14 2020
-- Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {C:/Users/Kenny Khut/Desktop/CECS
--               440/Labs/lab_5/lab_5.srcs/sources_1/bd/Datapath/ip/Datapath_signExtend_0_0/Datapath_signExtend_0_0_sim_netlist.vhdl}
-- Design      : Datapath_signExtend_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath_signExtend_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Datapath_signExtend_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Datapath_signExtend_0_0 : entity is "Datapath_signExtend_0_0,signExtend,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Datapath_signExtend_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Datapath_signExtend_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Datapath_signExtend_0_0 : entity is "signExtend,Vivado 2019.1";
end Datapath_signExtend_0_0;

architecture STRUCTURE of Datapath_signExtend_0_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  Q(31) <= \^d\(15);
  Q(30) <= \^d\(15);
  Q(29) <= \^d\(15);
  Q(28) <= \^d\(15);
  Q(27) <= \^d\(15);
  Q(26) <= \^d\(15);
  Q(25) <= \^d\(15);
  Q(24) <= \^d\(15);
  Q(23) <= \^d\(15);
  Q(22) <= \^d\(15);
  Q(21) <= \^d\(15);
  Q(20) <= \^d\(15);
  Q(19) <= \^d\(15);
  Q(18) <= \^d\(15);
  Q(17) <= \^d\(15);
  Q(16) <= \^d\(15);
  Q(15 downto 0) <= \^d\(15 downto 0);
  \^d\(15 downto 0) <= D(15 downto 0);
end STRUCTURE;
