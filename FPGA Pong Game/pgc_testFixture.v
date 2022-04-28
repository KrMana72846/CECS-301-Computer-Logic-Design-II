`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:23:56 11/26/2019
// Design Name:   pixel_generation_circuit
// Module Name:   C:/Users/Kenny Khut/Desktop/CECS 361/CECS 361 Labs/Project_5/pgc_testFixture.v
// Project Name:  Project_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pixel_generation_circuit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pgc_testFixture;

	// Inputs
	reg clk;
	reg rst;
	reg [1:0] btn;
	reg [9:0] pixel_x;
	reg [9:0] pixel_y;
	reg video_on;

	// Outputs
	wire [11:0] rgb;

	// Instantiate the Unit Under Test (UUT)
	pixel_generation_circuit uut (
		.clk(clk), 
		.rst(rst), 
		.btn(btn), 
		.pixel_x(pixel_x), 
		.pixel_y(pixel_y), 
		.video_on(video_on), 
		.rgb(rgb)
	);
	always #10 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		btn = 0;
		pixel_x = 0;
		pixel_y = 0;
		video_on = 0;
		#50
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
      pixel_x = 256;
		pixel_y = 128;
		// Add stimulus here

	end
      
endmodule

