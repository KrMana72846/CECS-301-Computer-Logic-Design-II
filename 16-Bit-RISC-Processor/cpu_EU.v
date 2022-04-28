`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Author: Kenny Khut, Kevin Lopez
//Email: redkhut@gmail.com, kevilopez7612@gmail.com
//Filename: cpu_EU.v
//Date: April 8, 2018
//Version: 1.0
//Notes: This module connects all the indivial modules to make a 
//				integer datapath. This program will follow 13 instructions
//				that are in the alu16 file.
//////////////////////////////////////////////////////////////////////////////////
module cpu_EU(clk, reset, W_Adr, R_Adr, S_Adr, alu_op, D_in, Alu_out, addr,
N, Z, carry, pc_sel, adr_sel, s_sel, pc_ld, pc_inc, rw_en, ir_ld, IR_out);
	
	//inputs
	
	input clk, reset;
	input adr_sel, s_sel, pc_ld, pc_inc, rw_en, ir_ld, pc_sel;
	input [15:0] D_in;
	input [3:0] alu_op;
	input [2:0] W_Adr, R_Adr, S_Adr;
	
	//outputs
	output [15:0] Alu_out, addr, IR_out;
	output N, Z, carry;
	
	//wires
	wire [15:0] PC, Reg_out, Alu_out, IR_out, signExt, bit_add, pc_mux;
		
	//							clk, reset,    we, s_sel, W_Adr, R_Adr, S_Adr, alu_op,
	Integer_Datapath u1 (clk, reset, rw_en, s_sel, W_Adr, R_Adr, S_Adr, alu_op,
	//		   DS, Alu_out, Reg_out, carry, N, Z 
		    D_in, Alu_out, Reg_out, carry, N, Z);
	
	//					  clk, reset,    ld,    inc,	    D,  Q
	reg16_ld_inc pc (clk, reset, pc_ld, pc_inc, pc_mux, PC);
	
	//					  clk, reset,    ld,  inc,	   D, Q 
	reg16_ld_inc ir (clk, reset, ir_ld, 1'b0, D_in, IR_out);
	
	//SignExt Bit Extender
	assign signExt = { {8{IR_out[7]}}, IR_out[7:0] };
	
	// 16-bit add mux
	assign bit_add = signExt + PC;
	
	//pc mux
	assign pc_mux = (pc_sel) ? Alu_out : bit_add;
	
	//adr_mux
	assign addr = (adr_sel == 1'b1)? Reg_out: PC;



endmodule
