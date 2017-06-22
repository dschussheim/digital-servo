///////////////////////////////////////////////////////////////////////////////
// AD9783.v
//
// 7/13/11
// David Leibrandt
//
//	AD9783 controller.
//
// addr_in = 16'h20?? --- get 8 bit SPI register with address = ??
// addr_in = 16'h21?? --- set 8 bit SPI register with address = ??
//
///////////////////////////////////////////////////////////////////////////////

// `include "timescale.v"
`timescale 1ps/1ps // this was in the SelectIO design

module AD9783(
	input		wire							clk_in,
	input		wire						   rst_in,
	
	input 	wire 			  				cmd_trig_in,
	input 	wire 			  	[15:0] 	cmd_addr_in,
	input		wire 			  	[15:0] 	cmd_data_in,
	output	wire				[15:0] 	cmd_data_out,
	
	output 	reg						 	rst_out,
	output 	wire						 	spi_scs_out,
	output 	wire						 	spi_sck_out,
	output 	wire						 	spi_sdo_out,
	input  	wire						 	spi_sdi_in,
	
	input  	wire	signed	[15:0] 	DAC0_in,
	input  	wire	signed	[15:0] 	DAC1_in,
	
	output 	wire							CLK_out_p,
	output 	wire							CLK_out_n,
	output 	wire							DCI_out_p,
	output 	wire							DCI_out_n,
	output 	wire				[15:0] 	D_out_p,
	output 	wire		  		[15:0] 	D_out_n,
	
	output	wire							clk_out
);

// Parameters
parameter 	SMP_DLY	= 8'h0;
parameter 	CLKDIV = 80;		//8 = 100MHz, 80 = 10MHz
parameter	IODG_NAME = "OUTPUT_DG_0";		//Name for io delay group
parameter	CLK1PHASE = 45;

///////////////////////////////////////////////////////////////////////////////
// Generate the AD9783 clock

wire 	clkDi, clkcD;		//data clock
wire	clkDLYi, clkDLY;	//Delayed data clock
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
	.CLKOUT1_DIVIDE(CLKDIV),		//Delayed clock alinged so all data lines are switched
	.CLKOUT0_DIVIDE_F(CLKDIV), 	//Data clock
	// Duty cycle for each CLKOUT (0.01-0.99).
	.CLKOUT0_DUTY_CYCLE(0.5),
	.CLKOUT1_DUTY_CYCLE(0.5),
	// Phase(-360.000-360.000).
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_PHASE(CLK1PHASE),
	.CLKOUT4_CASCADE("FALSE"), 	// Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
	.DIVCLK_DIVIDE(1), 				// Master division value (1-106)
	.REF_JITTER1(0.01), 				// Reference input jitter in UI (0.000-0.999).
	.STARTUP_WAIT("FALSE") 			// Delays DONE until MMCM is locked (FALSE, TRUE)
)
MMCME2_BASE_inst (
	// Clock Outputs
	.CLKOUT0(clkDi), 			// data clock
	.CLKOUT1(clkDLYi), 		// delayed data clock
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

assign	clk_out = clkDi;

// BUFG: Global Clock Simple Buffer
BUFG BUFG_clkD (
	.O(clkD), 	// 1-bit output: Clock output
	.I(clkDi) 	// 1-bit input: Clock input
);

// BUFG: Global Clock Simple Buffer
BUFG BUFG_clkDLY (
	.O(clkDLY), 	// 1-bit output: Clock output
	.I(clkDLYi) 	// 1-bit input: Clock input
);	

///////////////////////////////////////////////////////////////////////////////
// LVDS outputs

//There are 18 differential lines we want to drive (16 data lines, CLK, and DCI).
localparam N_LVDS = 18;
//Combine data for DAC0 and DAC1 into one "vector" to be "multiplexed" in such a way that the DAC can "demux" it.
reg [2*N_LVDS-1:0] data_in;
always @(posedge clkD) data_in = {2'b10, DAC1_in, 2'b01, DAC0_in};

//Define output signals
wire   [N_LVDS-1:0] data_out_p, data_out_n;
//Differential DAC Sampling Clock Input.
assign CLK_out_p = data_out_p[17];
assign CLK_out_n = data_out_n[17];
//Differential Data Clock Input. Clock aligned with input data.
assign DCI_out_p = data_out_p[16];
assign DCI_out_n = data_out_n[16];
//LVDS Data Inputs. D15 is the MSB, D0 is the LSB.
assign D_out_p = data_out_p[15:0];
assign D_out_n = data_out_n[15:0];

//Wires for data going to pins, and including delay lines.
wire   [N_LVDS-1:0] data_out_to_pins;

// We have multiple bits - step over every bit, instantiating the required elements
genvar pin_count;
generate for (pin_count = 0; pin_count < N_LVDS-1; pin_count = pin_count + 1) begin: pins
	
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

// OBUFDS: Differential Output Buffer
OBUFDS #(
	.IOSTANDARD("LVDS_25"), 	// Specify the output I/O standard
	.SLEW("SLOW") 					// Specify the output slew rate
	) OBUFDS_inst (
		.O(data_out_p[pin_count]), 				// Diff_p output (connect directly to top-level port)
		.OB(data_out_n[pin_count]), 				// Diff_n output (connect directly to top-level port)
		.I(data_out_to_pins[pin_count]) 	// Buffer input
	);
// End of OBUFDS_inst instantiation

end
endgenerate

// ODDR: Output Double Data Rate Output Register with Set, Reset
// and Clock Enable.
ODDR #(
	.DDR_CLK_EDGE("SAME_EDGE"), 			// "OPPOSITE_EDGE" or "SAME_EDGE"
	.INIT(1'b0), 								// Initial value of Q: 1'b0 or 1'b1
	.SRTYPE("SYNC") 							// Set/Reset type: "SYNC" or "ASYNC"
		) 
ODDR_CLK (
	.Q(data_out_to_pins[N_LVDS-1]), 		// 1-bit DDR output
	.C(clkDLY), 									// 1-bit clock input
	.CE(1'b1), 										// 1-bit clock enable input
	.D1(data_in[N_LVDS-1]), 					// 1-bit data input (positive edge)
	.D2(data_in[N_LVDS + N_LVDS-1]), 		// 1-bit data input (negative edge)
	.R(1'b0), 										// 1-bit reset
	.S(1'b0) 										// 1-bit set
		);

// OBUFDS: Differential Output Buffer
OBUFDS #(
	.IOSTANDARD("LVDS_25"), 	// Specify the output I/O standard
	.SLEW("SLOW") 					// Specify the output slew rate
	) OBUFDS_CLK (
		.O(data_out_p[N_LVDS-1]), 				// Diff_p output (connect directly to top-level port)
		.OB(data_out_n[N_LVDS-1]), 				// Diff_n output (connect directly to top-level port)
		.I(data_out_to_pins[N_LVDS-1]) 	// Buffer input
	);
// End of OBUFDS_inst instantiation

///////////////////////////////////////////////////////////////////////////////
// SPI state machine

reg			spi_trigger;
reg  [15:0]	spi_data;
wire			spi_ready;

SPI #(
	.TRANSFER_SIZE(16),
	.SPI_CLK_DIV(8'h0A) // run the SPI clock at 10 MHz
)
AD_9783_SPI_inst(
	.clk_in(clk_in),
	.rst_in(rst_in),
	.trigger_in(spi_trigger),
	.data_in(spi_data),
	.data_out(cmd_data_out),
	.ready_out(spi_ready),
	.spi_scs_out(spi_scs_out),
	.spi_sck_out(spi_sck_out),
	.spi_sdo_out(spi_sdo_out),
	.spi_sdi_in(spi_sdi_in)
);

///////////////////////////////////////////////////////////////////////////////
// State machine which controls initialization and communicates with the PC

// State machine definitions
localparam IDLE 	= 4'h0;
localparam RST1   = 4'h1;
localparam RST2   = 4'h2;
localparam RST3A  = 4'h3;
localparam RST3B  = 4'h4;
localparam RST3C  = 4'h5;
localparam GET1A	= 4'h6;
localparam GET1B	= 4'h7;
localparam GET1C	= 4'h8;
localparam SET1A	= 4'h9;
localparam SET1B	= 4'hA;
localparam SET1C	= 4'hB;

// State
// The next line makes synthesis happy
// synthesis attribute INIT of state_f is "R"
reg  [3:0] state_f;
reg  [7:0] counter_f;

// State machine - combinatorial part
function [3:0] next_state;
	input    [3:0] state;
	input    [7:0] counter;
	input				trigger;
	input	  [15:0]	address;
	input				ready;
	
	begin
		case (state)
			IDLE: 
				if (trigger & (address[15:8] == 8'h20))
					next_state = GET1A;
				else if (trigger & (address[15:8] == 8'h21))
					next_state = SET1A;
				else
					next_state = IDLE;
			RST1:
				if (counter == 12'b1)
					next_state = RST2;
				else
					next_state = RST1;
			RST2:
					next_state = RST3A;
			RST3A:
				if (ready)
					next_state = RST3B;
				else
					next_state = RST3A;
			RST3B:
					next_state = RST3C;
			RST3C:
					next_state = IDLE;
			GET1A:
				if (ready)
					next_state = GET1B;
				else
					next_state = GET1A;
			GET1B:
					next_state = GET1C;
			GET1C:
					next_state = IDLE;
			SET1A:
				if (ready)
					next_state = SET1B;
				else
					next_state = SET1A;
			SET1B:
					next_state = SET1C;
			SET1C:
					next_state = IDLE;
			default:
					next_state = IDLE;
		endcase
	end
endfunction

// State machine - sequential part
always @(posedge clk_in or posedge rst_in) begin
	if (rst_in) begin
		state_f <= RST1;
		counter_f <= 8'hFF;
		spi_trigger <= 1'b0;
	end
	else begin
		state_f <= next_state(state_f, counter_f, cmd_trig_in, cmd_addr_in, spi_ready);
		case (state_f)
			IDLE: begin
				spi_trigger <= 1'b0;
			end
			// Send a reset signal to the DAC
			RST1: begin
				rst_out <= 1'b1;
				counter_f <= counter_f - 8'b1;
			end
			RST2: begin
				rst_out <= 1'b0;
			end
			// Set SMP_DLY
			RST3A: begin
				spi_data <= {1'b0, 2'b0, 5'h5, SMP_DLY};
			end
			RST3B: begin
				spi_trigger <= 1'b1;
			end
			RST3C: begin
				spi_trigger <= 1'b0;
			end
			// Get the value of a SPI register
			GET1A: begin
				spi_data <= {1'b1, 2'b0, cmd_addr_in[4:0], 8'b0};
			end
			GET1B: begin
				spi_trigger <= 1'b1;
			end
			GET1C: begin
				spi_trigger <= 1'b0;
			end
			// Set the value of a SPI register
			SET1A: begin
				spi_data <= {1'b0, 2'b0, cmd_addr_in[4:0], cmd_data_in[7:0]};
			end
			SET1B: begin
				spi_trigger <= 1'b1;
			end
			SET1C: begin
				spi_trigger <= 1'b0;
			end
			endcase
	end
end

endmodule