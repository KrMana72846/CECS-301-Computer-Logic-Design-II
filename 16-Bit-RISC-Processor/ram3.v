`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:16:12 05/02/2018 
// Design Name: 
// Module Name:    ram3 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ram3(    
	 input clk,
    input we,
    input [7:0] addr,
    input [15:0] din,
    output [15:0] dout
    );
	 
	ram_256x16c dut (
  .clka(clk), // input clka
  .wea(we), // input [0 : 0] wea
  .addra(addr), // input [7 : 0] addra
  .dina(din), // input [15 : 0] dina
  .douta(dout) // output [15 : 0] douta
);


endmodule
