`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Author: Kenny Khut
//Email: redkhut@gmail.com
//Filename: one_shot.v
//Date: Febuary 25, 2018
//Version: 1.0

//Notes: This module creates a debounce circuit.
// 	This module's function is to debounce the input signal from the step
// button (BTND). 
// 	This module waits out the bouncing by creating a ten bit shift register
// The following template provides a one-shot pulse
//from a non-clock input (D_in)
	
//////////////////////////////////////////////////////////////////////////////////
module one_shot(D_in, clk, reset, D_out);
	// The following template provides a one-shot pulse
	//from a non-clock input (D_in)
	input D_in;
	input clk, reset;
	output D_out;

	wire D_out;

	reg q9, q8, q7, q6, q5, q4, q3, q2, q1, q0;
	
	always @ (posedge clk or posedge reset) begin
		if (reset == 1'b1) begin
			{q9, q8, q7, q6, q5, q4, q3, q2, q1, q0} <= 10'b0;
		end// End if
		else begin
		// shift in the new sample that's on the D_in input
			q9 <= q8; q8 <= q7; q7 <= q6; q6 <= q5; q5 <= q4;
			q4 <= q3; q3 <= q2; q2 <= q1; q1 <= q0; q0 <= D_in;
		end// End else
	end// End alway
	
	// create the debounced, one-shot output pulse
	assign D_out = !q9 & q8 & q7 & q6 & q5
					 & q4 & q3 & q2 & q1 & q0; 

endmodule
