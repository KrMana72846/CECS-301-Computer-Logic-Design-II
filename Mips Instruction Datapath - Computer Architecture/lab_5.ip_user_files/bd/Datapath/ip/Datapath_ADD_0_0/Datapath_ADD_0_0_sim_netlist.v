// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu May  7 22:50:01 2020
// Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Kenny Khut/Desktop/CECS
//               440/lab_4/lab_4.srcs/sources_1/bd/Datapath/ip/Datapath_ADD_0_0/Datapath_ADD_0_0_sim_netlist.v}
// Design      : Datapath_ADD_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Datapath_ADD_0_0,ADD,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ADD,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Datapath_ADD_0_0
   (ADDinA,
    ADDinB,
    ADDout);
  input [31:0]ADDinA;
  input [31:0]ADDinB;
  output [31:0]ADDout;

  wire [31:0]ADDinA;
  wire [31:0]ADDinB;
  wire [31:0]ADDout;

  Datapath_ADD_0_0_ADD U0
       (.ADDinA(ADDinA),
        .ADDinB(ADDinB),
        .ADDout(ADDout));
endmodule

(* ORIG_REF_NAME = "ADD" *) 
module Datapath_ADD_0_0_ADD
   (ADDout,
    ADDinA,
    ADDinB);
  output [31:0]ADDout;
  input [31:0]ADDinA;
  input [31:0]ADDinB;

  wire [31:0]ADDinA;
  wire [31:0]ADDinB;
  wire [31:0]ADDout;
  wire \ADDout[0]_INST_0_i_1_n_0 ;
  wire \ADDout[0]_INST_0_i_2_n_0 ;
  wire \ADDout[0]_INST_0_i_3_n_0 ;
  wire \ADDout[0]_INST_0_i_4_n_0 ;
  wire \ADDout[0]_INST_0_n_0 ;
  wire \ADDout[0]_INST_0_n_1 ;
  wire \ADDout[0]_INST_0_n_2 ;
  wire \ADDout[0]_INST_0_n_3 ;
  wire \ADDout[12]_INST_0_i_1_n_0 ;
  wire \ADDout[12]_INST_0_i_2_n_0 ;
  wire \ADDout[12]_INST_0_i_3_n_0 ;
  wire \ADDout[12]_INST_0_i_4_n_0 ;
  wire \ADDout[12]_INST_0_n_0 ;
  wire \ADDout[12]_INST_0_n_1 ;
  wire \ADDout[12]_INST_0_n_2 ;
  wire \ADDout[12]_INST_0_n_3 ;
  wire \ADDout[16]_INST_0_i_1_n_0 ;
  wire \ADDout[16]_INST_0_i_2_n_0 ;
  wire \ADDout[16]_INST_0_i_3_n_0 ;
  wire \ADDout[16]_INST_0_i_4_n_0 ;
  wire \ADDout[16]_INST_0_n_0 ;
  wire \ADDout[16]_INST_0_n_1 ;
  wire \ADDout[16]_INST_0_n_2 ;
  wire \ADDout[16]_INST_0_n_3 ;
  wire \ADDout[20]_INST_0_i_1_n_0 ;
  wire \ADDout[20]_INST_0_i_2_n_0 ;
  wire \ADDout[20]_INST_0_i_3_n_0 ;
  wire \ADDout[20]_INST_0_i_4_n_0 ;
  wire \ADDout[20]_INST_0_n_0 ;
  wire \ADDout[20]_INST_0_n_1 ;
  wire \ADDout[20]_INST_0_n_2 ;
  wire \ADDout[20]_INST_0_n_3 ;
  wire \ADDout[24]_INST_0_i_1_n_0 ;
  wire \ADDout[24]_INST_0_i_2_n_0 ;
  wire \ADDout[24]_INST_0_i_3_n_0 ;
  wire \ADDout[24]_INST_0_i_4_n_0 ;
  wire \ADDout[24]_INST_0_n_0 ;
  wire \ADDout[24]_INST_0_n_1 ;
  wire \ADDout[24]_INST_0_n_2 ;
  wire \ADDout[24]_INST_0_n_3 ;
  wire \ADDout[28]_INST_0_i_1_n_0 ;
  wire \ADDout[28]_INST_0_i_2_n_0 ;
  wire \ADDout[28]_INST_0_i_3_n_0 ;
  wire \ADDout[28]_INST_0_i_4_n_0 ;
  wire \ADDout[28]_INST_0_n_1 ;
  wire \ADDout[28]_INST_0_n_2 ;
  wire \ADDout[28]_INST_0_n_3 ;
  wire \ADDout[4]_INST_0_i_1_n_0 ;
  wire \ADDout[4]_INST_0_i_2_n_0 ;
  wire \ADDout[4]_INST_0_i_3_n_0 ;
  wire \ADDout[4]_INST_0_i_4_n_0 ;
  wire \ADDout[4]_INST_0_n_0 ;
  wire \ADDout[4]_INST_0_n_1 ;
  wire \ADDout[4]_INST_0_n_2 ;
  wire \ADDout[4]_INST_0_n_3 ;
  wire \ADDout[8]_INST_0_i_1_n_0 ;
  wire \ADDout[8]_INST_0_i_2_n_0 ;
  wire \ADDout[8]_INST_0_i_3_n_0 ;
  wire \ADDout[8]_INST_0_i_4_n_0 ;
  wire \ADDout[8]_INST_0_n_0 ;
  wire \ADDout[8]_INST_0_n_1 ;
  wire \ADDout[8]_INST_0_n_2 ;
  wire \ADDout[8]_INST_0_n_3 ;
  wire [3:3]\NLW_ADDout[28]_INST_0_CO_UNCONNECTED ;

  CARRY4 \ADDout[0]_INST_0 
       (.CI(1'b0),
        .CO({\ADDout[0]_INST_0_n_0 ,\ADDout[0]_INST_0_n_1 ,\ADDout[0]_INST_0_n_2 ,\ADDout[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(ADDinA[3:0]),
        .O(ADDout[3:0]),
        .S({\ADDout[0]_INST_0_i_1_n_0 ,\ADDout[0]_INST_0_i_2_n_0 ,\ADDout[0]_INST_0_i_3_n_0 ,\ADDout[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[0]_INST_0_i_1 
       (.I0(ADDinA[3]),
        .I1(ADDinB[3]),
        .O(\ADDout[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[0]_INST_0_i_2 
       (.I0(ADDinA[2]),
        .I1(ADDinB[2]),
        .O(\ADDout[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[0]_INST_0_i_3 
       (.I0(ADDinA[1]),
        .I1(ADDinB[1]),
        .O(\ADDout[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[0]_INST_0_i_4 
       (.I0(ADDinA[0]),
        .I1(ADDinB[0]),
        .O(\ADDout[0]_INST_0_i_4_n_0 ));
  CARRY4 \ADDout[12]_INST_0 
       (.CI(\ADDout[8]_INST_0_n_0 ),
        .CO({\ADDout[12]_INST_0_n_0 ,\ADDout[12]_INST_0_n_1 ,\ADDout[12]_INST_0_n_2 ,\ADDout[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(ADDinA[15:12]),
        .O(ADDout[15:12]),
        .S({\ADDout[12]_INST_0_i_1_n_0 ,\ADDout[12]_INST_0_i_2_n_0 ,\ADDout[12]_INST_0_i_3_n_0 ,\ADDout[12]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[12]_INST_0_i_1 
       (.I0(ADDinA[15]),
        .I1(ADDinB[15]),
        .O(\ADDout[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[12]_INST_0_i_2 
       (.I0(ADDinA[14]),
        .I1(ADDinB[14]),
        .O(\ADDout[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[12]_INST_0_i_3 
       (.I0(ADDinA[13]),
        .I1(ADDinB[13]),
        .O(\ADDout[12]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[12]_INST_0_i_4 
       (.I0(ADDinA[12]),
        .I1(ADDinB[12]),
        .O(\ADDout[12]_INST_0_i_4_n_0 ));
  CARRY4 \ADDout[16]_INST_0 
       (.CI(\ADDout[12]_INST_0_n_0 ),
        .CO({\ADDout[16]_INST_0_n_0 ,\ADDout[16]_INST_0_n_1 ,\ADDout[16]_INST_0_n_2 ,\ADDout[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(ADDinA[19:16]),
        .O(ADDout[19:16]),
        .S({\ADDout[16]_INST_0_i_1_n_0 ,\ADDout[16]_INST_0_i_2_n_0 ,\ADDout[16]_INST_0_i_3_n_0 ,\ADDout[16]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[16]_INST_0_i_1 
       (.I0(ADDinA[19]),
        .I1(ADDinB[19]),
        .O(\ADDout[16]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[16]_INST_0_i_2 
       (.I0(ADDinA[18]),
        .I1(ADDinB[18]),
        .O(\ADDout[16]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[16]_INST_0_i_3 
       (.I0(ADDinA[17]),
        .I1(ADDinB[17]),
        .O(\ADDout[16]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[16]_INST_0_i_4 
       (.I0(ADDinA[16]),
        .I1(ADDinB[16]),
        .O(\ADDout[16]_INST_0_i_4_n_0 ));
  CARRY4 \ADDout[20]_INST_0 
       (.CI(\ADDout[16]_INST_0_n_0 ),
        .CO({\ADDout[20]_INST_0_n_0 ,\ADDout[20]_INST_0_n_1 ,\ADDout[20]_INST_0_n_2 ,\ADDout[20]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(ADDinA[23:20]),
        .O(ADDout[23:20]),
        .S({\ADDout[20]_INST_0_i_1_n_0 ,\ADDout[20]_INST_0_i_2_n_0 ,\ADDout[20]_INST_0_i_3_n_0 ,\ADDout[20]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[20]_INST_0_i_1 
       (.I0(ADDinA[23]),
        .I1(ADDinB[23]),
        .O(\ADDout[20]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[20]_INST_0_i_2 
       (.I0(ADDinA[22]),
        .I1(ADDinB[22]),
        .O(\ADDout[20]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[20]_INST_0_i_3 
       (.I0(ADDinA[21]),
        .I1(ADDinB[21]),
        .O(\ADDout[20]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[20]_INST_0_i_4 
       (.I0(ADDinA[20]),
        .I1(ADDinB[20]),
        .O(\ADDout[20]_INST_0_i_4_n_0 ));
  CARRY4 \ADDout[24]_INST_0 
       (.CI(\ADDout[20]_INST_0_n_0 ),
        .CO({\ADDout[24]_INST_0_n_0 ,\ADDout[24]_INST_0_n_1 ,\ADDout[24]_INST_0_n_2 ,\ADDout[24]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(ADDinA[27:24]),
        .O(ADDout[27:24]),
        .S({\ADDout[24]_INST_0_i_1_n_0 ,\ADDout[24]_INST_0_i_2_n_0 ,\ADDout[24]_INST_0_i_3_n_0 ,\ADDout[24]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[24]_INST_0_i_1 
       (.I0(ADDinA[27]),
        .I1(ADDinB[27]),
        .O(\ADDout[24]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[24]_INST_0_i_2 
       (.I0(ADDinA[26]),
        .I1(ADDinB[26]),
        .O(\ADDout[24]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[24]_INST_0_i_3 
       (.I0(ADDinA[25]),
        .I1(ADDinB[25]),
        .O(\ADDout[24]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[24]_INST_0_i_4 
       (.I0(ADDinA[24]),
        .I1(ADDinB[24]),
        .O(\ADDout[24]_INST_0_i_4_n_0 ));
  CARRY4 \ADDout[28]_INST_0 
       (.CI(\ADDout[24]_INST_0_n_0 ),
        .CO({\NLW_ADDout[28]_INST_0_CO_UNCONNECTED [3],\ADDout[28]_INST_0_n_1 ,\ADDout[28]_INST_0_n_2 ,\ADDout[28]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,ADDinA[30:28]}),
        .O(ADDout[31:28]),
        .S({\ADDout[28]_INST_0_i_1_n_0 ,\ADDout[28]_INST_0_i_2_n_0 ,\ADDout[28]_INST_0_i_3_n_0 ,\ADDout[28]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[28]_INST_0_i_1 
       (.I0(ADDinA[31]),
        .I1(ADDinB[31]),
        .O(\ADDout[28]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[28]_INST_0_i_2 
       (.I0(ADDinA[30]),
        .I1(ADDinB[30]),
        .O(\ADDout[28]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[28]_INST_0_i_3 
       (.I0(ADDinA[29]),
        .I1(ADDinB[29]),
        .O(\ADDout[28]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[28]_INST_0_i_4 
       (.I0(ADDinA[28]),
        .I1(ADDinB[28]),
        .O(\ADDout[28]_INST_0_i_4_n_0 ));
  CARRY4 \ADDout[4]_INST_0 
       (.CI(\ADDout[0]_INST_0_n_0 ),
        .CO({\ADDout[4]_INST_0_n_0 ,\ADDout[4]_INST_0_n_1 ,\ADDout[4]_INST_0_n_2 ,\ADDout[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(ADDinA[7:4]),
        .O(ADDout[7:4]),
        .S({\ADDout[4]_INST_0_i_1_n_0 ,\ADDout[4]_INST_0_i_2_n_0 ,\ADDout[4]_INST_0_i_3_n_0 ,\ADDout[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[4]_INST_0_i_1 
       (.I0(ADDinA[7]),
        .I1(ADDinB[7]),
        .O(\ADDout[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[4]_INST_0_i_2 
       (.I0(ADDinA[6]),
        .I1(ADDinB[6]),
        .O(\ADDout[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[4]_INST_0_i_3 
       (.I0(ADDinA[5]),
        .I1(ADDinB[5]),
        .O(\ADDout[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[4]_INST_0_i_4 
       (.I0(ADDinA[4]),
        .I1(ADDinB[4]),
        .O(\ADDout[4]_INST_0_i_4_n_0 ));
  CARRY4 \ADDout[8]_INST_0 
       (.CI(\ADDout[4]_INST_0_n_0 ),
        .CO({\ADDout[8]_INST_0_n_0 ,\ADDout[8]_INST_0_n_1 ,\ADDout[8]_INST_0_n_2 ,\ADDout[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(ADDinA[11:8]),
        .O(ADDout[11:8]),
        .S({\ADDout[8]_INST_0_i_1_n_0 ,\ADDout[8]_INST_0_i_2_n_0 ,\ADDout[8]_INST_0_i_3_n_0 ,\ADDout[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[8]_INST_0_i_1 
       (.I0(ADDinA[11]),
        .I1(ADDinB[11]),
        .O(\ADDout[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[8]_INST_0_i_2 
       (.I0(ADDinA[10]),
        .I1(ADDinB[10]),
        .O(\ADDout[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[8]_INST_0_i_3 
       (.I0(ADDinA[9]),
        .I1(ADDinB[9]),
        .O(\ADDout[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADDout[8]_INST_0_i_4 
       (.I0(ADDinA[8]),
        .I1(ADDinB[8]),
        .O(\ADDout[8]_INST_0_i_4_n_0 ));
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
