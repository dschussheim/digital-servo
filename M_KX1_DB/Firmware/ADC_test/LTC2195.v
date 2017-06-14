///////////////////////////////////////////////////////////////////////////////
// LTC2195.v
//
// 7/14/11
// David Leibrandt
//
//	LTC2195 controller.
//
// addr_in = 16'h31?? --- set 8 bit SPI register with address = ??
// addr_in = 16'h32?? --- set ENC phase shifter value
//
///////////////////////////////////////////////////////////////////////////////

// `include "timescale.v"
`timescale 1ps/1ps // this was in the SelectIO design

module LTC2195(
	input	 wire							clk_in,
	input	 wire						   rst_in,

	input  wire 			  			cmd_trig_in,
	input  wire 			  [15:0] cmd_addr_in,
	input	 wire 			  [15:0] cmd_data_in,
	
	output wire						 	spi_scs_out,
	output wire						 	spi_sck_out,
	output wire						 	spi_sdo_out,
	input  wire						 	spi_sdi_in,
	
	output wire		 					ENC_out_p,
	output wire							ENC_out_n,
	input  wire		 					DCO_in_p,
	input  wire							DCO_in_n,
	input  wire		 					FR_in_p,
	input  wire							FR_in_n,
	input  wire		 			[1:0]	D0_in_p,
	input  wire		 			[1:0]	D0_in_n,
	input  wire		 			[1:0]	D1_in_p,
	input  wire		 			[1:0]	D1_in_n,
	
	output reg	signed	  [15:0] ADC0_out,
	output reg	signed	  [15:0] ADC1_out,
	output reg					[3:0] FR_out
);

// Parameters
parameter 	SMP_DLY	= 8'h0;
parameter	CLKDIV = 8'd120; //800MHz/100 = 8Mhz, slowest ADC can go is 5MHz. CLKDIV_min = 8.


///////////////////////////////////////////////////////////////////////////////
// FSM to control ENC phase shifter

reg PS_clk, PS_en, PS_inc;
wire PS_done, PS_locked;
wire [7:0] PS_status;

// State machine definitions
localparam PS_IDLE 	= 4'h0;
localparam PS_TRIG  	= 4'h1;
localparam PS_DECIDE	= 4'h2;
localparam PS_UP1A  	= 4'h3;
localparam PS_UP1B  	= 4'h4;
localparam PS_UP1C  	= 4'h5;
localparam PS_UP2  	= 4'h6;
localparam PS_UP3  	= 4'h7;
localparam PS_DOWN1A = 4'h8;
localparam PS_DOWN1B = 4'h9;
localparam PS_DOWN1C = 4'hA;
localparam PS_DOWN2  = 4'hB;
localparam PS_DOWN3  = 4'hC;

// State
// The next line makes synthesis happy
// synthesis attribute INIT of PS_state_f is "R"
reg  [3:0] PS_state_f;
reg  [8:0] PS_value_f, PS_target_f;

// State machine - combinatorial part
function [3:0] PS_next_state;
	input    [3:0] state;
	input    [8:0] value;
	input    [8:0] target;
	input				trigger;
	input	  [15:0]	address;
	input				done;
//	input				status;
	input				locked;
	
	begin
		case (state)
			PS_IDLE: 
				if (trigger && (address[15:8] == 8'h32))
					PS_next_state = PS_TRIG;
				else
					PS_next_state = PS_IDLE;
			PS_TRIG:
					PS_next_state = PS_DECIDE;
			PS_DECIDE:
				if (locked == 1'b0)
					PS_next_state = PS_DECIDE;
//				else if ((target > value) && (!status || (value < 9'h100)))	//No status output available on MMCM
				else if ((target > value) && (value < 9'h100))
					PS_next_state = PS_UP1A;
//				else if ((target < value) && (!status || (value > 9'h100)))
				else if ((target < value) && (value > 9'h100))
					PS_next_state = PS_DOWN1A;
				else
					PS_next_state = PS_IDLE;
			PS_UP1A:
					PS_next_state = PS_UP1B;
			PS_UP1B:
					PS_next_state = PS_UP1C;
			PS_UP1C:
					PS_next_state = PS_UP2;
			PS_UP2:
				if (done == 1'b1)
					PS_next_state = PS_UP3;
				else
					PS_next_state = PS_UP2;
			PS_UP3:
					PS_next_state = PS_DECIDE;
			PS_DOWN1A:
					PS_next_state = PS_DOWN1B;
			PS_DOWN1B:
					PS_next_state = PS_DOWN1C;
			PS_DOWN1C:
					PS_next_state = PS_DOWN2;
			PS_DOWN2:
				if (done == 1'b1)
					PS_next_state = PS_DOWN3;
				else
					PS_next_state = PS_DOWN2;
			PS_DOWN3:
					PS_next_state = PS_DECIDE;
			default:
					PS_next_state = PS_IDLE;
		endcase
	end
endfunction

// State machine - sequential part
always @(posedge clk_in or posedge rst_in) begin
	if (rst_in) begin
		PS_state_f <= PS_DECIDE;
		PS_value_f <= 9'h100; // 256
		PS_target_f <= 9'h17C; // = decimal 380 = 256 + 124
		PS_clk <= 1'b0;
		PS_en <= 1'b0;
		PS_inc <= 1'b0;
	end
	else begin
//		PS_state_f <= PS_next_state(PS_state_f, PS_value_f, PS_target_f, cmd_trig_in, cmd_addr_in, PS_done, PS_status[0], PS_locked);
		PS_state_f <= PS_next_state(PS_state_f, PS_value_f, PS_target_f, cmd_trig_in, cmd_addr_in, PS_done, PS_locked);
		case (PS_state_f)
			PS_IDLE: begin
				PS_clk <= 1'b0;
				PS_en <= 1'b0;
				PS_inc <= 1'b0;
			end
			PS_TRIG: begin
				PS_target_f <= cmd_data_in[8:0];
			end
			PS_DECIDE: begin
				
			end
			PS_UP1A: begin
				PS_en <= 1'b1;
				PS_inc <= 1'b1;
			end
			PS_UP1B: begin
				PS_clk <= 1'b1;
			end
			PS_UP1C: begin
				PS_en <= 1'b0;
				PS_clk <= 1'b0;
			end
			PS_UP2: begin
				PS_clk <= ~PS_clk;
			end
			PS_UP3: begin
				PS_clk <= 1'b0;
				PS_value_f <= PS_value_f + 9'h1;
			end
			PS_DOWN1A: begin
				PS_en <= 1'b1;
				PS_inc <= 1'b0;
			end
			PS_DOWN1B: begin
				PS_clk <= 1'b1;
			end
			PS_DOWN1C: begin
				PS_en <= 1'b0;
				PS_clk <= 1'b0;
			end
			PS_DOWN2: begin
				PS_clk <= ~PS_clk;
			end
			PS_DOWN3: begin
				PS_clk <= 1'b0;
				PS_value_f <= PS_value_f - 9'h1;
			end
		endcase
	end
end

///////////////////////////////////////////////////////////////////////////////
// LVDS ENC output

// Phase shifter
/*
wire clkPS, clkPS180;
DCM_SP #(
	.CLKDV_DIVIDE(2.000),
	.CLKFX_DIVIDE(1),
	.CLKFX_MULTIPLY(4),
	.CLKIN_DIVIDE_BY_2("FALSE"),
	.CLKIN_PERIOD(10.0),
	.CLKOUT_PHASE_SHIFT("VARIABLE"),
	.CLK_FEEDBACK("1X"),
	.DESKEW_ADJUST("SYSTEM_SYNCHRONOUS"),
	.PHASE_SHIFT(0),
	.STARTUP_WAIT("FALSE")
)
dcm_sp_inst0(
	.CLKIN(clk_in),			// input clock
	.CLKFB(clkPS),				// feedback path
	.CLK0(clkPS),				// output clock
	.CLK180(clkPS180),		// output clock
	.PSCLK(PS_clk),			// dynamic phase shift
	.PSEN(PS_en),
	.PSINCDEC(PS_inc),
	.PSDONE(PS_done),
	.LOCKED(PS_locked),		// control and status signals
	.STATUS(PS_status),
	.RST(rst_in),
	.DSSEN(1'b0)				// uused pin - tie low
);
*/
wire	clkPS, clk8xInt;		//clock for phase shifting of ENC, and clock for deserialization (LVDS inputs block below)

//There are no DCMs in 7 series devices. Their functionality is encompassed by PLLs and MMCMs.
//I instantiate an MMCM below.
// MMCME2_ADV: Advanced Mixed Mode Clock Manager
// 7 Series
// Xilinx HDL Libraries Guide, version 14.7
MMCME2_ADV #(
	.BANDWIDTH("OPTIMIZED"), 	// Jitter programming (OPTIMIZED, HIGH, LOW)
	.CLKFBOUT_MULT_F(8.0), 		// 600MHz (minimum for vco
	.CLKFBOUT_PHASE(0.0), 		// Phase offset in degrees of CLKFB (-360.000-360.000).
	// CLKIN_PERIOD: Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
	.CLKIN1_PERIOD(10.0),
	.CLKIN2_PERIOD(10.0),
	// CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for CLKOUT (1-128)
	.CLKOUT1_DIVIDE(CLKDIV/8),		//8 x f_CLK0
	.CLKOUT2_DIVIDE(4),				//This clock for IDELAYCTRL must be 200MHz
	.CLKOUT0_DIVIDE_F(CLKDIV), 	//f_CLK0 = 800MHz/CLKDIV
	// CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for CLKOUT outputs (0.01-0.99).
	.CLKOUT0_DUTY_CYCLE(0.5),
	.CLKOUT1_DUTY_CYCLE(0.5),
	.CLKOUT2_DUTY_CYCLE(0.5),
	// CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for CLKOUT outputs (-360.000-360.000).
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_PHASE(0.0),
	.CLKOUT2_PHASE(0.0),
	.COMPENSATION("ZHOLD"), // ZHOLD, BUF_IN, EXTERNAL, INTERNAL
	.DIVCLK_DIVIDE(1), // Master division value (1-106)
	// REF_JITTER: Reference input jitter in UI (0.000-0.999).
	.REF_JITTER1(0.01),
	.STARTUP_WAIT("FALSE"), 		// Delays DONE until MMCM is locked (FALSE, TRUE)
	// USE_FINE_PS: Fine phase shift enable (TRUE/FALSE)
	.CLKFBOUT_USE_FINE_PS("FALSE"),
	.CLKOUT0_USE_FINE_PS("TRUE"),
	.CLKOUT1_USE_FINE_PS("FALSE"),
	.CLKOUT2_USE_FINE_PS("FALSE")
)
MMCME2_ADV_inst (
	// Clock Outputs: 1-bit (each) output: User configurable clock outputs
	.CLKOUT0(clkPS), 					// Phase shifted clock for ENC
	.CLKOUT1(clk8xInt), 				// Serialization clock for LVDS inputs
	.CLKOUT2(clk2xInt),				//Clock for IDELAY control, 200MHz
	// Dynamic Phase Shift Ports: 1-bit (each) output: Ports used for dynamic phase shifting of the outputs
	.PSDONE(PS_done), 				// 1-bit output: Phase shift done
	// Feedback Clocks: 1-bit (each) output: Clock feedback ports
	.CLKFBOUT(clkPSf), 				// 1-bit output: Feedback clock
	.LOCKED(PS_locked), 				// 1-bit output: LOCK
	// Clock Inputs: 1-bit (each) input: Clock inputs
	.CLKIN1(clk_in), 					// 1-bit input: Primary clock
	// Control Ports: 1-bit (each) input: MMCM control ports
	.CLKINSEL(1'b1), 					// 1-bit input: Clock select, High=CLKIN1 Low=CLKIN2
	.PWRDWN(1'b0), 					// 1-bit input: Power-down
	.RST(rst_in), 						// 1-bit input: Reset
	// DRP Ports: 7-bit (each) input: Dynamic reconfiguration ports
	.DWE(1'b0), 						// 1-bit input: DRP write enable
	// Dynamic Phase Shift Ports: 1-bit (each) input: Ports used for dynamic phase shifting of the outputs
	.PSCLK(PS_clk), 					// 1-bit input: Phase shift clock
	.PSEN(PS_en), 						// 1-bit input: Phase shift enable
	.PSINCDEC(PS_inc), 				// 1-bit input: Phase shift increment/decrement
	// Feedback Clocks: 1-bit (each) input: Clock feedback ports
	.CLKFBIN(clkPSf) 					// 1-bit input: Feedback clock
);


// DDR register
wire ENC_out;
/*
ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'b0),
	.SRTYPE("ASYNC")
)
oddr2_inst(
	.D0(1'b0),
	.D1(1'b1),
	.C0(clkPS),
	.C1(clkPS180),
	.CE(1'b1),
	.Q(ENC_out),
	.R(rst_in),
	.S()
);
*/

//7 series DDR primitive to replace above ODDR2 for SPartan 6.

// ODDR: Output Double Data Rate Output Register with Set, Reset
// and Clock Enable.
// 7 Series
// Xilinx HDL Libraries Guide, version 14.7
ODDR #(
	.DDR_CLK_EDGE("OPPOSITE_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE"
	.INIT(1'b0), // Initial value of Q: 1'b0 or 1'b1
	.SRTYPE("ASYNC") // Set/Reset type: "SYNC" or "ASYNC"
) ODDR_inst (
	.Q(ENC_out), // 1-bit DDR output
	.C(clkPS), // 1-bit clock input
	.CE(1'b1), // 1-bit clock enable input
	.D1(1'b0), // 1-bit data input (positive edge)
	.D2(1'b1), // 1-bit data input (negative edge)
	.R(rst_in), // 1-bit reset
	.S() // 1-bit set
);
// End of ODDR_inst instantiation


// Output buffer
OBUFDS #(
	.IOSTANDARD("LVDS_25")
)
obufds_inst(
	.O(ENC_out_p),
	.OB(ENC_out_n),
	.I(ENC_out)
);

///////////////////////////////////////////////////////////////////////////////
// LVDS DCO input

// Input buffer
wire DCO_in;

IBUFDS #(
	.IOSTANDARD("LVDS_25")
)
ibufds_clk_inst(
	.I(DCO_in_p),
	.IB(DCO_in_n),
	.O(DCO_in)
);

///////////////////////////////////////////////////////////////////////////////
// LVDS inputs

localparam N_LVDS = 5;		//Number of LVDS channels
localparam N_SERIAL = 8;	//Not sure what this parameter is for...

wire   [N_LVDS-1:0] data_in_p, data_in_n;
assign data_in_p = {FR_in_p, D1_in_p, D0_in_p};
assign data_in_n = {FR_in_n, D1_in_n, D0_in_n};

wire [N_LVDS*N_SERIAL-1:0] data_out;

always @(posedge clk_in) begin
	//Order to get bits in right place
	ADC0_out <= {
		data_out[ 0], 	data_out[ 8], 	data_out[ 1], 	data_out[ 9], 	data_out[ 2], 	data_out[ 10], 	data_out[ 3], 	data_out[ 11],
		data_out[4], 	data_out[12], 	data_out[5], 	data_out[13], 	data_out[ 6], 	data_out[14], 		data_out[ 7], 	data_out[15]
	};
	ADC1_out <= {
		data_out[16 + 0], data_out[16 + 8], 	data_out[16 + 1], data_out[16 + 9], 	data_out[16 + 2], data_out[16 + 10], data_out[16 + 3], data_out[16 + 11],
		data_out[16 + 4], data_out[16 + 12],	data_out[16 + 5], data_out[16 + 13],	data_out[16 + 6], data_out[16 + 14], data_out[16 + 7], data_out[16 +15]
	};

//	ADC0_out <= data_out[15:0];
//	ADC1_out <= data_out[31:16];
	
	FR_out <= data_out[39:32];	//filling up remaining channels (extra from loop)?
end

// Generate the serial data clock - SDR at 8x the frequency of the ENC signal for a 2 wire interface
wire clk8x; 	// post-buffer
/*
wire desstrobe;

PLL_BASE #(
	.BANDWIDTH("OPTIMIZED"),
	.CLK_FEEDBACK("CLKOUT0"),
	.COMPENSATION("SYSTEM_SYNCHRONOUS"),
	.DIVCLK_DIVIDE(1),
	.CLKFBOUT_MULT(4),
	.CLKFBOUT_PHASE(0.000),
	.CLKOUT0_DIVIDE(1),
	.CLKOUT0_PHASE(0.000),
	.CLKOUT0_DUTY_CYCLE(0.500),
	.CLKIN_PERIOD(10.0),
	.REF_JITTER(0.010)
)
pll_base_inst(
	.CLKOUT0(clk4xInt),
	.LOCKED(pllLocked),
	.RST(rst_in),
	.CLKFBIN(clk4x),
	.CLKIN(clk_in)
);

BUFPLL #(
	.DIVIDE(4),
	.ENABLE_SYNC("TRUE")
)
bufpll_inst(
	.PLLIN(clk4xInt),
	.IOCLK(clk4x),
	.GCLK(clk_in),
	.SERDESSTROBE(desstrobe),
	.LOCKED(pllLocked)
);
*/

// Buffer for deserialization clock.
BUFG BUFG_8x (
	.O(clk8x), 		// 1-bit output: Clock output
	.I(clk8xInt) 	// 1-bit input: Clock input
);

// We have multiple bits - step over every bit, instantiating the required elements

wire [N_LVDS-1:0] data_in_from_pins; 			// between the input buffer and the delay
wire [N_LVDS-1:0] data_in_from_pins_delay; 	// between the delay and the deserializer

// I added 50 to all the values here because I couldn't reach the middle of the eye with the encode phase shifter (it had hit the end of its range)
//Removed the 50 to route design.
//If I want to implement delay I have to figure out IDELAYCTRL issue, and map delay values from IODELAY2 to IDELAYE2.
function integer delay_value;
	input i;
	begin
		case (i)
			0:	delay_value = 0;
			1:	delay_value = 2;
			2:	delay_value = 5;
			3:	delay_value = 8;
			4:	delay_value = 9;
			5:	delay_value = 9;
			6:	delay_value = 9;
			7:	delay_value = 8;
			8:	delay_value = 0;
			default:
				delay_value = 0;
		endcase
	end
endfunction
/*
// Buffer for IDELAYCTRL clock.
BUFG BUFG_2x (
	.O(clk2x), 		// 1-bit output: Clock output
	.I(clk2xInt) 	// 1-bit input: Clock input
);

// IDELAYCTRL: IDELAYE2/ODELAYE2 Tap Delay Value Control
// Needed for IDELAYE2
//(* IODELAY_GROUP = "Input_Delay" *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
IDELAYCTRL IDELAYCTRL_inst (
	.RDY(), 				// 1-bit output: Ready output
	.REFCLK(clk2x), 	// 1-bit input: Reference clock input
	.RST(rst_in) 		// 1-bit input: Active high reset input
);
*/
genvar pin_count;
generate for (pin_count = 0; pin_count < N_LVDS; pin_count = pin_count + 1) begin: pins
	// Input buffer
	
	/*
	IBUFDS #(
		.DIFF_TERM("TRUE"),
		.IOSTANDARD("LVDS_33")
	)
	ibufds_inst(
		.I(data_in_p[pin_count]),
		.IB(data_in_n[pin_count]),
		.O(data_in_from_pins[pin_count])
	);
	*/
	
	// IBUFDS: Differential Input Buffer
	// 7 Series
	// Xilinx HDL Libraries Guide, version 14.7
	IBUFDS #(
		.DIFF_TERM("TRUE"), 			// Differential Termination
		.IBUF_LOW_PWR("FALSE"), 	// Low power="TRUE", Highest performance="FALSE"
		.IOSTANDARD("LVDS_25") 		// Specify the input I/O standard
	) IBUFDS_inst (
		.O(data_in_from_pins[pin_count]), 	// Buffer output
		.I(data_in_p[pin_count]), 				// Diff_p buffer input (connect directly to top-level port)
		.IB(data_in_n[pin_count]) 				// Diff_n buffer input (connect directly to top-level port)
	);
	// End of IBUFDS_inst instantiation
	
	
	/*
	// Delay
	IODELAY2 #(
		.DATA_RATE("SDR"),
		.IDELAY_VALUE(delay_value(pin_count)),
		.IDELAY_TYPE("FIXED"),
		.COUNTER_WRAPAROUND("STAY_AT_LIMIT"),
		.DELAY_SRC("IDATAIN"),
		.SERDES_MODE("NONE"),
		.SIM_TAPDELAY_VALUE(75)
	)
	iodelay2_inst(
		.IDATAIN(data_in_from_pins[pin_count]),	// datapath
		.DATAOUT(data_in_from_pins_delay[pin_count]),
		.T(1'b1),
		.DATAOUT2(),										// inactive data connections
		.DOUT(),
		.ODATAIN(1'b0),
		.TOUT(),
		.IOCLK0(1'b0),										// calibration clocks
		.IOCLK1(1'b0),
		.CLK(1'b0),											// variable delay programming
		.CAL(1'b0),
		.INC(1'b0),
		.CE(1'b0),
		.BUSY(),
		.RST(1'b0)
	);
	*/
	/*
	// IDELAYE2: Input Fixed or Variable Delay Element
	// 7 Series
	// Xilinx HDL Libraries Guide, version 14.7
(* IODELAY_GROUP = "Input_Delay" *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
	IDELAYE2 #(
		.CINVCTRL_SEL("FALSE"), 					// Enable dynamic clock inversion (FALSE, TRUE)
		.DELAY_SRC("IDATAIN"), 						// Delay input (IDATAIN, DATAIN)
		.HIGH_PERFORMANCE_MODE("TRUE"), 			// Reduced jitter ("TRUE"), Reduced power ("FALSE")
		.IDELAY_TYPE("FIXED"), 						// FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
		.IDELAY_VALUE(delay_value(pin_count)),	// Input delay tap setting (0-31)
		.PIPE_SEL("FALSE"), 							// Select pipelined mode, FALSE, TRUE
		.REFCLK_FREQUENCY(200.0), 					// IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
		.SIGNAL_PATTERN("DATA") 					// DATA, CLOCK input signal
	)
	IDELAYE2_inst (
		.IDATAIN(data_in_from_pins[pin_count]), 			// 1-bit input: Data input from the I/O
		.DATAOUT(data_in_from_pins_delay[pin_count]), 	// 1-bit output: Delayed data output
		.C(1'b0), 													// 1-bit input: Clock input
		.CE(1'b0), 												// 1-bit input: Active high enable increment/decrement input
		.CINVCTRL(), 												// 1-bit input: Dynamic clock inversion input
		.CNTVALUEIN(), 											// 5-bit input: Counter value input
		.DATAIN(), 													// 1-bit input: Internal delay data input
		.INC(),	 													// 1-bit input: Increment / Decrement tap delay input
		.LD(), 														// 1-bit input: Load IDELAY_VALUE input
		.LDPIPEEN(1'b0),		 									// 1-bit input: Enable PIPELINE register to load data input
		.REGRST(1'b0),	 											// 1-bit input: Active-high reset tap-delay input
		.CNTVALUEOUT()												// 5-bit output: Counter value output
	);
	// End of IDELAYE2_inst instantiation
	*/
	
	// Deserializer
	
	/*
	ISERDES2 #(
		.BITSLIP_ENABLE("FALSE"),
		.DATA_RATE("SDR"),
		.DATA_WIDTH(N_SERIAL),
		.INTERFACE_TYPE("RETIMED"), // NETWORKING and NETWORKING_PIPELINED don't work - glitches, RETIMED works
		.SERDES_MODE("NONE")
	)
	iserdes2_inst(
		.Q1(data_out[N_SERIAL*pin_count+3]),
		.Q2(data_out[N_SERIAL*pin_count+2]),
		.Q3(data_out[N_SERIAL*pin_count+1]),
		.Q4(data_out[N_SERIAL*pin_count+0]),
		.BITSLIP(1'b0),
		.CE0(1'b1),											// clock enable input
		.CLK0(clk4x),										// serial clock input
		.CLKDIV(clk_in),									// parallel clock input
		.D(data_in_from_pins_delay[pin_count]),	// serial data input
		.IOCE(desstrobe),									// this fails at place and route if I input 1'b0 here.  is this ok?
		.RST(rst_in)
	);
	*/
	
	// ISERDESE2: Input SERial/DESerializer with Bitslip
	// 7 Series
	// Xilinx HDL Libraries Guide, version 14.7
	ISERDESE2 #(
		.DATA_RATE("SDR"), 					// DDR, SDR
		.DATA_WIDTH(8), 						// Parallel data width (2-8,10,14)
		.DYN_CLKDIV_INV_EN("FALSE"), 		// Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
		.DYN_CLK_INV_EN("FALSE"), 			// Enable DYNCLKINVSEL inversion (FALSE, TRUE)
		// INIT_Q1 - INIT_Q4: Initial value on the Q outputs (0/1)
		.INIT_Q1(1'b0),
		.INIT_Q2(1'b0),
		.INIT_Q3(1'b0),
		.INIT_Q4(1'b0),
		.INTERFACE_TYPE("NETWORKING"), 	// MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
		.IOBDELAY("NONE"), 					// NONE, BOTH, IBUF, IFD
		.NUM_CE(1), 							// Number of clock enables (1,2)
		.OFB_USED("FALSE"), 					// Select OFB path (FALSE, TRUE)
		.SERDES_MODE("MASTER"), 			// MASTER, SLAVE
		// SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
		.SRVAL_Q1(1'b0),
		.SRVAL_Q2(1'b0),
		.SRVAL_Q3(1'b0),
		.SRVAL_Q4(1'b0)
	)
	ISERDESE2_inst (
		// Q1 - Q8: 1-bit (each) output: Registered data outputs
		.Q1(data_out[N_SERIAL*pin_count+7]),
		.Q2(data_out[N_SERIAL*pin_count+6]),
		.Q3(data_out[N_SERIAL*pin_count+5]),
		.Q4(data_out[N_SERIAL*pin_count+4]),
		.Q5(data_out[N_SERIAL*pin_count+3]),
		.Q6(data_out[N_SERIAL*pin_count+2]),
		.Q7(data_out[N_SERIAL*pin_count+1]),
		.Q8(data_out[N_SERIAL*pin_count+0]),	
		.BITSLIP(1'b0), 						// 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
		// CLKDIV when asserted (active High). Subsequently, the data seen on the Q1
		// to Q8 output ports will shift, as in a barrel-shifter operation, one
		// position every time Bitslip is invoked (DDR operation is different from
		// SDR).
		// CE1, CE2: 1-bit (each) input: Data register clock enable inputs
		.CE1(1'b1),
		// Clocks: 1-bit (each) input: ISERDESE2 clock input ports
		.CLK(clk8x), 							// 1-bit input: High-speed clock
		.CLKDIV(clk_in), 						// 1-bit input: Divided clock
		// Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
		.DYNCLKDIVSEL(1'b0), 				// 1-bit input: Dynamic CLKDIV inversion
		.DYNCLKSEL(1'b0), 					// 1-bit input: Dynamic CLK/CLKB inversion
		// Input Data: 1-bit (each) input: ISERDESE2 data input ports
		.D(1'b0), 												// 1-bit input: Data input
//		.DDLY(data_in_from_pins_delay[pin_count]), 	// 1-bit input: Serial data from IDELAYE2
		.DDLY(data_in_from_pins[pin_count]), 			// 1-bit input: Serial data from IDELAYE2
		.RST(rst_in) 											// 1-bit input: Active high asynchronous reset
	);
	// End of ISERDESE2_inst instantiation
	
end
endgenerate

///////////////////////////////////////////////////////////////////////////////
// SPI state machine

reg			spi_trigger;
reg  [15:0]	spi_data;
wire			spi_ready;

SPI #(
	.TRANSFER_SIZE(16),
	.SPI_CLK_DIV(8'h05) // run the SPI clock at 10 MHz
)
LTC2195_SPI_inst(
	.clk_in(clk_in),
	.rst_in(rst_in),
	.trigger_in(spi_trigger),
	.data_in(spi_data),
	.data_out(),
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
localparam RST2A  = 4'h2;
localparam RST2B  = 4'h3;
localparam RST2C  = 4'h4;
localparam RST3A  = 4'h5;
localparam RST3B  = 4'h6;
localparam RST3C  = 4'h7;
localparam RST4A  = 4'h8;
localparam RST4B  = 4'h9;
localparam RST4C  = 4'hA;
// localparam GET1A	= 4'h6;
// localparam GET1B	= 4'h7;
// localparam GET1C	= 4'h8;
localparam SET1A	= 4'hB;
localparam SET1B	= 4'hC;
localparam SET1C	= 4'hD;

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
//				if (trigger & (address[15:8] == 8'h30))
//					next_state = GET1A;
//				else
				if (trigger & (address[15:8] == 8'h31)) //
					next_state = SET1A;
				else
					next_state = IDLE;
			RST1:
				if (counter == 8'b1)
					next_state = RST2A;
				else
					next_state = RST1;
			RST2A:
				if (ready)
					next_state = RST2B;
				else
					next_state = RST2A;
			RST2B:
					next_state = RST2C;
			RST2C:
					next_state = RST3A;
			RST3A:
				if (ready)
					next_state = RST3B;
				else
					next_state = RST3A;
			RST3B:
					next_state = RST3C;
			RST3C:
					next_state = RST4A;
			RST4A:
				if (ready)
					next_state = RST4B;
				else
					next_state = RST4A;
			RST4B:
					next_state = RST4C;
			RST4C:
					next_state = IDLE;
//			GET1A:
//				if (ready)
//					next_state = GET1B;
//				else
//					next_state = GET1A;
//			GET1B:
//					next_state = GET1C;
//			GET1C:
//					next_state = IDLE;
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
//A {R/W, Register address, data}, B {trigger SPI module}, C {untrigger SPI module}
always @(posedge clk_in or posedge rst_in) begin
	if (rst_in) begin
		state_f <= RST1;
		counter_f <= 8'hFF;	//255
		spi_trigger <= 1'b0;
	end
	else begin
		state_f <= next_state(state_f, counter_f, cmd_trig_in, cmd_addr_in, spi_ready);
		case (state_f)
			IDLE: begin
				spi_trigger <= 1'b0;
			end
			// Send a reset signal to the ADC (after waiting 256 clock cycles)
			RST1: begin
				counter_f <= counter_f - 8'b1;
			end
			RST2A: begin
				spi_data <= {1'b0, 7'h0, 8'h80}; //{write, address of reset register, 1000_0000}
			end
			RST2B: begin
				spi_trigger <= 1'b1;
			end
			RST2C: begin
				spi_trigger <= 1'b0;
			end
			// Set the output format to be twos compliment
			RST3A: begin
				spi_data <= {1'b0, 7'h1, 8'h20};
			end
			RST3B: begin
				spi_trigger <= 1'b1;
			end
			RST3C: begin
				spi_trigger <= 1'b0;
			end
//			// Set the output format to be 4 lane
//			RST4A: begin
//				spi_data <= {1'b0, 7'h2, 8'h01};
//			end
			//	Set the output format to be 2 lane
			RST4A: begin
				spi_data <= {1'b0, 7'h2, 8'h00};
			end
			RST4B: begin
				spi_trigger <= 1'b1;
			end
			RST4C: begin
				spi_trigger <= 1'b0;
			end
			// Get the value of a SPI register
//			GET1A: begin
//				spi_data <= {1'b1, cmd_addr_in[6:0], 8'b0};
//			end
//			GET1B: begin
//				spi_trigger <= 1'b1;
//			end
//			GET1C: begin
//				spi_trigger <= 1'b0;
//			end
			// Set the value of a SPI register
			SET1A: begin
				spi_data <= {1'b0, cmd_addr_in[6:0], cmd_data_in[7:0]};
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