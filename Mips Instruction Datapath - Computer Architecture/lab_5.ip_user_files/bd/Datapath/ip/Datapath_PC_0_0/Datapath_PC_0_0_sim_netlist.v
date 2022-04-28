// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri May  8 21:21:02 2020
// Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/Kenny Khut/Desktop/CECS
//               440/Labs/lab_5/lab_5.srcs/sources_1/bd/Datapath/ip/Datapath_PC_0_0/Datapath_PC_0_0_sim_netlist.v}
// Design      : Datapath_PC_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Datapath_PC_0_0,PC,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "PC,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Datapath_PC_0_0
   (Clock,
    Reset,
    PCin,
    PCout);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Clock, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input Clock;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  input [31:0]PCin;
  output [31:0]PCout;

  wire Clock;
  wire [31:0]PCin;
  wire [31:0]PCout;
  wire Reset;

  Datapath_PC_0_0_PC U0
       (.Clock(Clock),
        .PCin(PCin),
        .PCout(PCout),
        .Reset(Reset));
endmodule

(* ORIG_REF_NAME = "PC" *) 
module Datapath_PC_0_0_PC
   (PCout,
    PCin,
    Clock,
    Reset);
  output [31:0]PCout;
  input [31:0]PCin;
  input Clock;
  input Reset;

  wire Clock;
  wire [31:0]PCin;
  wire [31:0]PCout;
  wire Reset;

  FDCE \Q_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[0]),
        .Q(PCout[0]));
  FDCE \Q_reg[10] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[10]),
        .Q(PCout[10]));
  FDCE \Q_reg[11] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[11]),
        .Q(PCout[11]));
  FDCE \Q_reg[12] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[12]),
        .Q(PCout[12]));
  FDCE \Q_reg[13] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[13]),
        .Q(PCout[13]));
  FDCE \Q_reg[14] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[14]),
        .Q(PCout[14]));
  FDCE \Q_reg[15] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[15]),
        .Q(PCout[15]));
  FDCE \Q_reg[16] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[16]),
        .Q(PCout[16]));
  FDCE \Q_reg[17] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[17]),
        .Q(PCout[17]));
  FDCE \Q_reg[18] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[18]),
        .Q(PCout[18]));
  FDCE \Q_reg[19] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[19]),
        .Q(PCout[19]));
  FDCE \Q_reg[1] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[1]),
        .Q(PCout[1]));
  FDCE \Q_reg[20] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[20]),
        .Q(PCout[20]));
  FDCE \Q_reg[21] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[21]),
        .Q(PCout[21]));
  FDCE \Q_reg[22] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[22]),
        .Q(PCout[22]));
  FDCE \Q_reg[23] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[23]),
        .Q(PCout[23]));
  FDCE \Q_reg[24] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[24]),
        .Q(PCout[24]));
  FDCE \Q_reg[25] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[25]),
        .Q(PCout[25]));
  FDCE \Q_reg[26] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[26]),
        .Q(PCout[26]));
  FDCE \Q_reg[27] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[27]),
        .Q(PCout[27]));
  FDCE \Q_reg[28] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[28]),
        .Q(PCout[28]));
  FDCE \Q_reg[29] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[29]),
        .Q(PCout[29]));
  FDCE \Q_reg[2] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[2]),
        .Q(PCout[2]));
  FDCE \Q_reg[30] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[30]),
        .Q(PCout[30]));
  FDCE \Q_reg[31] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[31]),
        .Q(PCout[31]));
  FDCE \Q_reg[3] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[3]),
        .Q(PCout[3]));
  FDCE \Q_reg[4] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[4]),
        .Q(PCout[4]));
  FDCE \Q_reg[5] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[5]),
        .Q(PCout[5]));
  FDCE \Q_reg[6] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[6]),
        .Q(PCout[6]));
  FDCE \Q_reg[7] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[7]),
        .Q(PCout[7]));
  FDCE \Q_reg[8] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[8]),
        .Q(PCout[8]));
  FDCE \Q_reg[9] 
       (.C(Clock),
        .CE(1'b1),
        .CLR(Reset),
        .D(PCin[9]),
        .Q(PCout[9]));
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
