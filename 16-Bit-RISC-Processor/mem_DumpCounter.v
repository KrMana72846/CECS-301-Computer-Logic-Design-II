`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Author: Kenny Khut, Kevin Lopez
//Email: redkhut@gmail.com, kevilopez7612@gmail.com
//Filename: mem_DumpCounter.v
//Date: April 30, 2018
//Version: 1.0
//Notes: The module acts as a counter by counting each increment in the program
// and holds and outputs the values of each increment.
//////////////////////////////////////////////////////////////////////////////////
module mem_DumpCounter(clk, reset, memCounter);
	//inputs
	input clk, reset;
	//output
	output [15:0] memCounter;
	//register
	reg [15:0] countHold;
	
	always @ (posedge clk or posedge reset) begin
      if (reset)
         countHold <= 0;
      else 
         countHold <= countHold + 1;
    end
	
	assign memCounter = countHold;
endmodule
