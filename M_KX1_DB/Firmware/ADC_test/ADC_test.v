`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:04:48 06/07/2017 
// Design Name: 
// Module Name:    ADC_test 
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
module ADC_test(
    
	 //Common inputs
	 input	wire				clk,
    
    output 	wire				sck,
    output 	wire				sdo,
    input 	wire				sdi,
    
	 output 	wire				ENC_p,
    output 	wire				ENC_n,
    
	 //First ADC
	 input 	wire				DCO1_p,
    input 	wire				DCO1_n,
    input 	wire				FR1_p,
    input 	wire				FR1_n,
    
	 input 	wire	[1:0] 	D10_p,
    input 	wire	[1:0] 	D10_n,
    input 	wire	[1:0] 	D11_p,
    input 	wire	[1:0] 	D11_n,
    
	 output 	reg	 			ADC1_out,
//    output 	wire	[7:0] 	FR1_out,
	 
	 output	wire				scs1,
	 
	 //second ADC
	 input 	wire				DCO2_p,
    input 	wire				DCO2_n,
    input 	wire				FR2_p,
    input 	wire				FR2_n,
    
	 input 	wire	[1:0] 	D20_p,
    input 	wire	[1:0] 	D20_n,
    input 	wire	[1:0] 	D21_p,
    input 	wire	[1:0] 	D21_n,
    
	 output 	reg			 	ADC2_out,
//    output 	wire	[7:0] 	FR2_out,
	 
	 output	wire				scs2,
	 
	 output	wire				clk_led,		
	 output	reg				rst_led
    );

//Reset
reg	rst_in;
initial	rst_in = 0;
initial	rst_led = ~rst_in;
wire	clk_div;

//Clock input buffer
IBUFG #(
	.IBUF_LOW_PWR("TRUE"), 		// Low power="TRUE", Highest performance="FALSE"
	.IOSTANDARD("HSTL_II") 	// Specify the input I/O standard
) IBUFG_inst (
	.O(clk_in), 	// Clock buffer output
	.I(clk) 			// Clock buffer input (connect directly to top-level port)
);
	 
//LED clock at 1Hz	 
clk_div	#(
	.div_f(27'b100110001001011010000000)	//Divide by 10,000,000 for 1 Hz clock to strobe an LED.
	)
LED_clk (
    .clk(clk_in), 
    .rst_in(rst_in), 
    .div_clk(clk_led)
    );

//Reset about every minute.
localparam	max = 30'b100011110000110100011000000000; //60*10,000,000 (number of cycles of clk_in/minute)
localparam	rst_on = 30'b100001111110011000001010000000; // turn reset on after this many counts
reg	counter;

initial counter = 30'b0;

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
		counter <= 0;
		rst_in <= 0;
		rst_led <= ~rst_in;
	end
end

wire	[15:0]	ADC10_out, ADC11_out;

LTC2195 ADC1 (
    .clk_in(clk_in), 
    .rst_in(rst_in), 
    .cmd_trig_in(), 
    .cmd_addr_in(), 
    .cmd_data_in(), 
    .spi_scs_out(scs1), 
    .spi_sck_out(sck), 
    .spi_sdo_out(sdo), 
    .spi_sdi_in(sdi), 
    .ENC_out_p(ENC_p), 
    .ENC_out_n(ENC_n), 
    .DCO_in_p(DCO1_p), 
    .DCO_in_n(DCO1_n), 
    .FR_in_p(FR1_p), 
    .FR_in_n(FR1_n), 
    .D0_in_p(D10_p), 
    .D0_in_n(D10_n), 
    .D1_in_p(D11_p), 
    .D1_in_n(D11_n), 
    .ADC0_out(ADC10_out), 
    .ADC1_out(ADC11_out), 
    .FR_out(FR1_out)
    );
//For now, sending one bit to an LED for testing. Choose the but you want.
always @(posedge clk_in) begin
	ADC1_out = ADC10_out[15];
//	ADC1_out = ADC10_out[14];
//	ADC1_out = ADC10_out[13];
//	ADC1_out = ADC10_out[12];
//	ADC1_out = ADC10_out[11];
//	ADC1_out = ADC10_out[10];
//	ADC1_out = ADC10_out[9];
//	ADC1_out = ADC10_out[8];
//	ADC1_out = ADC10_out[7];
//	ADC1_out = ADC10_out[6];
//	ADC1_out = ADC10_out[5];
//	ADC1_out = ADC10_out[4];
//	ADC1_out = ADC10_out[3];
//	ADC1_out = ADC10_out[2];
//	ADC1_out = ADC10_out[1];
//	ADC1_out = ADC10_out[0];
//	ADC1_out = ADC11_out[15];
//	ADC1_out = ADC11_out[14];
//	ADC1_out = ADC11_out[13];
//	ADC1_out = ADC11_out[12];
//	ADC1_out = ADC11_out[11];
//	ADC1_out = ADC11_out[10];
//	ADC1_out = ADC11_out[9];
//	ADC1_out = ADC11_out[8];
//	ADC1_out = ADC11_out[7];
//	ADC1_out = ADC11_out[6];
//	ADC1_out = ADC11_out[5];
//	ADC1_out = ADC11_out[4];
//	ADC1_out = ADC11_out[3];
//	ADC1_out = ADC11_out[2];
//	ADC1_out = ADC11_out[1];
//	ADC1_out = ADC11_out[0];
end

wire	[15:0]	ADC20_out, ADC21_out;

LTC2195 ADC2 (
    .clk_in(clk_in), 
    .rst_in(rst_in), 
    .cmd_trig_in(), 
    .cmd_addr_in(), 
    .cmd_data_in(), 
    .spi_scs_out(scs2), 
    .spi_sck_out(), 
    .spi_sdo_out(), 
    .spi_sdi_in(sdi), 
    .ENC_out_p(), 
    .ENC_out_n(), 
    .DCO_in_p(DCO2_p), 
    .DCO_in_n(DCO2_n), 
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

always @(posedge clk_in) begin
	ADC2_out = ADC20_out[15];
//	ADC2_out = ADC20_out[14];
//	ADC2_out = ADC20_out[13];
//	ADC2_out = ADC20_out[12];
//	ADC2_out = ADC20_out[11];
//	ADC2_out = ADC20_out[10];
//	ADC2_out = ADC20_out[9];
//	ADC2_out = ADC20_out[8];
//	ADC2_out = ADC20_out[7];
//	ADC2_out = ADC20_out[6];
//	ADC2_out = ADC20_out[5];
//	ADC2_out = ADC20_out[4];
//	ADC2_out = ADC20_out[3];
//	ADC2_out = ADC20_out[2];
//	ADC2_out = ADC20_out[1];
//	ADC2_out = ADC20_out[0];
//	ADC2_out = ADC21_out[15];
//	ADC2_out = ADC21_out[14];
//	ADC2_out = ADC21_out[13];
//	ADC2_out = ADC21_out[12];
//	ADC2_out = ADC21_out[11];
//	ADC2_out = ADC21_out[10];
//	ADC2_out = ADC21_out[9];
//	ADC2_out = ADC21_out[8];
//	ADC2_out = ADC21_out[7];
//	ADC2_out = ADC21_out[6];
//	ADC2_out = ADC21_out[5];
//	ADC2_out = ADC21_out[4];
//	ADC2_out = ADC21_out[3];
//	ADC2_out = ADC21_out[2];
//	ADC2_out = ADC21_out[1];
//	ADC2_out = ADC21_out[0];
end

endmodule
