`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Author: Kenny Khut
//Email: Redkhut@gmail.com
//Filename: 
//Date: March 4, 2018
//Version: 1.0

//Notes: An 32 to 4 multiplexer that take eight 4-bit inputs and outputs
// a 3-bit output used for the hex_to7segment
//////////////////////////////////////////////////////////////////////////////////
module ad_mux(d7,d6,d5,d4,d3,d2,d1,d0, sel, Y);

input  [3:0] d7,d6,d5,d4,d3,d2,d1,d0;
input  [2:0] sel;
output reg [3:0] Y;

always @ (d7,d6,d5,d4,d3,d2,d1,d0, sel)
	 case (sel)
		3'b111 : Y = d7;
		3'b110 : Y = d6;
		3'b101 : Y = d5;
		3'b100 : Y = d4;
		3'b011 : Y = d3;
		3'b010 : Y = d2;
		3'b001 : Y = d1;
		3'b000 : Y = d0;
	  default : Y = d0;

	 endcase


endmodule
