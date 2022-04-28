// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri May  8 21:21:02 2020
// Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/Kenny Khut/Desktop/CECS
//               440/Labs/lab_5/lab_5.srcs/sources_1/bd/Datapath/ip/Datapath_PCADD_0_0/Datapath_PCADD_0_0_sim_netlist.v}
// Design      : Datapath_PCADD_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Datapath_PCADD_0_0,PCADD,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "PCADD,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Datapath_PCADD_0_0
   (PCADDin,
    PCADDout);
  input [31:0]PCADDin;
  output [31:0]PCADDout;

  wire [31:0]PCADDin;
  wire [31:1]\^PCADDout ;

  assign PCADDout[31:1] = \^PCADDout [31:1];
  assign PCADDout[0] = PCADDin[0];
  Datapath_PCADD_0_0_PCADD U0
       (.PCADDin(PCADDin[31:1]),
        .PCADDout(\^PCADDout ));
endmodule

(* ORIG_REF_NAME = "PCADD" *) 
module Datapath_PCADD_0_0_PCADD
   (PCADDout,
    PCADDin);
  output [30:0]PCADDout;
  input [30:0]PCADDin;

  wire [30:0]PCADDin;
  wire [30:0]PCADDout;
  wire \PCADDout[13]_INST_0_n_0 ;
  wire \PCADDout[13]_INST_0_n_1 ;
  wire \PCADDout[13]_INST_0_n_2 ;
  wire \PCADDout[13]_INST_0_n_3 ;
  wire \PCADDout[17]_INST_0_n_0 ;
  wire \PCADDout[17]_INST_0_n_1 ;
  wire \PCADDout[17]_INST_0_n_2 ;
  wire \PCADDout[17]_INST_0_n_3 ;
  wire \PCADDout[1]_INST_0_i_1_n_0 ;
  wire \PCADDout[1]_INST_0_n_0 ;
  wire \PCADDout[1]_INST_0_n_1 ;
  wire \PCADDout[1]_INST_0_n_2 ;
  wire \PCADDout[1]_INST_0_n_3 ;
  wire \PCADDout[21]_INST_0_n_0 ;
  wire \PCADDout[21]_INST_0_n_1 ;
  wire \PCADDout[21]_INST_0_n_2 ;
  wire \PCADDout[21]_INST_0_n_3 ;
  wire \PCADDout[25]_INST_0_n_0 ;
  wire \PCADDout[25]_INST_0_n_1 ;
  wire \PCADDout[25]_INST_0_n_2 ;
  wire \PCADDout[25]_INST_0_n_3 ;
  wire \PCADDout[29]_INST_0_n_2 ;
  wire \PCADDout[29]_INST_0_n_3 ;
  wire \PCADDout[5]_INST_0_n_0 ;
  wire \PCADDout[5]_INST_0_n_1 ;
  wire \PCADDout[5]_INST_0_n_2 ;
  wire \PCADDout[5]_INST_0_n_3 ;
  wire \PCADDout[9]_INST_0_n_0 ;
  wire \PCADDout[9]_INST_0_n_1 ;
  wire \PCADDout[9]_INST_0_n_2 ;
  wire \PCADDout[9]_INST_0_n_3 ;
  wire [3:2]\NLW_PCADDout[29]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_PCADDout[29]_INST_0_O_UNCONNECTED ;

  CARRY4 \PCADDout[13]_INST_0 
       (.CI(\PCADDout[9]_INST_0_n_0 ),
        .CO({\PCADDout[13]_INST_0_n_0 ,\PCADDout[13]_INST_0_n_1 ,\PCADDout[13]_INST_0_n_2 ,\PCADDout[13]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PCADDout[15:12]),
        .S(PCADDin[15:12]));
  CARRY4 \PCADDout[17]_INST_0 
       (.CI(\PCADDout[13]_INST_0_n_0 ),
        .CO({\PCADDout[17]_INST_0_n_0 ,\PCADDout[17]_INST_0_n_1 ,\PCADDout[17]_INST_0_n_2 ,\PCADDout[17]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PCADDout[19:16]),
        .S(PCADDin[19:16]));
  CARRY4 \PCADDout[1]_INST_0 
       (.CI(1'b0),
        .CO({\PCADDout[1]_INST_0_n_0 ,\PCADDout[1]_INST_0_n_1 ,\PCADDout[1]_INST_0_n_2 ,\PCADDout[1]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,PCADDin[1],1'b0}),
        .O(PCADDout[3:0]),
        .S({PCADDin[3:2],\PCADDout[1]_INST_0_i_1_n_0 ,PCADDin[0]}));
  LUT1 #(
    .INIT(2'h1)) 
    \PCADDout[1]_INST_0_i_1 
       (.I0(PCADDin[1]),
        .O(\PCADDout[1]_INST_0_i_1_n_0 ));
  CARRY4 \PCADDout[21]_INST_0 
       (.CI(\PCADDout[17]_INST_0_n_0 ),
        .CO({\PCADDout[21]_INST_0_n_0 ,\PCADDout[21]_INST_0_n_1 ,\PCADDout[21]_INST_0_n_2 ,\PCADDout[21]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PCADDout[23:20]),
        .S(PCADDin[23:20]));
  CARRY4 \PCADDout[25]_INST_0 
       (.CI(\PCADDout[21]_INST_0_n_0 ),
        .CO({\PCADDout[25]_INST_0_n_0 ,\PCADDout[25]_INST_0_n_1 ,\PCADDout[25]_INST_0_n_2 ,\PCADDout[25]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PCADDout[27:24]),
        .S(PCADDin[27:24]));
  CARRY4 \PCADDout[29]_INST_0 
       (.CI(\PCADDout[25]_INST_0_n_0 ),
        .CO({\NLW_PCADDout[29]_INST_0_CO_UNCONNECTED [3:2],\PCADDout[29]_INST_0_n_2 ,\PCADDout[29]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_PCADDout[29]_INST_0_O_UNCONNECTED [3],PCADDout[30:28]}),
        .S({1'b0,PCADDin[30:28]}));
  CARRY4 \PCADDout[5]_INST_0 
       (.CI(\PCADDout[1]_INST_0_n_0 ),
        .CO({\PCADDout[5]_INST_0_n_0 ,\PCADDout[5]_INST_0_n_1 ,\PCADDout[5]_INST_0_n_2 ,\PCADDout[5]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PCADDout[7:4]),
        .S(PCADDin[7:4]));
  CARRY4 \PCADDout[9]_INST_0 
       (.CI(\PCADDout[5]_INST_0_n_0 ),
        .CO({\PCADDout[9]_INST_0_n_0 ,\PCADDout[9]_INST_0_n_1 ,\PCADDout[9]_INST_0_n_2 ,\PCADDout[9]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PCADDout[11:8]),
        .S(PCADDin[11:8]));
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
