// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri May  8 21:21:02 2020
// Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/Kenny Khut/Desktop/CECS
//               440/Labs/lab_5/lab_5.srcs/sources_1/bd/Datapath/ip/Datapath_ALU_0_0/Datapath_ALU_0_0_sim_netlist.v}
// Design      : Datapath_ALU_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Datapath_ALU_0_0,ALU,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ALU,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Datapath_ALU_0_0
   (A,
    B,
    ALUCntl,
    Carryin,
    ALUOut,
    Zero,
    Carryout,
    Overflow);
  input [31:0]A;
  input [31:0]B;
  input [3:0]ALUCntl;
  input Carryin;
  output [31:0]ALUOut;
  output Zero;
  output Carryout;
  output Overflow;

  wire [31:0]A;
  wire [3:0]ALUCntl;
  wire [31:0]ALUOut;
  wire \ALUOut[0]_INST_0_i_1_n_0 ;
  wire \ALUOut[0]_INST_0_i_3_n_0 ;
  wire \ALUOut[10]_INST_0_i_1_n_0 ;
  wire \ALUOut[10]_INST_0_i_3_n_0 ;
  wire \ALUOut[10]_INST_0_i_5_n_0 ;
  wire \ALUOut[10]_INST_0_i_6_n_0 ;
  wire \ALUOut[11]_INST_0_i_3_n_0 ;
  wire \ALUOut[11]_INST_0_i_4_n_0 ;
  wire \ALUOut[11]_INST_0_i_5_n_0 ;
  wire \ALUOut[12]_INST_0_i_2_n_0 ;
  wire \ALUOut[12]_INST_0_i_3_n_0 ;
  wire \ALUOut[12]_INST_0_i_4_n_0 ;
  wire \ALUOut[12]_INST_0_i_5_n_0 ;
  wire \ALUOut[13]_INST_0_i_2_n_0 ;
  wire \ALUOut[13]_INST_0_i_3_n_0 ;
  wire \ALUOut[13]_INST_0_i_4_n_0 ;
  wire \ALUOut[13]_INST_0_i_5_n_0 ;
  wire \ALUOut[14]_INST_0_i_2_n_0 ;
  wire \ALUOut[14]_INST_0_i_3_n_0 ;
  wire \ALUOut[14]_INST_0_i_4_n_0 ;
  wire \ALUOut[14]_INST_0_i_5_n_0 ;
  wire \ALUOut[15]_INST_0_i_10_n_0 ;
  wire \ALUOut[15]_INST_0_i_11_n_0 ;
  wire \ALUOut[15]_INST_0_i_2_n_0 ;
  wire \ALUOut[15]_INST_0_i_3_n_0 ;
  wire \ALUOut[15]_INST_0_i_5_n_0 ;
  wire \ALUOut[15]_INST_0_i_6_n_0 ;
  wire \ALUOut[15]_INST_0_i_7_n_0 ;
  wire \ALUOut[15]_INST_0_i_8_n_0 ;
  wire \ALUOut[15]_INST_0_i_9_n_0 ;
  wire \ALUOut[16]_INST_0_i_2_n_0 ;
  wire \ALUOut[16]_INST_0_i_3_n_0 ;
  wire \ALUOut[16]_INST_0_i_4_n_0 ;
  wire \ALUOut[16]_INST_0_i_5_n_0 ;
  wire \ALUOut[16]_INST_0_i_6_n_0 ;
  wire \ALUOut[17]_INST_0_i_1_n_0 ;
  wire \ALUOut[17]_INST_0_i_3_n_0 ;
  wire \ALUOut[17]_INST_0_i_4_n_0 ;
  wire \ALUOut[17]_INST_0_i_5_n_0 ;
  wire \ALUOut[17]_INST_0_i_6_n_0 ;
  wire \ALUOut[18]_INST_0_i_1_n_0 ;
  wire \ALUOut[18]_INST_0_i_3_n_0 ;
  wire \ALUOut[18]_INST_0_i_4_n_0 ;
  wire \ALUOut[18]_INST_0_i_5_n_0 ;
  wire \ALUOut[18]_INST_0_i_6_n_0 ;
  wire \ALUOut[19]_INST_0_i_1_n_0 ;
  wire \ALUOut[19]_INST_0_i_3_n_0 ;
  wire \ALUOut[19]_INST_0_i_4_n_0 ;
  wire \ALUOut[19]_INST_0_i_5_n_0 ;
  wire \ALUOut[19]_INST_0_i_7_n_0 ;
  wire \ALUOut[1]_INST_0_i_1_n_0 ;
  wire \ALUOut[1]_INST_0_i_3_n_0 ;
  wire \ALUOut[20]_INST_0_i_1_n_0 ;
  wire \ALUOut[20]_INST_0_i_3_n_0 ;
  wire \ALUOut[20]_INST_0_i_4_n_0 ;
  wire \ALUOut[20]_INST_0_i_5_n_0 ;
  wire \ALUOut[20]_INST_0_i_6_n_0 ;
  wire \ALUOut[21]_INST_0_i_1_n_0 ;
  wire \ALUOut[21]_INST_0_i_3_n_0 ;
  wire \ALUOut[21]_INST_0_i_4_n_0 ;
  wire \ALUOut[21]_INST_0_i_5_n_0 ;
  wire \ALUOut[21]_INST_0_i_6_n_0 ;
  wire \ALUOut[22]_INST_0_i_1_n_0 ;
  wire \ALUOut[22]_INST_0_i_3_n_0 ;
  wire \ALUOut[22]_INST_0_i_4_n_0 ;
  wire \ALUOut[22]_INST_0_i_5_n_0 ;
  wire \ALUOut[22]_INST_0_i_6_n_0 ;
  wire \ALUOut[23]_INST_0_i_1_n_0 ;
  wire \ALUOut[23]_INST_0_i_3_n_0 ;
  wire \ALUOut[23]_INST_0_i_4_n_0 ;
  wire \ALUOut[23]_INST_0_i_5_n_0 ;
  wire \ALUOut[23]_INST_0_i_7_n_0 ;
  wire \ALUOut[24]_INST_0_i_1_n_0 ;
  wire \ALUOut[24]_INST_0_i_3_n_0 ;
  wire \ALUOut[24]_INST_0_i_4_n_0 ;
  wire \ALUOut[24]_INST_0_i_5_n_0 ;
  wire \ALUOut[24]_INST_0_i_6_n_0 ;
  wire \ALUOut[25]_INST_0_i_1_n_0 ;
  wire \ALUOut[25]_INST_0_i_3_n_0 ;
  wire \ALUOut[25]_INST_0_i_4_n_0 ;
  wire \ALUOut[25]_INST_0_i_5_n_0 ;
  wire \ALUOut[25]_INST_0_i_6_n_0 ;
  wire \ALUOut[26]_INST_0_i_1_n_0 ;
  wire \ALUOut[26]_INST_0_i_3_n_0 ;
  wire \ALUOut[26]_INST_0_i_4_n_0 ;
  wire \ALUOut[26]_INST_0_i_5_n_0 ;
  wire \ALUOut[26]_INST_0_i_6_n_0 ;
  wire \ALUOut[27]_INST_0_i_11_n_0 ;
  wire \ALUOut[27]_INST_0_i_1_n_0 ;
  wire \ALUOut[27]_INST_0_i_3_n_0 ;
  wire \ALUOut[27]_INST_0_i_4_n_0 ;
  wire \ALUOut[27]_INST_0_i_5_n_0 ;
  wire \ALUOut[27]_INST_0_i_7_n_0 ;
  wire \ALUOut[28]_INST_0_i_1_n_0 ;
  wire \ALUOut[28]_INST_0_i_3_n_0 ;
  wire \ALUOut[28]_INST_0_i_4_n_0 ;
  wire \ALUOut[28]_INST_0_i_5_n_0 ;
  wire \ALUOut[28]_INST_0_i_6_n_0 ;
  wire \ALUOut[29]_INST_0_i_1_n_0 ;
  wire \ALUOut[29]_INST_0_i_3_n_0 ;
  wire \ALUOut[29]_INST_0_i_4_n_0 ;
  wire \ALUOut[29]_INST_0_i_5_n_0 ;
  wire \ALUOut[29]_INST_0_i_6_n_0 ;
  wire \ALUOut[2]_INST_0_i_1_n_0 ;
  wire \ALUOut[2]_INST_0_i_3_n_0 ;
  wire \ALUOut[2]_INST_0_i_4_n_0 ;
  wire \ALUOut[30]_INST_0_i_1_n_0 ;
  wire \ALUOut[30]_INST_0_i_3_n_0 ;
  wire \ALUOut[30]_INST_0_i_4_n_0 ;
  wire \ALUOut[30]_INST_0_i_5_n_0 ;
  wire \ALUOut[30]_INST_0_i_6_n_0 ;
  wire \ALUOut[31]_INST_0_i_10_n_0 ;
  wire \ALUOut[31]_INST_0_i_11_n_0 ;
  wire \ALUOut[31]_INST_0_i_12_n_0 ;
  wire \ALUOut[31]_INST_0_i_13_n_0 ;
  wire \ALUOut[31]_INST_0_i_14_n_0 ;
  wire \ALUOut[31]_INST_0_i_15_n_0 ;
  wire \ALUOut[31]_INST_0_i_16_n_0 ;
  wire \ALUOut[31]_INST_0_i_17_n_0 ;
  wire \ALUOut[31]_INST_0_i_18_n_0 ;
  wire \ALUOut[31]_INST_0_i_19_n_0 ;
  wire \ALUOut[31]_INST_0_i_1_n_0 ;
  wire \ALUOut[31]_INST_0_i_20_n_0 ;
  wire \ALUOut[31]_INST_0_i_21_n_0 ;
  wire \ALUOut[31]_INST_0_i_22_n_0 ;
  wire \ALUOut[31]_INST_0_i_23_n_0 ;
  wire \ALUOut[31]_INST_0_i_24_n_0 ;
  wire \ALUOut[31]_INST_0_i_2_n_0 ;
  wire \ALUOut[31]_INST_0_i_4_n_0 ;
  wire \ALUOut[31]_INST_0_i_5_n_0 ;
  wire \ALUOut[31]_INST_0_i_6_n_0 ;
  wire \ALUOut[31]_INST_0_i_7_n_0 ;
  wire \ALUOut[31]_INST_0_i_8_n_0 ;
  wire \ALUOut[3]_INST_0_i_1_n_0 ;
  wire \ALUOut[3]_INST_0_i_3_n_0 ;
  wire \ALUOut[3]_INST_0_i_5_n_0 ;
  wire \ALUOut[4]_INST_0_i_1_n_0 ;
  wire \ALUOut[4]_INST_0_i_3_n_0 ;
  wire \ALUOut[4]_INST_0_i_4_n_0 ;
  wire \ALUOut[5]_INST_0_i_1_n_0 ;
  wire \ALUOut[5]_INST_0_i_3_n_0 ;
  wire \ALUOut[5]_INST_0_i_4_n_0 ;
  wire \ALUOut[6]_INST_0_i_1_n_0 ;
  wire \ALUOut[6]_INST_0_i_3_n_0 ;
  wire \ALUOut[6]_INST_0_i_4_n_0 ;
  wire \ALUOut[7]_INST_0_i_1_n_0 ;
  wire \ALUOut[7]_INST_0_i_3_n_0 ;
  wire \ALUOut[7]_INST_0_i_5_n_0 ;
  wire \ALUOut[8]_INST_0_i_1_n_0 ;
  wire \ALUOut[8]_INST_0_i_3_n_0 ;
  wire \ALUOut[8]_INST_0_i_4_n_0 ;
  wire \ALUOut[9]_INST_0_i_1_n_0 ;
  wire \ALUOut[9]_INST_0_i_3_n_0 ;
  wire \ALUOut[9]_INST_0_i_4_n_0 ;
  wire [31:0]B;
  wire Carryout;
  wire Carryout_INST_0_i_2_n_0;
  wire Overflow;
  wire Zero;

  LUT6 #(
    .INIT(64'h00AB5555AA0100AA)) 
    \ALUOut[0]_INST_0_i_1 
       (.I0(\ALUOut[16]_INST_0_i_3_n_0 ),
        .I1(\ALUOut[15]_INST_0_i_6_n_0 ),
        .I2(\ALUOut[0]_INST_0_i_3_n_0 ),
        .I3(B[0]),
        .I4(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I5(A[0]),
        .O(\ALUOut[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \ALUOut[0]_INST_0_i_3 
       (.I0(B[1]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[0]),
        .I4(B[3]),
        .O(\ALUOut[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4474333388B84444)) 
    \ALUOut[10]_INST_0_i_1 
       (.I0(B[10]),
        .I1(\ALUOut[16]_INST_0_i_3_n_0 ),
        .I2(\ALUOut[10]_INST_0_i_3_n_0 ),
        .I3(\ALUOut[15]_INST_0_i_6_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I5(A[10]),
        .O(\ALUOut[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[10]_INST_0_i_3 
       (.I0(\ALUOut[10]_INST_0_i_5_n_0 ),
        .I1(\ALUOut[12]_INST_0_i_5_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[10]_INST_0_i_6_n_0 ),
        .I4(B[1]),
        .I5(\ALUOut[13]_INST_0_i_5_n_0 ),
        .O(\ALUOut[10]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUOut[10]_INST_0_i_5 
       (.I0(A[3]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[7]),
        .I4(B[3]),
        .O(\ALUOut[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUOut[10]_INST_0_i_6 
       (.I0(A[4]),
        .I1(B[2]),
        .I2(A[0]),
        .I3(B[3]),
        .I4(A[8]),
        .I5(B[4]),
        .O(\ALUOut[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE99EEE9E9)) 
    \ALUOut[11]_INST_0_i_3 
       (.I0(B[11]),
        .I1(A[11]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBABF0000BABFBABF)) 
    \ALUOut[11]_INST_0_i_4 
       (.I0(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I1(\ALUOut[11]_INST_0_i_5_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[12]_INST_0_i_4_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I5(A[11]),
        .O(\ALUOut[11]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUOut[11]_INST_0_i_5 
       (.I0(\ALUOut[10]_INST_0_i_6_n_0 ),
        .I1(B[1]),
        .I2(\ALUOut[13]_INST_0_i_5_n_0 ),
        .O(\ALUOut[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111111166111616)) 
    \ALUOut[12]_INST_0_i_2 
       (.I0(B[12]),
        .I1(A[12]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ALUOut[12]_INST_0_i_3 
       (.I0(\ALUOut[13]_INST_0_i_4_n_0 ),
        .I1(B[0]),
        .I2(\ALUOut[12]_INST_0_i_4_n_0 ),
        .I3(\ALUOut[15]_INST_0_i_6_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I5(A[12]),
        .O(\ALUOut[12]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUOut[12]_INST_0_i_4 
       (.I0(\ALUOut[12]_INST_0_i_5_n_0 ),
        .I1(B[1]),
        .I2(\ALUOut[14]_INST_0_i_5_n_0 ),
        .O(\ALUOut[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUOut[12]_INST_0_i_5 
       (.I0(A[5]),
        .I1(B[2]),
        .I2(A[1]),
        .I3(B[3]),
        .I4(A[9]),
        .I5(B[4]),
        .O(\ALUOut[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111111166111616)) 
    \ALUOut[13]_INST_0_i_2 
       (.I0(B[13]),
        .I1(A[13]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ALUOut[13]_INST_0_i_3 
       (.I0(\ALUOut[14]_INST_0_i_4_n_0 ),
        .I1(B[0]),
        .I2(\ALUOut[13]_INST_0_i_4_n_0 ),
        .I3(\ALUOut[15]_INST_0_i_6_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I5(A[13]),
        .O(\ALUOut[13]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUOut[13]_INST_0_i_4 
       (.I0(\ALUOut[13]_INST_0_i_5_n_0 ),
        .I1(B[1]),
        .I2(\ALUOut[15]_INST_0_i_11_n_0 ),
        .I3(B[2]),
        .I4(\ALUOut[19]_INST_0_i_7_n_0 ),
        .O(\ALUOut[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUOut[13]_INST_0_i_5 
       (.I0(A[6]),
        .I1(B[2]),
        .I2(A[2]),
        .I3(B[3]),
        .I4(A[10]),
        .I5(B[4]),
        .O(\ALUOut[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111111166111616)) 
    \ALUOut[14]_INST_0_i_2 
       (.I0(B[14]),
        .I1(A[14]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ALUOut[14]_INST_0_i_3 
       (.I0(\ALUOut[15]_INST_0_i_5_n_0 ),
        .I1(B[0]),
        .I2(\ALUOut[14]_INST_0_i_4_n_0 ),
        .I3(\ALUOut[15]_INST_0_i_6_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I5(A[14]),
        .O(\ALUOut[14]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUOut[14]_INST_0_i_4 
       (.I0(\ALUOut[14]_INST_0_i_5_n_0 ),
        .I1(B[1]),
        .I2(\ALUOut[16]_INST_0_i_6_n_0 ),
        .I3(B[2]),
        .I4(\ALUOut[20]_INST_0_i_6_n_0 ),
        .O(\ALUOut[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033B800B8)) 
    \ALUOut[14]_INST_0_i_5 
       (.I0(A[7]),
        .I1(B[2]),
        .I2(A[11]),
        .I3(B[3]),
        .I4(A[3]),
        .I5(B[4]),
        .O(\ALUOut[14]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[15]_INST_0_i_10 
       (.I0(B[12]),
        .I1(A[12]),
        .O(\ALUOut[15]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUOut[15]_INST_0_i_11 
       (.I0(A[0]),
        .I1(B[3]),
        .I2(A[8]),
        .I3(B[4]),
        .O(\ALUOut[15]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h1111111166111616)) 
    \ALUOut[15]_INST_0_i_2 
       (.I0(B[15]),
        .I1(A[15]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ALUOut[15]_INST_0_i_3 
       (.I0(\ALUOut[16]_INST_0_i_5_n_0 ),
        .I1(B[0]),
        .I2(\ALUOut[15]_INST_0_i_5_n_0 ),
        .I3(\ALUOut[15]_INST_0_i_6_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I5(A[15]),
        .O(\ALUOut[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[15]_INST_0_i_5 
       (.I0(\ALUOut[15]_INST_0_i_11_n_0 ),
        .I1(\ALUOut[19]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[17]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[21]_INST_0_i_6_n_0 ),
        .O(\ALUOut[15]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ALUOut[15]_INST_0_i_6 
       (.I0(\ALUOut[31]_INST_0_i_23_n_0 ),
        .I1(\ALUOut[31]_INST_0_i_22_n_0 ),
        .I2(\ALUOut[31]_INST_0_i_21_n_0 ),
        .I3(\ALUOut[31]_INST_0_i_20_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_19_n_0 ),
        .O(\ALUOut[15]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[15]_INST_0_i_7 
       (.I0(B[15]),
        .I1(A[15]),
        .O(\ALUOut[15]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[15]_INST_0_i_8 
       (.I0(B[14]),
        .I1(A[14]),
        .O(\ALUOut[15]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[15]_INST_0_i_9 
       (.I0(B[13]),
        .I1(A[13]),
        .O(\ALUOut[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000040514051BFAE)) 
    \ALUOut[16]_INST_0_i_2 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(B[16]),
        .I5(A[16]),
        .O(\ALUOut[16]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h104C)) 
    \ALUOut[16]_INST_0_i_3 
       (.I0(ALUCntl[0]),
        .I1(ALUCntl[1]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[3]),
        .O(\ALUOut[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \ALUOut[16]_INST_0_i_4 
       (.I0(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I1(A[16]),
        .I2(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I3(\ALUOut[16]_INST_0_i_5_n_0 ),
        .I4(B[0]),
        .I5(\ALUOut[17]_INST_0_i_4_n_0 ),
        .O(\ALUOut[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[16]_INST_0_i_5 
       (.I0(\ALUOut[16]_INST_0_i_6_n_0 ),
        .I1(\ALUOut[20]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[18]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[22]_INST_0_i_6_n_0 ),
        .O(\ALUOut[16]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUOut[16]_INST_0_i_6 
       (.I0(A[1]),
        .I1(B[3]),
        .I2(A[9]),
        .I3(B[4]),
        .O(\ALUOut[16]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEFEA)) 
    \ALUOut[17]_INST_0_i_1 
       (.I0(\ALUOut[17]_INST_0_i_3_n_0 ),
        .I1(\ALUOut[17]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[18]_INST_0_i_4_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I5(\ALUOut[17]_INST_0_i_5_n_0 ),
        .O(\ALUOut[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[17]_INST_0_i_3 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[17]),
        .O(\ALUOut[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[17]_INST_0_i_4 
       (.I0(\ALUOut[17]_INST_0_i_6_n_0 ),
        .I1(\ALUOut[21]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[19]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[23]_INST_0_i_7_n_0 ),
        .O(\ALUOut[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E00900E900)) 
    \ALUOut[17]_INST_0_i_5 
       (.I0(A[17]),
        .I1(B[17]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[17]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUOut[17]_INST_0_i_6 
       (.I0(A[2]),
        .I1(B[3]),
        .I2(A[10]),
        .I3(B[4]),
        .O(\ALUOut[17]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEFEA)) 
    \ALUOut[18]_INST_0_i_1 
       (.I0(\ALUOut[18]_INST_0_i_3_n_0 ),
        .I1(\ALUOut[18]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[19]_INST_0_i_4_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I5(\ALUOut[18]_INST_0_i_5_n_0 ),
        .O(\ALUOut[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[18]_INST_0_i_3 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[18]),
        .O(\ALUOut[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[18]_INST_0_i_4 
       (.I0(\ALUOut[18]_INST_0_i_6_n_0 ),
        .I1(\ALUOut[22]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[20]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[24]_INST_0_i_6_n_0 ),
        .O(\ALUOut[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E00900E900)) 
    \ALUOut[18]_INST_0_i_5 
       (.I0(A[18]),
        .I1(B[18]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[18]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \ALUOut[18]_INST_0_i_6 
       (.I0(A[11]),
        .I1(B[3]),
        .I2(A[3]),
        .I3(B[4]),
        .O(\ALUOut[18]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEFEA)) 
    \ALUOut[19]_INST_0_i_1 
       (.I0(\ALUOut[19]_INST_0_i_3_n_0 ),
        .I1(\ALUOut[19]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[20]_INST_0_i_4_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I5(\ALUOut[19]_INST_0_i_5_n_0 ),
        .O(\ALUOut[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[19]_INST_0_i_3 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[19]),
        .O(\ALUOut[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[19]_INST_0_i_4 
       (.I0(\ALUOut[19]_INST_0_i_7_n_0 ),
        .I1(\ALUOut[23]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[21]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[25]_INST_0_i_6_n_0 ),
        .O(\ALUOut[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E00900E900)) 
    \ALUOut[19]_INST_0_i_5 
       (.I0(A[19]),
        .I1(B[19]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[19]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUOut[19]_INST_0_i_7 
       (.I0(A[4]),
        .I1(B[3]),
        .I2(A[12]),
        .I3(B[4]),
        .O(\ALUOut[19]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4447888B33334447)) 
    \ALUOut[1]_INST_0_i_1 
       (.I0(B[1]),
        .I1(\ALUOut[16]_INST_0_i_3_n_0 ),
        .I2(\ALUOut[1]_INST_0_i_3_n_0 ),
        .I3(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I4(A[1]),
        .I5(\ALUOut[31]_INST_0_i_10_n_0 ),
        .O(\ALUOut[1]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUOut[1]_INST_0_i_3 
       (.I0(\ALUOut[0]_INST_0_i_3_n_0 ),
        .I1(B[0]),
        .I2(\ALUOut[2]_INST_0_i_4_n_0 ),
        .O(\ALUOut[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEFEA)) 
    \ALUOut[20]_INST_0_i_1 
       (.I0(\ALUOut[20]_INST_0_i_3_n_0 ),
        .I1(\ALUOut[20]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[21]_INST_0_i_4_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I5(\ALUOut[20]_INST_0_i_5_n_0 ),
        .O(\ALUOut[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[20]_INST_0_i_3 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[20]),
        .O(\ALUOut[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[20]_INST_0_i_4 
       (.I0(\ALUOut[20]_INST_0_i_6_n_0 ),
        .I1(\ALUOut[24]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[22]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[26]_INST_0_i_6_n_0 ),
        .O(\ALUOut[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E00900E900)) 
    \ALUOut[20]_INST_0_i_5 
       (.I0(A[20]),
        .I1(B[20]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[20]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUOut[20]_INST_0_i_6 
       (.I0(A[5]),
        .I1(B[3]),
        .I2(A[13]),
        .I3(B[4]),
        .O(\ALUOut[20]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEFEA)) 
    \ALUOut[21]_INST_0_i_1 
       (.I0(\ALUOut[21]_INST_0_i_3_n_0 ),
        .I1(\ALUOut[21]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[22]_INST_0_i_4_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I5(\ALUOut[21]_INST_0_i_5_n_0 ),
        .O(\ALUOut[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[21]_INST_0_i_3 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[21]),
        .O(\ALUOut[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[21]_INST_0_i_4 
       (.I0(\ALUOut[21]_INST_0_i_6_n_0 ),
        .I1(\ALUOut[25]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[23]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[27]_INST_0_i_7_n_0 ),
        .O(\ALUOut[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E00900E900)) 
    \ALUOut[21]_INST_0_i_5 
       (.I0(A[21]),
        .I1(B[21]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[21]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUOut[21]_INST_0_i_6 
       (.I0(A[6]),
        .I1(B[3]),
        .I2(A[14]),
        .I3(B[4]),
        .O(\ALUOut[21]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEFEA)) 
    \ALUOut[22]_INST_0_i_1 
       (.I0(\ALUOut[22]_INST_0_i_3_n_0 ),
        .I1(\ALUOut[22]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[23]_INST_0_i_4_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I5(\ALUOut[22]_INST_0_i_5_n_0 ),
        .O(\ALUOut[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[22]_INST_0_i_3 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[22]),
        .O(\ALUOut[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[22]_INST_0_i_4 
       (.I0(\ALUOut[22]_INST_0_i_6_n_0 ),
        .I1(\ALUOut[26]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[24]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[28]_INST_0_i_6_n_0 ),
        .O(\ALUOut[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E00900E900)) 
    \ALUOut[22]_INST_0_i_5 
       (.I0(A[22]),
        .I1(B[22]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[22]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUOut[22]_INST_0_i_6 
       (.I0(A[7]),
        .I1(B[3]),
        .I2(A[15]),
        .I3(B[4]),
        .O(\ALUOut[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEFEA)) 
    \ALUOut[23]_INST_0_i_1 
       (.I0(\ALUOut[23]_INST_0_i_3_n_0 ),
        .I1(\ALUOut[23]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[24]_INST_0_i_3_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I5(\ALUOut[23]_INST_0_i_5_n_0 ),
        .O(\ALUOut[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[23]_INST_0_i_3 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[23]),
        .O(\ALUOut[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[23]_INST_0_i_4 
       (.I0(\ALUOut[23]_INST_0_i_7_n_0 ),
        .I1(\ALUOut[27]_INST_0_i_7_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[25]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[29]_INST_0_i_6_n_0 ),
        .O(\ALUOut[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E00900E900)) 
    \ALUOut[23]_INST_0_i_5 
       (.I0(A[23]),
        .I1(B[23]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[23]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUOut[23]_INST_0_i_7 
       (.I0(A[8]),
        .I1(B[3]),
        .I2(A[0]),
        .I3(B[4]),
        .I4(A[16]),
        .O(\ALUOut[23]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00E2)) 
    \ALUOut[24]_INST_0_i_1 
       (.I0(\ALUOut[25]_INST_0_i_4_n_0 ),
        .I1(B[0]),
        .I2(\ALUOut[24]_INST_0_i_3_n_0 ),
        .I3(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I4(\ALUOut[24]_INST_0_i_4_n_0 ),
        .I5(\ALUOut[24]_INST_0_i_5_n_0 ),
        .O(\ALUOut[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[24]_INST_0_i_3 
       (.I0(\ALUOut[24]_INST_0_i_6_n_0 ),
        .I1(\ALUOut[28]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[26]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[30]_INST_0_i_6_n_0 ),
        .O(\ALUOut[24]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[24]_INST_0_i_4 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[24]),
        .O(\ALUOut[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000E00E009090000)) 
    \ALUOut[24]_INST_0_i_5 
       (.I0(B[24]),
        .I1(A[24]),
        .I2(ALUCntl[3]),
        .I3(ALUCntl[0]),
        .I4(ALUCntl[1]),
        .I5(ALUCntl[2]),
        .O(\ALUOut[24]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUOut[24]_INST_0_i_6 
       (.I0(A[9]),
        .I1(B[3]),
        .I2(A[1]),
        .I3(B[4]),
        .I4(A[17]),
        .O(\ALUOut[24]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEFEA)) 
    \ALUOut[25]_INST_0_i_1 
       (.I0(\ALUOut[25]_INST_0_i_3_n_0 ),
        .I1(\ALUOut[25]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[26]_INST_0_i_4_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I5(\ALUOut[25]_INST_0_i_5_n_0 ),
        .O(\ALUOut[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[25]_INST_0_i_3 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[25]),
        .O(\ALUOut[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[25]_INST_0_i_4 
       (.I0(\ALUOut[25]_INST_0_i_6_n_0 ),
        .I1(\ALUOut[29]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[27]_INST_0_i_7_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[31]_INST_0_i_15_n_0 ),
        .O(\ALUOut[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E00900E900)) 
    \ALUOut[25]_INST_0_i_5 
       (.I0(A[25]),
        .I1(B[25]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[25]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUOut[25]_INST_0_i_6 
       (.I0(A[10]),
        .I1(B[3]),
        .I2(A[2]),
        .I3(B[4]),
        .I4(A[18]),
        .O(\ALUOut[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEFEA)) 
    \ALUOut[26]_INST_0_i_1 
       (.I0(\ALUOut[26]_INST_0_i_3_n_0 ),
        .I1(\ALUOut[26]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[27]_INST_0_i_4_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I5(\ALUOut[26]_INST_0_i_5_n_0 ),
        .O(\ALUOut[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[26]_INST_0_i_3 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[26]),
        .O(\ALUOut[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[26]_INST_0_i_4 
       (.I0(\ALUOut[26]_INST_0_i_6_n_0 ),
        .I1(\ALUOut[30]_INST_0_i_6_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[28]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[31]_INST_0_i_11_n_0 ),
        .O(\ALUOut[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E00900E900)) 
    \ALUOut[26]_INST_0_i_5 
       (.I0(A[26]),
        .I1(B[26]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[26]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUOut[26]_INST_0_i_6 
       (.I0(A[11]),
        .I1(B[3]),
        .I2(A[3]),
        .I3(B[4]),
        .I4(A[19]),
        .O(\ALUOut[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEFEA)) 
    \ALUOut[27]_INST_0_i_1 
       (.I0(\ALUOut[27]_INST_0_i_3_n_0 ),
        .I1(\ALUOut[27]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[28]_INST_0_i_4_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I5(\ALUOut[27]_INST_0_i_5_n_0 ),
        .O(\ALUOut[27]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[27]_INST_0_i_11 
       (.I0(B[24]),
        .I1(A[24]),
        .O(\ALUOut[27]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[27]_INST_0_i_3 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[27]),
        .O(\ALUOut[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[27]_INST_0_i_4 
       (.I0(\ALUOut[27]_INST_0_i_7_n_0 ),
        .I1(\ALUOut[31]_INST_0_i_15_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[29]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[31]_INST_0_i_17_n_0 ),
        .O(\ALUOut[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E00900E900)) 
    \ALUOut[27]_INST_0_i_5 
       (.I0(A[27]),
        .I1(B[27]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[27]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUOut[27]_INST_0_i_7 
       (.I0(A[12]),
        .I1(B[3]),
        .I2(A[4]),
        .I3(B[4]),
        .I4(A[20]),
        .O(\ALUOut[27]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEFEA)) 
    \ALUOut[28]_INST_0_i_1 
       (.I0(\ALUOut[28]_INST_0_i_3_n_0 ),
        .I1(\ALUOut[28]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[29]_INST_0_i_4_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I5(\ALUOut[28]_INST_0_i_5_n_0 ),
        .O(\ALUOut[28]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[28]_INST_0_i_3 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[28]),
        .O(\ALUOut[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[28]_INST_0_i_4 
       (.I0(\ALUOut[28]_INST_0_i_6_n_0 ),
        .I1(\ALUOut[31]_INST_0_i_11_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[30]_INST_0_i_6_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[31]_INST_0_i_13_n_0 ),
        .O(\ALUOut[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E00900E900)) 
    \ALUOut[28]_INST_0_i_5 
       (.I0(A[28]),
        .I1(B[28]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[28]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUOut[28]_INST_0_i_6 
       (.I0(A[13]),
        .I1(B[3]),
        .I2(A[5]),
        .I3(B[4]),
        .I4(A[21]),
        .O(\ALUOut[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEFEA)) 
    \ALUOut[29]_INST_0_i_1 
       (.I0(\ALUOut[29]_INST_0_i_3_n_0 ),
        .I1(\ALUOut[29]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[30]_INST_0_i_4_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I5(\ALUOut[29]_INST_0_i_5_n_0 ),
        .O(\ALUOut[29]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[29]_INST_0_i_3 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[29]),
        .O(\ALUOut[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[29]_INST_0_i_4 
       (.I0(\ALUOut[29]_INST_0_i_6_n_0 ),
        .I1(\ALUOut[31]_INST_0_i_17_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[31]_INST_0_i_15_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[31]_INST_0_i_16_n_0 ),
        .O(\ALUOut[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E00900E900)) 
    \ALUOut[29]_INST_0_i_5 
       (.I0(A[29]),
        .I1(B[29]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[29]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUOut[29]_INST_0_i_6 
       (.I0(A[14]),
        .I1(B[3]),
        .I2(A[6]),
        .I3(B[4]),
        .I4(A[22]),
        .O(\ALUOut[29]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h47448B8833334744)) 
    \ALUOut[2]_INST_0_i_1 
       (.I0(B[2]),
        .I1(\ALUOut[16]_INST_0_i_3_n_0 ),
        .I2(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I3(\ALUOut[2]_INST_0_i_3_n_0 ),
        .I4(A[2]),
        .I5(\ALUOut[31]_INST_0_i_10_n_0 ),
        .O(\ALUOut[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    \ALUOut[2]_INST_0_i_3 
       (.I0(\ALUOut[2]_INST_0_i_4_n_0 ),
        .I1(\ALUOut[3]_INST_0_i_5_n_0 ),
        .I2(B[0]),
        .O(\ALUOut[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \ALUOut[2]_INST_0_i_4 
       (.I0(B[1]),
        .I1(B[3]),
        .I2(A[1]),
        .I3(B[4]),
        .I4(B[2]),
        .O(\ALUOut[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEFEA)) 
    \ALUOut[30]_INST_0_i_1 
       (.I0(\ALUOut[30]_INST_0_i_3_n_0 ),
        .I1(\ALUOut[30]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[31]_INST_0_i_5_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I5(\ALUOut[30]_INST_0_i_5_n_0 ),
        .O(\ALUOut[30]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[30]_INST_0_i_3 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[30]),
        .O(\ALUOut[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[30]_INST_0_i_4 
       (.I0(\ALUOut[30]_INST_0_i_6_n_0 ),
        .I1(\ALUOut[31]_INST_0_i_13_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[31]_INST_0_i_11_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[31]_INST_0_i_12_n_0 ),
        .O(\ALUOut[30]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000E00900E900)) 
    \ALUOut[30]_INST_0_i_5 
       (.I0(A[30]),
        .I1(B[30]),
        .I2(ALUCntl[2]),
        .I3(ALUCntl[1]),
        .I4(ALUCntl[0]),
        .I5(ALUCntl[3]),
        .O(\ALUOut[30]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUOut[30]_INST_0_i_6 
       (.I0(A[15]),
        .I1(B[3]),
        .I2(A[7]),
        .I3(B[4]),
        .I4(A[23]),
        .O(\ALUOut[30]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1015)) 
    \ALUOut[31]_INST_0_i_1 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .O(\ALUOut[31]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4051)) 
    \ALUOut[31]_INST_0_i_10 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .O(\ALUOut[31]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[31]_INST_0_i_11 
       (.I0(A[1]),
        .I1(A[17]),
        .I2(B[3]),
        .I3(A[9]),
        .I4(B[4]),
        .I5(A[25]),
        .O(\ALUOut[31]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[31]_INST_0_i_12 
       (.I0(A[5]),
        .I1(A[21]),
        .I2(B[3]),
        .I3(A[13]),
        .I4(B[4]),
        .I5(A[29]),
        .O(\ALUOut[31]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[31]_INST_0_i_13 
       (.I0(A[3]),
        .I1(A[19]),
        .I2(B[3]),
        .I3(A[11]),
        .I4(B[4]),
        .I5(A[27]),
        .O(\ALUOut[31]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[31]_INST_0_i_14 
       (.I0(A[7]),
        .I1(A[23]),
        .I2(B[3]),
        .I3(A[15]),
        .I4(B[4]),
        .I5(A[31]),
        .O(\ALUOut[31]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[31]_INST_0_i_15 
       (.I0(A[0]),
        .I1(A[16]),
        .I2(B[3]),
        .I3(A[8]),
        .I4(B[4]),
        .I5(A[24]),
        .O(\ALUOut[31]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[31]_INST_0_i_16 
       (.I0(A[4]),
        .I1(A[20]),
        .I2(B[3]),
        .I3(A[12]),
        .I4(B[4]),
        .I5(A[28]),
        .O(\ALUOut[31]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[31]_INST_0_i_17 
       (.I0(A[2]),
        .I1(A[18]),
        .I2(B[3]),
        .I3(A[10]),
        .I4(B[4]),
        .I5(A[26]),
        .O(\ALUOut[31]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[31]_INST_0_i_18 
       (.I0(A[6]),
        .I1(A[22]),
        .I2(B[3]),
        .I3(A[14]),
        .I4(B[4]),
        .I5(A[30]),
        .O(\ALUOut[31]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ALUOut[31]_INST_0_i_19 
       (.I0(B[17]),
        .I1(B[20]),
        .I2(B[18]),
        .I3(B[19]),
        .I4(B[24]),
        .I5(B[21]),
        .O(\ALUOut[31]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00E2)) 
    \ALUOut[31]_INST_0_i_2 
       (.I0(\ALUOut[31]_INST_0_i_4_n_0 ),
        .I1(B[0]),
        .I2(\ALUOut[31]_INST_0_i_5_n_0 ),
        .I3(\ALUOut[31]_INST_0_i_6_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_7_n_0 ),
        .I5(\ALUOut[31]_INST_0_i_8_n_0 ),
        .O(\ALUOut[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ALUOut[31]_INST_0_i_20 
       (.I0(B[9]),
        .I1(B[12]),
        .I2(B[10]),
        .I3(B[11]),
        .I4(B[16]),
        .I5(B[13]),
        .O(\ALUOut[31]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ALUOut[31]_INST_0_i_21 
       (.I0(B[5]),
        .I1(B[8]),
        .I2(B[6]),
        .I3(B[7]),
        .I4(B[15]),
        .I5(B[14]),
        .O(\ALUOut[31]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ALUOut[31]_INST_0_i_22 
       (.I0(B[23]),
        .I1(B[22]),
        .I2(B[27]),
        .I3(B[26]),
        .O(\ALUOut[31]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ALUOut[31]_INST_0_i_23 
       (.I0(B[30]),
        .I1(B[29]),
        .I2(B[28]),
        .I3(B[25]),
        .O(\ALUOut[31]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[31]_INST_0_i_24 
       (.I0(B[31]),
        .I1(A[31]),
        .O(\ALUOut[31]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[31]_INST_0_i_4 
       (.I0(\ALUOut[31]_INST_0_i_11_n_0 ),
        .I1(\ALUOut[31]_INST_0_i_12_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[31]_INST_0_i_13_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[31]_INST_0_i_14_n_0 ),
        .O(\ALUOut[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[31]_INST_0_i_5 
       (.I0(\ALUOut[31]_INST_0_i_15_n_0 ),
        .I1(\ALUOut[31]_INST_0_i_16_n_0 ),
        .I2(B[1]),
        .I3(\ALUOut[31]_INST_0_i_17_n_0 ),
        .I4(B[2]),
        .I5(\ALUOut[31]_INST_0_i_18_n_0 ),
        .O(\ALUOut[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \ALUOut[31]_INST_0_i_6 
       (.I0(\ALUOut[31]_INST_0_i_19_n_0 ),
        .I1(\ALUOut[31]_INST_0_i_20_n_0 ),
        .I2(\ALUOut[31]_INST_0_i_21_n_0 ),
        .I3(\ALUOut[31]_INST_0_i_22_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_23_n_0 ),
        .I5(\ALUOut[31]_INST_0_i_10_n_0 ),
        .O(\ALUOut[31]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBFFE1250)) 
    \ALUOut[31]_INST_0_i_7 
       (.I0(ALUCntl[3]),
        .I1(ALUCntl[0]),
        .I2(ALUCntl[1]),
        .I3(ALUCntl[2]),
        .I4(A[31]),
        .O(\ALUOut[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h024C020802080044)) 
    \ALUOut[31]_INST_0_i_8 
       (.I0(ALUCntl[2]),
        .I1(ALUCntl[1]),
        .I2(ALUCntl[0]),
        .I3(ALUCntl[3]),
        .I4(B[31]),
        .I5(A[31]),
        .O(\ALUOut[31]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4474333388B84444)) 
    \ALUOut[3]_INST_0_i_1 
       (.I0(B[3]),
        .I1(\ALUOut[16]_INST_0_i_3_n_0 ),
        .I2(\ALUOut[3]_INST_0_i_3_n_0 ),
        .I3(\ALUOut[15]_INST_0_i_6_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I5(A[3]),
        .O(\ALUOut[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUOut[3]_INST_0_i_3 
       (.I0(\ALUOut[3]_INST_0_i_5_n_0 ),
        .I1(B[0]),
        .I2(\ALUOut[4]_INST_0_i_4_n_0 ),
        .O(\ALUOut[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUOut[3]_INST_0_i_5 
       (.I0(A[0]),
        .I1(B[1]),
        .I2(B[3]),
        .I3(A[2]),
        .I4(B[4]),
        .I5(B[2]),
        .O(\ALUOut[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4474333388B84444)) 
    \ALUOut[4]_INST_0_i_1 
       (.I0(B[4]),
        .I1(\ALUOut[16]_INST_0_i_3_n_0 ),
        .I2(\ALUOut[4]_INST_0_i_3_n_0 ),
        .I3(\ALUOut[15]_INST_0_i_6_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I5(A[4]),
        .O(\ALUOut[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUOut[4]_INST_0_i_3 
       (.I0(\ALUOut[4]_INST_0_i_4_n_0 ),
        .I1(B[0]),
        .I2(\ALUOut[5]_INST_0_i_4_n_0 ),
        .I3(B[1]),
        .I4(\ALUOut[7]_INST_0_i_5_n_0 ),
        .O(\ALUOut[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUOut[4]_INST_0_i_4 
       (.I0(A[1]),
        .I1(B[1]),
        .I2(B[4]),
        .I3(A[3]),
        .I4(B[3]),
        .I5(B[2]),
        .O(\ALUOut[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4474333388B84444)) 
    \ALUOut[5]_INST_0_i_1 
       (.I0(B[5]),
        .I1(\ALUOut[16]_INST_0_i_3_n_0 ),
        .I2(\ALUOut[5]_INST_0_i_3_n_0 ),
        .I3(\ALUOut[15]_INST_0_i_6_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I5(A[5]),
        .O(\ALUOut[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[5]_INST_0_i_3 
       (.I0(\ALUOut[5]_INST_0_i_4_n_0 ),
        .I1(\ALUOut[7]_INST_0_i_5_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[6]_INST_0_i_4_n_0 ),
        .I4(B[1]),
        .I5(\ALUOut[8]_INST_0_i_4_n_0 ),
        .O(\ALUOut[5]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \ALUOut[5]_INST_0_i_4 
       (.I0(B[3]),
        .I1(A[2]),
        .I2(B[4]),
        .I3(B[2]),
        .O(\ALUOut[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4474333388B84444)) 
    \ALUOut[6]_INST_0_i_1 
       (.I0(B[6]),
        .I1(\ALUOut[16]_INST_0_i_3_n_0 ),
        .I2(\ALUOut[6]_INST_0_i_3_n_0 ),
        .I3(\ALUOut[15]_INST_0_i_6_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I5(A[6]),
        .O(\ALUOut[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[6]_INST_0_i_3 
       (.I0(\ALUOut[6]_INST_0_i_4_n_0 ),
        .I1(\ALUOut[8]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[7]_INST_0_i_5_n_0 ),
        .I4(B[1]),
        .I5(\ALUOut[9]_INST_0_i_4_n_0 ),
        .O(\ALUOut[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \ALUOut[6]_INST_0_i_4 
       (.I0(B[4]),
        .I1(A[3]),
        .I2(B[3]),
        .I3(B[2]),
        .O(\ALUOut[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4474333388B84444)) 
    \ALUOut[7]_INST_0_i_1 
       (.I0(B[7]),
        .I1(\ALUOut[16]_INST_0_i_3_n_0 ),
        .I2(\ALUOut[7]_INST_0_i_3_n_0 ),
        .I3(\ALUOut[15]_INST_0_i_6_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I5(A[7]),
        .O(\ALUOut[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[7]_INST_0_i_3 
       (.I0(\ALUOut[7]_INST_0_i_5_n_0 ),
        .I1(\ALUOut[9]_INST_0_i_4_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[8]_INST_0_i_4_n_0 ),
        .I4(B[1]),
        .I5(\ALUOut[10]_INST_0_i_5_n_0 ),
        .O(\ALUOut[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUOut[7]_INST_0_i_5 
       (.I0(A[0]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[4]),
        .I4(B[3]),
        .O(\ALUOut[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4474333388B84444)) 
    \ALUOut[8]_INST_0_i_1 
       (.I0(B[8]),
        .I1(\ALUOut[16]_INST_0_i_3_n_0 ),
        .I2(\ALUOut[8]_INST_0_i_3_n_0 ),
        .I3(\ALUOut[15]_INST_0_i_6_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I5(A[8]),
        .O(\ALUOut[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[8]_INST_0_i_3 
       (.I0(\ALUOut[8]_INST_0_i_4_n_0 ),
        .I1(\ALUOut[10]_INST_0_i_5_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[9]_INST_0_i_4_n_0 ),
        .I4(B[1]),
        .I5(\ALUOut[10]_INST_0_i_6_n_0 ),
        .O(\ALUOut[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUOut[8]_INST_0_i_4 
       (.I0(A[1]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[5]),
        .I4(B[3]),
        .O(\ALUOut[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4474333388B84444)) 
    \ALUOut[9]_INST_0_i_1 
       (.I0(B[9]),
        .I1(\ALUOut[16]_INST_0_i_3_n_0 ),
        .I2(\ALUOut[9]_INST_0_i_3_n_0 ),
        .I3(\ALUOut[15]_INST_0_i_6_n_0 ),
        .I4(\ALUOut[31]_INST_0_i_10_n_0 ),
        .I5(A[9]),
        .O(\ALUOut[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUOut[9]_INST_0_i_3 
       (.I0(\ALUOut[9]_INST_0_i_4_n_0 ),
        .I1(\ALUOut[10]_INST_0_i_6_n_0 ),
        .I2(B[0]),
        .I3(\ALUOut[10]_INST_0_i_5_n_0 ),
        .I4(B[1]),
        .I5(\ALUOut[12]_INST_0_i_5_n_0 ),
        .O(\ALUOut[9]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUOut[9]_INST_0_i_4 
       (.I0(A[2]),
        .I1(B[2]),
        .I2(B[4]),
        .I3(A[6]),
        .I4(B[3]),
        .O(\ALUOut[9]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    Carryout_INST_0_i_2
       (.I0(ALUCntl[0]),
        .I1(ALUCntl[1]),
        .I2(ALUCntl[3]),
        .O(Carryout_INST_0_i_2_n_0));
  Datapath_ALU_0_0_ALU U0
       (.A(A),
        .ALUCntl(ALUCntl[2]),
        .ALUOut(ALUOut),
        .\ALUOut[11]_0 (\ALUOut[11]_INST_0_i_4_n_0 ),
        .\ALUOut[12]_0 (\ALUOut[12]_INST_0_i_3_n_0 ),
        .\ALUOut[13]_0 (\ALUOut[13]_INST_0_i_3_n_0 ),
        .\ALUOut[14]_0 (\ALUOut[14]_INST_0_i_3_n_0 ),
        .\ALUOut[15]_0 (\ALUOut[15]_INST_0_i_3_n_0 ),
        .\ALUOut[16]_0 (\ALUOut[16]_INST_0_i_3_n_0 ),
        .\ALUOut[16]_1 (\ALUOut[16]_INST_0_i_4_n_0 ),
        .\ALUOut[24]_INST_0_i_2_0 (\ALUOut[27]_INST_0_i_11_n_0 ),
        .\ALUOut[28]_INST_0_i_2_0 (\ALUOut[31]_INST_0_i_24_n_0 ),
        .\ALUOut[31]_0 (\ALUOut[31]_INST_0_i_2_n_0 ),
        .\ALUOut[31]_1 (\ALUOut[31]_INST_0_i_10_n_0 ),
        .ALUOut_0_sp_1(\ALUOut[0]_INST_0_i_1_n_0 ),
        .ALUOut_10_sp_1(\ALUOut[10]_INST_0_i_1_n_0 ),
        .ALUOut_11_sp_1(\ALUOut[11]_INST_0_i_3_n_0 ),
        .ALUOut_12_sp_1(\ALUOut[12]_INST_0_i_2_n_0 ),
        .ALUOut_13_sp_1(\ALUOut[13]_INST_0_i_2_n_0 ),
        .ALUOut_14_sp_1(\ALUOut[14]_INST_0_i_2_n_0 ),
        .ALUOut_15_sp_1(\ALUOut[15]_INST_0_i_2_n_0 ),
        .ALUOut_16_sp_1(\ALUOut[16]_INST_0_i_2_n_0 ),
        .ALUOut_17_sp_1(\ALUOut[17]_INST_0_i_1_n_0 ),
        .ALUOut_18_sp_1(\ALUOut[18]_INST_0_i_1_n_0 ),
        .ALUOut_19_sp_1(\ALUOut[19]_INST_0_i_1_n_0 ),
        .ALUOut_1_sp_1(\ALUOut[1]_INST_0_i_1_n_0 ),
        .ALUOut_20_sp_1(\ALUOut[20]_INST_0_i_1_n_0 ),
        .ALUOut_21_sp_1(\ALUOut[21]_INST_0_i_1_n_0 ),
        .ALUOut_22_sp_1(\ALUOut[22]_INST_0_i_1_n_0 ),
        .ALUOut_23_sp_1(\ALUOut[23]_INST_0_i_1_n_0 ),
        .ALUOut_24_sp_1(\ALUOut[24]_INST_0_i_1_n_0 ),
        .ALUOut_25_sp_1(\ALUOut[25]_INST_0_i_1_n_0 ),
        .ALUOut_26_sp_1(\ALUOut[26]_INST_0_i_1_n_0 ),
        .ALUOut_27_sp_1(\ALUOut[27]_INST_0_i_1_n_0 ),
        .ALUOut_28_sp_1(\ALUOut[28]_INST_0_i_1_n_0 ),
        .ALUOut_29_sp_1(\ALUOut[29]_INST_0_i_1_n_0 ),
        .ALUOut_2_sp_1(\ALUOut[2]_INST_0_i_1_n_0 ),
        .ALUOut_30_sp_1(\ALUOut[30]_INST_0_i_1_n_0 ),
        .ALUOut_31_sp_1(\ALUOut[31]_INST_0_i_1_n_0 ),
        .ALUOut_3_sp_1(\ALUOut[3]_INST_0_i_1_n_0 ),
        .ALUOut_4_sp_1(\ALUOut[4]_INST_0_i_1_n_0 ),
        .ALUOut_5_sp_1(\ALUOut[5]_INST_0_i_1_n_0 ),
        .ALUOut_6_sp_1(\ALUOut[6]_INST_0_i_1_n_0 ),
        .ALUOut_7_sp_1(\ALUOut[7]_INST_0_i_1_n_0 ),
        .ALUOut_8_sp_1(\ALUOut[8]_INST_0_i_1_n_0 ),
        .ALUOut_9_sp_1(\ALUOut[9]_INST_0_i_1_n_0 ),
        .B(B),
        .Carryout(Carryout),
        .Carryout_0(Carryout_INST_0_i_2_n_0),
        .Overflow(Overflow),
        .S({\ALUOut[15]_INST_0_i_7_n_0 ,\ALUOut[15]_INST_0_i_8_n_0 ,\ALUOut[15]_INST_0_i_9_n_0 ,\ALUOut[15]_INST_0_i_10_n_0 }),
        .Zero(Zero));
endmodule

(* ORIG_REF_NAME = "ALU" *) 
module Datapath_ALU_0_0_ALU
   (ALUOut,
    Zero,
    Carryout,
    Overflow,
    A,
    ALUCntl,
    B,
    ALUOut_31_sp_1,
    \ALUOut[31]_0 ,
    ALUOut_30_sp_1,
    ALUOut_29_sp_1,
    ALUOut_28_sp_1,
    ALUOut_27_sp_1,
    ALUOut_26_sp_1,
    ALUOut_25_sp_1,
    ALUOut_24_sp_1,
    ALUOut_23_sp_1,
    ALUOut_22_sp_1,
    ALUOut_21_sp_1,
    ALUOut_20_sp_1,
    ALUOut_19_sp_1,
    ALUOut_18_sp_1,
    ALUOut_17_sp_1,
    ALUOut_16_sp_1,
    \ALUOut[16]_0 ,
    \ALUOut[16]_1 ,
    ALUOut_11_sp_1,
    \ALUOut[11]_0 ,
    ALUOut_3_sp_1,
    ALUOut_2_sp_1,
    ALUOut_1_sp_1,
    ALUOut_0_sp_1,
    ALUOut_15_sp_1,
    \ALUOut[15]_0 ,
    ALUOut_14_sp_1,
    \ALUOut[14]_0 ,
    ALUOut_13_sp_1,
    \ALUOut[13]_0 ,
    ALUOut_12_sp_1,
    \ALUOut[12]_0 ,
    ALUOut_10_sp_1,
    ALUOut_9_sp_1,
    ALUOut_8_sp_1,
    ALUOut_7_sp_1,
    ALUOut_6_sp_1,
    ALUOut_5_sp_1,
    ALUOut_4_sp_1,
    \ALUOut[31]_1 ,
    S,
    \ALUOut[24]_INST_0_i_2_0 ,
    \ALUOut[28]_INST_0_i_2_0 ,
    Carryout_0);
  output [31:0]ALUOut;
  output Zero;
  output Carryout;
  output Overflow;
  input [31:0]A;
  input [0:0]ALUCntl;
  input [31:0]B;
  input ALUOut_31_sp_1;
  input \ALUOut[31]_0 ;
  input ALUOut_30_sp_1;
  input ALUOut_29_sp_1;
  input ALUOut_28_sp_1;
  input ALUOut_27_sp_1;
  input ALUOut_26_sp_1;
  input ALUOut_25_sp_1;
  input ALUOut_24_sp_1;
  input ALUOut_23_sp_1;
  input ALUOut_22_sp_1;
  input ALUOut_21_sp_1;
  input ALUOut_20_sp_1;
  input ALUOut_19_sp_1;
  input ALUOut_18_sp_1;
  input ALUOut_17_sp_1;
  input ALUOut_16_sp_1;
  input \ALUOut[16]_0 ;
  input \ALUOut[16]_1 ;
  input ALUOut_11_sp_1;
  input \ALUOut[11]_0 ;
  input ALUOut_3_sp_1;
  input ALUOut_2_sp_1;
  input ALUOut_1_sp_1;
  input ALUOut_0_sp_1;
  input ALUOut_15_sp_1;
  input \ALUOut[15]_0 ;
  input ALUOut_14_sp_1;
  input \ALUOut[14]_0 ;
  input ALUOut_13_sp_1;
  input \ALUOut[13]_0 ;
  input ALUOut_12_sp_1;
  input \ALUOut[12]_0 ;
  input ALUOut_10_sp_1;
  input ALUOut_9_sp_1;
  input ALUOut_8_sp_1;
  input ALUOut_7_sp_1;
  input ALUOut_6_sp_1;
  input ALUOut_5_sp_1;
  input ALUOut_4_sp_1;
  input \ALUOut[31]_1 ;
  input [3:0]S;
  input [0:0]\ALUOut[24]_INST_0_i_2_0 ;
  input [0:0]\ALUOut[28]_INST_0_i_2_0 ;
  input Carryout_0;

  wire [31:0]A;
  wire [0:0]ALUCntl;
  wire [31:0]ALUOut;
  wire \ALUOut[0]_INST_0_i_2_n_0 ;
  wire \ALUOut[10]_INST_0_i_10_n_0 ;
  wire \ALUOut[10]_INST_0_i_2_n_0 ;
  wire \ALUOut[10]_INST_0_i_4_n_0 ;
  wire \ALUOut[10]_INST_0_i_4_n_1 ;
  wire \ALUOut[10]_INST_0_i_4_n_2 ;
  wire \ALUOut[10]_INST_0_i_4_n_3 ;
  wire \ALUOut[10]_INST_0_i_4_n_4 ;
  wire \ALUOut[10]_INST_0_i_4_n_5 ;
  wire \ALUOut[10]_INST_0_i_4_n_6 ;
  wire \ALUOut[10]_INST_0_i_4_n_7 ;
  wire \ALUOut[10]_INST_0_i_7_n_0 ;
  wire \ALUOut[10]_INST_0_i_8_n_0 ;
  wire \ALUOut[10]_INST_0_i_9_n_0 ;
  wire \ALUOut[11]_0 ;
  wire \ALUOut[11]_INST_0_i_1_n_0 ;
  wire \ALUOut[11]_INST_0_i_2_n_0 ;
  wire \ALUOut[12]_0 ;
  wire \ALUOut[12]_INST_0_i_1_n_0 ;
  wire \ALUOut[13]_0 ;
  wire \ALUOut[13]_INST_0_i_1_n_0 ;
  wire \ALUOut[14]_0 ;
  wire \ALUOut[14]_INST_0_i_1_n_0 ;
  wire \ALUOut[15]_0 ;
  wire \ALUOut[15]_INST_0_i_1_n_0 ;
  wire \ALUOut[15]_INST_0_i_4_n_0 ;
  wire \ALUOut[15]_INST_0_i_4_n_1 ;
  wire \ALUOut[15]_INST_0_i_4_n_2 ;
  wire \ALUOut[15]_INST_0_i_4_n_3 ;
  wire \ALUOut[15]_INST_0_i_4_n_4 ;
  wire \ALUOut[15]_INST_0_i_4_n_5 ;
  wire \ALUOut[15]_INST_0_i_4_n_6 ;
  wire \ALUOut[15]_INST_0_i_4_n_7 ;
  wire \ALUOut[16]_0 ;
  wire \ALUOut[16]_1 ;
  wire \ALUOut[16]_INST_0_i_1_n_0 ;
  wire \ALUOut[17]_INST_0_i_2_n_0 ;
  wire \ALUOut[18]_INST_0_i_2_n_0 ;
  wire \ALUOut[19]_INST_0_i_10_n_0 ;
  wire \ALUOut[19]_INST_0_i_11_n_0 ;
  wire \ALUOut[19]_INST_0_i_2_n_0 ;
  wire \ALUOut[19]_INST_0_i_6_n_0 ;
  wire \ALUOut[19]_INST_0_i_6_n_1 ;
  wire \ALUOut[19]_INST_0_i_6_n_2 ;
  wire \ALUOut[19]_INST_0_i_6_n_3 ;
  wire \ALUOut[19]_INST_0_i_6_n_4 ;
  wire \ALUOut[19]_INST_0_i_6_n_5 ;
  wire \ALUOut[19]_INST_0_i_6_n_6 ;
  wire \ALUOut[19]_INST_0_i_6_n_7 ;
  wire \ALUOut[19]_INST_0_i_8_n_0 ;
  wire \ALUOut[19]_INST_0_i_9_n_0 ;
  wire \ALUOut[1]_INST_0_i_2_n_0 ;
  wire \ALUOut[20]_INST_0_i_2_n_0 ;
  wire \ALUOut[21]_INST_0_i_2_n_0 ;
  wire \ALUOut[22]_INST_0_i_2_n_0 ;
  wire \ALUOut[23]_INST_0_i_10_n_0 ;
  wire \ALUOut[23]_INST_0_i_11_n_0 ;
  wire \ALUOut[23]_INST_0_i_2_n_0 ;
  wire \ALUOut[23]_INST_0_i_6_n_0 ;
  wire \ALUOut[23]_INST_0_i_6_n_1 ;
  wire \ALUOut[23]_INST_0_i_6_n_2 ;
  wire \ALUOut[23]_INST_0_i_6_n_3 ;
  wire \ALUOut[23]_INST_0_i_6_n_4 ;
  wire \ALUOut[23]_INST_0_i_6_n_5 ;
  wire \ALUOut[23]_INST_0_i_6_n_6 ;
  wire \ALUOut[23]_INST_0_i_6_n_7 ;
  wire \ALUOut[23]_INST_0_i_8_n_0 ;
  wire \ALUOut[23]_INST_0_i_9_n_0 ;
  wire [0:0]\ALUOut[24]_INST_0_i_2_0 ;
  wire \ALUOut[24]_INST_0_i_2_n_0 ;
  wire \ALUOut[25]_INST_0_i_2_n_0 ;
  wire \ALUOut[26]_INST_0_i_2_n_0 ;
  wire \ALUOut[27]_INST_0_i_10_n_0 ;
  wire \ALUOut[27]_INST_0_i_2_n_0 ;
  wire \ALUOut[27]_INST_0_i_6_n_0 ;
  wire \ALUOut[27]_INST_0_i_6_n_1 ;
  wire \ALUOut[27]_INST_0_i_6_n_2 ;
  wire \ALUOut[27]_INST_0_i_6_n_3 ;
  wire \ALUOut[27]_INST_0_i_6_n_4 ;
  wire \ALUOut[27]_INST_0_i_6_n_5 ;
  wire \ALUOut[27]_INST_0_i_6_n_6 ;
  wire \ALUOut[27]_INST_0_i_6_n_7 ;
  wire \ALUOut[27]_INST_0_i_8_n_0 ;
  wire \ALUOut[27]_INST_0_i_9_n_0 ;
  wire [0:0]\ALUOut[28]_INST_0_i_2_0 ;
  wire \ALUOut[28]_INST_0_i_2_n_0 ;
  wire \ALUOut[29]_INST_0_i_2_n_0 ;
  wire \ALUOut[2]_INST_0_i_2_n_0 ;
  wire \ALUOut[30]_INST_0_i_2_n_0 ;
  wire \ALUOut[31]_0 ;
  wire \ALUOut[31]_1 ;
  wire \ALUOut[31]_INST_0_i_25_n_0 ;
  wire \ALUOut[31]_INST_0_i_26_n_0 ;
  wire \ALUOut[31]_INST_0_i_27_n_0 ;
  wire \ALUOut[31]_INST_0_i_3_n_0 ;
  wire \ALUOut[31]_INST_0_i_9_n_0 ;
  wire \ALUOut[31]_INST_0_i_9_n_1 ;
  wire \ALUOut[31]_INST_0_i_9_n_2 ;
  wire \ALUOut[31]_INST_0_i_9_n_3 ;
  wire \ALUOut[31]_INST_0_i_9_n_4 ;
  wire \ALUOut[31]_INST_0_i_9_n_5 ;
  wire \ALUOut[31]_INST_0_i_9_n_6 ;
  wire \ALUOut[31]_INST_0_i_9_n_7 ;
  wire \ALUOut[3]_INST_0_i_2_n_0 ;
  wire \ALUOut[3]_INST_0_i_4_n_0 ;
  wire \ALUOut[3]_INST_0_i_4_n_1 ;
  wire \ALUOut[3]_INST_0_i_4_n_2 ;
  wire \ALUOut[3]_INST_0_i_4_n_3 ;
  wire \ALUOut[3]_INST_0_i_4_n_4 ;
  wire \ALUOut[3]_INST_0_i_4_n_5 ;
  wire \ALUOut[3]_INST_0_i_4_n_6 ;
  wire \ALUOut[3]_INST_0_i_4_n_7 ;
  wire \ALUOut[3]_INST_0_i_6_n_0 ;
  wire \ALUOut[3]_INST_0_i_7_n_0 ;
  wire \ALUOut[3]_INST_0_i_8_n_0 ;
  wire \ALUOut[3]_INST_0_i_9_n_0 ;
  wire \ALUOut[4]_INST_0_i_2_n_0 ;
  wire \ALUOut[5]_INST_0_i_2_n_0 ;
  wire \ALUOut[6]_INST_0_i_2_n_0 ;
  wire \ALUOut[7]_INST_0_i_2_n_0 ;
  wire \ALUOut[7]_INST_0_i_4_n_0 ;
  wire \ALUOut[7]_INST_0_i_4_n_1 ;
  wire \ALUOut[7]_INST_0_i_4_n_2 ;
  wire \ALUOut[7]_INST_0_i_4_n_3 ;
  wire \ALUOut[7]_INST_0_i_4_n_4 ;
  wire \ALUOut[7]_INST_0_i_4_n_5 ;
  wire \ALUOut[7]_INST_0_i_4_n_6 ;
  wire \ALUOut[7]_INST_0_i_4_n_7 ;
  wire \ALUOut[7]_INST_0_i_6_n_0 ;
  wire \ALUOut[7]_INST_0_i_7_n_0 ;
  wire \ALUOut[7]_INST_0_i_8_n_0 ;
  wire \ALUOut[7]_INST_0_i_9_n_0 ;
  wire \ALUOut[8]_INST_0_i_2_n_0 ;
  wire \ALUOut[9]_INST_0_i_2_n_0 ;
  wire ALUOut_0_sn_1;
  wire ALUOut_10_sn_1;
  wire ALUOut_11_sn_1;
  wire ALUOut_12_sn_1;
  wire ALUOut_13_sn_1;
  wire ALUOut_14_sn_1;
  wire ALUOut_15_sn_1;
  wire ALUOut_16_sn_1;
  wire ALUOut_17_sn_1;
  wire ALUOut_18_sn_1;
  wire ALUOut_19_sn_1;
  wire ALUOut_1_sn_1;
  wire ALUOut_20_sn_1;
  wire ALUOut_21_sn_1;
  wire ALUOut_22_sn_1;
  wire ALUOut_23_sn_1;
  wire ALUOut_24_sn_1;
  wire ALUOut_25_sn_1;
  wire ALUOut_26_sn_1;
  wire ALUOut_27_sn_1;
  wire ALUOut_28_sn_1;
  wire ALUOut_29_sn_1;
  wire ALUOut_2_sn_1;
  wire ALUOut_30_sn_1;
  wire ALUOut_31_sn_1;
  wire ALUOut_3_sn_1;
  wire ALUOut_4_sn_1;
  wire ALUOut_5_sn_1;
  wire ALUOut_6_sn_1;
  wire ALUOut_7_sn_1;
  wire ALUOut_8_sn_1;
  wire ALUOut_9_sn_1;
  wire [31:0]B;
  wire Carryout;
  wire Carryout_0;
  wire Carryout_INST_0_i_1_n_0;
  wire Carryout_INST_0_i_4_n_3;
  wire Overflow;
  wire Overflow_INST_0_i_1_n_0;
  wire [3:0]S;
  wire Zero;
  wire Zero_INST_0_i_10_n_0;
  wire Zero_INST_0_i_1_n_0;
  wire Zero_INST_0_i_2_n_0;
  wire Zero_INST_0_i_3_n_0;
  wire Zero_INST_0_i_4_n_0;
  wire Zero_INST_0_i_5_n_0;
  wire Zero_INST_0_i_6_n_0;
  wire Zero_INST_0_i_7_n_0;
  wire Zero_INST_0_i_8_n_0;
  wire Zero_INST_0_i_9_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__0_n_4;
  wire minusOp_carry__0_n_5;
  wire minusOp_carry__0_n_6;
  wire minusOp_carry__0_n_7;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__1_n_4;
  wire minusOp_carry__1_n_5;
  wire minusOp_carry__1_n_6;
  wire minusOp_carry__1_n_7;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_1;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__2_n_4;
  wire minusOp_carry__2_n_5;
  wire minusOp_carry__2_n_6;
  wire minusOp_carry__2_n_7;
  wire minusOp_carry__3_n_0;
  wire minusOp_carry__3_n_1;
  wire minusOp_carry__3_n_2;
  wire minusOp_carry__3_n_3;
  wire minusOp_carry__3_n_4;
  wire minusOp_carry__3_n_5;
  wire minusOp_carry__3_n_6;
  wire minusOp_carry__3_n_7;
  wire minusOp_carry__4_n_0;
  wire minusOp_carry__4_n_1;
  wire minusOp_carry__4_n_2;
  wire minusOp_carry__4_n_3;
  wire minusOp_carry__4_n_4;
  wire minusOp_carry__4_n_5;
  wire minusOp_carry__4_n_6;
  wire minusOp_carry__4_n_7;
  wire minusOp_carry__5_n_0;
  wire minusOp_carry__5_n_1;
  wire minusOp_carry__5_n_2;
  wire minusOp_carry__5_n_3;
  wire minusOp_carry__5_n_4;
  wire minusOp_carry__5_n_5;
  wire minusOp_carry__5_n_6;
  wire minusOp_carry__5_n_7;
  wire minusOp_carry__6_n_0;
  wire minusOp_carry__6_n_1;
  wire minusOp_carry__6_n_2;
  wire minusOp_carry__6_n_3;
  wire minusOp_carry__6_n_4;
  wire minusOp_carry__6_n_5;
  wire minusOp_carry__6_n_6;
  wire minusOp_carry__6_n_7;
  wire minusOp_carry_i_1__0_n_0;
  wire minusOp_carry_i_1__1_n_0;
  wire minusOp_carry_i_1__2_n_0;
  wire minusOp_carry_i_1__3_n_0;
  wire minusOp_carry_i_1__4_n_0;
  wire minusOp_carry_i_1__5_n_0;
  wire minusOp_carry_i_1__6_n_0;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2__0_n_0;
  wire minusOp_carry_i_2__1_n_0;
  wire minusOp_carry_i_2__2_n_0;
  wire minusOp_carry_i_2__3_n_0;
  wire minusOp_carry_i_2__4_n_0;
  wire minusOp_carry_i_2__5_n_0;
  wire minusOp_carry_i_2__6_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3__0_n_0;
  wire minusOp_carry_i_3__1_n_0;
  wire minusOp_carry_i_3__2_n_0;
  wire minusOp_carry_i_3__3_n_0;
  wire minusOp_carry_i_3__4_n_0;
  wire minusOp_carry_i_3__5_n_0;
  wire minusOp_carry_i_3__6_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4__0_n_0;
  wire minusOp_carry_i_4__1_n_0;
  wire minusOp_carry_i_4__2_n_0;
  wire minusOp_carry_i_4__3_n_0;
  wire minusOp_carry_i_4__4_n_0;
  wire minusOp_carry_i_4__5_n_0;
  wire minusOp_carry_i_4__6_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_4;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire [32:32]plusOp;
  wire [3:1]NLW_Carryout_INST_0_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_Carryout_INST_0_i_3_O_UNCONNECTED;
  wire [3:1]NLW_Carryout_INST_0_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_Carryout_INST_0_i_4_O_UNCONNECTED;

  assign ALUOut_0_sn_1 = ALUOut_0_sp_1;
  assign ALUOut_10_sn_1 = ALUOut_10_sp_1;
  assign ALUOut_11_sn_1 = ALUOut_11_sp_1;
  assign ALUOut_12_sn_1 = ALUOut_12_sp_1;
  assign ALUOut_13_sn_1 = ALUOut_13_sp_1;
  assign ALUOut_14_sn_1 = ALUOut_14_sp_1;
  assign ALUOut_15_sn_1 = ALUOut_15_sp_1;
  assign ALUOut_16_sn_1 = ALUOut_16_sp_1;
  assign ALUOut_17_sn_1 = ALUOut_17_sp_1;
  assign ALUOut_18_sn_1 = ALUOut_18_sp_1;
  assign ALUOut_19_sn_1 = ALUOut_19_sp_1;
  assign ALUOut_1_sn_1 = ALUOut_1_sp_1;
  assign ALUOut_20_sn_1 = ALUOut_20_sp_1;
  assign ALUOut_21_sn_1 = ALUOut_21_sp_1;
  assign ALUOut_22_sn_1 = ALUOut_22_sp_1;
  assign ALUOut_23_sn_1 = ALUOut_23_sp_1;
  assign ALUOut_24_sn_1 = ALUOut_24_sp_1;
  assign ALUOut_25_sn_1 = ALUOut_25_sp_1;
  assign ALUOut_26_sn_1 = ALUOut_26_sp_1;
  assign ALUOut_27_sn_1 = ALUOut_27_sp_1;
  assign ALUOut_28_sn_1 = ALUOut_28_sp_1;
  assign ALUOut_29_sn_1 = ALUOut_29_sp_1;
  assign ALUOut_2_sn_1 = ALUOut_2_sp_1;
  assign ALUOut_30_sn_1 = ALUOut_30_sp_1;
  assign ALUOut_31_sn_1 = ALUOut_31_sp_1;
  assign ALUOut_3_sn_1 = ALUOut_3_sp_1;
  assign ALUOut_4_sn_1 = ALUOut_4_sp_1;
  assign ALUOut_5_sn_1 = ALUOut_5_sp_1;
  assign ALUOut_6_sn_1 = ALUOut_6_sp_1;
  assign ALUOut_7_sn_1 = ALUOut_7_sp_1;
  assign ALUOut_8_sn_1 = ALUOut_8_sp_1;
  assign ALUOut_9_sn_1 = ALUOut_9_sp_1;
  MUXF7 \ALUOut[0]_INST_0 
       (.I0(ALUOut_0_sn_1),
        .I1(\ALUOut[0]_INST_0_i_2_n_0 ),
        .O(ALUOut[0]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[0]_INST_0_i_2 
       (.I0(\ALUOut[3]_INST_0_i_4_n_7 ),
        .I1(minusOp_carry_n_7),
        .I2(\ALUOut[16]_0 ),
        .I3(B[0]),
        .I4(A[0]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[0]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[10]_INST_0 
       (.I0(ALUOut_10_sn_1),
        .I1(\ALUOut[10]_INST_0_i_2_n_0 ),
        .O(ALUOut[10]),
        .S(ALUOut_31_sn_1));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[10]_INST_0_i_10 
       (.I0(A[8]),
        .I1(B[8]),
        .O(\ALUOut[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[10]_INST_0_i_2 
       (.I0(\ALUOut[10]_INST_0_i_4_n_5 ),
        .I1(minusOp_carry__1_n_5),
        .I2(\ALUOut[16]_0 ),
        .I3(B[10]),
        .I4(A[10]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[10]_INST_0_i_2_n_0 ));
  CARRY4 \ALUOut[10]_INST_0_i_4 
       (.CI(\ALUOut[7]_INST_0_i_4_n_0 ),
        .CO({\ALUOut[10]_INST_0_i_4_n_0 ,\ALUOut[10]_INST_0_i_4_n_1 ,\ALUOut[10]_INST_0_i_4_n_2 ,\ALUOut[10]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O({\ALUOut[10]_INST_0_i_4_n_4 ,\ALUOut[10]_INST_0_i_4_n_5 ,\ALUOut[10]_INST_0_i_4_n_6 ,\ALUOut[10]_INST_0_i_4_n_7 }),
        .S({\ALUOut[10]_INST_0_i_7_n_0 ,\ALUOut[10]_INST_0_i_8_n_0 ,\ALUOut[10]_INST_0_i_9_n_0 ,\ALUOut[10]_INST_0_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[10]_INST_0_i_7 
       (.I0(A[11]),
        .I1(B[11]),
        .O(\ALUOut[10]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[10]_INST_0_i_8 
       (.I0(A[10]),
        .I1(B[10]),
        .O(\ALUOut[10]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[10]_INST_0_i_9 
       (.I0(A[9]),
        .I1(B[9]),
        .O(\ALUOut[10]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ALUOut[11]_INST_0 
       (.I0(\ALUOut[11]_INST_0_i_1_n_0 ),
        .O(ALUOut[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUOut[11]_INST_0_i_1 
       (.I0(\ALUOut[11]_INST_0_i_2_n_0 ),
        .I1(ALUOut_31_sn_1),
        .I2(ALUOut_11_sn_1),
        .I3(\ALUOut[16]_0 ),
        .I4(\ALUOut[11]_0 ),
        .O(\ALUOut[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h303F3F3F5050505F)) 
    \ALUOut[11]_INST_0_i_2 
       (.I0(minusOp_carry__1_n_4),
        .I1(\ALUOut[10]_INST_0_i_4_n_4 ),
        .I2(\ALUOut[16]_0 ),
        .I3(B[11]),
        .I4(A[11]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[11]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUOut[12]_INST_0 
       (.I0(\ALUOut[12]_INST_0_i_1_n_0 ),
        .I1(ALUOut_31_sn_1),
        .I2(ALUOut_12_sn_1),
        .I3(\ALUOut[16]_0 ),
        .I4(\ALUOut[12]_0 ),
        .O(ALUOut[12]));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[12]_INST_0_i_1 
       (.I0(\ALUOut[15]_INST_0_i_4_n_7 ),
        .I1(minusOp_carry__2_n_7),
        .I2(\ALUOut[16]_0 ),
        .I3(B[12]),
        .I4(A[12]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUOut[13]_INST_0 
       (.I0(\ALUOut[13]_INST_0_i_1_n_0 ),
        .I1(ALUOut_31_sn_1),
        .I2(ALUOut_13_sn_1),
        .I3(\ALUOut[16]_0 ),
        .I4(\ALUOut[13]_0 ),
        .O(ALUOut[13]));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[13]_INST_0_i_1 
       (.I0(\ALUOut[15]_INST_0_i_4_n_6 ),
        .I1(minusOp_carry__2_n_6),
        .I2(\ALUOut[16]_0 ),
        .I3(B[13]),
        .I4(A[13]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUOut[14]_INST_0 
       (.I0(\ALUOut[14]_INST_0_i_1_n_0 ),
        .I1(ALUOut_31_sn_1),
        .I2(ALUOut_14_sn_1),
        .I3(\ALUOut[16]_0 ),
        .I4(\ALUOut[14]_0 ),
        .O(ALUOut[14]));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[14]_INST_0_i_1 
       (.I0(\ALUOut[15]_INST_0_i_4_n_5 ),
        .I1(minusOp_carry__2_n_5),
        .I2(\ALUOut[16]_0 ),
        .I3(B[14]),
        .I4(A[14]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUOut[15]_INST_0 
       (.I0(\ALUOut[15]_INST_0_i_1_n_0 ),
        .I1(ALUOut_31_sn_1),
        .I2(ALUOut_15_sn_1),
        .I3(\ALUOut[16]_0 ),
        .I4(\ALUOut[15]_0 ),
        .O(ALUOut[15]));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[15]_INST_0_i_1 
       (.I0(\ALUOut[15]_INST_0_i_4_n_4 ),
        .I1(minusOp_carry__2_n_4),
        .I2(\ALUOut[16]_0 ),
        .I3(B[15]),
        .I4(A[15]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[15]_INST_0_i_1_n_0 ));
  CARRY4 \ALUOut[15]_INST_0_i_4 
       (.CI(\ALUOut[10]_INST_0_i_4_n_0 ),
        .CO({\ALUOut[15]_INST_0_i_4_n_0 ,\ALUOut[15]_INST_0_i_4_n_1 ,\ALUOut[15]_INST_0_i_4_n_2 ,\ALUOut[15]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(A[15:12]),
        .O({\ALUOut[15]_INST_0_i_4_n_4 ,\ALUOut[15]_INST_0_i_4_n_5 ,\ALUOut[15]_INST_0_i_4_n_6 ,\ALUOut[15]_INST_0_i_4_n_7 }),
        .S(S));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUOut[16]_INST_0 
       (.I0(\ALUOut[16]_INST_0_i_1_n_0 ),
        .I1(ALUOut_31_sn_1),
        .I2(ALUOut_16_sn_1),
        .I3(\ALUOut[16]_0 ),
        .I4(\ALUOut[16]_1 ),
        .O(ALUOut[16]));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[16]_INST_0_i_1 
       (.I0(\ALUOut[19]_INST_0_i_6_n_7 ),
        .I1(minusOp_carry__3_n_7),
        .I2(\ALUOut[16]_0 ),
        .I3(B[16]),
        .I4(A[16]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[16]_INST_0_i_1_n_0 ));
  MUXF7 \ALUOut[17]_INST_0 
       (.I0(ALUOut_17_sn_1),
        .I1(\ALUOut[17]_INST_0_i_2_n_0 ),
        .O(ALUOut[17]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[17]_INST_0_i_2 
       (.I0(\ALUOut[19]_INST_0_i_6_n_6 ),
        .I1(minusOp_carry__3_n_6),
        .I2(\ALUOut[16]_0 ),
        .I3(B[17]),
        .I4(A[17]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[17]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[18]_INST_0 
       (.I0(ALUOut_18_sn_1),
        .I1(\ALUOut[18]_INST_0_i_2_n_0 ),
        .O(ALUOut[18]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[18]_INST_0_i_2 
       (.I0(\ALUOut[19]_INST_0_i_6_n_5 ),
        .I1(minusOp_carry__3_n_5),
        .I2(\ALUOut[16]_0 ),
        .I3(B[18]),
        .I4(A[18]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[18]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[19]_INST_0 
       (.I0(ALUOut_19_sn_1),
        .I1(\ALUOut[19]_INST_0_i_2_n_0 ),
        .O(ALUOut[19]),
        .S(ALUOut_31_sn_1));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[19]_INST_0_i_10 
       (.I0(A[17]),
        .I1(B[17]),
        .O(\ALUOut[19]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[19]_INST_0_i_11 
       (.I0(A[16]),
        .I1(B[16]),
        .O(\ALUOut[19]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[19]_INST_0_i_2 
       (.I0(\ALUOut[19]_INST_0_i_6_n_4 ),
        .I1(minusOp_carry__3_n_4),
        .I2(\ALUOut[16]_0 ),
        .I3(B[19]),
        .I4(A[19]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[19]_INST_0_i_2_n_0 ));
  CARRY4 \ALUOut[19]_INST_0_i_6 
       (.CI(\ALUOut[15]_INST_0_i_4_n_0 ),
        .CO({\ALUOut[19]_INST_0_i_6_n_0 ,\ALUOut[19]_INST_0_i_6_n_1 ,\ALUOut[19]_INST_0_i_6_n_2 ,\ALUOut[19]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(A[19:16]),
        .O({\ALUOut[19]_INST_0_i_6_n_4 ,\ALUOut[19]_INST_0_i_6_n_5 ,\ALUOut[19]_INST_0_i_6_n_6 ,\ALUOut[19]_INST_0_i_6_n_7 }),
        .S({\ALUOut[19]_INST_0_i_8_n_0 ,\ALUOut[19]_INST_0_i_9_n_0 ,\ALUOut[19]_INST_0_i_10_n_0 ,\ALUOut[19]_INST_0_i_11_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[19]_INST_0_i_8 
       (.I0(A[19]),
        .I1(B[19]),
        .O(\ALUOut[19]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[19]_INST_0_i_9 
       (.I0(A[18]),
        .I1(B[18]),
        .O(\ALUOut[19]_INST_0_i_9_n_0 ));
  MUXF7 \ALUOut[1]_INST_0 
       (.I0(ALUOut_1_sn_1),
        .I1(\ALUOut[1]_INST_0_i_2_n_0 ),
        .O(ALUOut[1]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[1]_INST_0_i_2 
       (.I0(\ALUOut[3]_INST_0_i_4_n_6 ),
        .I1(minusOp_carry_n_6),
        .I2(\ALUOut[16]_0 ),
        .I3(B[1]),
        .I4(A[1]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[1]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[20]_INST_0 
       (.I0(ALUOut_20_sn_1),
        .I1(\ALUOut[20]_INST_0_i_2_n_0 ),
        .O(ALUOut[20]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[20]_INST_0_i_2 
       (.I0(\ALUOut[23]_INST_0_i_6_n_7 ),
        .I1(minusOp_carry__4_n_7),
        .I2(\ALUOut[16]_0 ),
        .I3(B[20]),
        .I4(A[20]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[20]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[21]_INST_0 
       (.I0(ALUOut_21_sn_1),
        .I1(\ALUOut[21]_INST_0_i_2_n_0 ),
        .O(ALUOut[21]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[21]_INST_0_i_2 
       (.I0(\ALUOut[23]_INST_0_i_6_n_6 ),
        .I1(minusOp_carry__4_n_6),
        .I2(\ALUOut[16]_0 ),
        .I3(B[21]),
        .I4(A[21]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[21]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[22]_INST_0 
       (.I0(ALUOut_22_sn_1),
        .I1(\ALUOut[22]_INST_0_i_2_n_0 ),
        .O(ALUOut[22]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[22]_INST_0_i_2 
       (.I0(\ALUOut[23]_INST_0_i_6_n_5 ),
        .I1(minusOp_carry__4_n_5),
        .I2(\ALUOut[16]_0 ),
        .I3(B[22]),
        .I4(A[22]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[22]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[23]_INST_0 
       (.I0(ALUOut_23_sn_1),
        .I1(\ALUOut[23]_INST_0_i_2_n_0 ),
        .O(ALUOut[23]),
        .S(ALUOut_31_sn_1));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[23]_INST_0_i_10 
       (.I0(A[21]),
        .I1(B[21]),
        .O(\ALUOut[23]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[23]_INST_0_i_11 
       (.I0(A[20]),
        .I1(B[20]),
        .O(\ALUOut[23]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[23]_INST_0_i_2 
       (.I0(\ALUOut[23]_INST_0_i_6_n_4 ),
        .I1(minusOp_carry__4_n_4),
        .I2(\ALUOut[16]_0 ),
        .I3(B[23]),
        .I4(A[23]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[23]_INST_0_i_2_n_0 ));
  CARRY4 \ALUOut[23]_INST_0_i_6 
       (.CI(\ALUOut[19]_INST_0_i_6_n_0 ),
        .CO({\ALUOut[23]_INST_0_i_6_n_0 ,\ALUOut[23]_INST_0_i_6_n_1 ,\ALUOut[23]_INST_0_i_6_n_2 ,\ALUOut[23]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(A[23:20]),
        .O({\ALUOut[23]_INST_0_i_6_n_4 ,\ALUOut[23]_INST_0_i_6_n_5 ,\ALUOut[23]_INST_0_i_6_n_6 ,\ALUOut[23]_INST_0_i_6_n_7 }),
        .S({\ALUOut[23]_INST_0_i_8_n_0 ,\ALUOut[23]_INST_0_i_9_n_0 ,\ALUOut[23]_INST_0_i_10_n_0 ,\ALUOut[23]_INST_0_i_11_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[23]_INST_0_i_8 
       (.I0(A[23]),
        .I1(B[23]),
        .O(\ALUOut[23]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[23]_INST_0_i_9 
       (.I0(A[22]),
        .I1(B[22]),
        .O(\ALUOut[23]_INST_0_i_9_n_0 ));
  MUXF7 \ALUOut[24]_INST_0 
       (.I0(ALUOut_24_sn_1),
        .I1(\ALUOut[24]_INST_0_i_2_n_0 ),
        .O(ALUOut[24]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[24]_INST_0_i_2 
       (.I0(\ALUOut[27]_INST_0_i_6_n_7 ),
        .I1(minusOp_carry__5_n_7),
        .I2(\ALUOut[16]_0 ),
        .I3(B[24]),
        .I4(A[24]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[24]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[25]_INST_0 
       (.I0(ALUOut_25_sn_1),
        .I1(\ALUOut[25]_INST_0_i_2_n_0 ),
        .O(ALUOut[25]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[25]_INST_0_i_2 
       (.I0(\ALUOut[27]_INST_0_i_6_n_6 ),
        .I1(minusOp_carry__5_n_6),
        .I2(\ALUOut[16]_0 ),
        .I3(B[25]),
        .I4(A[25]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[25]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[26]_INST_0 
       (.I0(ALUOut_26_sn_1),
        .I1(\ALUOut[26]_INST_0_i_2_n_0 ),
        .O(ALUOut[26]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[26]_INST_0_i_2 
       (.I0(\ALUOut[27]_INST_0_i_6_n_5 ),
        .I1(minusOp_carry__5_n_5),
        .I2(\ALUOut[16]_0 ),
        .I3(B[26]),
        .I4(A[26]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[26]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[27]_INST_0 
       (.I0(ALUOut_27_sn_1),
        .I1(\ALUOut[27]_INST_0_i_2_n_0 ),
        .O(ALUOut[27]),
        .S(ALUOut_31_sn_1));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[27]_INST_0_i_10 
       (.I0(A[25]),
        .I1(B[25]),
        .O(\ALUOut[27]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[27]_INST_0_i_2 
       (.I0(\ALUOut[27]_INST_0_i_6_n_4 ),
        .I1(minusOp_carry__5_n_4),
        .I2(\ALUOut[16]_0 ),
        .I3(B[27]),
        .I4(A[27]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[27]_INST_0_i_2_n_0 ));
  CARRY4 \ALUOut[27]_INST_0_i_6 
       (.CI(\ALUOut[23]_INST_0_i_6_n_0 ),
        .CO({\ALUOut[27]_INST_0_i_6_n_0 ,\ALUOut[27]_INST_0_i_6_n_1 ,\ALUOut[27]_INST_0_i_6_n_2 ,\ALUOut[27]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(A[27:24]),
        .O({\ALUOut[27]_INST_0_i_6_n_4 ,\ALUOut[27]_INST_0_i_6_n_5 ,\ALUOut[27]_INST_0_i_6_n_6 ,\ALUOut[27]_INST_0_i_6_n_7 }),
        .S({\ALUOut[27]_INST_0_i_8_n_0 ,\ALUOut[27]_INST_0_i_9_n_0 ,\ALUOut[27]_INST_0_i_10_n_0 ,\ALUOut[24]_INST_0_i_2_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[27]_INST_0_i_8 
       (.I0(A[27]),
        .I1(B[27]),
        .O(\ALUOut[27]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[27]_INST_0_i_9 
       (.I0(A[26]),
        .I1(B[26]),
        .O(\ALUOut[27]_INST_0_i_9_n_0 ));
  MUXF7 \ALUOut[28]_INST_0 
       (.I0(ALUOut_28_sn_1),
        .I1(\ALUOut[28]_INST_0_i_2_n_0 ),
        .O(ALUOut[28]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[28]_INST_0_i_2 
       (.I0(\ALUOut[31]_INST_0_i_9_n_7 ),
        .I1(minusOp_carry__6_n_7),
        .I2(\ALUOut[16]_0 ),
        .I3(B[28]),
        .I4(A[28]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[28]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[29]_INST_0 
       (.I0(ALUOut_29_sn_1),
        .I1(\ALUOut[29]_INST_0_i_2_n_0 ),
        .O(ALUOut[29]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[29]_INST_0_i_2 
       (.I0(\ALUOut[31]_INST_0_i_9_n_6 ),
        .I1(minusOp_carry__6_n_6),
        .I2(\ALUOut[16]_0 ),
        .I3(B[29]),
        .I4(A[29]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[29]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[2]_INST_0 
       (.I0(ALUOut_2_sn_1),
        .I1(\ALUOut[2]_INST_0_i_2_n_0 ),
        .O(ALUOut[2]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[2]_INST_0_i_2 
       (.I0(\ALUOut[3]_INST_0_i_4_n_5 ),
        .I1(minusOp_carry_n_5),
        .I2(\ALUOut[16]_0 ),
        .I3(B[2]),
        .I4(A[2]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[2]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[30]_INST_0 
       (.I0(ALUOut_30_sn_1),
        .I1(\ALUOut[30]_INST_0_i_2_n_0 ),
        .O(ALUOut[30]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[30]_INST_0_i_2 
       (.I0(\ALUOut[31]_INST_0_i_9_n_5 ),
        .I1(minusOp_carry__6_n_5),
        .I2(\ALUOut[16]_0 ),
        .I3(B[30]),
        .I4(A[30]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[30]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[31]_INST_0 
       (.I0(\ALUOut[31]_0 ),
        .I1(\ALUOut[31]_INST_0_i_3_n_0 ),
        .O(ALUOut[31]),
        .S(ALUOut_31_sn_1));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[31]_INST_0_i_25 
       (.I0(A[30]),
        .I1(B[30]),
        .O(\ALUOut[31]_INST_0_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[31]_INST_0_i_26 
       (.I0(A[29]),
        .I1(B[29]),
        .O(\ALUOut[31]_INST_0_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[31]_INST_0_i_27 
       (.I0(A[28]),
        .I1(B[28]),
        .O(\ALUOut[31]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[31]_INST_0_i_3 
       (.I0(\ALUOut[31]_INST_0_i_9_n_4 ),
        .I1(minusOp_carry__6_n_4),
        .I2(\ALUOut[16]_0 ),
        .I3(A[31]),
        .I4(B[31]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[31]_INST_0_i_3_n_0 ));
  CARRY4 \ALUOut[31]_INST_0_i_9 
       (.CI(\ALUOut[27]_INST_0_i_6_n_0 ),
        .CO({\ALUOut[31]_INST_0_i_9_n_0 ,\ALUOut[31]_INST_0_i_9_n_1 ,\ALUOut[31]_INST_0_i_9_n_2 ,\ALUOut[31]_INST_0_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI(A[31:28]),
        .O({\ALUOut[31]_INST_0_i_9_n_4 ,\ALUOut[31]_INST_0_i_9_n_5 ,\ALUOut[31]_INST_0_i_9_n_6 ,\ALUOut[31]_INST_0_i_9_n_7 }),
        .S({\ALUOut[28]_INST_0_i_2_0 ,\ALUOut[31]_INST_0_i_25_n_0 ,\ALUOut[31]_INST_0_i_26_n_0 ,\ALUOut[31]_INST_0_i_27_n_0 }));
  MUXF7 \ALUOut[3]_INST_0 
       (.I0(ALUOut_3_sn_1),
        .I1(\ALUOut[3]_INST_0_i_2_n_0 ),
        .O(ALUOut[3]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[3]_INST_0_i_2 
       (.I0(\ALUOut[3]_INST_0_i_4_n_4 ),
        .I1(minusOp_carry_n_4),
        .I2(\ALUOut[16]_0 ),
        .I3(B[3]),
        .I4(A[3]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[3]_INST_0_i_2_n_0 ));
  CARRY4 \ALUOut[3]_INST_0_i_4 
       (.CI(1'b0),
        .CO({\ALUOut[3]_INST_0_i_4_n_0 ,\ALUOut[3]_INST_0_i_4_n_1 ,\ALUOut[3]_INST_0_i_4_n_2 ,\ALUOut[3]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(A[3:0]),
        .O({\ALUOut[3]_INST_0_i_4_n_4 ,\ALUOut[3]_INST_0_i_4_n_5 ,\ALUOut[3]_INST_0_i_4_n_6 ,\ALUOut[3]_INST_0_i_4_n_7 }),
        .S({\ALUOut[3]_INST_0_i_6_n_0 ,\ALUOut[3]_INST_0_i_7_n_0 ,\ALUOut[3]_INST_0_i_8_n_0 ,\ALUOut[3]_INST_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[3]_INST_0_i_6 
       (.I0(A[3]),
        .I1(B[3]),
        .O(\ALUOut[3]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[3]_INST_0_i_7 
       (.I0(A[2]),
        .I1(B[2]),
        .O(\ALUOut[3]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[3]_INST_0_i_8 
       (.I0(A[1]),
        .I1(B[1]),
        .O(\ALUOut[3]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[3]_INST_0_i_9 
       (.I0(A[0]),
        .I1(B[0]),
        .O(\ALUOut[3]_INST_0_i_9_n_0 ));
  MUXF7 \ALUOut[4]_INST_0 
       (.I0(ALUOut_4_sn_1),
        .I1(\ALUOut[4]_INST_0_i_2_n_0 ),
        .O(ALUOut[4]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[4]_INST_0_i_2 
       (.I0(\ALUOut[7]_INST_0_i_4_n_7 ),
        .I1(minusOp_carry__0_n_7),
        .I2(\ALUOut[16]_0 ),
        .I3(B[4]),
        .I4(A[4]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[4]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[5]_INST_0 
       (.I0(ALUOut_5_sn_1),
        .I1(\ALUOut[5]_INST_0_i_2_n_0 ),
        .O(ALUOut[5]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[5]_INST_0_i_2 
       (.I0(\ALUOut[7]_INST_0_i_4_n_6 ),
        .I1(minusOp_carry__0_n_6),
        .I2(\ALUOut[16]_0 ),
        .I3(B[5]),
        .I4(A[5]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[5]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[6]_INST_0 
       (.I0(ALUOut_6_sn_1),
        .I1(\ALUOut[6]_INST_0_i_2_n_0 ),
        .O(ALUOut[6]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[6]_INST_0_i_2 
       (.I0(\ALUOut[7]_INST_0_i_4_n_5 ),
        .I1(minusOp_carry__0_n_5),
        .I2(\ALUOut[16]_0 ),
        .I3(B[6]),
        .I4(A[6]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[6]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[7]_INST_0 
       (.I0(ALUOut_7_sn_1),
        .I1(\ALUOut[7]_INST_0_i_2_n_0 ),
        .O(ALUOut[7]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[7]_INST_0_i_2 
       (.I0(\ALUOut[7]_INST_0_i_4_n_4 ),
        .I1(minusOp_carry__0_n_4),
        .I2(\ALUOut[16]_0 ),
        .I3(B[7]),
        .I4(A[7]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[7]_INST_0_i_2_n_0 ));
  CARRY4 \ALUOut[7]_INST_0_i_4 
       (.CI(\ALUOut[3]_INST_0_i_4_n_0 ),
        .CO({\ALUOut[7]_INST_0_i_4_n_0 ,\ALUOut[7]_INST_0_i_4_n_1 ,\ALUOut[7]_INST_0_i_4_n_2 ,\ALUOut[7]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O({\ALUOut[7]_INST_0_i_4_n_4 ,\ALUOut[7]_INST_0_i_4_n_5 ,\ALUOut[7]_INST_0_i_4_n_6 ,\ALUOut[7]_INST_0_i_4_n_7 }),
        .S({\ALUOut[7]_INST_0_i_6_n_0 ,\ALUOut[7]_INST_0_i_7_n_0 ,\ALUOut[7]_INST_0_i_8_n_0 ,\ALUOut[7]_INST_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[7]_INST_0_i_6 
       (.I0(A[7]),
        .I1(B[7]),
        .O(\ALUOut[7]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[7]_INST_0_i_7 
       (.I0(A[6]),
        .I1(B[6]),
        .O(\ALUOut[7]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[7]_INST_0_i_8 
       (.I0(A[5]),
        .I1(B[5]),
        .O(\ALUOut[7]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUOut[7]_INST_0_i_9 
       (.I0(A[4]),
        .I1(B[4]),
        .O(\ALUOut[7]_INST_0_i_9_n_0 ));
  MUXF7 \ALUOut[8]_INST_0 
       (.I0(ALUOut_8_sn_1),
        .I1(\ALUOut[8]_INST_0_i_2_n_0 ),
        .O(ALUOut[8]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[8]_INST_0_i_2 
       (.I0(\ALUOut[10]_INST_0_i_4_n_7 ),
        .I1(minusOp_carry__1_n_7),
        .I2(\ALUOut[16]_0 ),
        .I3(B[8]),
        .I4(A[8]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[8]_INST_0_i_2_n_0 ));
  MUXF7 \ALUOut[9]_INST_0 
       (.I0(ALUOut_9_sn_1),
        .I1(\ALUOut[9]_INST_0_i_2_n_0 ),
        .O(ALUOut[9]),
        .S(ALUOut_31_sn_1));
  LUT6 #(
    .INIT(64'hAFA0A0A0CFCFCFC0)) 
    \ALUOut[9]_INST_0_i_2 
       (.I0(\ALUOut[10]_INST_0_i_4_n_6 ),
        .I1(minusOp_carry__1_n_6),
        .I2(\ALUOut[16]_0 ),
        .I3(B[9]),
        .I4(A[9]),
        .I5(\ALUOut[31]_1 ),
        .O(\ALUOut[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Carryout_INST_0
       (.I0(Carryout_INST_0_i_1_n_0),
        .I1(Carryout_0),
        .O(Carryout));
  LUT3 #(
    .INIT(8'h3A)) 
    Carryout_INST_0_i_1
       (.I0(plusOp),
        .I1(Carryout_INST_0_i_4_n_3),
        .I2(ALUCntl),
        .O(Carryout_INST_0_i_1_n_0));
  CARRY4 Carryout_INST_0_i_3
       (.CI(\ALUOut[31]_INST_0_i_9_n_0 ),
        .CO({NLW_Carryout_INST_0_i_3_CO_UNCONNECTED[3:1],plusOp}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_Carryout_INST_0_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 Carryout_INST_0_i_4
       (.CI(minusOp_carry__6_n_0),
        .CO({NLW_Carryout_INST_0_i_4_CO_UNCONNECTED[3:1],Carryout_INST_0_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_Carryout_INST_0_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Overflow_INST_0
       (.I0(Overflow_INST_0_i_1_n_0),
        .I1(Carryout_0),
        .O(Overflow));
  LUT4 #(
    .INIT(16'h1482)) 
    Overflow_INST_0_i_1
       (.I0(ALUOut[31]),
        .I1(B[31]),
        .I2(ALUCntl),
        .I3(A[31]),
        .O(Overflow_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    Zero_INST_0
       (.I0(Zero_INST_0_i_1_n_0),
        .I1(Zero_INST_0_i_2_n_0),
        .I2(Zero_INST_0_i_3_n_0),
        .I3(Zero_INST_0_i_4_n_0),
        .I4(Zero_INST_0_i_5_n_0),
        .I5(Zero_INST_0_i_6_n_0),
        .O(Zero));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    Zero_INST_0_i_1
       (.I0(ALUOut[5]),
        .I1(ALUOut[4]),
        .I2(ALUOut[7]),
        .I3(ALUOut[6]),
        .I4(Zero_INST_0_i_7_n_0),
        .I5(Zero_INST_0_i_8_n_0),
        .O(Zero_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    Zero_INST_0_i_10
       (.I0(ALUOut_19_sn_1),
        .I1(\ALUOut[19]_INST_0_i_2_n_0 ),
        .I2(ALUOut_18_sn_1),
        .I3(ALUOut_31_sn_1),
        .I4(\ALUOut[18]_INST_0_i_2_n_0 ),
        .O(Zero_INST_0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    Zero_INST_0_i_2
       (.I0(ALUOut[10]),
        .I1(\ALUOut[11]_INST_0_i_1_n_0 ),
        .I2(ALUOut[8]),
        .I3(ALUOut[9]),
        .O(Zero_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Zero_INST_0_i_3
       (.I0(ALUOut[12]),
        .I1(ALUOut[13]),
        .I2(ALUOut[14]),
        .I3(ALUOut[15]),
        .O(Zero_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Zero_INST_0_i_4
       (.I0(ALUOut[29]),
        .I1(ALUOut[30]),
        .I2(ALUOut[28]),
        .I3(ALUOut[31]),
        .O(Zero_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Zero_INST_0_i_5
       (.I0(ALUOut[26]),
        .I1(ALUOut[27]),
        .I2(ALUOut[24]),
        .I3(ALUOut[25]),
        .O(Zero_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    Zero_INST_0_i_6
       (.I0(Zero_INST_0_i_9_n_0),
        .I1(ALUOut[23]),
        .I2(ALUOut[22]),
        .I3(ALUOut[17]),
        .I4(ALUOut[16]),
        .I5(Zero_INST_0_i_10_n_0),
        .O(Zero_INST_0_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    Zero_INST_0_i_7
       (.I0(ALUOut_3_sn_1),
        .I1(\ALUOut[3]_INST_0_i_2_n_0 ),
        .I2(ALUOut_2_sn_1),
        .I3(ALUOut_31_sn_1),
        .I4(\ALUOut[2]_INST_0_i_2_n_0 ),
        .O(Zero_INST_0_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    Zero_INST_0_i_8
       (.I0(ALUOut_1_sn_1),
        .I1(\ALUOut[1]_INST_0_i_2_n_0 ),
        .I2(ALUOut_0_sn_1),
        .I3(ALUOut_31_sn_1),
        .I4(\ALUOut[0]_INST_0_i_2_n_0 ),
        .O(Zero_INST_0_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    Zero_INST_0_i_9
       (.I0(ALUOut_21_sn_1),
        .I1(\ALUOut[21]_INST_0_i_2_n_0 ),
        .I2(ALUOut_20_sn_1),
        .I3(ALUOut_31_sn_1),
        .I4(\ALUOut[20]_INST_0_i_2_n_0 ),
        .O(Zero_INST_0_i_9_n_0));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI(A[3:0]),
        .O({minusOp_carry_n_4,minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({minusOp_carry_i_1__4_n_0,minusOp_carry_i_2__5_n_0,minusOp_carry_i_3__5_n_0,minusOp_carry_i_4__4_n_0}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O({minusOp_carry__0_n_4,minusOp_carry__0_n_5,minusOp_carry__0_n_6,minusOp_carry__0_n_7}),
        .S({minusOp_carry_i_1__3_n_0,minusOp_carry_i_2__4_n_0,minusOp_carry_i_3__4_n_0,minusOp_carry_i_4__3_n_0}));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O({minusOp_carry__1_n_4,minusOp_carry__1_n_5,minusOp_carry__1_n_6,minusOp_carry__1_n_7}),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4__2_n_0}));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,minusOp_carry__2_n_1,minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(A[15:12]),
        .O({minusOp_carry__2_n_4,minusOp_carry__2_n_5,minusOp_carry__2_n_6,minusOp_carry__2_n_7}),
        .S({minusOp_carry_i_1__6_n_0,minusOp_carry_i_2__6_n_0,minusOp_carry_i_3__6_n_0,minusOp_carry_i_4__6_n_0}));
  CARRY4 minusOp_carry__3
       (.CI(minusOp_carry__2_n_0),
        .CO({minusOp_carry__3_n_0,minusOp_carry__3_n_1,minusOp_carry__3_n_2,minusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(A[19:16]),
        .O({minusOp_carry__3_n_4,minusOp_carry__3_n_5,minusOp_carry__3_n_6,minusOp_carry__3_n_7}),
        .S({minusOp_carry_i_1__2_n_0,minusOp_carry_i_2__3_n_0,minusOp_carry_i_3__3_n_0,minusOp_carry_i_4__1_n_0}));
  CARRY4 minusOp_carry__4
       (.CI(minusOp_carry__3_n_0),
        .CO({minusOp_carry__4_n_0,minusOp_carry__4_n_1,minusOp_carry__4_n_2,minusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(A[23:20]),
        .O({minusOp_carry__4_n_4,minusOp_carry__4_n_5,minusOp_carry__4_n_6,minusOp_carry__4_n_7}),
        .S({minusOp_carry_i_1__1_n_0,minusOp_carry_i_2__2_n_0,minusOp_carry_i_3__2_n_0,minusOp_carry_i_4__0_n_0}));
  CARRY4 minusOp_carry__5
       (.CI(minusOp_carry__4_n_0),
        .CO({minusOp_carry__5_n_0,minusOp_carry__5_n_1,minusOp_carry__5_n_2,minusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(A[27:24]),
        .O({minusOp_carry__5_n_4,minusOp_carry__5_n_5,minusOp_carry__5_n_6,minusOp_carry__5_n_7}),
        .S({minusOp_carry_i_1__0_n_0,minusOp_carry_i_2__1_n_0,minusOp_carry_i_3__1_n_0,minusOp_carry_i_4__5_n_0}));
  CARRY4 minusOp_carry__6
       (.CI(minusOp_carry__5_n_0),
        .CO({minusOp_carry__6_n_0,minusOp_carry__6_n_1,minusOp_carry__6_n_2,minusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(A[31:28]),
        .O({minusOp_carry__6_n_4,minusOp_carry__6_n_5,minusOp_carry__6_n_6,minusOp_carry__6_n_7}),
        .S({minusOp_carry_i_1__5_n_0,minusOp_carry_i_2__0_n_0,minusOp_carry_i_3__0_n_0,minusOp_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1
       (.I0(B[11]),
        .I1(A[11]),
        .O(minusOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1__0
       (.I0(A[27]),
        .I1(B[27]),
        .O(minusOp_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1__1
       (.I0(A[23]),
        .I1(B[23]),
        .O(minusOp_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1__2
       (.I0(A[19]),
        .I1(B[19]),
        .O(minusOp_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1__3
       (.I0(A[7]),
        .I1(B[7]),
        .O(minusOp_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1__4
       (.I0(A[3]),
        .I1(B[3]),
        .O(minusOp_carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1__5
       (.I0(A[31]),
        .I1(B[31]),
        .O(minusOp_carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1__6
       (.I0(A[15]),
        .I1(B[15]),
        .O(minusOp_carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2
       (.I0(B[10]),
        .I1(A[10]),
        .O(minusOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2__0
       (.I0(A[30]),
        .I1(B[30]),
        .O(minusOp_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2__1
       (.I0(A[26]),
        .I1(B[26]),
        .O(minusOp_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2__2
       (.I0(A[22]),
        .I1(B[22]),
        .O(minusOp_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2__3
       (.I0(A[18]),
        .I1(B[18]),
        .O(minusOp_carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2__4
       (.I0(A[6]),
        .I1(B[6]),
        .O(minusOp_carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2__5
       (.I0(A[2]),
        .I1(B[2]),
        .O(minusOp_carry_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2__6
       (.I0(A[14]),
        .I1(B[14]),
        .O(minusOp_carry_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3
       (.I0(B[9]),
        .I1(A[9]),
        .O(minusOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3__0
       (.I0(A[29]),
        .I1(B[29]),
        .O(minusOp_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3__1
       (.I0(A[25]),
        .I1(B[25]),
        .O(minusOp_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3__2
       (.I0(A[21]),
        .I1(B[21]),
        .O(minusOp_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3__3
       (.I0(A[17]),
        .I1(B[17]),
        .O(minusOp_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3__4
       (.I0(A[5]),
        .I1(B[5]),
        .O(minusOp_carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3__5
       (.I0(A[1]),
        .I1(B[1]),
        .O(minusOp_carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3__6
       (.I0(A[13]),
        .I1(B[13]),
        .O(minusOp_carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4
       (.I0(A[28]),
        .I1(B[28]),
        .O(minusOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4__0
       (.I0(A[20]),
        .I1(B[20]),
        .O(minusOp_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4__1
       (.I0(A[16]),
        .I1(B[16]),
        .O(minusOp_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4__2
       (.I0(A[8]),
        .I1(B[8]),
        .O(minusOp_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4__3
       (.I0(A[4]),
        .I1(B[4]),
        .O(minusOp_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4__4
       (.I0(A[0]),
        .I1(B[0]),
        .O(minusOp_carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4__5
       (.I0(A[24]),
        .I1(B[24]),
        .O(minusOp_carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4__6
       (.I0(A[12]),
        .I1(B[12]),
        .O(minusOp_carry_i_4__6_n_0));
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
