// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri May  8 21:23:29 2020
// Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/Kenny Khut/Desktop/CECS
//               440/Labs/lab_5/lab_5.srcs/sources_1/bd/Datapath/ip/Datapath_datamem_0_0/Datapath_datamem_0_0_sim_netlist.v}
// Design      : Datapath_datamem_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Datapath_datamem_0_0,datamem,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "datamem,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Datapath_datamem_0_0
   (clock,
    address,
    write_data,
    MemWrite,
    MemRead,
    Read_data);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clock, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clock;
  input [31:0]address;
  input [31:0]write_data;
  input MemWrite;
  input MemRead;
  output [31:0]Read_data;

  wire MemRead;
  wire MemWrite;
  wire [31:0]Read_data;
  wire [31:0]address;
  wire clock;
  wire [31:0]write_data;

  Datapath_datamem_0_0_datamem U0
       (.MemRead(MemRead),
        .MemWrite(MemWrite),
        .Read_data(Read_data),
        .address(address[6:2]),
        .clock(clock),
        .write_data(write_data));
endmodule

(* ORIG_REF_NAME = "datamem" *) 
module Datapath_datamem_0_0_datamem
   (Read_data,
    MemRead,
    clock,
    write_data,
    MemWrite,
    address);
  output [31:0]Read_data;
  input MemRead;
  input clock;
  input [31:0]write_data;
  input MemWrite;
  input [4:0]address;

  wire MemRead;
  wire MemWrite;
  wire [31:0]Read_data;
  wire [31:0]Read_data0;
  wire [4:0]address;
  wire clock;
  wire [31:0]write_data;

  RAM32X1S #(
    .INIT(32'h00000032)) 
    RAM_reg_0_31_0_0
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[0]),
        .O(Read_data0[0]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000006)) 
    RAM_reg_0_31_10_10
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[10]),
        .O(Read_data0[10]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_11_11
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[11]),
        .O(Read_data0[11]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000006)) 
    RAM_reg_0_31_12_12
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[12]),
        .O(Read_data0[12]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_13_13
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[13]),
        .O(Read_data0[13]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000006)) 
    RAM_reg_0_31_14_14
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[14]),
        .O(Read_data0[14]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_15_15
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[15]),
        .O(Read_data0[15]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_16_16
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[16]),
        .O(Read_data0[16]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_17_17
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[17]),
        .O(Read_data0[17]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000006)) 
    RAM_reg_0_31_18_18
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[18]),
        .O(Read_data0[18]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_19_19
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[19]),
        .O(Read_data0[19]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000022)) 
    RAM_reg_0_31_1_1
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[1]),
        .O(Read_data0[1]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000006)) 
    RAM_reg_0_31_20_20
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[20]),
        .O(Read_data0[20]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000006)) 
    RAM_reg_0_31_21_21
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[21]),
        .O(Read_data0[21]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_22_22
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[22]),
        .O(Read_data0[22]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_23_23
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[23]),
        .O(Read_data0[23]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_24_24
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[24]),
        .O(Read_data0[24]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000006)) 
    RAM_reg_0_31_25_25
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[25]),
        .O(Read_data0[25]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_26_26
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[26]),
        .O(Read_data0[26]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_27_27
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[27]),
        .O(Read_data0[27]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000006)) 
    RAM_reg_0_31_28_28
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[28]),
        .O(Read_data0[28]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_29_29
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[29]),
        .O(Read_data0[29]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_2_2
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[2]),
        .O(Read_data0[2]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_30_30
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[30]),
        .O(Read_data0[30]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_31_31
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[31]),
        .O(Read_data0[31]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h0000000E)) 
    RAM_reg_0_31_3_3
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[3]),
        .O(Read_data0[3]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000006)) 
    RAM_reg_0_31_4_4
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[4]),
        .O(Read_data0[4]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000006)) 
    RAM_reg_0_31_5_5
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[5]),
        .O(Read_data0[5]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000006)) 
    RAM_reg_0_31_6_6
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[6]),
        .O(Read_data0[6]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_7_7
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[7]),
        .O(Read_data0[7]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000002)) 
    RAM_reg_0_31_8_8
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[8]),
        .O(Read_data0[8]),
        .WCLK(clock),
        .WE(MemWrite));
  RAM32X1S #(
    .INIT(32'h00000006)) 
    RAM_reg_0_31_9_9
       (.A0(address[0]),
        .A1(address[1]),
        .A2(address[2]),
        .A3(address[3]),
        .A4(address[4]),
        .D(write_data[9]),
        .O(Read_data0[9]),
        .WCLK(clock),
        .WE(MemWrite));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[0]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[0]),
        .O(Read_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[10]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[10]),
        .O(Read_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[11]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[11]),
        .O(Read_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[12]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[12]),
        .O(Read_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[13]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[13]),
        .O(Read_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[14]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[14]),
        .O(Read_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[15]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[15]),
        .O(Read_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[16]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[16]),
        .O(Read_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[17]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[17]),
        .O(Read_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[18]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[18]),
        .O(Read_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[19]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[19]),
        .O(Read_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[1]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[1]),
        .O(Read_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[20]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[20]),
        .O(Read_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[21]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[21]),
        .O(Read_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[22]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[22]),
        .O(Read_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[23]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[23]),
        .O(Read_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[24]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[24]),
        .O(Read_data[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[25]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[25]),
        .O(Read_data[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[26]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[26]),
        .O(Read_data[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[27]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[27]),
        .O(Read_data[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[28]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[28]),
        .O(Read_data[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[29]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[29]),
        .O(Read_data[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[2]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[2]),
        .O(Read_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[30]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[30]),
        .O(Read_data[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[31]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[31]),
        .O(Read_data[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[3]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[3]),
        .O(Read_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[4]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[4]),
        .O(Read_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[5]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[5]),
        .O(Read_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[6]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[6]),
        .O(Read_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[7]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[7]),
        .O(Read_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[8]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[8]),
        .O(Read_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Read_data[9]_INST_0 
       (.I0(MemRead),
        .I1(Read_data0[9]),
        .O(Read_data[9]));
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
