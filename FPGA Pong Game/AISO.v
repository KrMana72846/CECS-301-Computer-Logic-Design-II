`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Kenny Khut
// Module Name:    AISO.v
// Description: Asynchronous in / synchrounous out module
// that synchronizes the clock for metastability.
//////////////////////////////////////////////////////////////////////////////////
module AISO(clk, reset, resetOut);

input clk, reset;
output resetOut;
reg qMeta, qOk;

always @ (posedge clk, posedge reset)
	if (reset) qMeta <= 1'b0;
	else qMeta <= 1'b1;
	
always @ (posedge clk)
		qOk <= qMeta;
	
	assign resetOut = ~qOk;
	
endmodule
