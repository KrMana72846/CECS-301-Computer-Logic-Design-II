`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Kenny Khut
// Module Name: pixel_generation_circuit.v
// Description: Creates the RGB signals based on the input of the switches.
// Max X = 640, Max Y = 480
//////////////////////////////////////////////////////////////////////////////////
module pixel_generation_circuit(clk,rst,btn,pixel_x,pixel_y,video_on,rgb);

input clk,rst,video_on;
input [1:0] btn;
input [9:0] pixel_x, pixel_y;
output [11:0] rgb;

reg [11:0] rgb_reg, rgb_nxt;
wire wall_on, bar_on, ball_on, sq_ball_on;
wire [11:0] wall_rgb, bar_rgb, ball_rgb;

wire	[9:0] rom_addr, rom_col;
wire rom_bit;
reg [21:0] rom_data;

reg [9:0] ball_x_reg, ball_y_reg;
reg [9:0] bar_y_nxt, bar_y_reg;
reg [9:0] x_dreg, x_dnxt;
reg [9:0] y_dreg, y_dnxt;

wire [9:0] ball_x_nxt, ball_y_nxt;
wire [9:0] ball_xl, ball_xr, ball_yt, ball_yb;
wire [9:0] bar_yt;
wire [10:0] bar_yb;

// ROM
always @(*)
case	(rom_addr)
	3'h0: rom_data = 8'b00111100;
	3'h1: rom_data = 8'b01111110;
	3'h2: rom_data = 8'b11111111;
	3'h3: rom_data = 8'b11111111;
	3'h4: rom_data = 8'b11111111;
	3'h5: rom_data = 8'b11111111;
	3'h6: rom_data = 8'b01111110;
	3'h7: rom_data = 8'b00111100;
endcase	

always @(posedge clk, posedge rst)
	if (rst) begin
	rgb_reg <= 12'b0;
	bar_y_reg <= 10'b0;
	ball_x_reg <= 10'h35;
	ball_y_reg <= 10'h240;
	x_dreg <= 10'b1;
	y_dreg <= 10'b1;
	end
	else if (ball_x_reg >= 631) begin
	ball_x_reg <= 10'h35;
	ball_y_reg <= 10'h240;
	x_dreg <= 10'b1;
	y_dreg <= 10'b1;
	end
	else	begin
	bar_y_reg <= bar_y_nxt;
	rgb_reg <= rgb_nxt;
	ball_x_reg <= ball_x_nxt;
	ball_y_reg <= ball_y_nxt;
	x_dreg <= x_dnxt;
	y_dreg <= y_dnxt;
	end
	
// 60 Hz rate
assign reftick = (pixel_x == 0) && (pixel_y == 481);	

// Wall		
assign wall_on = (pixel_x >= 32) && (pixel_x <= 35);

assign wall_rgb = 12'h800; // Wall Color

// Paddle
assign bar_yt = bar_y_reg; // top
assign bar_yb = bar_y_reg + 71; // bottom
assign bar_on = (pixel_x >= 600) && (pixel_x <= 603) && 
					 (pixel_y >= bar_yt) && (pixel_y <= bar_yb);
assign bar_rgb = 12'h80; // Paddle Color

// New Paddle position
always @(*)
	if (reftick)
		if			(btn[0] & (bar_yb < 475))
			bar_y_nxt = bar_y_reg + 10'h4; // move down
		else if	(btn[1] & (bar_yt > 4))	
			bar_y_nxt = bar_y_reg - 10'h4; // move up
			
// Ball

// boundary
assign ball_xl = ball_x_reg;
assign ball_yt = ball_y_reg;
assign ball_xr = ball_xl + 10'h8;
assign ball_yb = ball_yt + 10'h8;
assign sq_ball_on = (pixel_x >= ball_xl) && (pixel_x <= ball_xr) &&
					  (pixel_y >= ball_yt) && (pixel_y <= ball_yb);

assign ball_rgb = 12'h8; // Ball Color	

assign rom_addr = pixel_y[9:0] - ball_yt[9:0];
assign rom_col = pixel_x[9:0] - ball_xl[9:0];
assign rom_bit = rom_data[rom_col];

assign ball_on = sq_ball_on & rom_bit;

// new ball positon
assign ball_x_nxt = (reftick) ? ball_x_reg + x_dreg : ball_x_reg;
assign ball_y_nxt = (reftick) ? ball_y_reg + y_dreg : ball_y_reg;

// ball velocity
always @(*)
begin
	x_dnxt = x_dreg;
	y_dnxt = y_dreg;
	if (ball_yt < 1) // hits top
		y_dnxt = 1;
	else if (ball_yb > 479) // hits bottom
		y_dnxt = -1;
	else if (ball_xl <= 35) // hits wall
		x_dnxt = 1;
	else if	((ball_xr >= 595) && (ball_xl <= 603) &&
				 (ball_yb >= bar_yt) && (ball_yt <= bar_yb)) // hits paddle
		x_dnxt = -1;
end

// Sets RGB Colors
always @(*)
	if (wall_on)	rgb_nxt = wall_rgb;
	else if (bar_on)	rgb_nxt = bar_rgb;
	else if (ball_on) rgb_nxt = ball_rgb;
	else	rgb_nxt = 12'hFFF; //Background		
		  
assign rgb = (video_on) ? rgb_reg : 12'b0;
		  
endmodule
