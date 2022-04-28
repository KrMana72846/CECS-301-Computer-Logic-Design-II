`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Kenny Khut
// Module Name: vga_sync.v
// Description: Scans the horizonal and vertical displays at a 25 MHz rate
//////////////////////////////////////////////////////////////////////////////////
module vga_sync(clk,rst,video_on,hsync,vsync,pixel_x, pixel_y);
input clk, rst;
output video_on, hsync, vsync;
output [9:0]	pixel_x, pixel_y;
reg [1:0] counter;
reg [9:0] h_count, h_count_nxt;
reg [9:0] v_count, v_count_nxt;
wire h_tick, v_tick, tick;

assign tick = (counter == 3); // 25 Mhz Rate

always @ (posedge clk, posedge rst) // 25 Mhz Counter
	if (rst) counter <= 2'b0;
	else if (tick) counter <= 2'b0;
	else counter <= counter + 2'b1;

always @ (posedge clk, posedge rst)
	if (rst) begin
	v_count <= 10'b0;
	h_count <= 10'b0;
	end
	else begin
	v_count <= v_count_nxt;
	h_count <= h_count_nxt;
	end
	
assign h_tick = (h_count == 799); // Horizontal Scan count
assign v_tick = (v_count == 524); // Vertical Scan count

always @ (*) // Horizonal Scan
	if (tick)
		if (h_tick) 
			h_count_nxt = 10'b0;
		else 
			h_count_nxt = h_count + 10'b1;
	else h_count_nxt = h_count;

always @ (*) // Vertical Scan
	if (h_tick & tick)
		if 
			(v_tick) v_count_nxt = 10'b0;
		else 
			v_count_nxt = v_count + 10'b1;
	else v_count_nxt = v_count;

assign hsync = ~((h_count >= 656) && (h_count <= 751));
assign vsync = ~((v_count >= 490) && (v_count <= 491));	
assign video_on = ((h_count <= 640) && (v_count <= 480));
assign pixel_x = h_count;
assign pixel_y = v_count;
	
endmodule