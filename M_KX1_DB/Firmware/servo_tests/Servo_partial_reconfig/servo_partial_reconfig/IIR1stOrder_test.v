`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
//////////////////////////////////////////////////////////////////////////////////

module IIR1stOrder_test(

	//100 MHz clock
	input	wire			clk,
	//led to tell you when reset happens
	output	reg				rst_led,
	//LEDs for locked/unlocked
	output  reg             locked_out,
	output  reg             notlocked_out,
	output  reg             notlocked1s_out,
      
	//\\\\\\\\\ADCs//////////\\
	
	//ADC SPI IOs
    output 	wire			adc_sck,
    output 	wire			adc_sdi,
    output	wire			adc_scs1,
   // output	wire			adc_scs2,
    input 	wire			adc_sdo,
	
	//Clock input for ADCs
	output 	wire			ENC_p,
    output 	wire			ENC_n,
	
	//First ADC data to FPGA
	//Data clock
	input 	wire			adc_DCO1_p,
    input 	wire			adc_DCO1_n,
	//Frame "enclosing" different sets of data
    input 	wire			FR1_p,
    input 	wire			FR1_n,
	//Data streams
	input 	wire	[1:0] 	D10_p,
    input 	wire	[1:0] 	D10_n,
    input 	wire	[1:0] 	D11_p,
    input 	wire	[1:0] 	D11_n,
	/*
	//Second ADC data to FPGA
	//Data clock
	input 	wire			adc_DCO2_p,
    input 	wire			adc_DCO2_n,
	//Frame "enclosing" different sets of data
    input 	wire			FR2_p,
    input 	wire			FR2_n,
    //Data streams
	input 	wire	[1:0] 	D20_p,
    input 	wire	[1:0] 	D20_n,
    input 	wire	[1:0] 	D21_p,
    input 	wire	[1:0] 	D21_n,
    */

	//\\\\\\\\\\DACs//////////\\

	output	wire	[15:0]	D1_out_p,
	output	wire	[15:0]	D1_out_n,

	output	wire			CLK_out_p,
	output	wire			CLK_out_n,

	output	wire			DCI1_out_p,
	output	wire			DCI1_out_n,

	output 	wire			dac_csb1,
	output 	wire			dac_rst1,
	output	wire			dac_sdi,
	output	wire			dac_sck,
	input   wire			dac_sdo,
	
//	output	wire			sdo_out,
		
//	output	wire			DCO1_in,
	input		wire		DCO1_p,
	input		wire		DCO1_n
    );
    
wire clk_int, clk_in, DIVclk;
    
//Clock input from FPGA module.
    
// IBUFG: Single-ended global clock input buffer
IBUFG #(
    .IBUF_LOW_PWR("FALSE"),     // Low power="TRUE", Highest performance="FALSE"
    .IOSTANDARD("HSTL_II")     // Specify the input I/O standard
) 
IBUFG_inst (
    .O(clk_int),    // Clock buffer output
    .I(clk)             // Clock buffer input (connect directly to top-level port)
);
    
// BUFG: Global Clock Simple Buffer
BUFG BUFG_inst (
    .O(clk_in), // 1-bit output: Clock output
    .I(clk_int) // 1-bit input: Clock input
);
   /* 
//1Hz clock to run reset logic
clk_div    #(
    .div_f(27'b1100100)    //Divide by 100 for 1 MHz clock to strobe an LED.
    )
rstLEDclk(
    .clk(clk_in),
    .rst_in(1'b0),
    .div_clk(DIVclk)
    );*/
    
//Reset about every minute.
//localparam	max = 30'h3938700; 		//60*1,000,000 (number of cycles of clk_in/minute)
//localparam	rst_on = 30'h38BE5E0; 	// turn reset on after 59,500,000 cycles, and keep on for .5 second
localparam	max = 30'h5dc; 		//1500n (10 seconds)
localparam	rst_on = 30'h3e8; 	// turn reset on after 9,000,000 cycles (9 seconds, and keep on for 100 ns

reg [29:0] counter = 30'b0;
reg        rst_in = 1'b0;
always @(posedge clk_in) begin
	if (counter < rst_on)	begin
		counter <= counter + 30'b1;
		rst_in <= 1'b0;
		rst_led <= ~rst_in;
	end
	else if ( (counter >= rst_on) && (counter < max-30'b1) ) begin
		counter <= counter + 30'b1;
		rst_in <= 1'b1;
		rst_led <= ~rst_in;
	end
	else	begin
		rst_in <= 1'b0;
		rst_led <= ~rst_in;
	end
end

////////////End of reset stuff//////////////
    
///////////////////Inputs///////////////////
parameter    CLKDIV = 8;    //10MHz clock
   
wire [15:0] trans_in;
wire [15:0] e_in;
    
LTC2195 #(
    .CLKDIV(CLKDIV)
)
ADC1 (
    .clk_in(clk_in), 
    .rst_in(rst_in), 
    .cmd_trig_in(), 
    .cmd_addr_in(), 
    .cmd_data_in(), 
    .spi_scs_out(adc_scs1), 
    .spi_sck_out(adc_sck), 
    .spi_sdo_out(adc_sdi), 
    .spi_sdi_in(adc_sdo), 
    .ENC_out_p(ENC_p), 
    .ENC_out_n(ENC_n), 
    .DCO_in_p(adc_DCO1_p), 
    .DCO_in_n(adc_DCO1_n), 
    .FR_in_p(FR1_p), 
    .FR_in_n(FR1_n), 
    .D0_in_p(D10_p), 
    .D0_in_n(D10_n), 
    .D1_in_p(D11_p), 
    .D1_in_n(D11_n), 
    .ADC0_out(trans_in), 
    .ADC1_out(e_in), 
    .FR_out()
);

/*  
wire    [15:0]    ADC20_out, ADC21_out, FR2_out;
    
LTC2195 #(
     .CLKDIV(CLKDIV)
)
ADC2 (
     .clk_in(clk_in), 
     .rst_in(rst_in), 
     .cmd_trig_in(), 
     .cmd_addr_in(), 
     .cmd_data_in(), 
     .spi_scs_out(adc_scs2),   
     .spi_sck_out(adc_sck), 
     .spi_sdo_out(adc_sdi), 
     .spi_sdi_in(adc_sdo), 
     .ENC_out_p(ENC_p), 
     .ENC_out_n(ENC_n), 
     .DCO_in_p(adc_DCO2_p), 
     .DCO_in_n(adc_DCO2_n), 
     .FR_in_p(FR2_p), 
     .FR_in_n(FR2_n), 
     .D0_in_p(D20_p), 
     .D0_in_n(D20_n), 
     .D1_in_p(D21_p), 
     .D1_in_n(D21_n), 
     .ADC0_out(ADC20_out), 
     .ADC1_out(ADC21_out), 
     .FR_out(FR2_out)
);    
*/

///////////////End of inputs///////////////

///////////////Set servo and sweep parameters//////////////

wire signed [34:0] a1_PI, b0_PI, b1_PI, a1_PD, b0_PD, b1_PD;
wire signed [15:0] sweep_min, sweep_max;
wire        [31:0] sweep_stepsize;

set_param sp(
    .a1_PI(a1_PI),
    .b0_PI(b0_PI),
    .b1_PI(b1_PI),
    .a1_PD(a1_PD),
    .b0_PD(b0_PD),
    .b1_PD(b1_PD),
    .sweep_amp_min(sweep_min),
    .sweep_amp_max(sweep_max),
    .sweep_stepsize(sweep_stepsize)
);

///////////////End of set servo and sweep parameters//////////////

///////////////Relock sweep////////////////

localparam real Vmin = 0.5;
localparam signed [15:0] minval = Vmin*16'b0111_1111_1111_1111; 

reg sweep_hold;

always @(posedge clk_in) begin
    if ($signed(trans_in) < $signed(minval)) begin
        sweep_hold = 1'b0;
    end
    else begin
        sweep_hold = 1'b1;
    end
end

wire [15:0] relock_out;
Sweep relockSweep(
    .clk_in(clk_in),
    .on_in(1'b1),
    .hold_in(sweep_hold),
    .minval_in(sweep_min),
    .maxval_in(sweep_max),
    .stepsize_in(sweep_stepsize),
    .signal_out(relock_out)
);

//State machine for relock LEDs
localparam LOCKED       = 3'b100;
localparam UNLOCKED     = 3'b010;
localparam UNLOCKED1S   = 3'b101;
//Combinatorial part
function [2:0] relock_next_state;
    input [15:0] signal_in;
    input [2:0]  state;
    input [27:0] counter;
    begin 
        case(state)
            LOCKED:
                if ($signed(signal_in) < $signed(minval))
                    relock_next_state = UNLOCKED; //If we were locked and we fall below minimum, set to unlocked
                else
                    relock_next_state = LOCKED; //Otherwise we are still locked
             UNLOCKED:
                if ($signed(signal_in) < $signed(minval))
                    relock_next_state = UNLOCKED; //If we are still unlocked stay unlocked
                else
                    relock_next_state = UNLOCKED1S; //Otherwise we are locked and can start 1s counter
            UNLOCKED1S:
                if ($signed(signal_in) < $signed(minval))
                    relock_next_state = UNLOCKED; //If we fall out nof lock again, set state to unlocked
                else if ( ($signed(signal_in) >= $signed(minval) ) && (counter < 28'h5F5E100) ) 
                    relock_next_state = UNLOCKED1S; //If we are locked, but still counting, stay in counter state
                else if (($signed(signal_in) >= $signed(minval) ) && (counter == 28'h5F5E100) )
                    relock_next_state = LOCKED; //If we are done counting and still locked, set to locked
                else
                    relock_next_state = UNLOCKED; //Otherwise we are unlocked
            default:
                relock_next_state = LOCKED;
        endcase
    end
endfunction
//Sequential part
reg [27:0] relock_counter = 28'b0; //Counter for led that stays on 1s after relock acquired
reg [2:0] relock_state;
always @(posedge clk_in) begin
    relock_state <= relock_next_state(trans_in, relock_state, relock_counter);
    locked_out <= ~relock_state[2];
    notlocked_out <= ~relock_state[1];
    notlocked1s_out <= ~relock_state[0];
    if (relock_state == UNLOCKED1S)
        relock_counter <= relock_counter + 28'b1;
end

//////////End of relock/////////////

////////PID///////////

//PID parameters
parameter real Pd = 1.0;          //[-40, 0] dB
parameter real Pi = 0.0137;
parameter real I  = 409.6;       //[-30, 100] dB
parameter real D  = 0;       //[-100, 0] dB
parameter real fc = 1e6;        //Rolloff requency [15, 90] dB, [32Hz, 1GHz] makes no sense to go above 100MHz though

wire PID_on;
assign PID_on = ($signed(trans_in) < $signed(minval)) ? 1'b0 : 1'b1;

wire [15:0] e_out;
//Servo module
PIDservo #(
.Pd(Pd),
    .Pi(PI),
    .I(I),
    .D(D)   
)
PID (
    .clk_in(clk_in),
    .on_in(PID_on), 
    .e_in(e_in),
    .e_out(e_out)
);

/////End of PID///////

////////Output to DAC//////

wire signed [15:0] signal_out = relock_out + e_out;

// Instantiate DAC1 driver module
AD9783 #(
	.CLKDIV(4) //200MHz clock
)
 AD9783_inst1 (
     .clk_in(clk_in), 
     .rst_in(rst_in), 
     .DAC0_in(~signal_out), 
     .DAC1_in(signal_out), 
     .CLK_out_p(CLK_out_p), 
     .CLK_out_n(CLK_out_n), 
     .DCI_out_p(DCI1_out_p), 
     .DCI_out_n(DCI1_out_n), 
     .D_out_p(D1_out_p), 
     .D_out_n(D1_out_n),
	 .rst_out(dac_rst1),
	 .spi_scs_out(dac_csb1),
	 .spi_sck_out(dac_sck),
	 .spi_sdo_out(dac_sdi),
	 .spi_sdi_in(dac_sdo),
	 .cmd_trig_in(1'b0),
	 .cmd_addr_in(16'b0),
	 .cmd_data_in(16'b0),
	 .cmd_data_out(),
	 .clk_out()
    );
    
////////End of output to DAC///////
    
endmodule
