`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:20 04/19/2019 
// Design Name: 
// Module Name:    and1 
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
module basic_gates(a,b,c,d,e,f,g,h);
	input a,b;
	output c,d,e,f,g,h;
	assign c = a & b; // can also use '&' for and operation
	assign d = a | b;
	assign e = a ^ b;
	assign f = not(a);
	assign h = a ~^ b;

endmodule
