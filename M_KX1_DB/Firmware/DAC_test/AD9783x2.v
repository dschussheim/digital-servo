`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:38 06/13/2017 
// Design Name: 
// Module Name:    AD9783x2 
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
module AD9783x2(
	//Clock and gloabl reset
	input		wire				clk__in,
   input 	wire				rst_in,
	//Command data IO
   input 	wire				cmd_trig_in,
   input 	wire	[15:0] 	cmd_addr_in,
   input 	wire	[15:0] 	cmd_data_in,
   output 	wire	[15:0] 	cmd_data_out,
	//SPI IO
	//Reset and chip select unique to each chip
   output 	wire				rst0_out,
	output 	wire				rst1_out,
   output 	wire				spi_scs0_out,
	output 	wire				spi_scs1_out,
	//Shared IOs
   output 	wire				spi_sck_out,
   output 	wire				spi_sdo_out,
   input 	wire				spi_sdi_in,
	//DAC data in
   input 	wire	[15:0] 	DAC00_in,
   input 	wire	[15:0] 	DAC01_in,
   input 	wire	[15:0] 	DAC10_in,
	input 	wire	[15:0] 	DAC11_in,
	//LVDS ouptuts to DACs
	//Clock (shared)
   output 	wire				CLK0_out_p,
   output 	wire				CLK0_out_n,
	output 	wire				CLK1_out_p,
   output 	wire				CLK1_out_n,
	//Data clock
   output 	wire				DCI0_out_p,
   output 	wire				DCI0_out_n,
   output 	wire				DCI1_out_p,
   output 	wire				DCI1_out_n,
	//Data
   output 	wire	[15:0] 	D0_out_p,
   output 	wire	[15:0] 	D0_out_n,
   output 	wire	[15:0] 	D1_out_p,
   output 	wire	[15:0] 	D1_out_n
    );

// Parameters
parameter 	SMP_DLY	= 8'h0;
parameter 	CLKDIV = 80;		//8 = 100MHz, 80 = 10MHz
parameter	IODG_NAME = "OUTPUT_DG_0";		//Name for io delay group


///////////////////////////////////////////////////////////////////////////////
// Generate the AD9783 clock

wire 	clkD;		//data clock
wire	clk200i, clk200;	//reference clock for ODELAYE2
wire	clkFB;	//feedback clock wire for MMCM	


// MMCME2_BASE: Base Mixed Mode Clock Manager
// 7 Series
// Xilinx HDL Libraries Guide, version 14.7
MMCME2_BASE #(
	.BANDWIDTH("OPTIMIZED"), 	// Jitter programming (OPTIMIZED, HIGH, LOW)
	.CLKFBOUT_MULT_F(8.0), 		// Multiply value for all CLKOUT (2.000-64.000).
	.CLKFBOUT_PHASE(0.0), 		// Phase offset in degrees of CLKFB (-360.000-360.000).
	.CLKIN1_PERIOD(10.0), 		// Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
	// CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
	.CLKOUT1_DIVIDE(4),				//200 MHz clock for ODELAYE2
	.CLKOUT0_DIVIDE_F(CLKDIV), 	//Data clock
	// Duty cycle for each CLKOUT (0.01-0.99).
	.CLKOUT0_DUTY_CYCLE(0.5),
	.CLKOUT1_DUTY_CYCLE(0.5),
	// Phase(-360.000-360.000).
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_PHASE(0.0),
	.CLKOUT4_CASCADE("FALSE"), 	// Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
	.DIVCLK_DIVIDE(1), 				// Master division value (1-106)
	.REF_JITTER1(0.01), 				// Reference input jitter in UI (0.000-0.999).
	.STARTUP_WAIT("FALSE") 			// Delays DONE until MMCM is locked (FALSE, TRUE)
)
MMCME2_BASE_inst (
	// Clock Outputs
	.CLKOUT0(clkD), 			// data clock
	.CLKOUT1(clk200i), 		// reference clock for ODELAYE2
	// Clock Inputs: 1-bit (each) input: Clock input
	.CLKIN1(clk_in), 			// 1-bit input: Clock
	// Feedback Clocks
	.CLKFBOUT(clkFB), 		// 1-bit output: Feedback clock
	.CLKFBIN(clkFB), 			// 1-bit input: Feedback clock
	// Status Ports
	.LOCKED(), 					// 1-bit output: LOCK
	// Control Ports: 1-bit (each) input: MMCM control ports
	.PWRDWN(1'b0), 			// 1-bit input: Power-down
	.RST(rst_in) 				// 1-bit input: Reset
);

// Reference clock for IDELAYCTRL must be driven by a global or horizontal clock buffer (BUFG or BUFH).

// BUFG: Global Clock Simple Buffer
BUFG BUFG_inst (
	.O(clk200), 	// 1-bit output: Clock output
	.I(clk200i) 	// 1-bit input: Clock input
);

// IDELAYCTRL		
// Must be instantiated if ODELAYE2 in "FIXED" delay mode.
(* IODELAY_GROUP = IODG_NAME *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
IDELAYCTRL IDELAYCTRL_inst (
	.RDY(), 				// 1-bit output: Ready output
	.REFCLK(clk200), 	// 1-bit input: Reference clock input
	.RST(1'b0) 			// 1-bit input: Active high reset input
);		

///////////////////////////////////////////////////////////////////////////////
// LVDS outputs

//There are 36 differential lines we want to drive (32 data lines [16/DAC], 
//2 CLK [Only need one, but makes the generate loop easier to make 2], and 2 DCI [1/DAC]).
localparam N_LVDS = 36;
//Combine data for all DACs into one "vector" to be "multiplexed" in such a way that the DAC can "demux" it.
reg [2*N_LVDS-1:0] data_in;
always @(posedge clkD) data_in = {2'b10, DAC11_in, 2'b01, DAC10_in, 2'b10, DAC01_in, 2'b01, DAC00_in};

//Define output signals
wire   [N_LVDS-1:0] data_out_p, data_out_n;
//Differential DAC Sampling Clock Input.
assign CLK0_out_p = data_out_p[17];		//DAC0
assign CLK0_out_n = data_out_n[17];
assign CLK1_out_p = data_out_p[35];		//DAC1
assign CLK1_out_n = data_out_n[35];
//Differential Data Clock Input. Clock aligned with input data.
assign DCI0_out_p = data_out_p[16];		//DAC0
assign DCI0_out_n = data_out_n[16];
assign DCI1_out_p = data_out_p[34];		//DAC1
assign DCI1_out_n = data_out_n[34];
//LVDS Data Inputs. D15 is the MSB, D0 is the LSB.
assign D0_out_p = data_out_p[15:0];		//DAC0
assign D0_out_n = data_out_n[15:0];
assign D0_out_p = data_out_p[33:18];	//DAC1
assign D0_out_n = data_out_n[33:18];

//Wires for data going to pins, and including delay lines.
wire   [N_LVDS-1:0] data_out_to_pins, data_out_to_pins_delay;

// Tried to match delays to what NIST did as a starting point. 1 tap in ODELAYE2 is 0.078ns.
//	Selected tap values to get close to NIST's values.
function integer delay_value;
	input i;
	begin
		case (i)
			0:		delay_value = 2;	//0.156 ns	//D0, LSB
			1:		delay_value = 1;	//0.078 ns	//1
			2:		delay_value = 2;	//0.156 ns	//2
			3:		delay_value = 2;	//0.156 ns	//3
			4:		delay_value = 4;	//0.312 ns	//4
			5:		delay_value = 4;	//0.312 ns	//5
			6:		delay_value = 4;	//0.312 ns	//6
			7:		delay_value = 5;	//0.390 ns	//7
			8:		delay_value = 6;	//0.468 ns	//8
			9:		delay_value = 1;	//0.078 ns	//9
			10:	delay_value = 2;	//0.156 ns	//10
			11:	delay_value = 4;	//0.312 ns	//11
			12:	delay_value = 0;	//0	  ns	//12
			13:	delay_value = 2;	//0.156 ns	//13
			14:	delay_value = 0;	//0 	  ns	//14
			15:	delay_value = 0;	//0 	  ns	//15, MSB
			16:	delay_value = 4;	//0.312 ns	//DCI
			17:	delay_value = 0;	//0 	  ns	//CLK
			18:	delay_value = 2;	//0.156 ns	//D0, LSB
			19:	delay_value = 1;	//0.078 ns	//1
			20:	delay_value = 2;	//0.156 ns	//2
			21:	delay_value = 2;	//0.156 ns	//3
			22:	delay_value = 4;	//0.312 ns	//4
			23:	delay_value = 4;	//0.312 ns	//5
			24:	delay_value = 4;	//0.312 ns	//6
			25:	delay_value = 5;	//0.390 ns	//7
			26:	delay_value = 6;	//0.468 ns	//8
			27:	delay_value = 1;	//0.078 ns	//9
			28:	delay_value = 2;	//0.156 ns	//10
			29:	delay_value = 4;	//0.312 ns	//11
			30:	delay_value = 0;	//0	  ns	//12
			31:	delay_value = 2;	//0.156 ns	//13
			32:	delay_value = 0;	//0 	  ns	//14
			33:	delay_value = 0;	//0 	  ns	//15, MSB
			34:	delay_value = 4;	//0.312 ns	//DCI
			35:	delay_value = 0;	//0 	  ns	//CLK
			default:
				delay_value = 0;
		endcase
	end
endfunction

// We have multiple bits - step over every bit, instantiating the required elements
genvar pin_count;
generate for (pin_count = 0; pin_count < N_LVDS; pin_count = pin_count + 1) begin: pins
	
// ODDR: Output Double Data Rate Output Register with Set, Reset
// and Clock Enable.
ODDR #(
	.DDR_CLK_EDGE("SAME_EDGE"), 			// "OPPOSITE_EDGE" or "SAME_EDGE"
	.INIT(1'b0), 								// Initial value of Q: 1'b0 or 1'b1
	.SRTYPE("SYNC") 							// Set/Reset type: "SYNC" or "ASYNC"
		) 
ODDR_inst (
	.Q(data_out_to_pins[pin_count]), 		// 1-bit DDR output
	.C(clkD), 										// 1-bit clock input
	.CE(1'b1), 										// 1-bit clock enable input
	.D1(data_in[pin_count]), 					// 1-bit data input (positive edge)
	.D2(data_in[N_LVDS + pin_count]), 		// 1-bit data input (negative edge)
	.R(1'b0), 										// 1-bit reset
	.S(1'b0) 										// 1-bit set
		);
	
// ODELAYE2: Output Fixed or Variable Delay Element
(* IODELAY_GROUP = IODG_NAME *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
ODELAYE2 #(
	.CINVCTRL_SEL("FALSE"), 					// Enable dynamic clock inversion (FALSE, TRUE)
	.DELAY_SRC("ODATAIN"), 						// Delay input (ODATAIN, CLKIN)
	.HIGH_PERFORMANCE_MODE("FALSE"), 		// Reduced jitter ("TRUE"), Reduced power ("FALSE")
	.ODELAY_TYPE("FIXED"), 						// FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
	.ODELAY_VALUE(delay_value(pin_count)), // Output delay tap setting (0-31)
	.PIPE_SEL("FALSE"), 							// Select pipelined mode, FALSE, TRUE
	.REFCLK_FREQUENCY(200.0), 					// IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
	.SIGNAL_PATTERN("DATA") 					// DATA, CLOCK input signal
)
ODELAYE2_inst (
	.CNTVALUEOUT(), 											// 5-bit output: Counter value output
	.DATAOUT(data_out_to_pins_delay[pin_count]), 	// 1-bit output: Delayed data/clock output
	.C(clk200), 												// 1-bit input: Clock input
	.CE(1'b0), 													// 1-bit input: Active high enable increment/decrement input
	.CINVCTRL(), 												// 1-bit input: Dynamic clock inversion input
	.CLKIN(),	 												// 1-bit input: Clock delay input
	.CNTVALUEIN(), 											// 5-bit input: Counter value input
	.INC(), 														// 1-bit input: Increment / Decrement tap delay input
	.LD(), 														// 1-bit input: Loads ODELAY_VALUE tap delay in VARIABLE mode, in VAR_LOAD or
	// VAR_LOAD_PIPE mode, loads the value of CNTVALUEIN
	.LDPIPEEN(1'b0), 											// 1-bit input: Enables the pipeline register to load data
	.ODATAIN(data_out_to_pins[pin_count]), 			// 1-bit input: Output delay data input
	.REGRST() 													// 1-bit input: Active-high reset tap-delay input
);

// OBUFDS: Differential Output Buffer
OBUFDS #(
	.IOSTANDARD("LVDS_25"), 	// Specify the output I/O standard
	.SLEW("SLOW") 					// Specify the output slew rate
	) OBUFDS_inst (
		.O(data_out_p[pin_count]), 				// Diff_p output (connect directly to top-level port)
		.OB(data_out_n[pin_count]), 				// Diff_n output (connect directly to top-level port)
		.I(data_out_to_pins_delay[pin_count]) 	// Buffer input
	);
// End of OBUFDS_inst instantiation

end
endgenerate

endmodule
