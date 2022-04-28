// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri May  8 21:24:19 2020
// Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/Kenny Khut/Desktop/CECS
//               440/Labs/lab_5/lab_5.srcs/sources_1/bd/Datapath/ip/Datapath_Control_0_5/Datapath_Control_0_5_sim_netlist.v}
// Design      : Datapath_Control_0_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Datapath_Control_0_5,Control,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Control,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Datapath_Control_0_5
   (opcode,
    RegWrite,
    RegDst,
    ALUSrc,
    MemtoReg,
    Branch,
    MemWrite,
    MemRead,
    ALUop);
  input [5:0]opcode;
  output RegWrite;
  output RegDst;
  output ALUSrc;
  output MemtoReg;
  output Branch;
  output MemWrite;
  output MemRead;
  output [1:0]ALUop;

  wire ALUSrc;
  wire [1:0]ALUop;
  wire Branch;
  wire MemWrite;
  wire MemtoReg;
  wire RegDst;
  wire RegWrite;
  wire [5:0]opcode;

  assign MemRead = MemtoReg;
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    MemWrite_INST_0
       (.I0(opcode[2]),
        .I1(opcode[4]),
        .I2(opcode[3]),
        .I3(opcode[5]),
        .I4(opcode[1]),
        .I5(opcode[0]),
        .O(MemWrite));
  Datapath_Control_0_5_Control U0
       (.ALUSrc(ALUSrc),
        .ALUop(ALUop),
        .Branch(Branch),
        .MemtoReg(MemtoReg),
        .RegDst(RegDst),
        .RegWrite(RegWrite),
        .opcode(opcode));
endmodule

(* ORIG_REF_NAME = "Control" *) 
module Datapath_Control_0_5_Control
   (RegWrite,
    RegDst,
    ALUSrc,
    MemtoReg,
    Branch,
    ALUop,
    opcode);
  output RegWrite;
  output RegDst;
  output ALUSrc;
  output MemtoReg;
  output Branch;
  output [1:0]ALUop;
  input [5:0]opcode;

  wire ALUSrc;
  wire [1:0]ALUop;
  wire Branch;
  wire MemtoReg;
  wire RegDst;
  wire RegWrite;
  wire [5:0]opcode;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \/i_ 
       (.I0(opcode[1]),
        .I1(opcode[0]),
        .I2(opcode[2]),
        .I3(opcode[3]),
        .I4(opcode[4]),
        .I5(opcode[5]),
        .O(RegDst));
  LUT6 #(
    .INIT(64'h00200020000D0000)) 
    ALUSrc__0
       (.I0(opcode[0]),
        .I1(opcode[2]),
        .I2(opcode[5]),
        .I3(opcode[4]),
        .I4(opcode[3]),
        .I5(opcode[1]),
        .O(ALUSrc));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \ALUop[0]_INST_0 
       (.I0(opcode[0]),
        .I1(opcode[3]),
        .I2(opcode[2]),
        .I3(opcode[1]),
        .I4(opcode[4]),
        .I5(opcode[5]),
        .O(ALUop[0]));
  LUT6 #(
    .INIT(64'h0000000000004401)) 
    \ALUop[1]_INST_0 
       (.I0(opcode[1]),
        .I1(opcode[2]),
        .I2(opcode[0]),
        .I3(opcode[3]),
        .I4(opcode[4]),
        .I5(opcode[5]),
        .O(ALUop[1]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    Branch__0
       (.I0(opcode[5]),
        .I1(opcode[4]),
        .I2(opcode[1]),
        .I3(opcode[2]),
        .I4(opcode[3]),
        .I5(opcode[0]),
        .O(Branch));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    MemtoReg__0
       (.I0(opcode[2]),
        .I1(opcode[4]),
        .I2(opcode[1]),
        .I3(opcode[0]),
        .I4(opcode[3]),
        .I5(opcode[5]),
        .O(MemtoReg));
  LUT6 #(
    .INIT(64'h0101000000015001)) 
    RegWrite__0
       (.I0(opcode[4]),
        .I1(opcode[5]),
        .I2(opcode[1]),
        .I3(opcode[0]),
        .I4(opcode[3]),
        .I5(opcode[2]),
        .O(RegWrite));
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
