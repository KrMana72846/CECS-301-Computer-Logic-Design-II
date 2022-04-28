`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Author: Kenny Khut
//Email: Redkhut@gmail.com
//Filename: 
//Date: March 4, 2018
//Version: 1.0

//Notes: This module creates a clock divider.
// 	The funtion of this clock divider is to slow down the internal clock so
// that the circuit has ample time for signal propagation at 480Mhz.
//////////////////////////////////////////////////////////////////////////////////
module pixel_clk(clk_in, reset, clk_out);

	input  clk_in;
	input  reset;
	output clk_out;
	
	reg clk_out;
	integer i;
	
	always @ (posedge clk_in or posedge reset) begin
	
		if (reset == 1'b1) begin
			i = 0;
			clk_out = 0;
		end// End if
		
		else begin
			i = i + 1;
			if (i >= 104166) begin
				clk_out = ~clk_out;
				i = 0;
			end// End if
		end// End else
	end// End always

endmodule
