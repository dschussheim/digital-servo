`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//
// Test of led_on
// 
////////////////////////////////////////////////////////////////////////////////

module led_on_test;

	// Inputs
	//reg on_in;

	// Outputs
	reg out;

	// Instantiate the Unit Under Test (UUT)
//	led_on uut (
//		.on_in(on_in), 
//		.out(out)
//	);

led_on uut (
		.out(out)
	);

	initial begin
		// Initialize Inputs
		on_in = 1;
	#5	on_in = 0;
	#5 on_in = 1;
        
		// Add stimulus here
	end
      
endmodule

