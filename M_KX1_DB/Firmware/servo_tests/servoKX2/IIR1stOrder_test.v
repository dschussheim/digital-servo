`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
//////////////////////////////////////////////////////////////////////////////////

module IIR1stOrder_test(

	//100 MHz clock
	input	wire			clk,
	//led to tell you when reset happens
	output	wire			rst_led,
	//LEDs for locked/unlocked
	output  reg             locked_out,
	output  reg             notlocked_out,
	output  reg             notlocked1s_out,
    
    //output wire [3:0] led_out,
      
	//\\\\\\\\\ADCs//////////\\
	
	//ADC SPI IOs
    output 	wire			adc_sck,
    output 	wire			adc_sdi,
    output	wire			adc_scs1,
    output	wire			adc_scs2,
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
    

	//\\\\\\\\\\DACs//////////\\

	output	wire	[15:0]	D0_out_p,
	output	wire	[15:0]	D0_out_n,

    //output	wire	[15:0]	D1_out_p,
	//output	wire	[15:0]	D1_out_n,

	output	wire			CLK_out_p,
	output	wire			CLK_out_n,

	output	wire			DCI0_out_p,
	output	wire			DCI0_out_n,

	//output	wire			DCI1_out_p,
	//output	wire			DCI1_out_n,

    output 	wire			dac_csb0,
	output 	wire			dac_rst0,
	//output 	wire			dac_csb1,
	//output 	wire			dac_rst1,
	output	wire			dac_sdi,
	output	wire			dac_sck,
	input   wire			dac_sdo,
	
//	output	wire			sdo_out,
		
//	output	wire			DCO1_in,
    input   wire		    DCO0_p,
	input   wire		    DCO0_n,
	//input   wire		    DCO1_p,
	//input   wire		    DCO1_n,
	
	input   wire            serial_in,
	output  wire            serial_clk_out,
	output  wire            serial_trig_out
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

///////////////////reset////////////////////

wire rst_in;
reset startup_reset (
    .clk_in(clk_in),
    .rst(rst_in)
);
assign rst_led = ~rst_in;
///////////////End of reset/////////////////
    
///////////////////Inputs///////////////////
parameter    CLKDIV = 8;    //100MHz clock
   
wire [15:0] trans_in, e_in, ADC20_out, ADC21_out;
    
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
     .spi_sck_out(), 
     .spi_sdo_out(), 
     .spi_sdi_in(adc_sdo), 
     .ENC_out_p(), 
     .ENC_out_n(), 
     .DCO_in_p(adc_DCO2_p), 
     .DCO_in_n(adc_DCO2_n), 
     .FR_in_p(FR2_p), 
     .FR_in_n(FR2_n), 
     .D0_in_p(D20_p), 
     .D0_in_n(D20_n), 
     .D1_in_p(D21_p), 
     .D1_in_n(D21_n), 
     //.ADC0_out(trans_in), 
     //.ADC1_out(e_in), 
     .FR_out()
);    


///////////////End of inputs///////////////

//////////////Deserializer for inputting new parameters////////////
wire signed [34:0] a1_PD_new, b0_PD_new, b1_PD_new, a1_PI_new, b0_PI_new, b1_PI_new, minval_new, sweep_max_new, sweep_min_new, sweep_stepsize_new;
wire TPmatchOut;
deserializer new_param_deser(
    .clk_in(clk_in),
    .rst_in(rst_in),
    .in(serial_in),
    .clkDout(serial_clk_out),
    .trig_out(serial_trig_out),
    .TPmatchOut(TPmatchOut),
    .num0(a1_PD_new),
    .num1(b0_PD_new),
    .num2(b1_PD_new),
    .num3(a1_PI_new),
    .num4(b0_PI_new),
    .num5(b1_PI_new),
    .num6(minval_new),
    .num7(sweep_max_new),
    .num8(sweep_min_new),
    .num9(sweep_stepsize_new),
    .num10(),
    .num11()
);
//assign rst_led = ~TPmatchOut;
///////////////////////End of deserializer/////////////////////////

///////////////Relock sweep////////////////

localparam real Vmin = 0.25;
reg signed [15:0] minval = Vmin*16'b0111_1111_1111_1111; 

reg relock_on;
always @(posedge clk_in)
    relock_on <= ($signed(trans_in) < $signed(minval));
//assign serial_clk_out = relock_on;
//assign rst_led = ~relock_on;

wire [15:0] relock_out;
reg signed [15:0] sweep_max = (0.65625)*(16'b0111_1111_1111_1111);
reg signed [15:0] sweep_min = (0.1875)*(16'b0111_1111_1111_1111); 
reg        [31:0] sweep_stepsize = 32'b0000_0000_0000_0000_0000_0000_1000_0000; //Change LSB every 128 clock cycles
Sweep relockSweep(
    .clk_in(clk_in),
    .on_in(1'b1),
    .hold_in(~relock_on),
    .minval_in(sweep_min),
    .maxval_in(sweep_max),
    .stepsize_in(sweep_stepsize),
    .signal_out(relock_out)
);

always @(posedge clk_in) begin
    if (TPmatchOut) begin
        //lsb's padded with zeros
        minval <= minval_new[34:19];
        //sweep_max <= sweep_max_new[34:19];
        //sweep_min <= sweep_min_new[34:19];
        sweep_stepsize <= sweep_stepsize_new[34:3];
    end
end

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
                if (relock_on)
                    relock_next_state = UNLOCKED; //If we were locked and we fall below minimum, set to unlocked
                else
                    relock_next_state = LOCKED; //Otherwise we are still locked
             UNLOCKED:
                if (relock_on)
                    relock_next_state = UNLOCKED; //If we are still unlocked stay unlocked
                else
                    relock_next_state = UNLOCKED1S; //Otherwise we are locked and can start 1s counter
            UNLOCKED1S:
                if (relock_on)
                    relock_next_state = UNLOCKED; //If we fall out nof lock again, set state to unlocked
                else if ( (~relock_on) && (counter < 28'h5F5E100) ) 
                    relock_next_state = UNLOCKED1S; //If we are locked, but still counting, stay in counter state
                else
                    relock_next_state = LOCKED; //If we are done counting and still locked, set to locked

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
    if (relock_state == LOCKED)
        relock_counter <= 1'b0;
end

//////////End of relock/////////////

////////PID///////////

//default PID parameters
localparam real Pd = 0.06;          
localparam real Pi = 1;
localparam real I  = 400;       
localparam real D  = 0.7e-6;       
localparam real fc = 1e7;        //Rolloff requency [15, 90] dB, [32Hz, 1GHz] makes no sense to go above 100MHz though
localparam real Ts = 1e-8;  //10ns (sample period)
localparam real pi = 3.14159265358979;

//Have servo on if we see enough transmission
wire PID_on;
assign PID_on = ~relock_on;

//IIR filter parameter defaults

//PD\\

//Ts = 10^-8 for 100MHz sample clock frequency
//Definitions of filter coefficients. Added scale factors to make gains resonable

reg signed [34:0] a1_PD = (1-2*pi*Ts*fc)*(2**26); // (1-2*pi*Ts*fc)*2^26
// D/P1*(fc/(1+pi*Ts*fc)) + P2*((pi*Ts*fc)/(1+pi*Ts*fc))
reg signed [34:0] b0_PD = ((D/Pi)*(fc/(1+pi*Ts*fc))+ Pd*((pi*Ts*fc)/(1+pi*Ts*fc)))*(2**26);
//-D/P1*(fc/(1+pi*Ts*fc)) + P2*((pi*Ts*fc)/(1+pi*Ts*fc))
reg signed [34:0] b1_PD = (Pd*((pi*Ts*fc)/(1+pi*Ts*fc))-1*D/Pi*(fc/(1+pi*Ts*fc)))*(2**26);
real a1PD = (1-2*pi*Ts*fc)*(2**26);
real b0PD = ((D/Pi)*(fc/(1+pi*Ts*fc))+ Pd*((pi*Ts*fc)/(1+pi*Ts*fc)))*(2**26);
real b1PD = (Pd*((pi*Ts*fc)/(1+pi*Ts*fc))-1*D/Pi*(fc/(1+pi*Ts*fc)))*(2**26);
//PI\\

//Definitions of filter coefficients. Added scale factors to make gains resonable
//All coefficients scaled by 2^26
reg signed [34:0] a1_PI = 1*(2**26);
// Pi + I/Pd*pi*Ts
reg signed [34:0] b0_PI = (Pi+(I*pi*Ts)/Pd)*(2**26);
//-Pi + I/Pd*pi*Ts 
reg signed [34:0] b1_PI = (I/Pd*pi*Ts-Pi)*(2**26);

real a1pi = 1*(2**26);
real b0pi = (Pi+(I*pi*Ts)/Pd)*(2**26);
real b1pi = (I*pi*Ts/Pd-Pi)*(2**26);

//Error signal out
wire [15:0] e_out;
//Servo module
PIDservo_changeParam PID (
    .clk_in(clk_in),
    .on_in(PID_on),
    .a1_PD(a1_PD),
    .b0_PD(b0_PD),
    .b1_PD(b1_PD),
    .a1_PI(a1_PI),
    .b0_PI(b0_PI),
    .b1_PI(b1_PI),    
    .e_in(e_in),
    .e_out(e_out)
);




always @(posedge clk_in) begin
    if (TPmatchOut) begin
        a1_PD <= a1_PD_new;
        b0_PD <= b0_PD_new;
        b1_PD <= b1_PD_new;
        a1_PI <= a1_PI_new;
        b0_PI <= b0_PI_new;
        b1_PI <= b1_PI_new;
    end
end

/////End of PID///////

////////Output to DAC//////

wire signed [15:0] signal_out = relock_out + e_out;

// Instantiate DAC1 driver module
AD9783 #(
	.CLKDIV(4) //200MHz clock
)
 DAC0 (
     .clk_in(clk_in), 
     .rst_in(rst_in), 
     .DAC0_in(e_in), 
     .DAC1_in(~e_in),  
     .CLK_out_p(CLK_out_p), 
     .CLK_out_n(CLK_out_n), 
     .DCI_out_p(DCI0_out_p), 
     .DCI_out_n(DCI0_out_n), 
     .D_out_p(D0_out_p), 
     .D_out_n(D0_out_n),
	 .rst_out(dac_rst0),
	 .spi_scs_out(dac_csb0),
	 .spi_sck_out(dac_sck),
	 .spi_sdo_out(dac_sdi),
	 .spi_sdi_in(dac_sdo),
	 .cmd_trig_in(1'b0),
	 .cmd_addr_in(16'b0),
	 .cmd_data_in(16'b0),
	 .cmd_data_out(),
	 .clk_out()
    );
    
/*
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
    */
////////End of output to DAC///////
    
endmodule
