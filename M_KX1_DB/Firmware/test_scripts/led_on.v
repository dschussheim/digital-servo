`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//
//////////////////////////////////////////////////////////////////////////////////
module led_on(
    //input 	wire 	on_in,
	 output	reg	[3:0]	out
    );
	 
wire	on_in = 1'b1;
//wire	on_in = 1'b0;
	 
//LEDs active low. On pins M17, L18, L17, K18 (on Mercury KX1 module)
always	@(on_in)	begin
	if (on_in) 
		out = 4'b1000;
	else 
		out = 4'b1111;
end

endmodule
