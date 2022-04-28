`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Author: Kenny Khut, Kevin Lopez
//Email: redkhut@gmail.com, kevilopez7612@gmail.com
//Filename: Register_File.v
//Date: May 1, 2018
//Version: 1.0
//Purpose:	Create the module of the RAM and instaciate

//Notes:		The following verilog code provides the inputs and outpues of the ram1
//			Din is the inputs of the ram( 16 swithces), addr is the address of the 
//			ram which is being controlled by and up conter, and the dout is being 
//			displayed out of the 7 seg display.
//////////////////////////////////////////////////////////////////////////////////
module ram1(
    input clk,
    input we,
    input [7:0] addr,
    input [15:0] din,
    output [15:0] dout
    );
	 
	 ram_256x16a dut (
  .clka(clk), // input clka
  .wea(we), // input [0 : 0] wea
  .addra(addr), // input [7 : 0] addra
  .dina(din), // input [15 : 0] dina
  .douta(dout) // output [15 : 0] douta
);


endmodule
