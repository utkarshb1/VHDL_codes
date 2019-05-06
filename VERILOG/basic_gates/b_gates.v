`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:45:17 04/19/2019 
// Design Name: 
// Module Name:    b_gates 
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
module b_gates(a,b,c,f1,f2
    );
	input a,b,c;
	output f1,f2;
	wire a,b,c;
	reg f1,f2;
	always@(a or b or c)
	begin 
		f2 = f1^f2;
		f1 = ~(a&b);

	end

endmodule
