`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Author: Kenny Khut, Kevin Lopez
//Email: redkhut@gmail.com, kevilopez7612@gmail.com
//Filename: cu.v
//Date: May 2, 2018
//Version: 1.0
//Notes: Top module for the 16-bit RISC Processor, connects CPU_EU, CU,
// 		ram1 (256x16 Memory), Mem Dump Counter, and Display Controller
//////////////////////////////////////////////////////////////////////////////////
module Lab8_TopModule(clk, reset, step, mem, dump_mem, anode, A,B,C,D,E,F,G,
status);
	//inputs
	input clk, reset;
	input step, mem, dump_mem;

	//outputs
	output [7:0] anode, status;
	output A,B,C,D,E,F,G;

	// wires
	wire clk_out, step_clk, mem_clk, mw_en;
	wire [15:0] address, madr, din, dout, mem_counter;

	//				   		   clk, reset, D_in, D_out, address, N, Z, carry, mw_en,
	RISC_Processor m1 (step_clk, reset, dout,   din, address, N, Z, carry, mw_en,
	// status
		status);
	// 		clk,	  we, 	  addr, din, dout
	ram1 m2 (clk, mw_en, madr[7:0], din, dout);

	//							  clk, reset,    R,    S, anode, A,B,C,D,E,F,G
	Display_Controller m3 (clk, reset, madr, dout, anode, A,B,C,D,E,F,G);

		//			  clk_in, reset, clk_out
	clk_500hz s0 (   clk, reset, clk_out);

	//				      D_in,     clk, reset,    D_out
	one_shot stepclk (step, clk_out, reset, step_clk);

	//				     D_in,     clk, reset,   D_out
	one_shot memClk ( mem, clk_out, reset, mem_clk);
	
	//							 		  clk, reset, memCounter
	mem_DumpCounter memD(mem_clk, reset, mem_counter);
	
	assign madr = (dump_mem)? mem_counter: address ;

endmodule
