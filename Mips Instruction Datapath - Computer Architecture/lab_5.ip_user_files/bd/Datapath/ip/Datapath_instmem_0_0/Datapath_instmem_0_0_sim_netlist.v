// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri May  8 21:21:02 2020
// Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/Kenny Khut/Desktop/CECS
//               440/Labs/lab_5/lab_5.srcs/sources_1/bd/Datapath/ip/Datapath_instmem_0_0/Datapath_instmem_0_0_sim_netlist.v}
// Design      : Datapath_instmem_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Datapath_instmem_0_0,instmem,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "instmem,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Datapath_instmem_0_0
   (read_inst,
    inst_out);
  input [31:0]read_inst;
  output [31:0]inst_out;

  wire [31:0]inst_out;
  wire \inst_out[0]_INST_0_i_1_n_0 ;
  wire \inst_out[0]_INST_0_i_2_n_0 ;
  wire \inst_out[10]_INST_0_i_1_n_0 ;
  wire \inst_out[10]_INST_0_i_2_n_0 ;
  wire \inst_out[11]_INST_0_i_1_n_0 ;
  wire \inst_out[11]_INST_0_i_2_n_0 ;
  wire \inst_out[12]_INST_0_i_1_n_0 ;
  wire \inst_out[13]_INST_0_i_1_n_0 ;
  wire \inst_out[13]_INST_0_i_2_n_0 ;
  wire \inst_out[14]_INST_0_i_1_n_0 ;
  wire \inst_out[15]_INST_0_i_1_n_0 ;
  wire \inst_out[15]_INST_0_i_2_n_0 ;
  wire \inst_out[16]_INST_0_i_1_n_0 ;
  wire \inst_out[16]_INST_0_i_2_n_0 ;
  wire \inst_out[17]_INST_0_i_1_n_0 ;
  wire \inst_out[17]_INST_0_i_2_n_0 ;
  wire \inst_out[18]_INST_0_i_1_n_0 ;
  wire \inst_out[18]_INST_0_i_2_n_0 ;
  wire \inst_out[19]_INST_0_i_1_n_0 ;
  wire \inst_out[19]_INST_0_i_2_n_0 ;
  wire \inst_out[1]_INST_0_i_1_n_0 ;
  wire \inst_out[1]_INST_0_i_2_n_0 ;
  wire \inst_out[20]_INST_0_i_1_n_0 ;
  wire \inst_out[21]_INST_0_i_1_n_0 ;
  wire \inst_out[21]_INST_0_i_2_n_0 ;
  wire \inst_out[22]_INST_0_i_1_n_0 ;
  wire \inst_out[23]_INST_0_i_1_n_0 ;
  wire \inst_out[23]_INST_0_i_2_n_0 ;
  wire \inst_out[23]_INST_0_i_3_n_0 ;
  wire \inst_out[24]_INST_0_i_1_n_0 ;
  wire \inst_out[24]_INST_0_i_2_n_0 ;
  wire \inst_out[25]_INST_0_i_1_n_0 ;
  wire \inst_out[25]_INST_0_i_2_n_0 ;
  wire \inst_out[26]_INST_0_i_1_n_0 ;
  wire \inst_out[26]_INST_0_i_2_n_0 ;
  wire \inst_out[27]_INST_0_i_1_n_0 ;
  wire \inst_out[27]_INST_0_i_2_n_0 ;
  wire \inst_out[28]_INST_0_i_1_n_0 ;
  wire \inst_out[29]_INST_0_i_1_n_0 ;
  wire \inst_out[29]_INST_0_i_2_n_0 ;
  wire \inst_out[2]_INST_0_i_1_n_0 ;
  wire \inst_out[2]_INST_0_i_2_n_0 ;
  wire \inst_out[30]_INST_0_i_1_n_0 ;
  wire \inst_out[31]_INST_0_i_1_n_0 ;
  wire \inst_out[31]_INST_0_i_2_n_0 ;
  wire \inst_out[3]_INST_0_i_1_n_0 ;
  wire \inst_out[3]_INST_0_i_2_n_0 ;
  wire \inst_out[4]_INST_0_i_1_n_0 ;
  wire \inst_out[5]_INST_0_i_1_n_0 ;
  wire \inst_out[5]_INST_0_i_2_n_0 ;
  wire \inst_out[6]_INST_0_i_1_n_0 ;
  wire \inst_out[7]_INST_0_i_1_n_0 ;
  wire \inst_out[7]_INST_0_i_2_n_0 ;
  wire \inst_out[7]_INST_0_i_3_n_0 ;
  wire \inst_out[8]_INST_0_i_1_n_0 ;
  wire \inst_out[8]_INST_0_i_2_n_0 ;
  wire \inst_out[9]_INST_0_i_1_n_0 ;
  wire \inst_out[9]_INST_0_i_2_n_0 ;
  wire [31:0]read_inst;

  LUT5 #(
    .INIT(32'hA0000CCA)) 
    \inst_out[0]_INST_0 
       (.I0(\inst_out[0]_INST_0_i_1_n_0 ),
        .I1(\inst_out[0]_INST_0_i_2_n_0 ),
        .I2(\inst_out[7]_INST_0_i_3_n_0 ),
        .I3(read_inst[6]),
        .I4(read_inst[7]),
        .O(inst_out[0]));
  LUT6 #(
    .INIT(64'h0051297300A00F88)) 
    \inst_out[0]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[0]),
        .I3(read_inst[1]),
        .I4(read_inst[2]),
        .I5(read_inst[5]),
        .O(\inst_out[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \inst_out[0]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[0]),
        .I4(read_inst[4]),
        .O(\inst_out[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00A0CA0C)) 
    \inst_out[10]_INST_0 
       (.I0(\inst_out[10]_INST_0_i_1_n_0 ),
        .I1(\inst_out[10]_INST_0_i_2_n_0 ),
        .I2(read_inst[6]),
        .I3(\inst_out[23]_INST_0_i_3_n_0 ),
        .I4(read_inst[7]),
        .O(inst_out[10]));
  LUT6 #(
    .INIT(64'h18014720B2A0D070)) 
    \inst_out[10]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[1]),
        .I3(read_inst[2]),
        .I4(read_inst[5]),
        .I5(read_inst[0]),
        .O(\inst_out[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000005405140)) 
    \inst_out[10]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[0]),
        .I2(read_inst[2]),
        .I3(read_inst[1]),
        .I4(read_inst[3]),
        .I5(read_inst[4]),
        .O(\inst_out[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00A0CA0C)) 
    \inst_out[11]_INST_0 
       (.I0(\inst_out[11]_INST_0_i_1_n_0 ),
        .I1(\inst_out[11]_INST_0_i_2_n_0 ),
        .I2(read_inst[6]),
        .I3(\inst_out[23]_INST_0_i_3_n_0 ),
        .I4(read_inst[7]),
        .O(inst_out[11]));
  LUT6 #(
    .INIT(64'hBBD8F4F4B6905070)) 
    \inst_out[11]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[1]),
        .I3(read_inst[2]),
        .I4(read_inst[5]),
        .I5(read_inst[0]),
        .O(\inst_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA000000005445500)) 
    \inst_out[11]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[0]),
        .I2(read_inst[2]),
        .I3(read_inst[1]),
        .I4(read_inst[3]),
        .I5(read_inst[4]),
        .O(\inst_out[11]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0820)) 
    \inst_out[12]_INST_0 
       (.I0(\inst_out[12]_INST_0_i_1_n_0 ),
        .I1(read_inst[6]),
        .I2(\inst_out[23]_INST_0_i_3_n_0 ),
        .I3(read_inst[7]),
        .O(inst_out[12]));
  LUT6 #(
    .INIT(64'h0A08422002028080)) 
    \inst_out[12]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[1]),
        .I3(read_inst[2]),
        .I4(read_inst[0]),
        .I5(read_inst[5]),
        .O(\inst_out[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A0CA0C)) 
    \inst_out[13]_INST_0 
       (.I0(\inst_out[13]_INST_0_i_1_n_0 ),
        .I1(\inst_out[13]_INST_0_i_2_n_0 ),
        .I2(read_inst[6]),
        .I3(\inst_out[23]_INST_0_i_3_n_0 ),
        .I4(read_inst[7]),
        .O(inst_out[13]));
  LUT6 #(
    .INIT(64'h467036900080A080)) 
    \inst_out[13]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[1]),
        .I3(read_inst[2]),
        .I4(read_inst[0]),
        .I5(read_inst[5]),
        .O(\inst_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000001441144)) 
    \inst_out[13]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[0]),
        .I2(read_inst[2]),
        .I3(read_inst[1]),
        .I4(read_inst[3]),
        .I5(read_inst[4]),
        .O(\inst_out[13]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0820)) 
    \inst_out[14]_INST_0 
       (.I0(\inst_out[14]_INST_0_i_1_n_0 ),
        .I1(read_inst[6]),
        .I2(\inst_out[23]_INST_0_i_3_n_0 ),
        .I3(read_inst[7]),
        .O(inst_out[14]));
  LUT6 #(
    .INIT(64'h0210060080000000)) 
    \inst_out[14]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[1]),
        .I3(read_inst[2]),
        .I4(read_inst[0]),
        .I5(read_inst[5]),
        .O(\inst_out[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A0CA0C)) 
    \inst_out[15]_INST_0 
       (.I0(\inst_out[15]_INST_0_i_1_n_0 ),
        .I1(\inst_out[15]_INST_0_i_2_n_0 ),
        .I2(read_inst[6]),
        .I3(\inst_out[23]_INST_0_i_3_n_0 ),
        .I4(read_inst[7]),
        .O(inst_out[15]));
  LUT6 #(
    .INIT(64'h52600000A2805070)) 
    \inst_out[15]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[1]),
        .I3(read_inst[2]),
        .I4(read_inst[5]),
        .I5(read_inst[0]),
        .O(\inst_out[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000001001100)) 
    \inst_out[15]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[0]),
        .I2(read_inst[2]),
        .I3(read_inst[1]),
        .I4(read_inst[3]),
        .I5(read_inst[4]),
        .O(\inst_out[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000000C0ACCCAA)) 
    \inst_out[16]_INST_0 
       (.I0(\inst_out[16]_INST_0_i_1_n_0 ),
        .I1(\inst_out[16]_INST_0_i_2_n_0 ),
        .I2(\inst_out[23]_INST_0_i_3_n_0 ),
        .I3(read_inst[6]),
        .I4(read_inst[0]),
        .I5(read_inst[7]),
        .O(inst_out[16]));
  LUT6 #(
    .INIT(64'h50780874A0802C0C)) 
    \inst_out[16]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[3]),
        .I4(read_inst[0]),
        .I5(read_inst[5]),
        .O(\inst_out[16]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \inst_out[16]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[0]),
        .I2(read_inst[1]),
        .I3(read_inst[2]),
        .I4(read_inst[4]),
        .O(\inst_out[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000000C0ACCCAA)) 
    \inst_out[17]_INST_0 
       (.I0(\inst_out[17]_INST_0_i_1_n_0 ),
        .I1(\inst_out[17]_INST_0_i_2_n_0 ),
        .I2(\inst_out[23]_INST_0_i_3_n_0 ),
        .I3(read_inst[6]),
        .I4(read_inst[0]),
        .I5(read_inst[7]),
        .O(inst_out[17]));
  LUT6 #(
    .INIT(64'h0008401500000500)) 
    \inst_out[17]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[3]),
        .I4(read_inst[0]),
        .I5(read_inst[5]),
        .O(\inst_out[17]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \inst_out[17]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[0]),
        .I2(read_inst[3]),
        .I3(read_inst[1]),
        .I4(read_inst[4]),
        .O(\inst_out[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000000C0ACCCAA)) 
    \inst_out[18]_INST_0 
       (.I0(\inst_out[18]_INST_0_i_1_n_0 ),
        .I1(\inst_out[18]_INST_0_i_2_n_0 ),
        .I2(\inst_out[23]_INST_0_i_3_n_0 ),
        .I3(read_inst[6]),
        .I4(read_inst[0]),
        .I5(read_inst[7]),
        .O(inst_out[18]));
  LUT6 #(
    .INIT(64'hA0E88110D07040CA)) 
    \inst_out[18]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[3]),
        .I4(read_inst[0]),
        .I5(read_inst[5]),
        .O(\inst_out[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000015104410)) 
    \inst_out[18]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[0]),
        .I2(read_inst[3]),
        .I3(read_inst[1]),
        .I4(read_inst[2]),
        .I5(read_inst[4]),
        .O(\inst_out[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A000000C0ACCCAA)) 
    \inst_out[19]_INST_0 
       (.I0(\inst_out[19]_INST_0_i_1_n_0 ),
        .I1(\inst_out[19]_INST_0_i_2_n_0 ),
        .I2(\inst_out[23]_INST_0_i_3_n_0 ),
        .I3(read_inst[6]),
        .I4(read_inst[0]),
        .I5(read_inst[7]),
        .O(inst_out[19]));
  LUT6 #(
    .INIT(64'hA4D8AFC550705F0F)) 
    \inst_out[19]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[3]),
        .I4(read_inst[0]),
        .I5(read_inst[5]),
        .O(\inst_out[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000014115411)) 
    \inst_out[19]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[0]),
        .I2(read_inst[3]),
        .I3(read_inst[1]),
        .I4(read_inst[2]),
        .I5(read_inst[4]),
        .O(\inst_out[19]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0000CCA)) 
    \inst_out[1]_INST_0 
       (.I0(\inst_out[1]_INST_0_i_1_n_0 ),
        .I1(\inst_out[1]_INST_0_i_2_n_0 ),
        .I2(\inst_out[7]_INST_0_i_3_n_0 ),
        .I3(read_inst[6]),
        .I4(read_inst[7]),
        .O(inst_out[1]));
  LUT6 #(
    .INIT(64'h0004210109000400)) 
    \inst_out[1]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[0]),
        .I3(read_inst[1]),
        .I4(read_inst[2]),
        .I5(read_inst[5]),
        .O(\inst_out[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000010)) 
    \inst_out[1]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[0]),
        .I4(read_inst[3]),
        .I5(read_inst[4]),
        .O(\inst_out[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h2000080A)) 
    \inst_out[20]_INST_0 
       (.I0(\inst_out[20]_INST_0_i_1_n_0 ),
        .I1(\inst_out[23]_INST_0_i_3_n_0 ),
        .I2(read_inst[6]),
        .I3(read_inst[0]),
        .I4(read_inst[7]),
        .O(inst_out[20]));
  LUT6 #(
    .INIT(64'h4028A080A00000A0)) 
    \inst_out[20]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[3]),
        .I4(read_inst[0]),
        .I5(read_inst[5]),
        .O(\inst_out[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A000000C0ACCCAA)) 
    \inst_out[21]_INST_0 
       (.I0(\inst_out[21]_INST_0_i_1_n_0 ),
        .I1(\inst_out[21]_INST_0_i_2_n_0 ),
        .I2(\inst_out[23]_INST_0_i_3_n_0 ),
        .I3(read_inst[6]),
        .I4(read_inst[0]),
        .I5(read_inst[7]),
        .O(inst_out[21]));
  LUT6 #(
    .INIT(64'h24D8448EA0800800)) 
    \inst_out[21]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[3]),
        .I4(read_inst[0]),
        .I5(read_inst[5]),
        .O(\inst_out[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000015005500)) 
    \inst_out[21]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[0]),
        .I2(read_inst[3]),
        .I3(read_inst[1]),
        .I4(read_inst[2]),
        .I5(read_inst[4]),
        .O(\inst_out[21]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h2000080A)) 
    \inst_out[22]_INST_0 
       (.I0(\inst_out[22]_INST_0_i_1_n_0 ),
        .I1(\inst_out[23]_INST_0_i_3_n_0 ),
        .I2(read_inst[6]),
        .I3(read_inst[0]),
        .I4(read_inst[7]),
        .O(inst_out[22]));
  LUT6 #(
    .INIT(64'h0408008500000000)) 
    \inst_out[22]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[3]),
        .I4(read_inst[0]),
        .I5(read_inst[5]),
        .O(\inst_out[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A000000C0ACCCAA)) 
    \inst_out[23]_INST_0 
       (.I0(\inst_out[23]_INST_0_i_1_n_0 ),
        .I1(\inst_out[23]_INST_0_i_2_n_0 ),
        .I2(\inst_out[23]_INST_0_i_3_n_0 ),
        .I3(read_inst[6]),
        .I4(read_inst[0]),
        .I5(read_inst[7]),
        .O(inst_out[23]));
  LUT6 #(
    .INIT(64'hA088058A50700000)) 
    \inst_out[23]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[3]),
        .I4(read_inst[0]),
        .I5(read_inst[5]),
        .O(\inst_out[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000004004400)) 
    \inst_out[23]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[0]),
        .I2(read_inst[3]),
        .I3(read_inst[1]),
        .I4(read_inst[2]),
        .I5(read_inst[4]),
        .O(\inst_out[23]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \inst_out[23]_INST_0_i_3 
       (.I0(read_inst[4]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[3]),
        .I4(read_inst[5]),
        .O(\inst_out[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \inst_out[24]_INST_0 
       (.I0(\inst_out[24]_INST_0_i_1_n_0 ),
        .I1(read_inst[6]),
        .I2(read_inst[4]),
        .I3(\inst_out[24]_INST_0_i_2_n_0 ),
        .I4(read_inst[5]),
        .I5(read_inst[7]),
        .O(inst_out[24]));
  LUT6 #(
    .INIT(64'h109F380020780078)) 
    \inst_out[24]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[5]),
        .I3(read_inst[1]),
        .I4(read_inst[2]),
        .I5(read_inst[0]),
        .O(\inst_out[24]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \inst_out[24]_INST_0_i_2 
       (.I0(read_inst[1]),
        .I1(read_inst[2]),
        .I2(read_inst[0]),
        .O(\inst_out[24]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \inst_out[25]_INST_0 
       (.I0(\inst_out[25]_INST_0_i_1_n_0 ),
        .I1(read_inst[6]),
        .I2(\inst_out[25]_INST_0_i_2_n_0 ),
        .I3(read_inst[7]),
        .O(inst_out[25]));
  LUT6 #(
    .INIT(64'h4005105000008000)) 
    \inst_out[25]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[2]),
        .I2(read_inst[5]),
        .I3(read_inst[1]),
        .I4(read_inst[3]),
        .I5(read_inst[0]),
        .O(\inst_out[25]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \inst_out[25]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[1]),
        .I2(read_inst[3]),
        .I3(read_inst[0]),
        .I4(read_inst[4]),
        .O(\inst_out[25]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \inst_out[26]_INST_0 
       (.I0(\inst_out[26]_INST_0_i_1_n_0 ),
        .I1(read_inst[6]),
        .I2(\inst_out[26]_INST_0_i_2_n_0 ),
        .I3(read_inst[7]),
        .O(inst_out[26]));
  LUT6 #(
    .INIT(64'h871020000242A7D7)) 
    \inst_out[26]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[5]),
        .I3(read_inst[2]),
        .I4(read_inst[0]),
        .I5(read_inst[1]),
        .O(\inst_out[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044005055)) 
    \inst_out[26]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[2]),
        .I2(read_inst[3]),
        .I3(read_inst[0]),
        .I4(read_inst[1]),
        .I5(read_inst[4]),
        .O(\inst_out[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \inst_out[27]_INST_0 
       (.I0(\inst_out[27]_INST_0_i_1_n_0 ),
        .I1(read_inst[6]),
        .I2(read_inst[4]),
        .I3(\inst_out[27]_INST_0_i_2_n_0 ),
        .I4(read_inst[5]),
        .I5(read_inst[7]),
        .O(inst_out[27]));
  LUT6 #(
    .INIT(64'hA5C04080FF5FB54F)) 
    \inst_out[27]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[2]),
        .I2(read_inst[5]),
        .I3(read_inst[3]),
        .I4(read_inst[0]),
        .I5(read_inst[1]),
        .O(\inst_out[27]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \inst_out[27]_INST_0_i_2 
       (.I0(read_inst[3]),
        .I1(read_inst[0]),
        .I2(read_inst[1]),
        .O(\inst_out[27]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \inst_out[28]_INST_0 
       (.I0(read_inst[6]),
        .I1(\inst_out[28]_INST_0_i_1_n_0 ),
        .I2(read_inst[7]),
        .O(inst_out[28]));
  LUT6 #(
    .INIT(64'h88A0002300882000)) 
    \inst_out[28]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[0]),
        .I2(read_inst[2]),
        .I3(read_inst[3]),
        .I4(read_inst[1]),
        .I5(read_inst[5]),
        .O(\inst_out[28]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \inst_out[29]_INST_0 
       (.I0(\inst_out[29]_INST_0_i_1_n_0 ),
        .I1(read_inst[6]),
        .I2(\inst_out[29]_INST_0_i_2_n_0 ),
        .I3(read_inst[7]),
        .O(inst_out[29]));
  LUT6 #(
    .INIT(64'h484E48B5008000A0)) 
    \inst_out[29]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[2]),
        .I2(read_inst[3]),
        .I3(read_inst[1]),
        .I4(read_inst[0]),
        .I5(read_inst[5]),
        .O(\inst_out[29]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0041)) 
    \inst_out[29]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[0]),
        .I2(read_inst[1]),
        .I3(read_inst[4]),
        .O(\inst_out[29]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0000CCA)) 
    \inst_out[2]_INST_0 
       (.I0(\inst_out[2]_INST_0_i_1_n_0 ),
        .I1(\inst_out[2]_INST_0_i_2_n_0 ),
        .I2(\inst_out[7]_INST_0_i_3_n_0 ),
        .I3(read_inst[6]),
        .I4(read_inst[7]),
        .O(inst_out[2]));
  LUT6 #(
    .INIT(64'h01B820A104D70270)) 
    \inst_out[2]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[0]),
        .I3(read_inst[1]),
        .I4(read_inst[2]),
        .I5(read_inst[5]),
        .O(\inst_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000001140544)) 
    \inst_out[2]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[0]),
        .I4(read_inst[3]),
        .I5(read_inst[4]),
        .O(\inst_out[2]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \inst_out[30]_INST_0 
       (.I0(read_inst[6]),
        .I1(\inst_out[30]_INST_0_i_1_n_0 ),
        .I2(read_inst[7]),
        .O(inst_out[30]));
  LUT6 #(
    .INIT(64'h0901480000000000)) 
    \inst_out[30]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[1]),
        .I2(read_inst[3]),
        .I3(read_inst[2]),
        .I4(read_inst[0]),
        .I5(read_inst[5]),
        .O(\inst_out[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \inst_out[31]_INST_0 
       (.I0(\inst_out[31]_INST_0_i_1_n_0 ),
        .I1(read_inst[6]),
        .I2(read_inst[4]),
        .I3(\inst_out[31]_INST_0_i_2_n_0 ),
        .I4(read_inst[5]),
        .I5(read_inst[7]),
        .O(inst_out[31]));
  LUT6 #(
    .INIT(64'h08003C000800C03F)) 
    \inst_out[31]_INST_0_i_1 
       (.I0(read_inst[2]),
        .I1(read_inst[4]),
        .I2(read_inst[3]),
        .I3(read_inst[5]),
        .I4(read_inst[1]),
        .I5(read_inst[0]),
        .O(\inst_out[31]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \inst_out[31]_INST_0_i_2 
       (.I0(read_inst[1]),
        .I1(read_inst[0]),
        .O(\inst_out[31]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0000CCA)) 
    \inst_out[3]_INST_0 
       (.I0(\inst_out[3]_INST_0_i_1_n_0 ),
        .I1(\inst_out[3]_INST_0_i_2_n_0 ),
        .I2(\inst_out[7]_INST_0_i_3_n_0 ),
        .I3(read_inst[6]),
        .I4(read_inst[7]),
        .O(inst_out[3]));
  LUT6 #(
    .INIT(64'h0BBB6D980F540F74)) 
    \inst_out[3]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[0]),
        .I3(read_inst[1]),
        .I4(read_inst[2]),
        .I5(read_inst[5]),
        .O(\inst_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0880000001150550)) 
    \inst_out[3]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[0]),
        .I4(read_inst[3]),
        .I5(read_inst[4]),
        .O(\inst_out[3]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8002)) 
    \inst_out[4]_INST_0 
       (.I0(\inst_out[4]_INST_0_i_1_n_0 ),
        .I1(\inst_out[7]_INST_0_i_3_n_0 ),
        .I2(read_inst[6]),
        .I3(read_inst[7]),
        .O(inst_out[4]));
  LUT6 #(
    .INIT(64'h004A202800820082)) 
    \inst_out[4]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[0]),
        .I3(read_inst[1]),
        .I4(read_inst[2]),
        .I5(read_inst[5]),
        .O(\inst_out[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0000CCA)) 
    \inst_out[5]_INST_0 
       (.I0(\inst_out[5]_INST_0_i_1_n_0 ),
        .I1(\inst_out[5]_INST_0_i_2_n_0 ),
        .I2(\inst_out[7]_INST_0_i_3_n_0 ),
        .I3(read_inst[6]),
        .I4(read_inst[7]),
        .O(inst_out[5]));
  LUT6 #(
    .INIT(64'h0436679000A00880)) 
    \inst_out[5]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[0]),
        .I3(read_inst[1]),
        .I4(read_inst[2]),
        .I5(read_inst[5]),
        .O(\inst_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000001050505)) 
    \inst_out[5]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[0]),
        .I4(read_inst[3]),
        .I5(read_inst[4]),
        .O(\inst_out[5]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8002)) 
    \inst_out[6]_INST_0 
       (.I0(\inst_out[6]_INST_0_i_1_n_0 ),
        .I1(\inst_out[7]_INST_0_i_3_n_0 ),
        .I2(read_inst[6]),
        .I3(read_inst[7]),
        .O(inst_out[6]));
  LUT6 #(
    .INIT(64'h0002610008000000)) 
    \inst_out[6]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[0]),
        .I3(read_inst[1]),
        .I4(read_inst[2]),
        .I5(read_inst[5]),
        .O(\inst_out[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0000CCA)) 
    \inst_out[7]_INST_0 
       (.I0(\inst_out[7]_INST_0_i_1_n_0 ),
        .I1(\inst_out[7]_INST_0_i_2_n_0 ),
        .I2(\inst_out[7]_INST_0_i_3_n_0 ),
        .I3(read_inst[6]),
        .I4(read_inst[7]),
        .O(inst_out[7]));
  LUT6 #(
    .INIT(64'h05A2268000500070)) 
    \inst_out[7]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[0]),
        .I3(read_inst[1]),
        .I4(read_inst[2]),
        .I5(read_inst[5]),
        .O(\inst_out[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000001000500)) 
    \inst_out[7]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[2]),
        .I2(read_inst[1]),
        .I3(read_inst[0]),
        .I4(read_inst[3]),
        .I5(read_inst[4]),
        .O(\inst_out[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080800000000000)) 
    \inst_out[7]_INST_0_i_3 
       (.I0(read_inst[5]),
        .I1(read_inst[4]),
        .I2(read_inst[2]),
        .I3(read_inst[1]),
        .I4(read_inst[0]),
        .I5(read_inst[3]),
        .O(\inst_out[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00A0CA0C)) 
    \inst_out[8]_INST_0 
       (.I0(\inst_out[8]_INST_0_i_1_n_0 ),
        .I1(\inst_out[8]_INST_0_i_2_n_0 ),
        .I2(read_inst[6]),
        .I3(\inst_out[23]_INST_0_i_3_n_0 ),
        .I4(read_inst[7]),
        .O(inst_out[8]));
  LUT6 #(
    .INIT(64'h019300F85270A080)) 
    \inst_out[8]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[1]),
        .I3(read_inst[2]),
        .I4(read_inst[5]),
        .I5(read_inst[0]),
        .O(\inst_out[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \inst_out[8]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[0]),
        .I2(read_inst[2]),
        .I3(read_inst[1]),
        .I4(read_inst[4]),
        .O(\inst_out[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00A0CA0C)) 
    \inst_out[9]_INST_0 
       (.I0(\inst_out[9]_INST_0_i_1_n_0 ),
        .I1(\inst_out[9]_INST_0_i_2_n_0 ),
        .I2(read_inst[6]),
        .I3(\inst_out[23]_INST_0_i_3_n_0 ),
        .I4(read_inst[7]),
        .O(inst_out[9]));
  LUT6 #(
    .INIT(64'h0411904002000000)) 
    \inst_out[9]_INST_0_i_1 
       (.I0(read_inst[4]),
        .I1(read_inst[3]),
        .I2(read_inst[1]),
        .I3(read_inst[2]),
        .I4(read_inst[5]),
        .I5(read_inst[0]),
        .O(\inst_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000400)) 
    \inst_out[9]_INST_0_i_2 
       (.I0(read_inst[5]),
        .I1(read_inst[0]),
        .I2(read_inst[2]),
        .I3(read_inst[1]),
        .I4(read_inst[3]),
        .I5(read_inst[4]),
        .O(\inst_out[9]_INST_0_i_2_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
