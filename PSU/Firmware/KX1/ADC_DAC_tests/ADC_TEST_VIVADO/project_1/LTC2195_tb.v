`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Testbench for modified LTC2195 driver. BITSLIP works fine.
// 
////////////////////////////////////////////////////////////////////////////////

module LTC2195_tb;

	// Inputs
	reg clk_in;
	reg rst_in;
	reg cmd_trig_in;
	reg [15:0] cmd_addr_in;
	reg [15:0] cmd_data_in;
	reg spi_sdi_in;
	reg DCO_in_p;
	reg DCO_in_n;
	reg FR_in_p;
	reg FR_in_n;
	reg [1:0] D0_in_p;
	reg [1:0] D0_in_n;
	reg [1:0] D1_in_p;
	reg [1:0] D1_in_n;
    
	// Outputs
	wire spi_scs_out;
	wire spi_sck_out;
	wire spi_sdo_out;
	wire ENC_out_p;
	wire ENC_out_n;
	wire [15:0] ADC0_out;
	wire [15:0] ADC1_out;
	wire [7:0] FR_out;

	// Instantiate the Unit Under Test (UUT)
	LTC2195 #(
		.CLKDIV(8)
	)
	uut (
		.clk_in(clk_in), 
		.rst_in(rst_in), 
		.cmd_trig_in(cmd_trig_in), 
		.cmd_addr_in(cmd_addr_in), 
		.cmd_data_in(cmd_data_in), 
		.spi_scs_out(spi_scs_out), 
		.spi_sck_out(spi_sck_out), 
		.spi_sdo_out(spi_sdo_out), 
		.spi_sdi_in(spi_sdi_in), 
		.ENC_out_p(ENC_out_p), 
		.ENC_out_n(ENC_out_n), 
		.DCO_in_p(DCO_in_p), 
		.DCO_in_n(DCO_in_n), 
		.FR_in_p(FR_in_p), 
		.FR_in_n(FR_in_n), 
		.D0_in_p(D0_in_p), 
		.D0_in_n(D0_in_n), 
		.D1_in_p(D1_in_p), 
		.D1_in_n(D1_in_n), 
		.ADC0_out(ADC0_out), 
		.ADC1_out(ADC1_out), 
		.FR_out(FR_out)
			);

	//"Bitstream" I want to deserialize and send to FPGA.
	parameter value = 16'b1011001011101001;
	//Two channels from ADC
	parameter A = 8'b11011110; //bits 15, 13, 11, ..., 3, 1
	parameter B = 8'b01001001; //bits 14, 12, 10, ..., 2, 0
	

	initial begin
		// Initialize Inputs
		clk_in = 0;
		rst_in = 0;
		cmd_trig_in = 0;
		cmd_addr_in = 0;
		cmd_data_in = 0;
		spi_sdi_in = 0;
		DCO_in_p =1;
		DCO_in_n = ~DCO_in_p;
		FR_in_p = 1;
		FR_in_n = ~FR_in_p;
		D0_in_p = 2'b00;
		D0_in_n = ~D0_in_p;
		D1_in_p = 2'b00;
		D1_in_n = ~D1_in_p;
        
		// Add stimulus here
		#500	rst_in = 1;
		#100	rst_in = 0; //DCM SP says reset must be high for at least 3 valid clock cycles

		#500 //wait for everything to start working (MMCM/ISERDESE2)
		//80 ns at 16'hb2e9
		D0_in_p[0] = A[7];
		D0_in_p[1] = B[7];
		D0_in_n = ~D0_in_p;
		D1_in_p[0] = B[7];
		D1_in_p[1] = A[7];
		D1_in_n = ~D1_in_p;
		#1.25
		D0_in_p[0] = A[6];
		D0_in_p[1] = B[6];
		D0_in_n = ~D0_in_p;
		D1_in_p[0] = B[6];
		D1_in_p[1] = A[6];
		D1_in_n = ~D1_in_p;
		#1.25
		D0_in_p[0] = A[5];
		D0_in_p[1] = B[5];
		D0_in_n = ~D0_in_p;
		D1_in_p[0] = B[5];
		D1_in_p[1] = A[5];
		D1_in_n = ~D1_in_p;
		#1.25
		D0_in_p[0] = A[4];
		D0_in_p[1] = B[4];
		D0_in_n = ~D0_in_p;
		D1_in_p[0] = B[4];
		D1_in_p[1] = A[4];
		D1_in_n = ~D1_in_p;
		#1.25
		D0_in_p[0] = A[3];
		D0_in_p[1] = B[3];
		D0_in_n = ~D0_in_p;
		D1_in_p[0] = B[3];
		D1_in_p[1] = A[3];
		D1_in_n = ~D1_in_p;
		#1.25
		D0_in_p[0] = A[2];
		D0_in_p[1] = B[2];
		D0_in_n = ~D0_in_p;
		D1_in_p[0] = B[2];
		D1_in_p[1] = A[2];
		D1_in_n = ~D1_in_p;
		#1.25
		D0_in_p[0] = A[1];
		D0_in_p[1] = B[1];
		D0_in_n = ~D0_in_p;
		D1_in_p[0] = B[1];
		D1_in_p[1] = A[1];
		D1_in_n = ~D1_in_p;
		#1.25
		D0_in_p[0] = A[0];
		D0_in_p[1] = B[0];
		D0_in_n = ~D0_in_p;
		D1_in_p[0] = B[0];
		D1_in_p[1] = A[0];
		D1_in_n = ~D1_in_p;
        #1.25
		D0_in_p[0] = A[7];
        D0_in_p[1] = B[7];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[7];
        D1_in_p[1] = A[7];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[6];
        D0_in_p[1] = B[6];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[6];
        D1_in_p[1] = A[6];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[5];
        D0_in_p[1] = B[5];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[5];
        D1_in_p[1] = A[5];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[4];
        D0_in_p[1] = B[4];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[4];
        D1_in_p[1] = A[4];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[3];
        D0_in_p[1] = B[3];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[3];
        D1_in_p[1] = A[3];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[2];
        D0_in_p[1] = B[2];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[2];
        D1_in_p[1] = A[2];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[1];
        D0_in_p[1] = B[1];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[1];
        D1_in_p[1] = A[1];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[0];
        D0_in_p[1] = B[0];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[0];
        D1_in_p[1] = A[0];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[7];
        D0_in_p[1] = B[7];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[7];
        D1_in_p[1] = A[7];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[6];
        D0_in_p[1] = B[6];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[6];
        D1_in_p[1] = A[6];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[5];
        D0_in_p[1] = B[5];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[5];
        D1_in_p[1] = A[5];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[4];
        D0_in_p[1] = B[4];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[4];
        D1_in_p[1] = A[4];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[3];
        D0_in_p[1] = B[3];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[3];
        D1_in_p[1] = A[3];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[2];
        D0_in_p[1] = B[2];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[2];
        D1_in_p[1] = A[2];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[1];
        D0_in_p[1] = B[1];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[1];
        D1_in_p[1] = A[1];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[0];
        D0_in_p[1] = B[0];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[0];
        D1_in_p[1] = A[0];
        D1_in_n = ~D1_in_p;        
        #1.25
        D0_in_p[0] = A[7];
        D0_in_p[1] = B[7];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[7];
        D1_in_p[1] = A[7];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[6];
        D0_in_p[1] = B[6];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[6];
        D1_in_p[1] = A[6];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[5];
        D0_in_p[1] = B[5];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[5];
        D1_in_p[1] = A[5];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[4];
        D0_in_p[1] = B[4];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[4];
        D1_in_p[1] = A[4];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[3];
        D0_in_p[1] = B[3];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[3];
        D1_in_p[1] = A[3];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[2];
        D0_in_p[1] = B[2];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[2];
        D1_in_p[1] = A[2];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[1];
        D0_in_p[1] = B[1];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[1];
        D1_in_p[1] = A[1];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[0];
        D0_in_p[1] = B[0];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[0];
        D1_in_p[1] = A[0];
        D1_in_n = ~D1_in_p;        
        #1.25
        D0_in_p[0] = A[7];
        D0_in_p[1] = B[7];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[7];
        D1_in_p[1] = A[7];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[6];
        D0_in_p[1] = B[6];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[6];
        D1_in_p[1] = A[6];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[5];
        D0_in_p[1] = B[5];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[5];
        D1_in_p[1] = A[5];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[4];
        D0_in_p[1] = B[4];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[4];
        D1_in_p[1] = A[4];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[3];
        D0_in_p[1] = B[3];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[3];
        D1_in_p[1] = A[3];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[2];
        D0_in_p[1] = B[2];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[2];
        D1_in_p[1] = A[2];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[1];
        D0_in_p[1] = B[1];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[1];
        D1_in_p[1] = A[1];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[0];
        D0_in_p[1] = B[0];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[0];
        D1_in_p[1] = A[0];
        D1_in_n = ~D1_in_p;        
        #1.25
        D0_in_p[0] = A[7];
        D0_in_p[1] = B[7];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[7];
        D1_in_p[1] = A[7];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[6];
        D0_in_p[1] = B[6];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[6];
        D1_in_p[1] = A[6];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[5];
        D0_in_p[1] = B[5];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[5];
        D1_in_p[1] = A[5];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[4];
        D0_in_p[1] = B[4];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[4];
        D1_in_p[1] = A[4];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[3];
        D0_in_p[1] = B[3];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[3];
        D1_in_p[1] = A[3];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[2];
        D0_in_p[1] = B[2];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[2];
        D1_in_p[1] = A[2];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[1];
        D0_in_p[1] = B[1];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[1];
        D1_in_p[1] = A[1];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[0];
        D0_in_p[1] = B[0];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[0];
        D1_in_p[1] = A[0];
        D1_in_n = ~D1_in_p;        
        #1.25
        D0_in_p[0] = A[7];
        D0_in_p[1] = B[7];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[7];
        D1_in_p[1] = A[7];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[6];
        D0_in_p[1] = B[6];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[6];
        D1_in_p[1] = A[6];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[5];
        D0_in_p[1] = B[5];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[5];
        D1_in_p[1] = A[5];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[4];
        D0_in_p[1] = B[4];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[4];
        D1_in_p[1] = A[4];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[3];
        D0_in_p[1] = B[3];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[3];
        D1_in_p[1] = A[3];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[2];
        D0_in_p[1] = B[2];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[2];
        D1_in_p[1] = A[2];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[1];
        D0_in_p[1] = B[1];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[1];
        D1_in_p[1] = A[1];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[0];
        D0_in_p[1] = B[0];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[0];
        D1_in_p[1] = A[0];
        D1_in_n = ~D1_in_p;        
        #1.25
        D0_in_p[0] = A[7];
        D0_in_p[1] = B[7];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[7];
        D1_in_p[1] = A[7];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[6];
        D0_in_p[1] = B[6];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[6];
        D1_in_p[1] = A[6];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[5];
        D0_in_p[1] = B[5];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[5];
        D1_in_p[1] = A[5];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[4];
        D0_in_p[1] = B[4];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[4];
        D1_in_p[1] = A[4];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[3];
        D0_in_p[1] = B[3];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[3];
        D1_in_p[1] = A[3];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[2];
        D0_in_p[1] = B[2];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[2];
        D1_in_p[1] = A[2];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[1];
        D0_in_p[1] = B[1];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[1];
        D1_in_p[1] = A[1];
        D1_in_n = ~D1_in_p;
        #1.25
        D0_in_p[0] = A[0];
        D0_in_p[1] = B[0];
        D0_in_n = ~D0_in_p;
        D1_in_p[0] = B[0];
        D1_in_p[1] = A[0];
        D1_in_n = ~D1_in_p;                                      
	end
      
	//Clock
	always 
		#5 clk_in = ~clk_in;  // 100 MHz
	always
		#1.25	DCO_in_p = ~DCO_in_p;
	always
		#1.25	DCO_in_n = ~DCO_in_n;
	always
		#5	FR_in_p = ~FR_in_p;
	always
		#5	FR_in_n = ~FR_in_n;

	
		
endmodule

