`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:44:16 11/12/2019
// Design Name:   Project5Main
// Module Name:   C:/Users/Kenny Khut/Desktop/CECS 361/CECS 361 Labs/Project_5/Main_testbench.v
// Project Name:  Project_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Project5Main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Main_testbench;

	// Inputs
	reg clk;
	reg rst;
	reg [1:0] btn;

	// Outputs
	wire hsync;
	wire vsync;
	wire [11:0] rgb;

	// Instantiate the Unit Under Test (UUT)
	Project5Main uut (
		.clk(clk), 
		.rst(rst), 
		.btn(btn), 
		.hsync(hsync), 
		.vsync(vsync), 
		.rgb(rgb)
	);
	
	always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		#50
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
      
endmodule

