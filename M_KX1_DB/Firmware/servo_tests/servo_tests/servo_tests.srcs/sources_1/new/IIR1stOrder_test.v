`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
//////////////////////////////////////////////////////////////////////////////////

module IIR1stOrder_test(

	//100 MHz clock
	input	wire			clk,
	//led to tell you when reset happens
	output	reg				rst_led,
   
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
	input		wire		DCO1_n,

    output wire [2:0] ADC_out

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
    
//1Hz clock to run reset logic
clk_div    #(
    .div_f(27'b1100100)    //Divide by 100 for 1 MHz clock to strobe an LED.
    )
rstLEDclk(
    .clk(clk_in),
    .rst_in(1'b0),
    .div_clk(DIVclk)
    );
    
//Reset about every minute.
//localparam	max = 30'h3938700; 		//60*1,000,000 (number of cycles of clk_in/minute)
//localparam	rst_on = 30'h38BE5E0; 	// turn reset on after 59,500,000 cycles, and keep on for .5 second
localparam	max = 30'h989680; 		//10*1,000,000 (number of cycles of clk_in/minute)
localparam	rst_on = 30'h895440; 	// turn reset on after 9,999,990 cycles, and keep on for 100 ns

reg [29:0] counter = 30'b0;
reg        rst_in = 1'b0;

always @(posedge DIVclk) begin
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

assign ADC_out[2:0] = ~trans_in[15:13];
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

/*
///////////////////Limit///////////////////

localparam minval_in = 16'b1000_0000_0000_0000;
localparam maxval_in = 16'b0111_1111_1111_1111;

Limit lim_trans (
    .clk_in(clk_in),
    .minval_in(minval_in),
    .maxval_in(maxval_in),
    .center_when_railed_in(cwri),
    .signal_in(trans_in),
    .railed_out(limit_railed),
    .clear_out(lim_clr_trans),
    .signal_out(trans_out)
);

Limit lim_hc (
    .clk_in(clk_in),
    .minval_in(minval_in),
    .maxval_in(maxval_in),
    .center_when_railed_in(cwri),
    .signal_in(ADC11_out),
    .railed_out(limit_railed),
    .clear_out(lim_clr_hc),
    .signal_out(e_in)
);

///////////////End of limit////////////////
*/

///////////////Relock///////////////

reg signed [15:0] maxval = 16'b0100_0000_0000_0000; //0.5V
reg signed [15:0] minval = 16'b1100_0000_0000_0000; //-0.5V
wire [15:0] relock_out;

reg [31:0] stepsize = 32'b0000_0000_0000_0000_0001_0000_0000_0000; //Change LSB every 128 clock cycles
wire clear_out, hold;


Relock relock_inst(
    .clk_in(clk_in),
    .on_in(1'b1),
    .minval_in(minval),
    .maxval_in(maxval),
    .stepsize_in(stepsize),
    .signal_in(trans_in),
    .railed_in(2'b00),
    .hold_in(1'b0),
    .hold_out(hold),
    .clear_out(clear_out),
    .signal_out(relock_out)
);

//////////End of relock/////////////

////////PID///////////

//PID parameters
parameter signed P = 2;          //[-40, 0] dB
parameter signed I  = 1e-1;       //[-30, 100] dB
parameter signed D  = 1e-1;       //[-100, 0] dB
parameter signed fc = 1e6;        //Rolloff requency [15, 90] dB, [32Hz, 1GHz] makes no sense to go above 100MHz though

wire [15:0] e_out;
//Servo module
PIDservo #(
    .P(P),
    .I(I),
    .D(D),
    .fc(fc)
)
PID (
    .clk_in(clk_in),
    .e_in(e_in),
    .e_out(e_out)
);

/////End of PID///////


/*
/////////IIRs//////////

//Inputs
//wire [1:0] railed_in;
//wire hold_in = 1'b0;
wire [15:0] e_int, e_out;
//IIR filter values
//PD with K = 0.2, g = 16, and f0 = 100kHz
//localparam signed [33:0] a1 = 34'h39dfbb0;
//localparam signed [33:0] b0 = 34'hc39c654;
//localparam signed [33:0] b1 = -34'hc262bde;
//I K = 1000, f0 = 1 Hz drifted negative over a few seconds.
//localparam signed [33:0] a1 = 34'h4000000;
//localparam signed [33:0] b0 = 34'h83c;
//localparam signed [33:0] b1 = 34'h83c;
//PI K = 1, g = 16, f0 = 10kHz
localparam signed [33:0] a1_0 = 34'h3fff5b5;
localparam signed [33:0] b0_0 = 34'h4004d35;
localparam signed [33:0] b1_0 = -34'h3ffa880;

IIRfilter1stOrder PI0 (
    .clk_in(clk_in),
    .on_in(1'b1),
    .a1_in(a1_0),
    .b0_in(b0_0),
    .b1_in(b1_0),
    //.railed_in(2'b00),
    //.hold_in(1'b0),
    .signal_in(e_in),
    .signal_out(e_int)
);

//PD with K = 0.2, g = 16, and f0 = 100kHz
localparam signed [33:0] a1_1 = 34'h39dfbb0;
localparam signed [33:0] b0_1 = 34'hc39c654;
localparam signed [33:0] b1_1 = -34'hc262bde;

IIRfilter1stOrder PD0 (
    .clk_in(clk_in),
    .on_in(1'b1),
    .a1_in(a1_1),
    .b0_in(b0_1),
    .b1_in(b1_1),
    //.railed_in(2'b00),
    //.hold_in(1'b0),
    .signal_in(e_int),
    .signal_out(e_out)
);
////////End of IIRs////////
*/
////////Output to DAC//////

// Instantiate DAC1 driver module
AD9783 #(
	.CLKDIV(4) //200MHz clock
)
 AD9783_inst1 (
     .clk_in(clk_in), 
     .rst_in(rst_in), 
     .DAC0_in(~e_out), 
     .DAC1_in(e_out), 
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
