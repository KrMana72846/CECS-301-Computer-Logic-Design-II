`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Author: Kenny Khut
//Email: Redkhut@gmail.com
//Filename: pixel_controller.v
//Date: March 4, 2018
//Version: 1.0
//Notes: A Finite State Machine(FSM) selecting one pixel on 7-segment
//     display to turn on and turn the other three off on a clock cycle.
//     Furthermore, it sends a 3-bit selection pin to a multiplexer, 
//     so that multiplex can produce an output for the pixel which it
//     is on.
//////////////////////////////////////////////////////////////////////////////////
module pixel_controller(clk, reset, anode, seg_sel);

input clk, reset;

output reg [7:0] anode;
output reg [2:0] seg_sel;

reg [2:0] present_state, next_state;

// Next State Combination Logic
always @ (present_state)
	case(present_state)
         3'b111: next_state = 3'b110;
         3'b110: next_state = 3'b101;
         3'b101: next_state = 3'b100;
         3'b100: next_state = 3'b011;
			3'b011: next_state = 3'b010;
			3'b010: next_state = 3'b001;
			3'b001: next_state = 3'b000;
			3'b000: next_state = 3'b111;
         default: next_state = 3'b111;
	endcase

//State Register	
always @ (posedge clk or posedge reset)
	if (reset == 1'b1)
		present_state = 3'b111;
	else
		present_state = next_state;

// Output Combination Logic
always @ (present_state)
	case(present_state)
		3'b000: {anode, seg_sel} = 11'b01111111_111;
		3'b001: {anode, seg_sel} = 11'b10111111_110;
		3'b010: {anode, seg_sel} = 11'b11011111_101;
		3'b011: {anode, seg_sel} = 11'b11101111_100;
		3'b100: {anode, seg_sel} = 11'b11110111_011;
		3'b101: {anode, seg_sel} = 11'b11111011_010;
		3'b110: {anode, seg_sel} = 11'b11111101_001;
		3'b111: {anode, seg_sel} = 11'b11111110_000;
		default: {anode, seg_sel} = 11'b11111110_000;
	endcase
endmodule
