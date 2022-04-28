`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Author: Kenny Khut, Kevin Lopez
//Email: redkhut@gmail.com, kevilopez7612@gmail.com
//Filename: Display_Controller.v
//Date: March 9, 2018
//Version: 1.0
//Notes: This is the top level of this project showing
//           interconnections between each module, showing
//           inputs and outputs, and "top-down" sequence 
//           of all modules
//
//Revised Date: March 14, 2018
//Version: 1.1
//Notes: Edited verilog to take output R & S from Register_File to be used as
// inputs for ad_mux
//////////////////////////////////////////////////////////////////////////////////
module Display_Controller(clk, reset, R, S, anode, A,B,C,D,E,F,G);
	input clk, reset;
	input [15:0] R, S; //Output R and S from Register_File
	output [7:0] anode; //8 anodes
	output A,B,C,D,E,F,G; //7-segment displays
	
	wire [2:0] sel; //wire from pix_controller to ad_mux
	wire [3:0] hex_out; //wire from ad_mux to hex_to_7segment
	
	//        clk_in, reset, clk_out	
	pixel_clk a4(clk, reset, clk_out);

	//                       clk, reset, anode, sel
	pixel_controller a5 (clk_out, reset, anode, sel);

	//             seg7,    seg6,   seg5,   seg4,     seg3,    seg2,  
	ad_mux a6 (R[15:12], R[11:8], R[7:4], R[3:0], S[15:12], S[11:8],
	//seg1,   seg0, sel, hex	
	S[7:4], S[3:0], sel, hex_out);
	
   //                      hex, A,B,C,D,E,F,G
	hex_to_7segment a7 (hex_out, A,B,C,D,E,F,G);
	
endmodule
