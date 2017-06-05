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
	input	 wire							clk_in,
	input	 wire						   rst_in,

//	input  wire 			  			cmd_trig_in,
//	input  wire 			  [15:0] cmd_addr_in,
//	input	 wire 			  [15:0] cmd_data_in,
//	output wire  			  [15:0] cmd_data_out,
	
//	output reg						 	rst_out,
//	output wire						 	spi_scs_out,
//	output wire						 	spi_sck_out,
//	output wire						 	spi_sdo_out,
//	input  wire						 	spi_sdi_in,
	
	input  wire	signed	  [15:0] DAC0_in,
	input  wire	signed	  [15:0] DAC1_in,
	
	output wire							CLK_out_p,
	output wire							CLK_out_n,
	output wire							DCI_out_p,
	output wire							DCI_out_n,
	output wire				  [15:0] D_out_p,
	output wire		  		  [15:0] D_out_n
);

// Parameters
parameter SMP_DLY	= 8'h0;

///////////////////////////////////////////////////////////////////////////////
// Generate the AD9783 clock

// The chip can run DDR at up to 500 MHz
// Note that DCMs have a max frequency of 360 MHz and PLLs have a max frequency of 900 MHz, but PLLs can only drive OSERDES2s and not ODDR2s
// I tried using a DCM at either 300 or 200 MHz with ODDR2s, but there were glitches on the output
// A PLL driving OSERDES2s works at up to 800 MHz

// 800 MHz PLL
wire clk8xInt; // pre-buffer
wire clk8x; 	// post-buffer
wire pllLocked;
//wire pllLocked, serstrobe;

//PLL_BASE #(
//	.BANDWIDTH("OPTIMIZED"),
//	.CLK_FEEDBACK("CLKOUT0"),
//	.COMPENSATION("SYSTEM_SYNCHRONOUS"),
//	.DIVCLK_DIVIDE(1),
//	.CLKFBOUT_MULT(8),
//	.CLKFBOUT_PHASE(0.000),
//	.CLKOUT0_DIVIDE(1),
//	.CLKOUT0_PHASE(0.000),
//	.CLKOUT0_DUTY_CYCLE(0.500),
//	.CLKIN_PERIOD(10.0),
//	.REF_JITTER(0.010)
//)
//pll_base_inst(
//	.CLKOUT0(clk8xInt),
//	.LOCKED(pllLocked),
//	.RST(rst_in),
//	.CLKFBIN(clk8x),
//	.CLKIN(clk_in)
//);
//
//BUFPLL #(
//	.DIVIDE(8),
//	.ENABLE_SYNC("TRUE")
//)
//bufpll_inst(
//	.PLLIN(clk8xInt),
//	.IOCLK(clk8x),
//	.GCLK(clk_in),
//	.SERDESSTROBE(serstrobe),
//	.LOCKED(pllLocked)
//);

//I use MMCME2_BASE instead of PLL, and BUFR as the buffer. 
//BUFPLL provides strobe signal to go to OSERDES2, not needed in 7 series OSERDESE2.
//Primitives from 7 series libraries guide.

/*

// MMCME2_BASE: Base Mixed Mode Clock Manager
// 7 Series
// Xilinx HDL Libraries Guide, version 14.7
MMCME2_BASE #(
	.BANDWIDTH("OPTIMIZED"), // Jitter programming (OPTIMIZED, HIGH, LOW)
	.CLKFBOUT_MULT_F(8.0), // Multiply value for all CLKOUT (2.000-64.000).
	.CLKFBOUT_PHASE(0.0), // Phase offset in degrees of CLKFB (-360.000-360.000).
	.CLKIN1_PERIOD(10.0), // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
	// CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
	.CLKOUT1_DIVIDE(1),
	// CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for each CLKOUT (0.01-0.99).
	.CLKOUT0_DUTY_CYCLE(0.5),
	// CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
	.CLKOUT0_PHASE(0.0),
	.REF_JITTER1(0.010) // Reference input jitter in UI (0.000-0.999).
	)
MMCME2_BASE_inst (
	// Clock Outputs: 1-bit (each) output: User configurable clock outputs
	.CLKOUT0(clk8xInt), // 1-bit output: CLKOUT0
	// Status Ports: 1-bit (each) output: MMCM status ports
	.LOCKED(pllLocked), // 1-bit output: LOCK
	// Clock Inputs: 1-bit (each) input: Clock input
	.CLKIN1(clk_in), // 1-bit input: Clock
	// Control Ports: 1-bit (each) input: MMCM control ports
	.RST(rst_in), // 1-bit input: Reset
	// Feedback Clocks: 1-bit (each) input: Clock feedback ports
	.CLKFBIN(clk8x) // 1-bit input: Feedback clock
	);
// End of MMCME2_BASE_inst instantiation

// BUFR: Regional Clock Buffer for I/O and Logic Resources within a Clock Region
// 7 Series
// Xilinx HDL Libraries Guide, version 14.7
BUFR #(
	.BUFR_DIVIDE("BYPASS") // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
)
BUFR_inst (
	.O(clk8x), // 1-bit output: Clock output port
	.CE(1'b1), // 1-bit input: Active high, clock enable (Divided modes only)
	.CLR(1'b0), // 1-bit input: Active high, asynchronous clear (Divided modes only)
	.I(clk8xInt) // 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
);
// End of BUFR_inst instantiation

*/


///////////////////////////////////////////////////////////////////////////////
// LVDS outputs

//There are 18 differential lines we want to drive (16 data lines, CLK, and DCI).
localparam N_LVDS = 18;
//Combine data for DAC0 and DAC1 into one "vector" to be "multiplexed" in such a way that the DAC can "demux" it.
reg [2*N_LVDS-1:0] data_in;
always @(posedge clk_in) data_in = {2'b10, DAC1_in, 2'b01, DAC0_in};

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
wire   [N_LVDS-1:0] data_out_to_pins, data_out_to_pins_delay;

/*

// Function to calculate delay value needed for each pin. Not sure how they got the delay values, or exactly why they are needed.
function integer delay_value;
	input i;
	begin
		case (i)
			0:		delay_value = 3;
			1:		delay_value = 2;
			2:		delay_value = 4;
			3:		delay_value = 3;
			4:		delay_value = 6;
			5:		delay_value = 6;
			6:		delay_value = 6;
			7:		delay_value = 8;
			8:		delay_value = 9;
			9:		delay_value = 2;
			10:	delay_value = 3;
			11:	delay_value = 7;
			12:	delay_value = 1;
			13:	delay_value = 4;
			14:	delay_value = 0;
			15:	delay_value = 0;
			16:	delay_value = 7;
			17:	delay_value = 0;
			default:
				delay_value = 0;
		endcase
	end
endfunction

*/

// We have multiple bits - step over every bit, instantiating the required elements
genvar pin_count;
generate for (pin_count = 0; pin_count < N_LVDS; pin_count = pin_count + 1) begin: pins
	// Serializer
//	wire cascade_ms_d;
//   wire cascade_ms_t;
//   wire cascade_sm_d;
//   wire cascade_sm_t;

//Original file had cascaded OSERDES2's to perform 8 bit parallel to serial.

//	OSERDES2 #(
//		.DATA_RATE_OQ("SDR"),
//		.DATA_RATE_OT("SDR"),
//		.TRAIN_PATTERN(0),
//      .DATA_WIDTH(8),
//		.SERDES_MODE("MASTER"),
//		.OUTPUT_MODE("SINGLE_ENDED")
//	)
//	oserdes2_master(
//		.D1(data_in[pin_count]),
//		.D2(data_in[N_LVDS + pin_count]),
//		.D3(data_in[pin_count]),
//		.D4(data_in[N_LVDS + pin_count]),
//		.T1(1'b0),
//      .T2(1'b0),
//      .T3(1'b0),
//      .T4(1'b0),
//      .SHIFTIN1(1'b1),
//      .SHIFTIN2(1'b1),
//      .SHIFTIN3(cascade_sm_d),
//      .SHIFTIN4(cascade_sm_t),
//      .SHIFTOUT1(cascade_ms_d),
//      .SHIFTOUT2(cascade_ms_t),
//      .SHIFTOUT3(),
//      .SHIFTOUT4(),
//      .TRAIN(1'b0),
//      .OCE(1'b1),											// clock enable
//		.TCE(1'b1),
//      .CLK0(clk8x),										// serial clock input
//		.CLK1(1'b0),
//		.CLKDIV(clk_in),									// parallel clock input
//		.OQ(data_out_to_pins[pin_count]),			// serial data output
//		.TQ(),
//      .IOCE(serstrobe),
//		.RST(rst_in)
//	);
//	
//	OSERDES2 #(
//		.DATA_RATE_OQ("SDR"),
//		.DATA_RATE_OT("SDR"),
//		.TRAIN_PATTERN(0),
//      .DATA_WIDTH(8),
//		.SERDES_MODE("SLAVE"),
//		.OUTPUT_MODE("SINGLE_ENDED")
//	)
//	oserdes2_slave(
//		.D1(data_in[pin_count]),
//		.D2(data_in[N_LVDS + pin_count]),
//		.D3(data_in[pin_count]),
//		.D4(data_in[N_LVDS + pin_count]),
//		.T1(1'b0),
//      .T2(1'b0),
//      .T3(1'b0),
//      .T4(1'b0),
//      .SHIFTIN1(cascade_ms_d),
//      .SHIFTIN2(cascade_ms_t),
//      .SHIFTIN3(1'b1),
//      .SHIFTIN4(1'b1),
//      .SHIFTOUT1(),
//      .SHIFTOUT2(),
//      .SHIFTOUT3(cascade_sm_d),
//      .SHIFTOUT4(cascade_sm_t),
//      .TRAIN(1'b0),
//      .OCE(1'b1),											// clock enable
//		.TCE(1'b1),
//      .CLK0(clk8x),										// serial clock input
//		.CLK1(1'b0),
//		.CLKDIV(clk_in),									// parallel clock input
//		.OQ(),
//		.TQ(),
//      .IOCE(serstrobe),
//		.RST(rst_in)
//	);
	
/*	
//7 series uses OSERDESE2 does not need slave to do 8 bit serialization.

// OSERDESE2: Output SERial/DESerializer with bitslip
// 7 Series
// Xilinx HDL Libraries Guide, version 14.7
OSERDESE2 #(
	.DATA_RATE_OQ("SDR"), // DDR, SDR
	.DATA_RATE_TQ("SDR"), // DDR, BUF, SDR
	.DATA_WIDTH(2), // Parallel data width (2-8,10,14)
	.SERDES_MODE("MASTER") // MASTER, SLAVE
)
OSERDESE2_inst (
	.OFB(), // 1-bit output: Feedback path for data
	.OQ(data_out_to_pins[pin_count]), // 1-bit output: Data path output
	// SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
	.SHIFTOUT1(),
	.SHIFTOUT2(),
	.TBYTEOUT(), // 1-bit output: Byte group tristate
	.TFB(), // 1-bit output: 3-state control
	.TQ(), // 1-bit output: 3-state control
	.CLK(clk8x), // 1-bit input: High speed clock
	.CLKDIV(clk_in), // 1-bit input: Divided clock
	// D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
	.D1(data_in[pin_count]),
	.D2(data_in[N_LVDS + pin_count]),
//	.D3(data_in[pin_count]),
//	.D4(data_in[N_LVDS + pin_count]),
//	.D5(data_in[pin_count]),
//	.D6(data_in[N_LVDS + pin_count]),
//	.D7(data_in[pin_count]),
//	.D8(data_in[N_LVDS + pin_count]),
	.OCE(1'b1), // 1-bit input: Output data clock enable
	.RST(rst_in), // 1-bit input: Reset
	// SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
	.SHIFTIN1(),
	.SHIFTIN2(),
	// T1 - T4: 1-bit (each) input: Parallel 3-state inputs
	.T1(1'b0),
	.T2(1'b0),
	.T3(1'b0),
	.T4(1'b0),
	.TBYTEIN(1'b0), // 1-bit input: Byte group tristate
	.TCE(1'b1) // 1-bit input: 3-state clock enable
);
// End of OSERDESE2_inst instantiation	*/
	
	
//Old delay
//	// Delay
//	IODELAY2 #(
//		.DATA_RATE("DDR"),
//		.ODELAY_VALUE(delay_value(pin_count)),
//		.COUNTER_WRAPAROUND("STAY_AT_LIMIT"),
//		.DELAY_SRC("ODATAIN"),
//		.SERDES_MODE("NONE"),
//		.SIM_TAPDELAY_VALUE(75)
//	)
//	iodelay2_inst(
//		.ODATAIN(data_out_to_pins[pin_count]),		// datapath
//		.DOUT(data_out_to_pins_delay[pin_count]),
//		.T(1'b0),
//		.IDATAIN(1'b0),									// inactive data connections
//		.DATAOUT(),
//		.DATAOUT2(),
//		.TOUT(),
//		.IOCLK0(1'b0),										// calibration clocks
//		.IOCLK1(1'b0),
//		.CLK(1'b0),											// variable delay programming
//		.CAL(1'b0),
//		.INC(1'b0),
//		.CE(1'b0),
//		.BUSY(),
//		.RST(1'b0)
//	);
	
//Template for instantiation of DDR. All the OSERDES stuff above was just to get DDR output to DAC.
	
// ODDR: Output Double Data Rate Output Register with Set, Reset
// and Clock Enable.
// 7 Series
// Xilinx HDL Libraries Guide, version 14.7
ODDR #(
	.DDR_CLK_EDGE("OPPOSITE_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE"
	.INIT(1'b0), // Initial value of Q: 1'b0 or 1'b1
	.SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC"
) ODDR_inst (
	.Q(data_out_to_pins[pin_count]), // 1-bit DDR output
	.C(clk_in), // 1-bit clock input
	.CE(1'b1), // 1-bit clock enable input
	.D1(data_in[pin_count]), // 1-bit data input (positive edge)
	.D2(data_in[N_LVDS + pin_count]), // 1-bit data input (negative edge)
	.R(1'b0), // 1-bit reset
	.S(1'b0) // 1-bit set
);
// End of ODDR_inst instantiation
	
////New delay with iodelaye2. Not using to start. 
//// ODELAYE2: Output Fixed or Variable Delay Element
//// 7 Series
//// Xilinx HDL Libraries Guide, version 14.7
//(* IODELAY_GROUP = <iodelay_group_name> *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
//ODELAYE2 #(
//	.CINVCTRL_SEL("FALSE"), // Enable dynamic clock inversion (FALSE, TRUE)
//	.DELAY_SRC("ODATAIN"), // Delay input (ODATAIN, CLKIN)
//	.HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
//	.ODELAY_TYPE("FIXED"), // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
//	.ODELAY_VALUE(0), // Output delay tap setting (0-31)
//	.PIPE_SEL("FALSE"), // Select pipelined mode, FALSE, TRUE
//	.REFCLK_FREQUENCY(200.0), // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
//	.SIGNAL_PATTERN("DATA") // DATA, CLOCK input signal
//)
//ODELAYE2_inst (
//	.CNTVALUEOUT(CNTVALUEOUT), // 5-bit output: Counter value output
//	.DATAOUT(DATAOUT), // 1-bit output: Delayed data/clock output
//	.C(C), // 1-bit input: Clock input
//	.CE(CE), // 1-bit input: Active high enable increment/decrement input
//	.CINVCTRL(CINVCTRL), // 1-bit input: Dynamic clock inversion input
//	.CLKIN(CLKIN), // 1-bit input: Clock delay input
//	.CNTVALUEIN(CNTVALUEIN), // 5-bit input: Counter value input
//	.INC(INC), // 1-bit input: Increment / Decrement tap delay input
//	.LD(LD), // 1-bit input: Loads ODELAY_VALUE tap delay in VARIABLE mode, in VAR_LOAD or
//	// VAR_LOAD_PIPE mode, loads the value of CNTVALUEIN
//	.LDPIPEEN(LDPIPEEN), // 1-bit input: Enables the pipeline register to load data
//	.ODATAIN(ODATAIN), // 1-bit input: Output delay data input
//	.REGRST(REGRST) // 1-bit input: Active-high reset tap-delay input
//);
//// End of ODELAYE2_inst instantiation


//	// Output buffer
//	OBUFDS #(
//		.IOSTANDARD("LVDS_25")
//	)
//	obufds_inst(
//		.O(data_out_p[pin_count]),
//		.OB(data_out_n[pin_count]),
//		.I(data_out_to_pins_delay[pin_count])
//	);



//Output buffer for 7 series

// OBUFDS: Differential Output Buffer
// 7 Series
// Xilinx HDL Libraries Guide, version 14.7
OBUFDS #(
.IOSTANDARD("LVDS_25"), // Specify the output I/O standard
.SLEW("SLOW") // Specify the output slew rate
) OBUFDS_inst (
	.O(data_out_p[pin_count]), // Diff_p output (connect directly to top-level port)
	.OB(data_out_n[pin_count]), // Diff_n output (connect directly to top-level port)
	.I(data_out_to_pins[pin_count]) // Buffer input
);
// End of OBUFDS_inst instantiation



//This was a different output buffer because I thought we needed termination on differential outputs.
//The data sheet claims termination is not necessary on output.
/*
// IOBUFDS_DIFF_OUT: Differential Bi-directional Buffer with Differential Output
// 7 Series
// Xilinx HDL Libraries Guide, version 14.7
IOBUFDS_DIFF_OUT #(
	.DIFF_TERM("TRUE"), // Differential Termination ("TRUE"/"FALSE")
	.IBUF_LOW_PWR("TRUE"), // Low Power - "TRUE", High Performance = "FALSE"
	.IOSTANDARD("LVDS") // Specify the I/O standard
) IOBUFDS_DIFF_OUT_inst (
	.O(), // Buffer p-side output
	.OB(), // Buffer n-side output
	.IO(data_out_p[pin_count]), // Diff_p inout (connect directly to top-level port)
	.IOB(data_out_n[pin_count]), // Diff_n inout (connect directly to top-level port)
	.I(data_out_to_pins[pin_count]), // Buffer input
	.TM(1'b0), // 3-state enable input, high=input, low=output
	.TS(1'b0) // 3-state enable input, high=output, low=input
);
// End of IOBUFDS_DIFF_OUT_inst instantiation
*/
end
endgenerate


///////////////////////////////////////////////////////////////////////////////
// SPI state machine
/*
reg			spi_trigger;
reg  [15:0]	spi_data;
wire			spi_ready;

SPI #(
	.TRANSFER_SIZE(16),
	.SPI_CLK_DIV(8'h05) // run the SPI clock at 10 MHz
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
				counter_f <= counter_f - 12'b1;
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
*/
endmodule