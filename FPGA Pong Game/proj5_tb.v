`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Kenny Khut
// Module Name: Project5Main.v
// Description: Top level module for the project.
//////////////////////////////////////////////////////////////////////////////////
module Project5Main(clk,rst,btn,hsync,vsync,rgb);
			
input clk, rst;
input [1:0] btn;
output hsync, vsync;
output [11:0] rgb;
wire video, pulse;
wire [9:0] pixel_x, pixel_y;
									//clk,rst,resetOut
AISO								a0 (	.clk(clk),
											.reset(rst),
											.resetOut(pulse)
											);

									// clk,rst,video_on,hsync,vsync
vga_sync 						a1 (	.clk(clk),
											.rst(pulse),
											.video_on(video),
											.hsync(hsync),
											.vsync(vsync),
											.pixel_x(pixel_x),
											.pixel_y(pixel_y)
												);
						  			//	clk,rst,edc,video_on,rgb			
pixel_generation_circuit 	a2 ( 	.clk(clk),
											.rst(pulse),
											.btn(btn),
											.pixel_x(pixel_x),
											.pixel_y(pixel_y),
											.video_on(video),
											.rgb(rgb)
											);
											
endmodule
