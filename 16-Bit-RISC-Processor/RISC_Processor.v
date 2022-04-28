`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
//Author: Kenny Khut, Kevin Lopez
//Email: redkhut@gmail.com, kevilopez7612@gmail.com
//Filename: cu.v
//Date: April 30, 2018
//Version: 1.0
//Notes: Module instantiate the system's CPU Execution Unit
//   (CPU-EU) via the interconnection of five components; the IDP, the Program 
//  Counter, the Instruction Register, an Address Multiplexer, and the 256x16 Ram 
//   module. 
//////////////////////////////////////////////////////////////////////////////////
module RISC_Processor(clk, reset, D_in, D_out, address, N, Z, carry, mw_en, status);

	//inputs 	
	input clk, reset;
	input [15:0] D_in;
	
	//outputs
	output [15:0] D_out, address;
	output N, Z, carry, mw_en;
	output [7:0] status;
	
	//wires
	wire [2:0] W_Adr, R_Adr, S_Adr;
	wire N,Z, carry;
	wire [3:0] alu_op;
	wire [15:0] IR;
	wire rw_en;
	wire  s_sel, adr_sel;
   wire  ir_ld, pc_ld, pc_inc, pc_sel;
	
	// 	 clk, reset, DS, N, Z,     C, W_Adr,   R_Adr,   S_Adr, adr_sel,
	cu m1 (clk, reset, IR, N, Z, carry, W_Adr,   R_Adr,   S_Adr, adr_sel, 
	//		s_sel, pc_ld, pc_inc, pc_sel, ir_ld, mw_en, rw_en, alu_op, status
			s_sel, pc_ld, pc_inc, pc_sel, ir_ld, mw_en, rw_en, alu_op, status);
	
	//			  clk, reset, W_Adr, R_Adr, S_Adr, alu_op, D_in, Alu_out,    addr, N, Z, 
	cpu_EU m2 (clk, reset, W_Adr, R_Adr, S_Adr, alu_op, D_in,   D_out, address, N, Z, 
	//		carry, pc_sel, adr_sel, s_sel, pc_ld, pc_inc,  rw_en, ir_ld, IR_out
			carry, pc_sel, adr_sel, s_sel, pc_ld, pc_inc,  rw_en, ir_ld, IR);
	 



endmodule
