`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Author: Kenny Khut
//Email: Redkhut@gmail.com
//Filename: sequence_detector.v
//Date: Febuary 27, 2018
//Version: 1.0
//
//		This module's function is to tell the board which number to display
// based on the current state of the circuit.
// 	The circuit selects which segment should be asserted based on the case statement
// seen below. At any point if the input to the module (hex) changes then the circuit 
// will assert the segments it is assigned to assert based on that input.
//		   A
//     -----
//	 F |  G  | B
//	    -----
//	 E |     | C
//     -----
//		   D
//////////////////////////////////////////////////////////////////////////////////
module hex_to_7segment(hex, A, B, C, D, E, F, G);

	input [3:0] hex;
	output reg A, B, C, D, E, F, G;
	
	// The stimulus to change the output comes from the input 'hex'.
	always@ (hex) begin
		case (hex)
		
			4'b0000 : {A,B,C,D,E,F,G} = 7'b0000001; // Display 0
			4'b0001 : {A,B,C,D,E,F,G} = 7'b1001111; // Display 1
			4'b0010 : {A,B,C,D,E,F,G} = 7'b0010010; // Display 2
			4'b0011 : {A,B,C,D,E,F,G} = 7'b0000110; // Display 3
			4'b0100 : {A,B,C,D,E,F,G} = 7'b1001100; // Display 4
			4'b0101 : {A,B,C,D,E,F,G} = 7'b0100100; // Display 5
			4'b0110 : {A,B,C,D,E,F,G} = 7'b0100000; // Display 6
			4'b0111 : {A,B,C,D,E,F,G} = 7'b0001111; // Display 7
			4'b1000 : {A,B,C,D,E,F,G} = 7'b0000000; // Display 8
			4'b1001 : {A,B,C,D,E,F,G} = 7'b0000100; // Display 9
			4'b1010 : {A,B,C,D,E,F,G} = 7'b0001000; // Display A
			4'b1011 : {A,B,C,D,E,F,G} = 7'b1100000; // Display B
			4'b1100 : {A,B,C,D,E,F,G} = 7'b0110001; // Display C
			4'b1101 : {A,B,C,D,E,F,G} = 7'b1000010; // Display D
			4'b1110 : {A,B,C,D,E,F,G} = 7'b0110000; // Display E
			4'b1111 : {A,B,C,D,E,F,G} = 7'b0111000; // Display F
			default : {A,B,C,D,E,F,G} = 7'b1111010; // Display 'r' for error.
			
		endcase
	
	end // End always


endmodule
