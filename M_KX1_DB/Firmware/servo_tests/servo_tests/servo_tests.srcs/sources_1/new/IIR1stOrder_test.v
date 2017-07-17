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
	input		wire		DCO1_n

    //output      reg        count,
    //output      reg [1:0]  c_out
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
    
//Reset for 1s at start, then keep off.
/*localparam      max = 21'h100000;//2^20 ~1,000,000 cycles or 1s
reg             rst_in = 1'b0;
reg    [20:0]   counter = 21'b0; 
reg             count1 = 1'b0;
  
always @(posedge DIVclk) begin
   if (count1 == 1'b0 && counter < max) begin
          counter <= counter + 21'b1;
          rst_in <= 1'b0;
          rst_led <= ~rst_in;
      end
      else if (count == 1'b0 && counter == max) begin
          rst_in <= 1'b1;
          rst_led <= ~rst_in;
          count1 = 1'b1;
          counter = 21'b0;
      end
   else if (count1 == 1'b1 && counter < max) begin
          counter <= counter + 21'b1;
          rst_in <= 1'b1;
          rst_led <= ~rst_in;
          end
      else begin
          rst_in <= 1'b0;
          rst_led <= ~rst_in;
          counter = 21'b0;
      end
   count <= ~count1;
   c_out[1:0] <= ~counter[20:19];
end
*/

//Reset about every minute.
//localparam	max = 30'h3938700; 		//60*1,000,000 (number of cycles of clk_in/minute)
//localparam	rst_on = 30'h38BE5E0; 	// turn reset on after 59,500,000 cycles, and keep on for .5 second

localparam	max = 30'h989680; 		//10*1,000,000 (number of cycles of clk_in/minute)
localparam	rst_on = 30'h895440; 	// turn reset on after 9,000,000 cycles, and keep on for .5 second


reg [29:0] counter;
reg             rst_in = 1'b0;

always @(posedge DIVclk) begin
	if (counter < rst_on)	begin
		counter <= counter + 30'b1;
		rst_in <= 1'b0;
		rst_led <= ~rst_in;
		//bitslip <= 1'b0;
	end
	else if ( (counter >= rst_on) && (counter < max-30'b1) ) begin
		counter <= counter + 30'b1;
		rst_in <= 1'b1;
		rst_led <= ~rst_in;
		//bitslip <= 1'b1;
	end
	else	begin
		counter <= 1'b0;
		//rst_in <= 1'b0;
		rst_led <= ~rst_in;
	    //bitslip <= 1'b0;

	end
end

////////////End of reset stuff//////////////
    
parameter    CLKDIV = 8;    //10MHz clock
   
wire [15:0] ADC10_out;
wire [15:0] ADC11_out;
    
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
    .ADC0_out(ADC10_out), 
    .ADC1_out(ADC11_out), 
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
//Inputs
//wire [1:0] railed_in;
//wire hold_in = 1'b0;
wire [15:0] s_out;
//IIR filter values
//PD with K = 0.2, g = 16, and f0 = 100kHz
//localparam signed [33:0] a1 = 34'h39dfbb0;
//localparam signed [33:0] b0 = 34'hc39c654;
//localparam signed [33:0] b1 = -34'hc262bde;
//I K = 1000, f0 = 1 Hz drifted negative over a few seconds.
localparam signed [33:0] a1 = 34'h4000000;
localparam signed [33:0] b0 = 34'h83c;
localparam signed [33:0] b1 = 34'h83c;
//PI K = 1, g = 16, f0 = 10kHz
//localparam signed [33:0] a1 = 34'h3fff5b5;
//localparam signed [33:0] b0 = 34'h4004d35;
//localparam signed [33:0] b1 = -34'h3ffa880;

IIRfilter1stOrder IIR0 (
    .clk_in(clk_in),
    .on_in(1'b1),
    .a1_in(a1),
    .b0_in(b0),
    .b1_in(b1),
    .signal_in(ADC11_out),
    .signal_out(s_out)
);

// Instantiate DAC1 driver module
AD9783 #(
	.CLKDIV(4) //200MHz clock
)
 AD9783_inst1 (
     .clk_in(clk_in), 
     .rst_in(rst_in), 
     .DAC0_in(~s_out), 
     .DAC1_in(s_out), 
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
    
endmodule
