-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri May  8 21:24:19 2020
-- Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {C:/Users/Kenny Khut/Desktop/CECS
--               440/Labs/lab_5/lab_5.srcs/sources_1/bd/Datapath/ip/Datapath_Control_0_5/Datapath_Control_0_5_sim_netlist.vhdl}
-- Design      : Datapath_Control_0_5
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath_Control_0_5_Control is
  port (
    RegWrite : out STD_LOGIC;
    RegDst : out STD_LOGIC;
    ALUSrc : out STD_LOGIC;
    MemtoReg : out STD_LOGIC;
    Branch : out STD_LOGIC;
    ALUop : out STD_LOGIC_VECTOR ( 1 downto 0 );
    opcode : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Datapath_Control_0_5_Control : entity is "Control";
end Datapath_Control_0_5_Control;

architecture STRUCTURE of Datapath_Control_0_5_Control is
begin
\/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => opcode(1),
      I1 => opcode(0),
      I2 => opcode(2),
      I3 => opcode(3),
      I4 => opcode(4),
      I5 => opcode(5),
      O => RegDst
    );
\ALUSrc__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00200020000D0000"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(2),
      I2 => opcode(5),
      I3 => opcode(4),
      I4 => opcode(3),
      I5 => opcode(1),
      O => ALUSrc
    );
\ALUop[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(3),
      I2 => opcode(2),
      I3 => opcode(1),
      I4 => opcode(4),
      I5 => opcode(5),
      O => ALUop(0)
    );
\ALUop[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004401"
    )
        port map (
      I0 => opcode(1),
      I1 => opcode(2),
      I2 => opcode(0),
      I3 => opcode(3),
      I4 => opcode(4),
      I5 => opcode(5),
      O => ALUop(1)
    );
\Branch__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => opcode(5),
      I1 => opcode(4),
      I2 => opcode(1),
      I3 => opcode(2),
      I4 => opcode(3),
      I5 => opcode(0),
      O => Branch
    );
\MemtoReg__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(4),
      I2 => opcode(1),
      I3 => opcode(0),
      I4 => opcode(3),
      I5 => opcode(5),
      O => MemtoReg
    );
\RegWrite__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101000000015001"
    )
        port map (
      I0 => opcode(4),
      I1 => opcode(5),
      I2 => opcode(1),
      I3 => opcode(0),
      I4 => opcode(3),
      I5 => opcode(2),
      O => RegWrite
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath_Control_0_5 is
  port (
    opcode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    RegWrite : out STD_LOGIC;
    RegDst : out STD_LOGIC;
    ALUSrc : out STD_LOGIC;
    MemtoReg : out STD_LOGIC;
    Branch : out STD_LOGIC;
    MemWrite : out STD_LOGIC;
    MemRead : out STD_LOGIC;
    ALUop : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Datapath_Control_0_5 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Datapath_Control_0_5 : entity is "Datapath_Control_0_5,Control,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Datapath_Control_0_5 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Datapath_Control_0_5 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Datapath_Control_0_5 : entity is "Control,Vivado 2019.1";
end Datapath_Control_0_5;

architecture STRUCTURE of Datapath_Control_0_5 is
  signal \^memtoreg\ : STD_LOGIC;
begin
  MemRead <= \^memtoreg\;
  MemtoReg <= \^memtoreg\;
MemWrite_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(4),
      I2 => opcode(3),
      I3 => opcode(5),
      I4 => opcode(1),
      I5 => opcode(0),
      O => MemWrite
    );
U0: entity work.Datapath_Control_0_5_Control
     port map (
      ALUSrc => ALUSrc,
      ALUop(1 downto 0) => ALUop(1 downto 0),
      Branch => Branch,
      MemtoReg => \^memtoreg\,
      RegDst => RegDst,
      RegWrite => RegWrite,
      opcode(5 downto 0) => opcode(5 downto 0)
    );
end STRUCTURE;
