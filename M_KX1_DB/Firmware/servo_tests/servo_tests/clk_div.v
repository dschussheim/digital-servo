`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:25:08 06/07/2017 
// Design Name: 
// Module Name:    clk_div 
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
module clk_div(
    input	wire 					clk,
 //   input 	wire		[27:0] 	div_f, //27'b101_1111_0101_1110_0001_0000_0000 = 100,000,000 (decimal), would give 1Hz clock from 100 MHz.
	 input	wire					rst_in,
    output 	reg					div_clk
    );
reg			[26:0]	counter = 27'b0;
parameter	div_f = 27'b10100; //default Divide by 20 for 5 MHz clock
parameter	halfway = div_f >> 1;

always @(posedge clk or posedge rst_in) begin
	if	(div_f == 27'b0)	begin
		if (rst_in) begin
			div_clk <= 1'b0;
		end
		else	begin
			assign div_clk = clk;
		end
	end
	else	begin
		if (rst_in) begin
			counter <= 27'b0;
			div_clk <= 1'b0;
		end
		else begin
			if (counter == (div_f - 27'b1)) begin
				counter <= 27'b0;
				div_clk <= 1'b0;
			end
			else if (counter == halfway-27'b1) begin
				counter <= counter + 27'b1;
				div_clk <= 1'b1;
			end
			else	begin
			counter <= counter + 27'b1;
			end
		end
	end
end



endmodule
