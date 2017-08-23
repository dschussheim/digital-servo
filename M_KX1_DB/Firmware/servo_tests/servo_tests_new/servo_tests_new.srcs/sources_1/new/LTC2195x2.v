`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////\\\\\\\\\\\
//////////\\\\\\\\\\\
//////////\\\\\\\\\\\
//////////////////////////////////////////////////////////////////////////////////


module LTC2195x2(
    //Clock and reset in
    input  wire					   clk_in,
    input  wire                    rst_in,
    //Commands for SPI to change programming from defaults
    input  wire                    cmd_trig_in,
    input  wire           [15:0]   cmd_addr_in,
    input  wire           [15:0]   cmd_data_in,
    //SPI IOs
    output wire                    spi_scs0_out,
    output wire                    spi_scs1_out,
    output wire                    spi_sck_out,
    output wire                    spi_sdo_out,
    input  wire                    spi_sdi_in,
    //Clock for ADCs
    output wire                    ENC_out_p,
    output wire                    ENC_out_n,
    //DCO from ADCs
    input  wire                    DCO0_in_p,
    input  wire                    DCO0_in_n,
    input  wire                    DCO1_in_p,
    input  wire                    DCO1_in_n,
    //Frame inputs
    input  wire                    FR0_in_p,
    input  wire                    FR0_in_n,
    input  wire                    FR1_in_p,
    input  wire                    FR1_in_n,
    //ADC0 data inputs
    input  wire            [1:0]   D00_in_p,
    input  wire            [1:0]   D00_in_n,
    input  wire            [1:0]   D01_in_p,
    input  wire            [1:0]   D01_in_n,
    //ADC1 inputs
    input  wire            [1:0]   D10_in_p,
    input  wire            [1:0]   D10_in_n,
    input  wire            [1:0]   D11_in_p,
    input  wire            [1:0]   D11_in_n,
    //ADC0 outputs
    output reg     signed  [15:0]  ADC00_out,
    output reg     signed  [15:0]  ADC01_out,
    //ADC1 outputs
    output reg     signed  [15:0]  ADC10_out,
    output reg     signed  [15:0]  ADC11_out,
    //Deserialized frame outputs (for debugging bitslip)
    output reg             [7:0]   FR0_out,
    output reg             [7:0]   FR1_out
);
        
// Parameters
parameter	CLKDIV = 8'h8; //800MHz/8 = 100Mhz.


///////////////////////////////////////////////////////////////////////////////
// LVDS ENC output
wire	clkENC_int, clkENC, clk_int, clk_div_int, clkFB;		//clock for phase shifting of ENC, and clock for deserialization (LVDS inputs block below)

//There are no DCMs in 7 series devices. Their functionality is encompassed by PLLs and MMCMs.
//I instantiate an MMCM below.
// MMCME2_ADV: Advanced Mixed Mode Clock Manager
MMCME2_ADV #(
	.BANDWIDTH("OPTIMIZED"), 	// Jitter programming (OPTIMIZED, HIGH, LOW)
	.CLKFBOUT_MULT_F(8.0), 		// 600MHz (minimum for vco
	.CLKFBOUT_PHASE(0.0), 		// Phase offset in degrees of CLKFB (-360.000-360.000).
	// CLKIN_PERIOD: Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
	.CLKIN1_PERIOD(10.0),
	// CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for CLKOUT (1-128)
	.CLKOUT0_DIVIDE_F(CLKDIV), 	//f_CLK0 = 800MHz/CLKDIV
	.CLKOUT1_DIVIDE(CLKDIV/8),	//Fast deserialization clock (8x speed)
	.CLKOUT2_DIVIDE(CLKDIV),	//Slow parallel clock
	// CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for CLKOUT outputs (0.01-0.99).
	.CLKOUT0_DUTY_CYCLE(0.5),
	.CLKOUT1_DUTY_CYCLE(0.5),
	.CLKOUT2_DUTY_CYCLE(0.5),
	// CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for CLKOUT outputs (-360.000-360.000).
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_PHASE(0.0),
	.CLKOUT2_PHASE(0.0),
	.COMPENSATION("ZHOLD"),    // ZHOLD, BUF_IN, EXTERNAL, INTERNAL
	.DIVCLK_DIVIDE(1),         // Master division value (1-106)
	// REF_JITTER: Reference input jitter in UI (0.000-0.999).
	.REF_JITTER1(0.01),
	.STARTUP_WAIT("FALSE"),    // Delays DONE until MMCM is locked (FALSE, TRUE)
	// USE_FINE_PS: Fine phase shift enable (TRUE/FALSE)
	.CLKFBOUT_USE_FINE_PS("FALSE"),
	.CLKOUT0_USE_FINE_PS("FALSE"),
	.CLKOUT1_USE_FINE_PS("FALSE"),
	.CLKOUT2_USE_FINE_PS("FALSE")
)
MMCME2_ADV_inst (
	// Clock Outputs: 1-bit (each) output: User configurable clock outputs
	.CLKOUT0(clkENC_int), 			// Phase shifted clock for ENC
	.CLKOUT1(clk_int), 				// Deserialization clock for LVDS inputs
	.CLKOUT2(clk_div_int),		    //	Clock for IDELAY control, 200MHz
	// Dynamic Phase Shift Ports: 1-bit (each) output: Ports used for dynamic phase shifting of the outputs
	.PSDONE(), 				        // 1-bit output: Phase shift done
	// Feedback Clocks: 1-bit (each) output: Clock feedback ports
	.CLKFBOUT(clkFB), 				// 1-bit output: Feedback clock
	.LOCKED(), 			            // 1-bit output: LOCK
	// Clock Inputs: 1-bit (each) input: Clock inputs
	.CLKIN1(clk_in), 				// 1-bit input: Primary clock
	// Control Ports: 1-bit (each) input: MMCM control ports
	.CLKINSEL(1'b1), 				// 1-bit input: Clock select, High=CLKIN1 Low=CLKIN2
	.PWRDWN(1'b0), 					// 1-bit input: Power-down
	.RST(rst_in), 					// 1-bit input: Reset
	// DRP Ports: 7-bit (each) input: Dynamic reconfiguration ports
	.DWE(1'b0), 					// 1-bit input: DRP write enable
	// Dynamic Phase Shift Ports: 1-bit (each) input: Ports used for dynamic phase shifting of the outputs
	.PSCLK(1'b0), 				// 1-bit input: Phase shift clock
	.PSEN(1'b0), 					// 1-bit input: Phase shift enable
	.PSINCDEC(1'b0), 				// 1-bit input: Phase shift increment/decrement
	// Feedback Clocks: 1-bit (each) input: Clock feedback ports
	.CLKFBIN(clkFB) 				// 1-bit input: Feedback clock
);

BUFG BUFG_clkENC (
	.O(clkENC), 		// 1-bit output: Clock output
	.I(clkENC_int) 	// 1-bit input: Clock input
);

// DDR register
wire ENC_out;
// ODDR: Output Double Data Rate Output Register with Set, Reset, and Clock Enable.
ODDR #(
	.DDR_CLK_EDGE("OPPOSITE_EDGE"), 	// "OPPOSITE_EDGE" or "SAME_EDGE"
	.INIT(1'b0), 		// Initial value of Q: 1'b0 or 1'b1
	.SRTYPE("ASYNC") 	// Set/Reset type: "SYNC" or "ASYNC"
) ODDR_inst (
	.Q(ENC_out), 	// 1-bit DDR output
	.C(clkENC), 	// 1-bit clock input
	.CE(1'b1), 		// 1-bit clock enable input
	.D1(1'b0), 		// 1-bit data input (positive edge)
	.D2(1'b1), 		// 1-bit data input (negative edge)
	.R(rst_in), 	// 1-bit reset
	.S() 			// 1-bit set
);

// Output buffer for ENC
OBUFDS #(
	.IOSTANDARD("LVDS_25")
)
obufds_inst(
	.O(ENC_out_p),
	.OB(ENC_out_n),
	.I(ENC_out)
);

///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// LVDS DCO input

// Input buffer
wire DCO0_in, DCO1_in;

// IBUFDS: Differential Input Buffer
IBUFDS #(
	.DIFF_TERM("TRUE"), 	// Differential Termination
	.IBUF_LOW_PWR("FALSE"), 	// Low power="TRUE", Highest performance="FALSE"
	.IOSTANDARD("LVDS_25") 	// Specify the input I/O standard
) IBUFDS_DCO0 (
	.O(DCO0_in), 	// Buffer output
	.I(DCO0_in_p), 	// Diff_p buffer input (connect directly to top-level port)
	.IB(DCO0_in_n) 	// Diff_n buffer input (connect directly to top-level port)
);
// IBUFDS: Differential Input Buffer
IBUFDS #(
	.DIFF_TERM("TRUE"), 	// Differential Termination
	.IBUF_LOW_PWR("FALSE"), 	// Low power="TRUE", Highest performance="FALSE"
	.IOSTANDARD("LVDS_25") 	// Specify the input I/O standard
) IBUFDS_DCO1 (
	.O(DCO1_in), 	// Buffer output
	.I(DCO1_in_p), 	// Diff_p buffer input (connect directly to top-level port)
	.IB(DCO1_in_n) 	// Diff_n buffer input (connect directly to top-level port)
);

///////////////////////////////////////////////////////////////////////////////
// LVDS inputs

localparam N_LVDS = 10;		//Number of LVDS channels
localparam N_SERIAL = 8;	//Number of bits in one serial transfer

wire   [N_LVDS-1:0] data_in_p, data_in_n;
assign data_in_p = {FR1_in_p, D11_in_p, D10_in_p, FR0_in_p, D01_in_p, D00_in_p};
assign data_in_n = {FR1_in_n, D11_in_n, D10_in_n, FR0_in_n, D01_in_n, D00_in_n};

wire [N_LVDS*N_SERIAL-1:0] data_out;

always @(posedge clk_in) begin
	//Order to get bits in right place
	ADC00_out <= {
		data_out[0], data_out[8],  data_out[1], data_out[9],  data_out[2], data_out[10], data_out[3], data_out[11],
		data_out[4], data_out[12], data_out[5], data_out[13], data_out[6], data_out[14], data_out[7], data_out[15]
	};
	ADC01_out <= {
		data_out[16 + 0], data_out[16 + 8],  data_out[16 + 1], data_out[16 + 9],  data_out[16 + 2], data_out[16 + 10], data_out[16 + 3], data_out[16 + 11],
		data_out[16 + 4], data_out[16 + 12], data_out[16 + 5], data_out[16 + 13], data_out[16 + 6], data_out[16 + 14], data_out[16 + 7], data_out[16 +14]
	};	
	FR0_out <= data_out[39:32]; //Training pattern for bitslip state machine
	ADC10_out <= {
        data_out[40 + 0], data_out[40 + 8],  data_out[40 + 1], data_out[40 + 9],  data_out[40 + 2], data_out[40 + 10], data_out[40 + 3], data_out[40 + 11],
        data_out[40 + 4], data_out[40 + 12], data_out[40 + 5], data_out[40 + 13], data_out[40 + 6], data_out[40 + 14], data_out[40 + 7], data_out[40 + 15]
    };
    ADC11_out <= {
        data_out[56 + 0], data_out[56 + 8],  data_out[56 + 1], data_out[56 + 9],  data_out[56 + 2], data_out[56 + 10], data_out[56 + 3], data_out[56 + 11],
        data_out[56 + 4], data_out[56 + 12], data_out[56 + 5], data_out[56 + 13], data_out[56 + 6], data_out[56 + 14], data_out[56 + 7], data_out[56 + 14]
    };    
    FR1_out <= data_out[79:72]; //Training pattern for bitslip state machine	
end

// Deserializer clocks.
wire clk, clk_div;

// Buffers for deserialization clocks.
BUFG BUFG_clk (
	.O(clk), 		// 1-bit output: Clock output
	.I(clk_int) 	// 1-bit input: Clock input
);

BUFG BUFG_clk_div (
	.O(clk_div), 		// 1-bit output: Clock output
	.I(clk_div_int) 	// 1-bit input: Clock input
);

// We have multiple bits - step over every bit, instantiating the required elements

wire [N_LVDS-1:0] data_in_from_pins; 		// between the input buffer and the delay
/*
// Bit slip state machine to align data with frame.
parameter TP00 = 8'b10000111;
parameter TP01 = 8'b10000111;
parameter TP10 = 8'b10000111;
parameter TP11 = 8'b10000111;

//CHECK if we are matched up for current pattern, or TOGGLE BITSLIP
localparam CHECK00  = 4'h0;
localparam TOGGLE00 = 4'h1;
localparam CHECK01  = 4'h2;
localparam TOGGLE01 = 4'h3;
localparam CHECK10  = 4'h4;
localparam TOGGLE10 = 4'h5;
localparam CHECK11  = 4'h6;
localparam TOGGLE11 = 4'h7;
localparam END      = 4'h8;
//Combinatorial part
function [3:0] bit_slip_next_state;
    input [7:0] training_pattern00;
    input [7:0] training_pattern01;
    input [7:0] training_pattern10;
    input [7:0] training_pattern11;
    input [7:0] comp_val0;
    input [7:0] comp_val1;
    input [3:0] state;
    input [1:0] counter; //Two bit counter needed because of 2 cycle latency on BITSLIP submodule
    
    begin
        case(state)
            CHECK00:
                if (comp_val0 == training_pattern00)
                    //If we are at correct value, do not perform a bit_slip
                    bit_slip_next_state = CHECK01; 
                else if (counter == 2'b11)
                    //If we are not at the correct value toggle bit_slip
                    bit_slip_next_state = TOGGLE00;
                else
                    //If we are not at correct value and counter isn't max, don't do anything
                    bit_slip_next_state = CHECK00;
            TOGGLE00:
                //Bit slip must be reasserted to perform another shift, so turn off once we have shifted once.
                bit_slip_next_state = CHECK00;
            CHECK01:
                if (comp_val0 == training_pattern01)
                    //If we are at correct value, do not perform a bit_slip
                    bit_slip_next_state = CHECK10; 
                else if (counter == 2'b11)
                    //If we are not at the correct value toggle bit_slip
                    bit_slip_next_state = TOGGLE01;
                else
                    //If we are not at correct value and counter isn't max, don't do anything
                    bit_slip_next_state = CHECK01;
            TOGGLE01:
                //Bit slip must be reasserted to perform another shift, so turn off once we have shifted once.
                bit_slip_next_state = CHECK01;
            CHECK10:
                if (comp_val1 == training_pattern10)
                    //If we are at correct value, do not perform a bit_slip
                    bit_slip_next_state = CHECK11; 
                else if (counter == 2'b11)
                    //If we are not at the correct value toggle bit_slip
                    bit_slip_next_state = TOGGLE10;
                else
                    //If we are not at correct value and counter isn't max, don't do anything
                    bit_slip_next_state = CHECK10;
            TOGGLE10:
                //Bit slip must be reasserted to perform another shift, so turn off once we have shifted once.
                bit_slip_next_state = CHECK10;
            CHECK11:
                if (comp_val1 == training_pattern11)
                    //If we are at correct value, do not perform a bit_slip
                    bit_slip_next_state = END; 
                else if (counter == 2'b11)
                    //If we are not at the correct value toggle bit_slip
                    bit_slip_next_state = TOGGLE11;
                else
                    //If we are not at correct value and counter isn't max, don't do anything
                    bit_slip_next_state = CHECK11;
            TOGGLE11:
                //Bit slip must be reasserted to perform another shift, so turn off once we have shifted once.
                bit_slip_next_state = CHECK11;
            END:
                bit_slip_next_state = END;
        endcase
    end
endfunction

//Sequential part, toggling bit_slip
reg [3:0] BS_state;
reg bit_slip00, bit_slip01, bit_slip10, bit_slip11;
reg [1:0] counter; 
wire [N_LVDS-1:0] bit_slip; //must be high for 1 cycle, low for one cycle
//BITSLIP is synchronous to CLKDIV
always @(posedge clk_div) begin
    if (rst_in) begin
        BS_state <= CHECK00;
        counter <= 2'b00;
        bit_slip00 <= 1'b0;
        bit_slip01 <= 1'b0;        
        bit_slip10 <= 1'b0;        
        bit_slip11 <= 1'b0; 
    end
    else begin
        //Assign next state
        BS_state <= bit_slip_next_state(TP00, TP01, TP10, TP11, FR0_out, FR1_out, BS_state, counter);
            case(BS_state)
                CHECK00: begin
                    bit_slip00 <= 1'b0;
                    bit_slip01 <= 1'b0;        
                    bit_slip10 <= 1'b0;        
                    bit_slip11 <= 1'b0;
                    counter <= counter + 2'b01;
                end
                //Perform bitslip
                TOGGLE00: begin
                    bit_slip00 <= 1'b1;
                    bit_slip01 <= 1'b0;        
                    bit_slip10 <= 1'b0;        
                    bit_slip11 <= 1'b0;
                    counter <= 2'b00;
                end
                CHECK01: begin
                    bit_slip00 <= 1'b0;
                    bit_slip01 <= 1'b0;        
                    bit_slip10 <= 1'b0;        
                    bit_slip11 <= 1'b0;                     
                    counter <= counter + 2'b01;
                end
                //Perform bitslip
                TOGGLE01: begin
                    bit_slip00 <= 1'b0;
                    bit_slip01 <= 1'b1;        
                    bit_slip10 <= 1'b0;        
                    bit_slip11 <= 1'b0;
                    counter <= 2'b00;
                end
                CHECK10: begin
                    bit_slip00 <= 1'b0;
                    bit_slip01 <= 1'b0;        
                    bit_slip10 <= 1'b0;        
                    bit_slip11 <= 1'b0;                     
                    counter <= counter + 2'b01;
                end
                //Perform bitslip
                TOGGLE10: begin
                    bit_slip00 <= 1'b0;
                    bit_slip01 <= 1'b0;        
                    bit_slip10 <= 1'b1;        
                    bit_slip11 <= 1'b0;
                    counter <= 2'b00;
                end
                CHECK11: begin
                    bit_slip00 <= 1'b0;
                    bit_slip01 <= 1'b0;        
                    bit_slip10 <= 1'b0;        
                    bit_slip11 <= 1'b0;                     
                    counter <= counter + 2'b01;
                end
                //Perform bitslip
                TOGGLE11: begin
                    bit_slip00 <= 1'b0;
                    bit_slip01 <= 1'b0;        
                    bit_slip10 <= 1'b0;        
                    bit_slip11 <= 1'b1;
                    counter <= 2'b00;
                end
                END: begin
                    bit_slip00 <= 1'b0;
                    bit_slip01 <= 1'b0;        
                    bit_slip10 <= 1'b0;        
                    bit_slip11 <= 1'b0;
                    counter <= 2'b00;
                end
            endcase   
    end
end

assign bit_slip = {(bit_slip11 | bit_slip10), bit_slip11, bit_slip11, bit_slip10, bit_slip10, (bit_slip01 | bit_slip00), bit_slip01, bit_slip01, bit_slip00, bit_slip00};
*/
/*
parameter TP = 8'b10000111;

//Two states, CHECK if we are matched up, or TOGGLE BITSLIP
localparam CHECK = 2'b00;
localparam TOGGLE = 2'b01;
//localparam END = 2'b10;
//Combinatorial part
function [1:0] bit_slip_next_state;
    input [7:0] training_pattern;
    input [7:0] comp_val;
    input [1:0] state;
    input [1:0] counter; //Two bit counter needed because of 2 cycle latency on BITSLIP submodule
    
    begin
        case(state)
            CHECK:
                if (comp_val == training_pattern)
                    //If we are at correct value, do not perform a bit_slip
                    //bit_slip_next_state = END; 
                    bit_slip_next_state = CHECK; 
                else if (counter == 2'b11)
                    //If we are not at the correct value toggle bit_slip
                    bit_slip_next_state = TOGGLE;
                else
                    //If we are not at correct value and counter isn't max, don't do anything
                    bit_slip_next_state = CHECK;
            TOGGLE:
                //Bit slip must be reasserted to perform another shift, so turn off once we have shifted once.
                bit_slip_next_state = CHECK;
            //END:
                //bit_slip_next_state = END;
        endcase
    end
endfunction

//Sequential part, toggling bit_slip
reg [1:0] BS_state;
reg bit_slip;
reg [1:0] counter; //Must be high for 1 cycle, low for one cycle
//BITSLIP is synchronous to CLKDIV
always @(posedge clk_div) begin
    if (rst_in) begin
        BS_state <= CHECK;
        counter <= 2'b00;
        bit_slip <= 1'b0;                
    end
    else begin
        //Assign next state
        BS_state <= bit_slip_next_state(TP, FR0_out, BS_state, counter);
        case(BS_state)
            CHECK: begin
                bit_slip <= 1'b0;
                counter <= counter + 2'b01;
            end
            //Perform bitslip
            TOGGLE: begin
                bit_slip <= 1'b1;
                counter <= 2'b00;
            end
           // END: begin
             //   bit_slip <= 1'b0;
             //   counter <= 2'b00;
            //end
        endcase
    end
end
*/

////////////Initial bitslips because each channel has different offset from FR\\\\\\\\\\\\\\
/*
//Two states, CHECK if we are matched up, or TOGGLE BITSLIP
localparam WAIT = 1'b0;
localparam TOG = 1'b1;
//localparam END = 2'b10;
//Combinatorial part
function bit_slip_init;
    input state;
    input [1:0] counter; //Two bit counter needed because of 2 cycle latency on BITSLIP submodule
    
    begin
        case(state)
            WAIT:
                if (counter == 2'b11)
                    bit_slip_init = TOG;
                else 
                    bit_slip_init = WAIT;
            TOG:
                bit_slip_init = WAIT;
        endcase
    end
endfunction



reg [2:0] countdown = 3'b111;
//Goes high when reset turns off, low after all the bitslips are applied.
reg rst_off = 1'b0;
always @(posedge rst_in)
    rst_off <= 1'b0;
always @(negedge rst_in)
    rst_off <= 1'b1;
//always @(posedge clk_div) begin
//    if (rst_in)
//        rst_off <= 1'b0;
//    else if (!rst_in && !rst_off)
//        rst_off <= 1'b1;
//end

//Bitshift's for channel 00 and 01.
reg BSi00, BSi01, BSstate00, BSstate01;
parameter N00 = 3'b001;
parameter N01 = 3'b001;
reg [2:0] n00 = N00;
reg [2:0] n01 = N01;
reg [1:0] c00 = 2'b00, c01 = 2'b00; //counter
always @(posedge clk_in) begin
    if (rst_in) begin
        BSstate00 <= WAIT;
        BSstate01 <= WAIT;
        BSi00 <= 1'b0;
        BSi01 <= 1'b0;
        c00 <= 2'b00;
        c01 <= 2'b00;                      
    end
    if (rst_off && (countdown > 3'b000 ) ) begin
         countdown <= countdown - 3'b001; //Need a max of 7 shifts
         BSstate00 <= bit_slip_init(BSstate00, c00);
         if (n00 > 3'b000) begin
            case (BSi00)
                WAIT: begin
                    BSi00 <= 1'b0;
                    c00 = c00 + 2'b01;
                end
                TOG: begin
                    BSi00 <= 1'b1;
                    c00 = 2'b00;
                    n00 <= n00 - 3'b001;
                end
            endcase
         end  
         if (n01 > 3'b000) begin
            case (BSi01)
                WAIT: begin
                    BSi01 <= 1'b0;
                    c01 = c01 + 2'b01;
                end
                TOG: begin
                    BSi01 <= 1'b1;
                    c01 = 2'b00;
                    n01 <= n01 - 3'b001;
                end
            endcase
         end  
    end
end
*/
////////////Overall bitslip to align FR inputs properly\\\\\\\\\\\\\ 

//Give some time between end of reset and start of bitslips
reg rst_countdown = 13'd5000;
always @(posedge clk_div)
    rst_countdown <= rst_countdown - 13'b0_0000_0000_0001;

//WAIT/TOG states for initial shifts to ADC inputs, 
//CHECK/TOGGLE for shifting inputs and FR so FR matches input pattern
localparam WAIT0  = 3'b000;
localparam TOG0   = 3'b001;
localparam WAIT1  = 3'b010;
localparam TOG1   = 3'b011;
localparam CHECK  = 3'b100;
localparam TOGGLE = 3'b101;
//localparam END = 2'b10;
//Combinatorial part
function [2:0] bit_slip_next_state;
    input [7:0] training_pattern;
    input [2:0] countdown0;
    input [2:0] countdown1;
    input [7:0] comp_val;
    input [2:0] state;
    input [1:0] counter; //Two bit counter needed because of 2 cycle latency on BITSLIP submodule
    
    begin
        case(state)
            //WAIT/TOG states are to toggle certain bitslips (the ones for channel 0/1) 
            //a select number of times (starting value of countdown)
            WAIT0:
                if (counter == 2'b11)
                    bit_slip_next_state = TOG0;
                else 
                    bit_slip_next_state = WAIT0;

            TOG0:
                if (countdown0 == 3'b000)
                    bit_slip_next_state = WAIT1;
                else
                    bit_slip_next_state = WAIT0;
            WAIT1:
                if (counter == 2'b11)
                    bit_slip_next_state = TOG1;
                else 
                    bit_slip_next_state = WAIT1;
            TOG1:
                if (countdown1 == 3'b000)
                    bit_slip_next_state = CHECK;
                else
                    bit_slip_next_state = WAIT1;
            CHECK:
                if (comp_val == training_pattern)
                    //If we are at correct value, do not perform a bit_slip
                    bit_slip_next_state = CHECK; 
                else if (counter == 2'b11)
                    //If we are not at the correct value toggle bit_slip
                    bit_slip_next_state = TOGGLE;
                else
                    //If we are not at correct value and counter isn't max, don't do anything
                    bit_slip_next_state = CHECK;
            TOGGLE:
                //Bit slip must be reasserted to perform another shift, so turn off once we have shifted once.
                bit_slip_next_state = CHECK;
        endcase
    end
endfunction

//Sequential part, toggling bit_slip
localparam TP = 8'b10000111; //the way I ordered deserializer outputs means first bits in are LSBs
reg [2:0] BS_state0;
reg bit_slip0; //overal; bitslip for adc chip 0
reg BSi00, BSi01; //initial bitslips
reg [1:0] counter0; //Bitslip must be high for 1 cycle, low for at least one cycle
reg [2:0] countdown00, countdown01;
parameter N00 = 3'b000, N01 = 3'b000; // Number of bitslips applied to ADC00, and ADC01
always @(posedge clk_div) begin
    if (rst_in) begin
        BS_state0 <= WAIT0;
        bit_slip0 <= 1'b0;
        BSi00 <= 1'b0;
        BSi01 <= 1'b0;
        counter0 <= 2'b00;
        countdown00 <= N00;
        countdown01 <= N01;                       
    end
    else if (rst_countdown == 0) begin
        //Assign next state
        BS_state0 <= bit_slip_next_state(TP, countdown00, countdown01, FR0_out, BS_state0, counter0);
        case(BS_state0)
            WAIT0: begin
                //BSi00 <= 1'b0;
                counter0 <= counter0 + 2'b01;
            end
            TOG0: begin
                if (countdown00 > 3'b000) begin
                    //BSi00 <= 1'b1;
                    counter0 <= 2'b00;
                    countdown00 <= countdown00 - 3'b001;
                end
            end
            WAIT1: begin
                //BSi00 <= 1'b0;
                //BSi01 <= 1'b0;
                counter0 <= counter0 + 2'b01;  
            end
            TOG1: begin
                if (countdown01 > 3'b000) begin
                    //BSi01 <= 1'b1;
                    counter0 <= 2'b00;
                    countdown01 <= countdown01 - 3'b001;
                end
            end
            CHECK: begin
                //BSi01 <= 1'b0;
                bit_slip0 <= 1'b0;
                counter0 <= counter0 + 2'b01;
            end
            //Perform bitslip
            TOGGLE: begin
                bit_slip0 <= 1'b1;
                counter0 <= 2'b00;
            end
        endcase
    end
end

parameter div_f = 27'd100_000_000;
wire hz_clk;
clk_div #(
    .div_f(div_f)
)
ledClk(
    .clk(clk_in),
    .rst_in(1'b0),
    .div_clk(hz_clk)
);

always @(posedge clk_div) begin
    
end

/*
//Sequential part, toggling bit_slip
reg [1:0] BS_state1;
reg bit_slip1;
reg [1:0] counter1; //Must be high for 1 cycle, low for one cycle
always @(posedge clk_div) begin
    if (rst_in) begin
        BS_state1 <= CHECK;
        bit_slip1 <= 1'b0;
        counter1 <= 2'b00;                       
    end
    else begin
        //Assign next state
        BS_state1 <= bit_slip_next_state(TP, FR1_out, BS_state1, counter1);
        case(BS_state1)
            CHECK: begin
                bit_slip1 <= 1'b0;
                counter1 <= counter1 + 2'b01;
            end
            //Perform bitslip
            TOGGLE: begin
                bit_slip1 <= 1'b1;
                counter1 <= 2'b00;
            end
        endcase
    end
end
*/
wire [N_LVDS-1:0] BS;
assign BS = {bit_slip0, bit_slip0, bit_slip0, bit_slip0, bit_slip0, bit_slip0, (bit_slip0 || BSi01), (bit_slip0 || BSi01), (bit_slip0 || BSi00), (bit_slip0 || BSi00)};


/*
localparam TP = 8'b00001111; //the way I ordered deserializer outputs means first bits in are LSBs

//Two states, CHECK if we are matched up, or TOGGLE BITSLIP
localparam CHECK = 2'b00;
localparam TOGGLE = 2'b01;
//localparam END = 2'b10;
//Combinatorial part
function [1:0] bit_slip_next_state;
    input [7:0] training_pattern;
    input [7:0] comp_val;
    input [1:0] state;
    input [1:0] counter; //Two bit counter needed because of 2 cycle latency on BITSLIP submodule
    
    begin
        case(state)
            CHECK:
                if (comp_val == training_pattern)
                    //If we are at correct value, do not perform a bit_slip
                    bit_slip_next_state = CHECK; 
                else if (counter == 2'b11)
                    //If we are not at the correct value toggle bit_slip
                    bit_slip_next_state = TOGGLE;
                else
                    //If we are not at correct value and counter isn't max, don't do anything
                    bit_slip_next_state = CHECK;
            TOGGLE:
                //Bit slip must be reasserted to perform another shift, so turn off once we have shifted once.
                bit_slip_next_state = CHECK;
        endcase
    end
endfunction

//Sequential part, toggling bit_slip
reg [1:0] BS_state0;
reg bit_slip0;
reg [1:0] counter0; //Must be high for 1 cycle, low for one cycle
always @(posedge clk_div) begin
    if (rst_in) begin
        BS_state0 <= CHECK;
        bit_slip0 <= 1'b0;
        counter0 <= 2'b00;                       
    end
    else if (countdown == 3'b000) begin
        //Assign next state
        BS_state0 <= bit_slip_next_state(TP, FR0_out, BS_state0, counter0);
        case(BS_state0)
            CHECK: begin
                bit_slip0 <= 1'b0;
                counter0 <= counter0 + 2'b01;
            end
            //Perform bitslip
            TOGGLE: begin
                bit_slip0 <= 1'b1;
                counter0 <= 2'b00;
            end
        endcase
    end
end

//Sequential part, toggling bit_slip
reg [1:0] BS_state1;
reg bit_slip1;
reg [1:0] counter1; //Must be high for 1 cycle, low for one cycle
always @(posedge clk_div) begin
    if (rst_in) begin
        BS_state1 <= CHECK;
        bit_slip1 <= 1'b0;
        counter1 <= 2'b00;                       
    end
    else begin
        //Assign next state
        BS_state1 <= bit_slip_next_state(TP, FR1_out, BS_state1, counter1);
        case(BS_state1)
            CHECK: begin
                bit_slip1 <= 1'b0;
                counter1 <= counter1 + 2'b01;
            end
            //Perform bitslip
            TOGGLE: begin
                bit_slip1 <= 1'b1;
                counter1 <= 2'b00;
            end
        endcase
    end
end

wire [N_LVDS-1:0] BS;
assign BS = {bit_slip1, bit_slip1, bit_slip1, bit_slip1, bit_slip1, bit_slip0, (bit_slip0 || BSi01), (bit_slip0 || BSi01), (bit_slip0 || BSi00), (bit_slip0 || BSi00)};
*/
genvar pin_count;
generate for (pin_count = 0; pin_count < N_LVDS; pin_count = pin_count + 1) begin: pins
	
	// IBUFDS: Differential Input Buffer
	IBUFDS #(
		.DIFF_TERM("TRUE"), 		// Differential Termination
		.IBUF_LOW_PWR("FALSE"), 	// Low power="TRUE", Highest performance="FALSE"
		.IOSTANDARD("LVDS_25") 		// Specify the input I/O standard
	) IBUFDS_inst (
		.O(data_in_from_pins[pin_count]), 	// Buffer output
		.I(data_in_p[pin_count]), 			// Diff_p buffer input (connect directly to top-level port)
		.IB(data_in_n[pin_count]) 			// Diff_n buffer input (connect directly to top-level port)
	);
	
	// ISERDESE2: Input SERial/DESerializer with Bitslip
	ISERDESE2 #(
		.DATA_RATE("SDR"), 				// DDR, SDR
		.DATA_WIDTH(8), 				// Parallel data width (2-8,10,14)
		.DYN_CLKDIV_INV_EN("FALSE"), 	// Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
		.DYN_CLK_INV_EN("FALSE"), 		// Enable DYNCLKINVSEL inversion (FALSE, TRUE)
		// INIT_Q1 - INIT_Q4: Initial value on the Q outputs (0/1)
		.INIT_Q1(1'b0),
		.INIT_Q2(1'b0),
		.INIT_Q3(1'b0),
		.INIT_Q4(1'b0),
		.INTERFACE_TYPE("NETWORKING"),    // MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
		.IOBDELAY("NONE"),                // NONE, BOTH, IBUF, IFD
		.NUM_CE(2),                       // Number of clock enables (1,2)
		.OFB_USED("FALSE"),               // Select OFB path (FALSE, TRUE)
		.SERDES_MODE("MASTER"),           // MASTER, SLAVE
		// SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
		.SRVAL_Q1(1'b0),
		.SRVAL_Q2(1'b0),
		.SRVAL_Q3(1'b0),
		.SRVAL_Q4(1'b0)
	)
	ISERDESE2_inst (
		.O(), // 1-bit output: Combinatorial output
		// Q1 - Q8: 1-bit (each) output: Registered data outputs
		.Q1(data_out[N_SERIAL*pin_count+7]),
		.Q2(data_out[N_SERIAL*pin_count+6]),
		.Q3(data_out[N_SERIAL*pin_count+5]),
		.Q4(data_out[N_SERIAL*pin_count+4]),
		.Q5(data_out[N_SERIAL*pin_count+3]),
		.Q6(data_out[N_SERIAL*pin_count+2]),
		.Q7(data_out[N_SERIAL*pin_count+1]),
		.Q8(data_out[N_SERIAL*pin_count+0]),
		// SHIFTOUT1, SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
		.SHIFTOUT1(),
		.SHIFTOUT2(),
//		.BITSLIP(bit_slip[pin_count]), 		// 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
        //.BITSLIP(bit_slip),
        .BITSLIP(BS[pin_count]),
		// CLKDIV when asserted (active High). Subsequently, the data seen on the Q1
		// to Q8 output ports will shift, as in a barrel-shifter operation, one
		// position every time Bitslip is invoked (DDR operation is different from
		// SDR).
		// CE1, CE2: 1-bit (each) input: Data register clock enable inputs
		.CE1(1'b1),
		.CE2(1'b1),
		.CLKDIVP(1'b0),	    // 1-bit input: TBD
		// Clocks: 1-bit (each) input: ISERDESE2 clock input ports
		.CLK(clk), 			// 1-bit input: High-speed clock
		.CLKB(!clk), 		// 1-bit input: High-speed secondary clock
		.CLKDIV(clk_div), 	// 1-bit input: Divided clock
		.OCLK(), 		// 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY"
		// Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
		.DYNCLKDIVSEL(1'b0), 	// 1-bit input: Dynamic CLKDIV inversion
		.DYNCLKSEL(1'b0), 		// 1-bit input: Dynamic CLK/CLKB inversion
		// Input Data: 1-bit (each) input: ISERDESE2 data input ports
		.D(data_in_from_pins[pin_count]), // 1-bit input: Data input
		.DDLY(), 			// 1-bit input: Serial data from IDELAYE2
		.OFB(), 			// 1-bit input: Data feedback from OSERDESE2
		.OCLKB(), 			// 1-bit input: High speed negative edge output clock
		//.RST(rst_in), 		// 1-bit input: Active high asynchronous reset
		.RST(rst_in),
		// SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
		.SHIFTIN1(1'b0),
		.SHIFTIN2(1'b0)
	);		
end
endgenerate

///////////////////////////////////////////////////////////////////////////////
// SPI state machine

reg			spi_trigger;
reg  [15:0]	spi_data;
wire		spi_ready;

wire spi_scs_out;

SPI #(
	.TRANSFER_SIZE(16),
	.SPI_CLK_DIV(8'h0A) // run the SPI clock at 10 MHz
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

assign spi_scs0_out = spi_scs_out;
assign spi_scs1_out = spi_scs_out;

///////////////////////////////////////////////////////////////////////////////
// State machine which controls initialization and communicates with the PC

// State machine definitions
localparam IDLE   = 4'h0;
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
localparam SET1A  = 4'hB;
localparam SET1B  = 4'hC;
localparam SET1C  = 4'hD;

// State
// The next line makes synthesis happy
// synthesis attribute INIT of state_f is "R"
reg  [3:0] state_f;
reg  [7:0] counter_f;

// State machine - combinatorial part
function [3:0] next_state;
	input    [3:0]  state;
	input    [7:0]  counter;
	input			trigger;
	input	 [15:0]	address;
	input			ready;
	
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