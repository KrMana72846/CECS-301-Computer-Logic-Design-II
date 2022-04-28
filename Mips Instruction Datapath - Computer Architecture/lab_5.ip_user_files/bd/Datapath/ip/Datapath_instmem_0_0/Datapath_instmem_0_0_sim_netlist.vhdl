-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri May  8 21:21:02 2020
-- Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {C:/Users/Kenny Khut/Desktop/CECS
--               440/Labs/lab_5/lab_5.srcs/sources_1/bd/Datapath/ip/Datapath_instmem_0_0/Datapath_instmem_0_0_sim_netlist.vhdl}
-- Design      : Datapath_instmem_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath_instmem_0_0 is
  port (
    read_inst : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Datapath_instmem_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Datapath_instmem_0_0 : entity is "Datapath_instmem_0_0,instmem,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Datapath_instmem_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Datapath_instmem_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Datapath_instmem_0_0 : entity is "instmem,Vivado 2019.1";
end Datapath_instmem_0_0;

architecture STRUCTURE of Datapath_instmem_0_0 is
  signal \inst_out[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \inst_out[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \inst_out[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \inst_out[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \inst_out[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \inst_out[0]_INST_0_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \inst_out[16]_INST_0_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \inst_out[17]_INST_0_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \inst_out[24]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \inst_out[25]_INST_0_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \inst_out[27]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \inst_out[29]_INST_0_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \inst_out[8]_INST_0_i_2\ : label is "soft_lutpair2";
begin
\inst_out[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0000CCA"
    )
        port map (
      I0 => \inst_out[0]_INST_0_i_1_n_0\,
      I1 => \inst_out[0]_INST_0_i_2_n_0\,
      I2 => \inst_out[7]_INST_0_i_3_n_0\,
      I3 => read_inst(6),
      I4 => read_inst(7),
      O => inst_out(0)
    );
\inst_out[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0051297300A00F88"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(0),
      I3 => read_inst(1),
      I4 => read_inst(2),
      I5 => read_inst(5),
      O => \inst_out[0]_INST_0_i_1_n_0\
    );
\inst_out[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(0),
      I4 => read_inst(4),
      O => \inst_out[0]_INST_0_i_2_n_0\
    );
\inst_out[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A0CA0C"
    )
        port map (
      I0 => \inst_out[10]_INST_0_i_1_n_0\,
      I1 => \inst_out[10]_INST_0_i_2_n_0\,
      I2 => read_inst(6),
      I3 => \inst_out[23]_INST_0_i_3_n_0\,
      I4 => read_inst(7),
      O => inst_out(10)
    );
\inst_out[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18014720B2A0D070"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(1),
      I3 => read_inst(2),
      I4 => read_inst(5),
      I5 => read_inst(0),
      O => \inst_out[10]_INST_0_i_1_n_0\
    );
\inst_out[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000005405140"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(0),
      I2 => read_inst(2),
      I3 => read_inst(1),
      I4 => read_inst(3),
      I5 => read_inst(4),
      O => \inst_out[10]_INST_0_i_2_n_0\
    );
\inst_out[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A0CA0C"
    )
        port map (
      I0 => \inst_out[11]_INST_0_i_1_n_0\,
      I1 => \inst_out[11]_INST_0_i_2_n_0\,
      I2 => read_inst(6),
      I3 => \inst_out[23]_INST_0_i_3_n_0\,
      I4 => read_inst(7),
      O => inst_out(11)
    );
\inst_out[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBD8F4F4B6905070"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(1),
      I3 => read_inst(2),
      I4 => read_inst(5),
      I5 => read_inst(0),
      O => \inst_out[11]_INST_0_i_1_n_0\
    );
\inst_out[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000000005445500"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(0),
      I2 => read_inst(2),
      I3 => read_inst(1),
      I4 => read_inst(3),
      I5 => read_inst(4),
      O => \inst_out[11]_INST_0_i_2_n_0\
    );
\inst_out[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0820"
    )
        port map (
      I0 => \inst_out[12]_INST_0_i_1_n_0\,
      I1 => read_inst(6),
      I2 => \inst_out[23]_INST_0_i_3_n_0\,
      I3 => read_inst(7),
      O => inst_out(12)
    );
\inst_out[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A08422002028080"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(1),
      I3 => read_inst(2),
      I4 => read_inst(0),
      I5 => read_inst(5),
      O => \inst_out[12]_INST_0_i_1_n_0\
    );
\inst_out[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A0CA0C"
    )
        port map (
      I0 => \inst_out[13]_INST_0_i_1_n_0\,
      I1 => \inst_out[13]_INST_0_i_2_n_0\,
      I2 => read_inst(6),
      I3 => \inst_out[23]_INST_0_i_3_n_0\,
      I4 => read_inst(7),
      O => inst_out(13)
    );
\inst_out[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"467036900080A080"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(1),
      I3 => read_inst(2),
      I4 => read_inst(0),
      I5 => read_inst(5),
      O => \inst_out[13]_INST_0_i_1_n_0\
    );
\inst_out[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000001441144"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(0),
      I2 => read_inst(2),
      I3 => read_inst(1),
      I4 => read_inst(3),
      I5 => read_inst(4),
      O => \inst_out[13]_INST_0_i_2_n_0\
    );
\inst_out[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0820"
    )
        port map (
      I0 => \inst_out[14]_INST_0_i_1_n_0\,
      I1 => read_inst(6),
      I2 => \inst_out[23]_INST_0_i_3_n_0\,
      I3 => read_inst(7),
      O => inst_out(14)
    );
\inst_out[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0210060080000000"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(1),
      I3 => read_inst(2),
      I4 => read_inst(0),
      I5 => read_inst(5),
      O => \inst_out[14]_INST_0_i_1_n_0\
    );
\inst_out[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A0CA0C"
    )
        port map (
      I0 => \inst_out[15]_INST_0_i_1_n_0\,
      I1 => \inst_out[15]_INST_0_i_2_n_0\,
      I2 => read_inst(6),
      I3 => \inst_out[23]_INST_0_i_3_n_0\,
      I4 => read_inst(7),
      O => inst_out(15)
    );
\inst_out[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"52600000A2805070"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(1),
      I3 => read_inst(2),
      I4 => read_inst(5),
      I5 => read_inst(0),
      O => \inst_out[15]_INST_0_i_1_n_0\
    );
\inst_out[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000001001100"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(0),
      I2 => read_inst(2),
      I3 => read_inst(1),
      I4 => read_inst(3),
      I5 => read_inst(4),
      O => \inst_out[15]_INST_0_i_2_n_0\
    );
\inst_out[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000000C0ACCCAA"
    )
        port map (
      I0 => \inst_out[16]_INST_0_i_1_n_0\,
      I1 => \inst_out[16]_INST_0_i_2_n_0\,
      I2 => \inst_out[23]_INST_0_i_3_n_0\,
      I3 => read_inst(6),
      I4 => read_inst(0),
      I5 => read_inst(7),
      O => inst_out(16)
    );
\inst_out[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50780874A0802C0C"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(3),
      I4 => read_inst(0),
      I5 => read_inst(5),
      O => \inst_out[16]_INST_0_i_1_n_0\
    );
\inst_out[16]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(0),
      I2 => read_inst(1),
      I3 => read_inst(2),
      I4 => read_inst(4),
      O => \inst_out[16]_INST_0_i_2_n_0\
    );
\inst_out[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000000C0ACCCAA"
    )
        port map (
      I0 => \inst_out[17]_INST_0_i_1_n_0\,
      I1 => \inst_out[17]_INST_0_i_2_n_0\,
      I2 => \inst_out[23]_INST_0_i_3_n_0\,
      I3 => read_inst(6),
      I4 => read_inst(0),
      I5 => read_inst(7),
      O => inst_out(17)
    );
\inst_out[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008401500000500"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(3),
      I4 => read_inst(0),
      I5 => read_inst(5),
      O => \inst_out[17]_INST_0_i_1_n_0\
    );
\inst_out[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(0),
      I2 => read_inst(3),
      I3 => read_inst(1),
      I4 => read_inst(4),
      O => \inst_out[17]_INST_0_i_2_n_0\
    );
\inst_out[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000000C0ACCCAA"
    )
        port map (
      I0 => \inst_out[18]_INST_0_i_1_n_0\,
      I1 => \inst_out[18]_INST_0_i_2_n_0\,
      I2 => \inst_out[23]_INST_0_i_3_n_0\,
      I3 => read_inst(6),
      I4 => read_inst(0),
      I5 => read_inst(7),
      O => inst_out(18)
    );
\inst_out[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0E88110D07040CA"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(3),
      I4 => read_inst(0),
      I5 => read_inst(5),
      O => \inst_out[18]_INST_0_i_1_n_0\
    );
\inst_out[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000015104410"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(0),
      I2 => read_inst(3),
      I3 => read_inst(1),
      I4 => read_inst(2),
      I5 => read_inst(4),
      O => \inst_out[18]_INST_0_i_2_n_0\
    );
\inst_out[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000000C0ACCCAA"
    )
        port map (
      I0 => \inst_out[19]_INST_0_i_1_n_0\,
      I1 => \inst_out[19]_INST_0_i_2_n_0\,
      I2 => \inst_out[23]_INST_0_i_3_n_0\,
      I3 => read_inst(6),
      I4 => read_inst(0),
      I5 => read_inst(7),
      O => inst_out(19)
    );
\inst_out[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A4D8AFC550705F0F"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(3),
      I4 => read_inst(0),
      I5 => read_inst(5),
      O => \inst_out[19]_INST_0_i_1_n_0\
    );
\inst_out[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000014115411"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(0),
      I2 => read_inst(3),
      I3 => read_inst(1),
      I4 => read_inst(2),
      I5 => read_inst(4),
      O => \inst_out[19]_INST_0_i_2_n_0\
    );
\inst_out[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0000CCA"
    )
        port map (
      I0 => \inst_out[1]_INST_0_i_1_n_0\,
      I1 => \inst_out[1]_INST_0_i_2_n_0\,
      I2 => \inst_out[7]_INST_0_i_3_n_0\,
      I3 => read_inst(6),
      I4 => read_inst(7),
      O => inst_out(1)
    );
\inst_out[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004210109000400"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(0),
      I3 => read_inst(1),
      I4 => read_inst(2),
      I5 => read_inst(5),
      O => \inst_out[1]_INST_0_i_1_n_0\
    );
\inst_out[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000010"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(0),
      I4 => read_inst(3),
      I5 => read_inst(4),
      O => \inst_out[1]_INST_0_i_2_n_0\
    );
\inst_out[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2000080A"
    )
        port map (
      I0 => \inst_out[20]_INST_0_i_1_n_0\,
      I1 => \inst_out[23]_INST_0_i_3_n_0\,
      I2 => read_inst(6),
      I3 => read_inst(0),
      I4 => read_inst(7),
      O => inst_out(20)
    );
\inst_out[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4028A080A00000A0"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(3),
      I4 => read_inst(0),
      I5 => read_inst(5),
      O => \inst_out[20]_INST_0_i_1_n_0\
    );
\inst_out[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000000C0ACCCAA"
    )
        port map (
      I0 => \inst_out[21]_INST_0_i_1_n_0\,
      I1 => \inst_out[21]_INST_0_i_2_n_0\,
      I2 => \inst_out[23]_INST_0_i_3_n_0\,
      I3 => read_inst(6),
      I4 => read_inst(0),
      I5 => read_inst(7),
      O => inst_out(21)
    );
\inst_out[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24D8448EA0800800"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(3),
      I4 => read_inst(0),
      I5 => read_inst(5),
      O => \inst_out[21]_INST_0_i_1_n_0\
    );
\inst_out[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000015005500"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(0),
      I2 => read_inst(3),
      I3 => read_inst(1),
      I4 => read_inst(2),
      I5 => read_inst(4),
      O => \inst_out[21]_INST_0_i_2_n_0\
    );
\inst_out[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2000080A"
    )
        port map (
      I0 => \inst_out[22]_INST_0_i_1_n_0\,
      I1 => \inst_out[23]_INST_0_i_3_n_0\,
      I2 => read_inst(6),
      I3 => read_inst(0),
      I4 => read_inst(7),
      O => inst_out(22)
    );
\inst_out[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0408008500000000"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(3),
      I4 => read_inst(0),
      I5 => read_inst(5),
      O => \inst_out[22]_INST_0_i_1_n_0\
    );
\inst_out[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000000C0ACCCAA"
    )
        port map (
      I0 => \inst_out[23]_INST_0_i_1_n_0\,
      I1 => \inst_out[23]_INST_0_i_2_n_0\,
      I2 => \inst_out[23]_INST_0_i_3_n_0\,
      I3 => read_inst(6),
      I4 => read_inst(0),
      I5 => read_inst(7),
      O => inst_out(23)
    );
\inst_out[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A088058A50700000"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(3),
      I4 => read_inst(0),
      I5 => read_inst(5),
      O => \inst_out[23]_INST_0_i_1_n_0\
    );
\inst_out[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000004004400"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(0),
      I2 => read_inst(3),
      I3 => read_inst(1),
      I4 => read_inst(2),
      I5 => read_inst(4),
      O => \inst_out[23]_INST_0_i_2_n_0\
    );
\inst_out[23]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(3),
      I4 => read_inst(5),
      O => \inst_out[23]_INST_0_i_3_n_0\
    );
\inst_out[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \inst_out[24]_INST_0_i_1_n_0\,
      I1 => read_inst(6),
      I2 => read_inst(4),
      I3 => \inst_out[24]_INST_0_i_2_n_0\,
      I4 => read_inst(5),
      I5 => read_inst(7),
      O => inst_out(24)
    );
\inst_out[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"109F380020780078"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(5),
      I3 => read_inst(1),
      I4 => read_inst(2),
      I5 => read_inst(0),
      O => \inst_out[24]_INST_0_i_1_n_0\
    );
\inst_out[24]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => read_inst(1),
      I1 => read_inst(2),
      I2 => read_inst(0),
      O => \inst_out[24]_INST_0_i_2_n_0\
    );
\inst_out[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \inst_out[25]_INST_0_i_1_n_0\,
      I1 => read_inst(6),
      I2 => \inst_out[25]_INST_0_i_2_n_0\,
      I3 => read_inst(7),
      O => inst_out(25)
    );
\inst_out[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4005105000008000"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(2),
      I2 => read_inst(5),
      I3 => read_inst(1),
      I4 => read_inst(3),
      I5 => read_inst(0),
      O => \inst_out[25]_INST_0_i_1_n_0\
    );
\inst_out[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(1),
      I2 => read_inst(3),
      I3 => read_inst(0),
      I4 => read_inst(4),
      O => \inst_out[25]_INST_0_i_2_n_0\
    );
\inst_out[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \inst_out[26]_INST_0_i_1_n_0\,
      I1 => read_inst(6),
      I2 => \inst_out[26]_INST_0_i_2_n_0\,
      I3 => read_inst(7),
      O => inst_out(26)
    );
\inst_out[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"871020000242A7D7"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(5),
      I3 => read_inst(2),
      I4 => read_inst(0),
      I5 => read_inst(1),
      O => \inst_out[26]_INST_0_i_1_n_0\
    );
\inst_out[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044005055"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(2),
      I2 => read_inst(3),
      I3 => read_inst(0),
      I4 => read_inst(1),
      I5 => read_inst(4),
      O => \inst_out[26]_INST_0_i_2_n_0\
    );
\inst_out[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \inst_out[27]_INST_0_i_1_n_0\,
      I1 => read_inst(6),
      I2 => read_inst(4),
      I3 => \inst_out[27]_INST_0_i_2_n_0\,
      I4 => read_inst(5),
      I5 => read_inst(7),
      O => inst_out(27)
    );
\inst_out[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5C04080FF5FB54F"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(2),
      I2 => read_inst(5),
      I3 => read_inst(3),
      I4 => read_inst(0),
      I5 => read_inst(1),
      O => \inst_out[27]_INST_0_i_1_n_0\
    );
\inst_out[27]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => read_inst(3),
      I1 => read_inst(0),
      I2 => read_inst(1),
      O => \inst_out[27]_INST_0_i_2_n_0\
    );
\inst_out[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => read_inst(6),
      I1 => \inst_out[28]_INST_0_i_1_n_0\,
      I2 => read_inst(7),
      O => inst_out(28)
    );
\inst_out[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88A0002300882000"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(0),
      I2 => read_inst(2),
      I3 => read_inst(3),
      I4 => read_inst(1),
      I5 => read_inst(5),
      O => \inst_out[28]_INST_0_i_1_n_0\
    );
\inst_out[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \inst_out[29]_INST_0_i_1_n_0\,
      I1 => read_inst(6),
      I2 => \inst_out[29]_INST_0_i_2_n_0\,
      I3 => read_inst(7),
      O => inst_out(29)
    );
\inst_out[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"484E48B5008000A0"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(2),
      I2 => read_inst(3),
      I3 => read_inst(1),
      I4 => read_inst(0),
      I5 => read_inst(5),
      O => \inst_out[29]_INST_0_i_1_n_0\
    );
\inst_out[29]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0041"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(0),
      I2 => read_inst(1),
      I3 => read_inst(4),
      O => \inst_out[29]_INST_0_i_2_n_0\
    );
\inst_out[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0000CCA"
    )
        port map (
      I0 => \inst_out[2]_INST_0_i_1_n_0\,
      I1 => \inst_out[2]_INST_0_i_2_n_0\,
      I2 => \inst_out[7]_INST_0_i_3_n_0\,
      I3 => read_inst(6),
      I4 => read_inst(7),
      O => inst_out(2)
    );
\inst_out[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01B820A104D70270"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(0),
      I3 => read_inst(1),
      I4 => read_inst(2),
      I5 => read_inst(5),
      O => \inst_out[2]_INST_0_i_1_n_0\
    );
\inst_out[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000001140544"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(0),
      I4 => read_inst(3),
      I5 => read_inst(4),
      O => \inst_out[2]_INST_0_i_2_n_0\
    );
\inst_out[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => read_inst(6),
      I1 => \inst_out[30]_INST_0_i_1_n_0\,
      I2 => read_inst(7),
      O => inst_out(30)
    );
\inst_out[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0901480000000000"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(1),
      I2 => read_inst(3),
      I3 => read_inst(2),
      I4 => read_inst(0),
      I5 => read_inst(5),
      O => \inst_out[30]_INST_0_i_1_n_0\
    );
\inst_out[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \inst_out[31]_INST_0_i_1_n_0\,
      I1 => read_inst(6),
      I2 => read_inst(4),
      I3 => \inst_out[31]_INST_0_i_2_n_0\,
      I4 => read_inst(5),
      I5 => read_inst(7),
      O => inst_out(31)
    );
\inst_out[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08003C000800C03F"
    )
        port map (
      I0 => read_inst(2),
      I1 => read_inst(4),
      I2 => read_inst(3),
      I3 => read_inst(5),
      I4 => read_inst(1),
      I5 => read_inst(0),
      O => \inst_out[31]_INST_0_i_1_n_0\
    );
\inst_out[31]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_inst(1),
      I1 => read_inst(0),
      O => \inst_out[31]_INST_0_i_2_n_0\
    );
\inst_out[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0000CCA"
    )
        port map (
      I0 => \inst_out[3]_INST_0_i_1_n_0\,
      I1 => \inst_out[3]_INST_0_i_2_n_0\,
      I2 => \inst_out[7]_INST_0_i_3_n_0\,
      I3 => read_inst(6),
      I4 => read_inst(7),
      O => inst_out(3)
    );
\inst_out[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BBB6D980F540F74"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(0),
      I3 => read_inst(1),
      I4 => read_inst(2),
      I5 => read_inst(5),
      O => \inst_out[3]_INST_0_i_1_n_0\
    );
\inst_out[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880000001150550"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(0),
      I4 => read_inst(3),
      I5 => read_inst(4),
      O => \inst_out[3]_INST_0_i_2_n_0\
    );
\inst_out[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8002"
    )
        port map (
      I0 => \inst_out[4]_INST_0_i_1_n_0\,
      I1 => \inst_out[7]_INST_0_i_3_n_0\,
      I2 => read_inst(6),
      I3 => read_inst(7),
      O => inst_out(4)
    );
\inst_out[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004A202800820082"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(0),
      I3 => read_inst(1),
      I4 => read_inst(2),
      I5 => read_inst(5),
      O => \inst_out[4]_INST_0_i_1_n_0\
    );
\inst_out[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0000CCA"
    )
        port map (
      I0 => \inst_out[5]_INST_0_i_1_n_0\,
      I1 => \inst_out[5]_INST_0_i_2_n_0\,
      I2 => \inst_out[7]_INST_0_i_3_n_0\,
      I3 => read_inst(6),
      I4 => read_inst(7),
      O => inst_out(5)
    );
\inst_out[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0436679000A00880"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(0),
      I3 => read_inst(1),
      I4 => read_inst(2),
      I5 => read_inst(5),
      O => \inst_out[5]_INST_0_i_1_n_0\
    );
\inst_out[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000001050505"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(0),
      I4 => read_inst(3),
      I5 => read_inst(4),
      O => \inst_out[5]_INST_0_i_2_n_0\
    );
\inst_out[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8002"
    )
        port map (
      I0 => \inst_out[6]_INST_0_i_1_n_0\,
      I1 => \inst_out[7]_INST_0_i_3_n_0\,
      I2 => read_inst(6),
      I3 => read_inst(7),
      O => inst_out(6)
    );
\inst_out[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002610008000000"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(0),
      I3 => read_inst(1),
      I4 => read_inst(2),
      I5 => read_inst(5),
      O => \inst_out[6]_INST_0_i_1_n_0\
    );
\inst_out[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0000CCA"
    )
        port map (
      I0 => \inst_out[7]_INST_0_i_1_n_0\,
      I1 => \inst_out[7]_INST_0_i_2_n_0\,
      I2 => \inst_out[7]_INST_0_i_3_n_0\,
      I3 => read_inst(6),
      I4 => read_inst(7),
      O => inst_out(7)
    );
\inst_out[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05A2268000500070"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(0),
      I3 => read_inst(1),
      I4 => read_inst(2),
      I5 => read_inst(5),
      O => \inst_out[7]_INST_0_i_1_n_0\
    );
\inst_out[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000001000500"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(2),
      I2 => read_inst(1),
      I3 => read_inst(0),
      I4 => read_inst(3),
      I5 => read_inst(4),
      O => \inst_out[7]_INST_0_i_2_n_0\
    );
\inst_out[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800000000000"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(4),
      I2 => read_inst(2),
      I3 => read_inst(1),
      I4 => read_inst(0),
      I5 => read_inst(3),
      O => \inst_out[7]_INST_0_i_3_n_0\
    );
\inst_out[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A0CA0C"
    )
        port map (
      I0 => \inst_out[8]_INST_0_i_1_n_0\,
      I1 => \inst_out[8]_INST_0_i_2_n_0\,
      I2 => read_inst(6),
      I3 => \inst_out[23]_INST_0_i_3_n_0\,
      I4 => read_inst(7),
      O => inst_out(8)
    );
\inst_out[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"019300F85270A080"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(1),
      I3 => read_inst(2),
      I4 => read_inst(5),
      I5 => read_inst(0),
      O => \inst_out[8]_INST_0_i_1_n_0\
    );
\inst_out[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(0),
      I2 => read_inst(2),
      I3 => read_inst(1),
      I4 => read_inst(4),
      O => \inst_out[8]_INST_0_i_2_n_0\
    );
\inst_out[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A0CA0C"
    )
        port map (
      I0 => \inst_out[9]_INST_0_i_1_n_0\,
      I1 => \inst_out[9]_INST_0_i_2_n_0\,
      I2 => read_inst(6),
      I3 => \inst_out[23]_INST_0_i_3_n_0\,
      I4 => read_inst(7),
      O => inst_out(9)
    );
\inst_out[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0411904002000000"
    )
        port map (
      I0 => read_inst(4),
      I1 => read_inst(3),
      I2 => read_inst(1),
      I3 => read_inst(2),
      I4 => read_inst(5),
      I5 => read_inst(0),
      O => \inst_out[9]_INST_0_i_1_n_0\
    );
\inst_out[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000400"
    )
        port map (
      I0 => read_inst(5),
      I1 => read_inst(0),
      I2 => read_inst(2),
      I3 => read_inst(1),
      I4 => read_inst(3),
      I5 => read_inst(4),
      O => \inst_out[9]_INST_0_i_2_n_0\
    );
end STRUCTURE;
