`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////\\\\\\\\\\\
//////////\\\\\\\\\\\
//////////\\\\\\\\\\\
//////////////////////////////////////////////////////////////////////////////////


module LTC2195x2delay(
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
    output reg             [7:0]   FR1_out,
    output wire            [3:0]   bitslip_out
);
        
// Parameters
parameter	CLKDIV = 8'h8; //800MHz/8 = 100Mhz.


///////////////////////////////////////////////////////////////////////////////
// LVDS ENC output
wire	clkENC_int, clkENC, clk_int, clk_div_int, clk200_int, clk200, clkFB;		//clock for phase shifting of ENC, and clock for deserialization (LVDS inputs block below)

//There are no DCMs in 7 series devices. Their functionality is encompassed by PLLs and MMCMs.
//I instantiate an MMCM below.
// MMCME2_ADV: Advanced Mixed Mode Clock Manager
MMCME2_ADV #(
	.BANDWIDTH("OPTIMIZED"), 	// Jitter programming (OPTIMIZED, HIGH, LOW)
	.CLKFBOUT_MULT_F(8.0), 		// 800MHz 
	.CLKFBOUT_PHASE(0.0), 		// Phase offset in degrees of CLKFB (-360.000-360.000).
	// CLKIN_PERIOD: Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
	.CLKIN1_PERIOD(10.0),
	// CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for CLKOUT (1-128)
	.CLKOUT0_DIVIDE_F(CLKDIV), 	//f_CLK0 = 800MHz/CLKDIV
	.CLKOUT1_DIVIDE(CLKDIV/8),	//Fast deserialization clock (8x speed)
	.CLKOUT2_DIVIDE(CLKDIV),	//Slow parallel clock
	.CLKOUT3_DIVIDE(4),         //200MHz clock for deserializer
	// CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for CLKOUT outputs (0.01-0.99).
	.CLKOUT0_DUTY_CYCLE(0.5),
	.CLKOUT1_DUTY_CYCLE(0.5),
	.CLKOUT2_DUTY_CYCLE(0.5),
	.CLKOUT3_DUTY_CYCLE(0.5),
	// CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for CLKOUT outputs (-360.000-360.000).
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_PHASE(0.0),
	.CLKOUT2_PHASE(0.0),
	.CLKOUT3_PHASE(0.0),
	.COMPENSATION("ZHOLD"),    // ZHOLD, BUF_IN, EXTERNAL, INTERNAL
	.DIVCLK_DIVIDE(1),         // Master division value (1-106)
	// REF_JITTER: Reference input jitter in UI (0.000-0.999).
	.REF_JITTER1(0.01),
	.STARTUP_WAIT("FALSE"),    // Delays DONE until MMCM is locked (FALSE, TRUE)
	// USE_FINE_PS: Fine phase shift enable (TRUE/FALSE)
	.CLKFBOUT_USE_FINE_PS("FALSE"),
	.CLKOUT0_USE_FINE_PS("FALSE"),
	.CLKOUT1_USE_FINE_PS("FALSE"),
	.CLKOUT2_USE_FINE_PS("FALSE"),
	.CLKOUT3_USE_FINE_PS("FALSE")
)
MMCME2_ADV_inst (
	// Clock Outputs: 1-bit (each) output: User configurable clock outputs
	.CLKOUT0(clkENC_int), 			// ENC clock
	.CLKOUT1(clk_int), 				// Fast deserialization clock for LVDS inputs
	.CLKOUT2(clk_div_int),		    // Slow deserialization clock for LVDS inputs
	.CLKOUT3(clk200_int),           // 200MHz clock for IDELAYCTRL
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
	//.RST(rst_in), 					// 1-bit input: Reset
	.RST(1'b0),
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
//    ADC00_out <= {
//        data_out[0], 1'b0,  data_out[1], 1'b0,  data_out[2], 1'b0, data_out[3], 1'b0,
//        data_out[4], 1'b0, data_out[5], 1'b0, data_out[6], 1'b0, data_out[7], 1'b0
//    };
//    ADC00_out <= {
//        1'b0, data_out[8],  1'b0, data_out[9],  1'b0, data_out[10], 1'b0, data_out[11],
//        1'b0, data_out[12], 1'b0, data_out[13], 1'b0, data_out[14], 1'b0, data_out[15]
//    };
	ADC01_out <= {
		data_out[16 + 0], data_out[16 + 8],  data_out[16 + 1], data_out[16 + 9],  data_out[16 + 2], data_out[16 + 10], data_out[16 + 3], data_out[16 + 11],
		data_out[16 + 4], data_out[16 + 12], data_out[16 + 5], data_out[16 + 13], data_out[16 + 6], data_out[16 + 14], data_out[16 + 7], data_out[16 +14]
	};
     	
	FR0_out <= data_out[39:32]; //Training pattern for bitslip state machine
	ADC10_out <= {
        data_out[40 + 0], data_out[40 + 8],  data_out[40 + 1], data_out[40 + 9],  data_out[40 + 2], data_out[40 + 10], data_out[40 + 3], data_out[40 + 11],
        data_out[40 + 4], data_out[40 + 12], data_out[40 + 5], data_out[40 + 13], data_out[40 + 6], data_out[40 + 14], data_out[40 + 7], data_out[40 + 15]
    };
//    ADC10_out <= {
//        data_out[40 + 0], 1'b0,  data_out[40 + 1], 1'b0,  data_out[40 + 2], 1'b0, data_out[40 + 3], 1'b0,
//        data_out[40 + 4], 1'b0, data_out[40 + 5], 1'b0, data_out[40 + 6], 1'b0, data_out[40 + 7], 1'b0
//    };
//    ADC10_out <= {
//        1'b0, data_out[40 + 8],  1'b0, data_out[40 + 9],  1'b0, data_out[40 + 10], 1'b0, data_out[40 + 11],
//        1'b0, data_out[40 + 12], 1'b0, data_out[40 + 13], 1'b0, data_out[40 + 14], 1'b0, data_out[40 + 15]
//    };
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

wire [N_LVDS-1:0] data_in_from_pins, data_in_from_pins_dly; 		// between the input buffer and the delay

//////////////////////Overall bitslips to align with frame\\\\\\\\\\\\\\\\\\\\\\\\\\\

parameter TP = 8'b00001111;

//Two states, CHECK if we are matched up, or TOGGLE BITSLIP
localparam CHECK = 1'b0;
localparam TOGGLE = 1'b1;
//Combinatorial part
function bit_slip_next_state;
    input [7:0] training_pattern;
    input [7:0] comp_val;
    input       state;
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
reg BS_state0;
reg bit_slip0;
reg [1:0] counter0; //Must be high for 1 cycle, low for one cycle
//BITSLIP is synchronous to CLKDIV
always @(posedge clk_div) begin
    if (rst_in) begin
        BS_state0 <= CHECK;
        counter0 <= 2'b00;
        bit_slip0 <= 1'b0;                
    end
    else begin
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
reg BS_state1;
reg bit_slip1;
reg [1:0] counter1; //Must be high for 1 cycle, low for one cycle
//BITSLIP is synchronous to CLKDIV
always @(posedge clk_div) begin
    if (rst_in) begin
        BS_state1 <= CHECK;
        counter1 <= 2'b00;
        bit_slip1 <= 1'b0;                
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

////////////Additional bitslips to other channels\\\\\\\\\\\\\ 

parameter N00a = 3'b000, N00b = 3'b000, N01 = 3'b000, N10 = 3'b000, N11 = 3'b000;
//Slow clock to apply shifts for setparate channels (did not work at 100MHZ, use 1kHz, 
//or in variation of state machine above that included initial bitslips)
parameter div_f = 27'd000_100_000;
wire hz_clk;
clk_div #(
    .div_f(div_f)
)
hzClk(
    .clk(clk_in),
    .rst_in(1'b0),
    .div_clk(hz_clk)
);
reg [3:0] BScounter00a = 3'b000, BScounter00b = 3'b000, BScounter01 = 3'b000, BScounter10 = 3'b000, BScounter11 = 3'b000;
reg [2:0] hz_counter00a = 3'b000, hz_counter00b = 3'b000, hz_counter01 = 3'b000, hz_counter10 = 3'b000, hz_counter11 = 3'b000;
reg BSi00a, BSi00b, BSi01, BSi10, BSi11;

always @(posedge hz_clk) begin
    if (BScounter00a < N00a)
        hz_counter00a <= hz_counter00a + 3'b001;
    if (hz_counter00a == 3'b111 && BScounter00a < 3'b111) begin
        BScounter00a <= BScounter00a + 3'b001;
        BSi00a <= 1'b1;
    end
    else if (hz_counter00a == 3'b111 && BScounter00a == 3'b111) begin
        BScounter00a <= 3'b000;
        BSi00a <= 1'b1;
    end
    else 
        BSi00a <= 1'b0;
end

always @(posedge hz_clk) begin
    if (BScounter00b < N00b)
        hz_counter00b <= hz_counter00b + 3'b001;
    if (hz_counter00b == 3'b111 && BScounter00b < 3'b111) begin
        BScounter00b <= BScounter00b + 3'b001;
        BSi00b <= 1'b1;
    end
    else if (hz_counter00b == 3'b111 && BScounter00b == 3'b111) begin
        BScounter00b <= 3'b000;
        BSi00b <= 1'b1;
    end
    else 
        BSi00b <= 1'b0;
end

/*always @(posedge hz_clk) begin
    if (BScounter00 < N00)
        hz_counter00 <= hz_counter00 + 3'b001;
    if (hz_counter00 == 3'b111 && BScounter00 < 3'b111) begin
        BScounter00 <= BScounter00 + 3'b001;
        BSi00 <= 1'b1;
    end
    else if (hz_counter00 == 3'b111 && BScounter00 == 3'b111) begin
        BScounter00 <= 3'b000;
        BSi00 <= 1'b1;
    end
    else 
        BSi00 <= 1'b0;
end*/

always @(posedge hz_clk) begin
    if (BScounter01 < N01)
        hz_counter01 <= hz_counter01 + 3'b001;
    if (hz_counter01 == 3'b111 && BScounter01 < 3'b111) begin
        BScounter01 <= BScounter01 + 3'b001;
        BSi01 <= 1'b1;
    end
    else if (hz_counter01 == 3'b111 && BScounter01 == 3'b111) begin
        BScounter01 <= 3'b000;
        BSi01 <= 1'b1;
    end
    else 
        BSi01 <= 1'b0;
end

always @(posedge hz_clk) begin
    if (BScounter10 < N10)
        hz_counter10 <= hz_counter10 + 3'b001;
    if (hz_counter10 == 3'b111 && BScounter10 < 3'b111) begin
        BScounter10 <= BScounter10 + 3'b001;
        BSi10 <= 1'b1;
    end
    else if (hz_counter10 == 3'b111 && BScounter10 == 3'b111) begin
        BScounter10 <= 3'b000;
        BSi10 <= 1'b1;
    end
    else 
        BSi10 <= 1'b0;
end

always @(posedge hz_clk) begin
    if (BScounter11 < N11)
        hz_counter11 <= hz_counter11 + 3'b001;
    if (hz_counter11 == 3'b111 && BScounter11 < 3'b111) begin
        BScounter11 <= BScounter11 + 3'b001;
        BSi11 <= 1'b1;
    end
    else if (hz_counter11 == 3'b111 && BScounter11 == 3'b111) begin
        BScounter11 <= 3'b000;
        BSi11 <= 1'b1;
    end
    else 
        BSi11 <= 1'b0;
end

assign bitslip_out = {BSi01, BScounter01};

wire [N_LVDS-1:0] BS;
assign BS = {bit_slip0, (bit_slip0 || BSi11), (bit_slip0 || BSi11), (bit_slip0 || BSi10), (bit_slip0 || BSi10), bit_slip0, (bit_slip0 || BSi01), (bit_slip0 || BSi01), (bit_slip0 || BSi00b), (bit_slip0 || BSi00a)};

///////////ADC input serializers\\\\\\\\\\\\\\\

// 1 delay is ~76ps, 1/16 (800MHz) clock cycle
// Delays <4 are less than 1/4 cycle, added 1 cycle (16) then subtract 4
function integer delay_value;
    input integer num;
    begin
        case(num) 
        //16 should be a full clock cycle
            0: delay_value  = 0;  // 6 transition was 7 for ADC/DAC only
            1: delay_value  = 0;  // 4 transition was 5 for ADC/DAC only
            2: delay_value  = 10; // 2 transition                      
            3: delay_value  = 10; // 2 transition
            4: delay_value  = 10; // 2 transition
            5: delay_value  = 9; // 1 transition
            6: delay_value  = 9; // 1 transition
            7: delay_value  = 9; // 1 transition
            8: delay_value  = 9; // 1 transition
            9: delay_value  = 0;  // not set because FR0 is used for this ADC as well
            default:
                delay_value = 0;
        endcase
    end                               
endfunction

//localparam integer dtest0 = delay_value(0);
//localparam integer dtest1 = delay_value(1);
//localparam integer dtest2 = delay_value(2);
//localparam integer dtest3 = delay_value(3);
//localparam integer dtest4 = delay_value(4);
//localparam integer dtest5 = delay_value(5);
//localparam integer dtest6 = delay_value(6);
//localparam integer dtest7 = delay_value(7);
//localparam integer dtest8 = delay_value(8);
//localparam integer dtest9 = delay_value(9);

BUFG BUFG_clk200 (
	.O(clk200), 		// 1-bit output: Clock output
	.I(clk200_int) 	// 1-bit input: Clock input
);

// IDELAYCTRL: IDELAYE2/ODELAYE2 Tap Delay Value Control
(* IODELAY_GROUP = "ADCinputdelay" *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
IDELAYCTRL inputdelay (
    .RDY(), // 1-bit output: Ready output
    .REFCLK(clk200), // 1-bit input: Reference clock input
    .RST(rst_in) // 1-bit input: Active high reset input
);

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
		
	// IDELAYE2: Input Fixed or Variable Delay Element
    (* IODELAY_GROUP = "ADCinputdelay" *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
    IDELAYE2 #(
        .CINVCTRL_SEL("FALSE"),         // Enable dynamic clock inversion (FALSE, TRUE)
        .DELAY_SRC("IDATAIN"),          // Delay input (IDATAIN, DATAIN)
        .HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
        .IDELAY_TYPE("FIXED"),          // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
        .IDELAY_VALUE(delay_value(pin_count)),               // Input delay tap setting (0-31)
        //.IDELAY_VALUE(dval[pin_count]),
        .PIPE_SEL("FALSE"),             // Select pipelined mode, FALSE, TRUE
        .REFCLK_FREQUENCY(200.0),       // IDELAYCTRL clock input frequency in MHz (190.0-210.0).
        .SIGNAL_PATTERN("DATA")         // DATA, CLOCK input signal
    )
    IDELAYE2_inst (
        .CNTVALUEOUT(),                             // 5-bit output: Counter value output
        .DATAOUT(data_in_from_pins_dly[pin_count]), // 1-bit output: Delayed data output
        .C(),                                       // 1-bit input: Clock input
        .CE(),                                      // 1-bit input: Active high enable increment/decrement input
        .CINVCTRL(),                                // 1-bit input: Dynamic clock inversion input
        .CNTVALUEIN(),                              // 5-bit input: Counter value input
        .DATAIN(),                                  // 1-bit input: Internal delay data input
        .IDATAIN(data_in_from_pins[pin_count]),     // 1-bit input: Data input from the I/O
        .INC(),                                     // 1-bit input: Increment / Decrement tap delay input
        .LD(),                                      // 1-bit input: Load IDELAY_VALUE input
        .LDPIPEEN(),                                // 1-bit input: Enable PIPELINE register to load data input
        .REGRST(rst_in)                             // 1-bit input: Active-high reset tap-delay input
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
		.IOBDELAY("BOTH"),                // NONE, BOTH, IBUF, IFD
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
		.DDLY(data_in_from_pins_dly[pin_count]), 			// 1-bit input: Serial data from IDELAYE2
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