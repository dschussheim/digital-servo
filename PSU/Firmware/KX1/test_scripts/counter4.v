`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// 4 bit counter
//
//////////////////////////////////////////////////////////////////////////////////
module counter4(
    input	wire				clk,
	 input 	wire				enable,
    input 	wire				reset,
    output 	reg	[3:0] 	out
    );

always @(posedge clk) begin
	//Reset to zero if reset is active.
	if (reset == 1'b1) begin
		out = 4'b0000;
	end
	//Count up if enable is active and reset is not.
	else if (enable == 1'b1) begin
		out = out+4'b0001;
	end
end

endmodule
