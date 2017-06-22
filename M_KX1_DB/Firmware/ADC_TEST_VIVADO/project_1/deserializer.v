`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:46:36 06/21/2017 
// Design Name: 
// Module Name:    deserializer 
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
module deserializer(
	output	wire	[DATA_WIDTH-1:0]	Q,
   input 	wire						D,
   input 	wire						clk,
	input 	wire						rst,
	input   wire                        bit_slip
    );

parameter DATA_WIDTH = 8;


wire CLK_int, CLK, CLKDIV_int, CLKDIV, OCLK_int, OCLK, clkFB;

// MMCME2_BASE: Base Mixed Mode Clock Manager
MMCME2_BASE #(
	.BANDWIDTH("OPTIMIZED"), 	// Jitter programming (OPTIMIZED, HIGH, LOW)
	.CLKFBOUT_MULT_F(8.0), 		// Multiply value for all CLKOUT (2.000-64.000).
	.CLKFBOUT_PHASE(0.0), 		// Phase offset in degrees of CLKFB (-360.000-360.000).
	.CLKIN1_PERIOD(10.0), 		// Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
	// CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
	.CLKOUT1_DIVIDE(8),
	.CLKOUT2_DIVIDE(1),
	.CLKOUT3_DIVIDE(1),
	.CLKOUT4_DIVIDE(1),
	.CLKOUT5_DIVIDE(1),
	.CLKOUT6_DIVIDE(1),
	.CLKOUT0_DIVIDE_F(1.0), 	// Divide amount for CLKOUT0 (1.000-128.000).
	// CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for each CLKOUT (0.01-0.99).
	.CLKOUT0_DUTY_CYCLE(0.5),
	.CLKOUT1_DUTY_CYCLE(0.5),
	.CLKOUT2_DUTY_CYCLE(0.5),
	.CLKOUT3_DUTY_CYCLE(0.5),
	.CLKOUT4_DUTY_CYCLE(0.5),
	.CLKOUT5_DUTY_CYCLE(0.5),
	.CLKOUT6_DUTY_CYCLE(0.5),
	// CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_PHASE(0.0),
	.CLKOUT2_PHASE(90.0),
	.CLKOUT3_PHASE(0.0),
	.CLKOUT4_PHASE(0.0),
	.CLKOUT5_PHASE(0.0),
	.CLKOUT6_PHASE(0.0),
	.CLKOUT4_CASCADE("FALSE"),	// Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
	.DIVCLK_DIVIDE(1), 			// Master division value (1-106)
	.REF_JITTER1(0.0), 			// Reference input jitter in UI (0.000-0.999).
	.STARTUP_WAIT("FALSE") 		// Delays DONE until MMCM is locked (FALSE, TRUE)
)
MMCME2_BASE_inst (
	// Clock Outputs: 1-bit (each) output: User configurable clock outputs
	.CLKOUT0(CLK_int), 			// 1-bit output: CLKOUT0
	.CLKOUT0B(), 					// 1-bit output: Inverted CLKOUT0
	.CLKOUT1(CLKDIV_int), 		// 1-bit output: CLKOUT1
	.CLKOUT1B(), 					// 1-bit output: Inverted CLKOUT1
	.CLKOUT2(OCLK_int), 					// 1-bit output: CLKOUT2
	.CLKOUT2B(), 					// 1-bit output: Inverted CLKOUT2
	.CLKOUT3(), 					// 1-bit output: CLKOUT3
	.CLKOUT3B(), 					// 1-bit output: Inverted CLKOUT3
	.CLKOUT4(), 					// 1-bit output: CLKOUT4
	.CLKOUT5(), 					// 1-bit output: CLKOUT5
	.CLKOUT6(), 					// 1-bit output: CLKOUT6
	// Feedback Clocks: 1-bit (each) output: Clock feedback ports
	.CLKFBOUT(clkFB), 			// 1-bit output: Feedback clock
	.CLKFBOUTB(), 					// 1-bit output: Inverted CLKFBOUT
	// Status Ports: 1-bit (each) output: MMCM status ports
	.LOCKED(), 						// 1-bit output: LOCK
	// Clock Inputs: 1-bit (each) input: Clock input
	.CLKIN1(clk), 					// 1-bit input: Clock
	// Control Ports: 1-bit (each) input: MMCM control ports
	.PWRDWN(1'b0), 				// 1-bit input: Power-down
	.RST(rst), 						// 1-bit input: Reset
	// Feedback Clocks: 1-bit (each) input: Clock feedback ports
	.CLKFBIN(clkFB) 				// 1-bit input: Feedback clock
);


// BUFG: Global Clock Simple Buffer
BUFG BUFG_CLK (
	.O(CLK), 		// 1-bit output: Clock output
	.I(CLK_int) 	// 1-bit input: Clock input
);

// BUFG: Global Clock Simple Buffer
BUFG BUFG_CLKDIV (
	.O(CLKDIV), 		// 1-bit output: Clock output
	.I(CLKDIV_int) 	// 1-bit input: Clock input
);

// BUFG: Global Clock Simple Buffer
BUFG BUFG_OCLK (
	.O(OCLK), 		// 1-bit output: Clock output
	.I(OCLK_int) 	// 1-bit input: Clock input
);

// ISERDESE2: Input SERial/DESerializer with Bitslip
ISERDESE2 #(
	.DATA_RATE("SDR"), 					// DDR, SDR
	.DATA_WIDTH(DATA_WIDTH), 			// Parallel data width (2-8,10,14)
	.DYN_CLKDIV_INV_EN("FALSE"), 		// Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
	.DYN_CLK_INV_EN("FALSE"), 			// Enable DYNCLKINVSEL inversion (FALSE, TRUE)
	// INIT_Q1 - INIT_Q4: Initial value on the Q outputs (0/1)
	.INIT_Q1(1'b0),
	.INIT_Q2(1'b0),
	.INIT_Q3(1'b0),
	.INIT_Q4(1'b0),
	.INTERFACE_TYPE("NETWORKING"),	// MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
	.IOBDELAY("NONE"), 					// NONE, BOTH, IBUF, IFD
	.NUM_CE(2), 							// Number of clock enables (1,2)
	.OFB_USED("FALSE"), 					// Select OFB path (FALSE, TRUE)
	.SERDES_MODE("MASTER"), 			// MASTER, SLAVE
	// SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
	.SRVAL_Q1(1'b0),
	.SRVAL_Q2(1'b0),
	.SRVAL_Q3(1'b0),
	.SRVAL_Q4(1'b0)
)
ISERDESE2_inst (
	.O(), 				// 1-bit output: Combinatorial output
	// Q1 - Q8: 1-bit (each) output: Registered data outputs
	.Q1(Q[7]),
	.Q2(Q[6]),
	.Q3(Q[5]),
	.Q4(Q[4]),
	.Q5(Q[3]),
	.Q6(Q[2]),
	.Q7(Q[1]),
	.Q8(Q[0]),
	// SHIFTOUT1, SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
	.SHIFTOUT1(),
	.SHIFTOUT2(),
	.BITSLIP(bit_slip), 		// 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
	// CLKDIV when asserted (active High). Subsequently, the data seen on the Q1
	// to Q8 output ports will shift, as in a barrel-shifter operation, one
	// position every time Bitslip is invoked (DDR operation is different from
	// SDR).
	// CE1, CE2: 1-bit (each) input: Data register clock enable inputs
	.CE1(1'b1),
	.CE2(1'b1),
	.CLKDIVP(1'b0), 	// 1-bit input: TBD
	// Clocks: 1-bit (each) input: ISERDESE2 clock input ports
	.CLK(CLK), 			// 1-bit input: High-speed clock
	.CLKB(!CLK), 		// 1-bit input: High-speed secondary clock
	.CLKDIV(CLKDIV), 	// 1-bit input: Divided clock
	.OCLK(), 		// 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY"
	// Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
	.DYNCLKDIVSEL(),	// 1-bit input: Dynamic CLKDIV inversion
	.DYNCLKSEL(), 		// 1-bit input: Dynamic CLK/CLKB inversion
	// Input Data: 1-bit (each) input: ISERDESE2 data input ports
	.D(D), 				// 1-bit input: Data input
	.DDLY(), 			// 1-bit input: Serial data from IDELAYE2
	.OFB(), 				// 1-bit input: Data feedback from OSERDESE2
	.OCLKB(), 	// 1-bit input: High speed negative edge output clock
	.RST(rst), 			// 1-bit input: Active high asynchronous reset
	// SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
	.SHIFTIN1(1'b0),
	.SHIFTIN2(1'b0)
);

endmodule
