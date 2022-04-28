-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri May  8 21:21:02 2020
-- Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {C:/Users/Kenny Khut/Desktop/CECS
--               440/Labs/lab_5/lab_5.srcs/sources_1/bd/Datapath/ip/Datapath_PC_0_0/Datapath_PC_0_0_sim_netlist.vhdl}
-- Design      : Datapath_PC_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath_PC_0_0_PC is
  port (
    PCout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PCin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Clock : in STD_LOGIC;
    Reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Datapath_PC_0_0_PC : entity is "PC";
end Datapath_PC_0_0_PC;

architecture STRUCTURE of Datapath_PC_0_0_PC is
begin
\Q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(0),
      Q => PCout(0)
    );
\Q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(10),
      Q => PCout(10)
    );
\Q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(11),
      Q => PCout(11)
    );
\Q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(12),
      Q => PCout(12)
    );
\Q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(13),
      Q => PCout(13)
    );
\Q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(14),
      Q => PCout(14)
    );
\Q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(15),
      Q => PCout(15)
    );
\Q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(16),
      Q => PCout(16)
    );
\Q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(17),
      Q => PCout(17)
    );
\Q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(18),
      Q => PCout(18)
    );
\Q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(19),
      Q => PCout(19)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(1),
      Q => PCout(1)
    );
\Q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(20),
      Q => PCout(20)
    );
\Q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(21),
      Q => PCout(21)
    );
\Q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(22),
      Q => PCout(22)
    );
\Q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(23),
      Q => PCout(23)
    );
\Q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(24),
      Q => PCout(24)
    );
\Q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(25),
      Q => PCout(25)
    );
\Q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(26),
      Q => PCout(26)
    );
\Q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(27),
      Q => PCout(27)
    );
\Q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(28),
      Q => PCout(28)
    );
\Q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(29),
      Q => PCout(29)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(2),
      Q => PCout(2)
    );
\Q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(30),
      Q => PCout(30)
    );
\Q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(31),
      Q => PCout(31)
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(3),
      Q => PCout(3)
    );
\Q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(4),
      Q => PCout(4)
    );
\Q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(5),
      Q => PCout(5)
    );
\Q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(6),
      Q => PCout(6)
    );
\Q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(7),
      Q => PCout(7)
    );
\Q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(8),
      Q => PCout(8)
    );
\Q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => Clock,
      CE => '1',
      CLR => Reset,
      D => PCin(9),
      Q => PCout(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath_PC_0_0 is
  port (
    Clock : in STD_LOGIC;
    Reset : in STD_LOGIC;
    PCin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PCout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Datapath_PC_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Datapath_PC_0_0 : entity is "Datapath_PC_0_0,PC,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Datapath_PC_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Datapath_PC_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Datapath_PC_0_0 : entity is "PC,Vivado 2019.1";
end Datapath_PC_0_0;

architecture STRUCTURE of Datapath_PC_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of Clock : signal is "xilinx.com:signal:clock:1.0 Clock CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clock : signal is "XIL_INTERFACENAME Clock, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Datapath_PC_0_0_PC
     port map (
      Clock => Clock,
      PCin(31 downto 0) => PCin(31 downto 0),
      PCout(31 downto 0) => PCout(31 downto 0),
      Reset => Reset
    );
end STRUCTURE;
