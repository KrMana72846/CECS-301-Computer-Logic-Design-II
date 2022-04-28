// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri May  8 21:22:14 2020
// Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/Kenny Khut/Desktop/CECS
//               440/Labs/lab_5/lab_5.srcs/sources_1/bd/Datapath/ip/Datapath_regfile_0_0/Datapath_regfile_0_0_sim_netlist.v}
// Design      : Datapath_regfile_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Datapath_regfile_0_0,regfile,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "regfile,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Datapath_regfile_0_0
   (clock,
    RegWrite,
    read_reg1,
    read_reg2,
    write_reg,
    write_data,
    read_data1,
    read_data2);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clock, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clock;
  input RegWrite;
  input [4:0]read_reg1;
  input [4:0]read_reg2;
  input [4:0]write_reg;
  input [31:0]write_data;
  output [31:0]read_data1;
  output [31:0]read_data2;

  wire RegWrite;
  wire clock;
  wire [31:0]read_data1;
  wire [31:0]read_data2;
  wire [4:0]read_reg1;
  wire [4:0]read_reg2;
  wire [31:0]write_data;
  wire [4:0]write_reg;

  Datapath_regfile_0_0_regfile U0
       (.RegWrite(RegWrite),
        .clock(clock),
        .read_data1(read_data1),
        .read_data2(read_data2),
        .read_reg1(read_reg1),
        .read_reg2(read_reg2),
        .write_data(write_data),
        .write_reg(write_reg));
endmodule

(* ORIG_REF_NAME = "regfile" *) 
module Datapath_regfile_0_0_regfile
   (read_data1,
    read_data2,
    clock,
    RegWrite,
    write_data,
    read_reg1,
    write_reg,
    read_reg2);
  output [31:0]read_data1;
  output [31:0]read_data2;
  input clock;
  input RegWrite;
  input [31:0]write_data;
  input [4:0]read_reg1;
  input [4:0]write_reg;
  input [4:0]read_reg2;

  wire RegWrite;
  wire clock;
  wire [31:0]read_data1;
  wire [31:0]read_data2;
  wire [4:0]read_reg1;
  wire [4:0]read_reg2;
  wire [31:0]write_data;
  wire [4:0]write_reg;
  wire [1:0]NLW_RAM_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0009393939390000),
    .INIT_B(64'h000A95403FEA0000),
    .INIT_C(64'h0005555540000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r1_0_31_0_5
       (.ADDRA(read_reg1),
        .ADDRB(read_reg1),
        .ADDRC(read_reg1),
        .ADDRD(write_reg),
        .DIA(write_data[1:0]),
        .DIB(write_data[3:2]),
        .DIC(write_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(read_data1[1:0]),
        .DOB(read_data1[3:2]),
        .DOC(read_data1[5:4]),
        .DOD(NLW_RAM_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r1_0_31_12_17
       (.ADDRA(read_reg1),
        .ADDRB(read_reg1),
        .ADDRC(read_reg1),
        .ADDRD(write_reg),
        .DIA(write_data[13:12]),
        .DIB(write_data[15:14]),
        .DIC(write_data[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(read_data1[13:12]),
        .DOB(read_data1[15:14]),
        .DOC(read_data1[17:16]),
        .DOD(NLW_RAM_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r1_0_31_18_23
       (.ADDRA(read_reg1),
        .ADDRB(read_reg1),
        .ADDRC(read_reg1),
        .ADDRD(write_reg),
        .DIA(write_data[19:18]),
        .DIB(write_data[21:20]),
        .DIC(write_data[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(read_data1[19:18]),
        .DOB(read_data1[21:20]),
        .DOC(read_data1[23:22]),
        .DOD(NLW_RAM_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r1_0_31_24_29
       (.ADDRA(read_reg1),
        .ADDRB(read_reg1),
        .ADDRC(read_reg1),
        .ADDRD(write_reg),
        .DIA(write_data[25:24]),
        .DIB(write_data[27:26]),
        .DIC(write_data[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(read_data1[25:24]),
        .DOB(read_data1[27:26]),
        .DOC(read_data1[29:28]),
        .DOD(NLW_RAM_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r1_0_31_30_31
       (.ADDRA(read_reg1),
        .ADDRB(read_reg1),
        .ADDRC(read_reg1),
        .ADDRD(write_reg),
        .DIA(write_data[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(read_data1[31:30]),
        .DOB(NLW_RAM_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r1_0_31_6_11
       (.ADDRA(read_reg1),
        .ADDRB(read_reg1),
        .ADDRC(read_reg1),
        .ADDRD(write_reg),
        .DIA(write_data[7:6]),
        .DIB(write_data[9:8]),
        .DIC(write_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(read_data1[7:6]),
        .DOB(read_data1[9:8]),
        .DOC(read_data1[11:10]),
        .DOD(NLW_RAM_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0009393939390000),
    .INIT_B(64'h000A95403FEA0000),
    .INIT_C(64'h0005555540000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r2_0_31_0_5
       (.ADDRA(read_reg2),
        .ADDRB(read_reg2),
        .ADDRC(read_reg2),
        .ADDRD(write_reg),
        .DIA(write_data[1:0]),
        .DIB(write_data[3:2]),
        .DIC(write_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(read_data2[1:0]),
        .DOB(read_data2[3:2]),
        .DOC(read_data2[5:4]),
        .DOD(NLW_RAM_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r2_0_31_12_17
       (.ADDRA(read_reg2),
        .ADDRB(read_reg2),
        .ADDRC(read_reg2),
        .ADDRD(write_reg),
        .DIA(write_data[13:12]),
        .DIB(write_data[15:14]),
        .DIC(write_data[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(read_data2[13:12]),
        .DOB(read_data2[15:14]),
        .DOC(read_data2[17:16]),
        .DOD(NLW_RAM_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r2_0_31_18_23
       (.ADDRA(read_reg2),
        .ADDRB(read_reg2),
        .ADDRC(read_reg2),
        .ADDRD(write_reg),
        .DIA(write_data[19:18]),
        .DIB(write_data[21:20]),
        .DIC(write_data[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(read_data2[19:18]),
        .DOB(read_data2[21:20]),
        .DOC(read_data2[23:22]),
        .DOD(NLW_RAM_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r2_0_31_24_29
       (.ADDRA(read_reg2),
        .ADDRB(read_reg2),
        .ADDRC(read_reg2),
        .ADDRD(write_reg),
        .DIA(write_data[25:24]),
        .DIB(write_data[27:26]),
        .DIC(write_data[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(read_data2[25:24]),
        .DOB(read_data2[27:26]),
        .DOC(read_data2[29:28]),
        .DOD(NLW_RAM_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r2_0_31_30_31
       (.ADDRA(read_reg2),
        .ADDRB(read_reg2),
        .ADDRC(read_reg2),
        .ADDRD(write_reg),
        .DIA(write_data[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(read_data2[31:30]),
        .DOB(NLW_RAM_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r2_0_31_6_11
       (.ADDRA(read_reg2),
        .ADDRB(read_reg2),
        .ADDRC(read_reg2),
        .ADDRD(write_reg),
        .DIA(write_data[7:6]),
        .DIB(write_data[9:8]),
        .DIC(write_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(read_data2[7:6]),
        .DOB(read_data2[9:8]),
        .DOC(read_data2[11:10]),
        .DOD(NLW_RAM_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clock),
        .WE(RegWrite));
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
