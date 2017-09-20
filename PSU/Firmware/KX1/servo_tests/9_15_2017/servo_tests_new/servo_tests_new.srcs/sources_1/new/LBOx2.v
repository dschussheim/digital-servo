`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Two versions of LBO servo: 
//  *Input error and transmission 
//  *LP filter on trans
//  *PID
//  *PID_out, trans_out
//////////////////////////////////////////////////////////////////////////////////

module LBOx2(

	//100 MHz clock
	input	wire			clk,
	//led to tell you when reset happens
	//output	wire			rst_led,
	//LEDs for locked/unlocked
	//output  reg             locked_out,
	//output  reg             notlocked_out,
	//output  reg             notlocked1s_out,
    
    output reg [3:0] led_out,
      
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

    output	wire	[15:0]	D1_out_p,
	output	wire	[15:0]	D1_out_n,

	output	wire			CLK_out_p,
	output	wire			CLK_out_n,

	output	wire			DCI0_out_p,
	output	wire			DCI0_out_n,

	output	wire			DCI1_out_p,
	output	wire			DCI1_out_n,

    output 	wire			dac_csb0,
	output 	wire			dac_rst0,
	output 	wire			dac_csb1,
	output 	wire			dac_rst1,
	output	wire			dac_sdi,
	output	wire			dac_sck,
	input   wire			dac_sdo,
	
//	output	wire			sdo_out,
		
//	output	wire			DCO1_in,
    input   wire		    DCO0_p,
	input   wire		    DCO0_n,
	input   wire		    DCO1_p,
	input   wire		    DCO1_n,
	
	input   wire            serial_in,
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

//always @(posedge clk_in)
//    led_out[0] <= ~rst_in;

///////////////End of reset/////////////////

wire [15:0] trans1_in, e1_in, trans2_in, e2_in;

wire [7:0] FR0_out, FR1_out;

parameter CLKDIV = 8;    // 800MHz/8 = 100MHz clock
parameter N00a = 3'b000, N00b = 3'b000, N01 = 3'b001, N10 = 3'b000, N11 = 3'b000;

wire [3:0] bitslip_out;

LTC2195x2delay #(
    .CLKDIV(CLKDIV),
    .N00a(N00a),
    .N00b(N00b),
    .N01(N01),
    .N10(N10),
    .N11(N11)
)
ADC (
    .clk_in(clk_in), 
    .rst_in(rst_in), 
    .cmd_trig_in(), 
    .cmd_addr_in(), 
    .cmd_data_in(), 
    .spi_scs0_out(adc_scs1),
    .spi_scs1_out(adc_scs2), 
    .spi_sck_out(adc_sck), 
    .spi_sdo_out(adc_sdi), 
    .spi_sdi_in(adc_sdo), 
    .ENC_out_p(ENC_p), 
    .ENC_out_n(ENC_n), 
    .DCO0_in_p(adc_DCO1_p), 
    .DCO0_in_n(adc_DCO1_n), 
    .DCO1_in_p(adc_DCO2_p), 
    .DCO1_in_n(adc_DCO2_n), 
    .FR0_in_p(FR1_p), 
    .FR0_in_n(FR1_n), 
    .FR1_in_p(FR2_p), 
    .FR1_in_n(FR2_n), 
    .D00_in_p(D10_p), 
    .D00_in_n(D10_n), 
    .D01_in_p(D11_p), 
    .D01_in_n(D11_n), 
    .D10_in_p(D20_p), 
    .D10_in_n(D20_n), 
    .D11_in_p(D21_p), 
    .D11_in_n(D21_n),
    .ADC00_out(trans1_in), 
    .ADC01_out(e1_in),
    .ADC10_out(trans2_in), 
    .ADC11_out(e2_in),
    .FR0_out(FR0_out),
    .FR1_out(FR1_out),
    .bitslip_out(bitslip_out)
);

//assign led_out = ~bitslip_out;

parameter div_f = 27'd100_000_000;
wire led_clk;
clk_div #(
    .div_f(div_f)
)
ledClk(
    .clk(clk_in),
    .rst_in(1'b0),
    .div_clk(led_clk)
);
/*
//reg [1:0] counter = 2'b00;
reg counter = 1'b0;
reg [2:0] led_state = 3'b000;
always @(posedge led_clk) begin
    counter <= counter + 1'b1;
    if (counter == 1'b1) begin
        led_state <= led_state + 3'b001;
    end
    if (led_state == 3'b000) begin
        led_out <= ~FR0_out[7:4];
    end
    else if (led_state == 3'b001) begin
        led_out <= ~FR0_out[3:0];
    end
    if (led_state == 3'b010) begin
        led_out <= ~FR1_out[7:4];
    end
    else if (led_state == 3'b011) begin
        led_out <= ~FR1_out[3:0];
    end
    else begin
        led_out = ~4'b1010;
    end
end
*/

///////////////End of inputs///////////////

//////////////Deserializer for inputting new parameters////////////


wire signed [34:0] a1PDnew, b0PDnew, b1PDnew, a1PInew, b0PInew, b1PInew;
wire signed [34:0] lock_trigger_new, offset_new, start_sweep_new, stop_sweep_new, sweep_rate_new;
wire signed [34:0] a1LPnew, b0LPnew;
wire [15:0] handshake;
localparam [15:0] trig_div = 16'd10_000; // divide 100kHz/trig_div = trig rate. 10Hz
deserializer #(
    .trig_max(trig_div)
)
new_param_deser(
    .clk_in(clk_in),
    .rst_in(rst_in),
    .in(serial_in),
    .trig_out(serial_trig_out),
    .handshake(handshake),
    .num0(a1PDnew),
    .num1(b0PDnew),
    .num2(b1PDnew),
    .num3(a1PInew),
    .num4(b0PInew),
    .num5(b1PInew),
    .num6(lock_trigger_new),
    .num7(offset_new),
    .num8(start_sweep_new),
    .num9(stop_sweep_new),
    .num10(sweep_rate_new),
    .num11(a1LPnew),
    .num12(b0LPnew)
);

/*
always @(posedge clk_in) begin
    led_out[0] <= ~TPmatchOut1;
    led_out[1] <= ~TPmatchOut2;
end
*/

/*
reg [26:0]tp_cnt_1 = 29'd300_000_000, tp_cnt_2 = 29'd300_000_000;
reg TP1, TP2;
always @(posedge clk_in) begin
    if (tp_cnt_1 < 29'd300_000_000)
        tp_cnt_1 <= tp_cnt_1 + 29'b1;
    
    if (tp_cnt_2 < 29'd300_000_000)
        tp_cnt_2 <= tp_cnt_2 + 29'b1;
        
    if (TPmatchOut1 == 1'b1) begin
        tp_cnt_1 <= 29'b0;
        led_out[2] <= ~1'b1;
    end
    else begin
        led_out[2] <= ~1'b0;
    end
    
    if (TPmatchOut2 == 1'b1) begin
        tp_cnt_2 <= 29'b0;
        led_out[3] <= ~1'b1;
    end
    else begin
        led_out[3] <= ~1'b0;
    end

end

*/

//assign rst_led = ~TPmatchOut;
///////////////////////End of deserializer/////////////////////////

/////////////Filter inputs\\\\\\\\\\\\\\\

localparam real Ts = 1e-8;  //10ns (sample period)
localparam real pi = 3.14159265358979;
/*
//Transmission 1
localparam real K_1 = 1;
localparam real f0_1 = 1e3;

reg signed [34:0] a1_LP1 = (1-pi*f0_1*Ts)/(1+pi*f0_1*Ts)*(2**26);
reg signed [34:0] b0_LP1 = (K_1*pi*f0_1*Ts)/(1+pi*f0_1*Ts)*(2**26);

wire signed [15:0] trans1_LP;

IIRfilter1stOrderAntiWindup LP1 (
    .clk_in(clk_in),
    .on_in(1'b1),
    .a1_in(a1_LP1),
    .b0_in(b0_LP1),
    .b1_in(b0_LP1),
    .railed_in(2'b00),
    .hold_in(1'b0),
    .signal_in(trans1_in),
    .signal_out(trans1_LP)
);
*/
//Transmission 2
localparam real K_2 = 1;
localparam real f0_2 = 200e3;

reg signed [34:0] a1_LP2 = (1-pi*f0_2*Ts)/(1+pi*f0_2*Ts)*(2**26);
reg signed [34:0] b0_LP2 = (K_2*pi*f0_2*Ts)/(1+pi*f0_2*Ts)*(2**26);

wire signed [15:0] trans2_LP;

IIRfilter1stOrderAntiWindup LP2 (
    .clk_in(clk_in),
    .on_in(1'b1),
    .a1_in(a1_LP2),
    .b0_in(b0_LP2),
    .b1_in(b0_LP2),
    .railed_in(2'b00),
    .hold_in(1'b0),
    .signal_in(trans2_in),
    .signal_out(trans2_LP)
);

//Error signal 2

wire signed [15:0] e2int1;
wire signed [15:0] e2int2;
wire signed [15:0] e2f;

//500 kHz low-pass
localparam real f0lp = 500e3;
reg signed [34:0] a1lp_e2 = (1-pi*f0lp*Ts)/(1+pi*f0lp*Ts)*(2**26);
reg signed [34:0] b0lp_e2 = (pi*f0lp*Ts)/(1+pi*f0lp*Ts)*(2**26);

IIRfilter1stOrderAntiWindup LP1e2 (
    .clk_in(clk_in),
    .on_in(1'b1),
    .a1_in(a1lp_e2),
    .b0_in(b0lp_e2),
    .b1_in(b0lp_e2),
    .railed_in(2'b00),
    .hold_in(1'b0),
    .signal_in(e2_in),
    .signal_out(e2f)
    //.signal_out(e2int1)
);
/*
//1.208 MHz Notch
localparam real f0n1 = 1.208e6;
localparam real Q1 = 10;

reg signed [34:0] a1n1_e2 = 2*(1 - (pi*Ts*f0n1)**2)/(1 + pi*Ts*f0n1/Q1 + (pi*Ts*f0n1)**2)*(2**26);
reg signed [34:0] a2n1_e2 = (-1)*(1 - pi*Ts*f0n1/Q1 + (pi*Ts*f0n1)**2)/(1 + pi*Ts*f0n1/Q1 + (pi*Ts*f0n1)**2)*(2**26);
reg signed [34:0] b0n1_e2 = (1 + (pi*Ts*f0n1)**2)/(1 + pi*Ts*f0n1/Q1 + (pi*Ts*f0n1)**2)*(2**26);
reg signed [34:0] b1n1_e2 = (-2)*(1 - (pi*Ts*f0n1)**2)/(1 + pi*Ts*f0n1/Q1 + (pi*Ts*f0n1)**2)*(2**26);
reg signed [34:0] b2n1_e2 = (1 + (pi*Ts*f0n1)**2)/(1 + pi*Ts*f0n1/Q1 + (pi*Ts*f0n1)**2)*(2**26);

IIRfilter2ndOrderSlowAntiWindup Notch1p208 (
    .clk_in(clk_in),
    .on_in(1'b1),
    .a1_in(a1n1_e2),
    .a2_in(a2n1_e2),
    .b0_in(b0n1_e2),
    .b1_in(b1n1_e2),
    .b2_in(b2n1_e2),
    .railed_in(2'b00),
    .hold_in(1'b0),
    .signal_in(e2int1),
    .signal_out(e2int2)
);

//2.416 MHz Notch
localparam real f0n2 = 2.416e6;
localparam real Q2 = 10;

reg signed [34:0] a1n2_e2 = 2*(1 - (pi*Ts*f0n2)**2)/(1 + pi*Ts*f0n2/Q2 + (pi*Ts*f0n2)**2)*(2**26);
reg signed [34:0] a2n2_e2 = (-1)*(1 - pi*Ts*f0n2/Q2 + (pi*Ts*f0n2)**2)/(1 + pi*Ts*f0n2/Q2 + (pi*Ts*f0n2)**2)*(2**26);
reg signed [34:0] b0n2_e2 = (1 + (pi*Ts*f0n2)**2)/(1 + pi*Ts*f0n2/Q2 + (pi*Ts*f0n2)**2)*(2**26);
reg signed [34:0] b1n2_e2 = (-2)*(1 - (pi*Ts*f0n2)**2)/(1 + pi*Ts*f0n2/Q2 + (pi*Ts*f0n2)**2)*(2**26);
reg signed [34:0] b2n2_e2 = (1 + (pi*Ts*f0n2)**2)/(1 + pi*Ts*f0n2/Q2 + (pi*Ts*f0n2)**2)*(2**26);

IIRfilter2ndOrderSlowAntiWindup Notch2p416 (
    .clk_in(clk_in),
    .on_in(1'b1),
    .a1_in(a1n2_e2),
    .a2_in(a2n2_e2),
    .b0_in(b0n2_e2),
    .b1_in(b1n2_e2),
    .b2_in(b2n2_e2),
    .railed_in(2'b00),
    .hold_in(1'b0),
    .signal_in(e2int2),
    .signal_out(e2f)
);
*/
///////////////Relock sweep////////////////

localparam real Vtrig1 = 0.25;
localparam real Vtrig2 = 0.03;

reg signed [15:0] locktrig1 = Vtrig1*16'b0111_1111_1111_1111; 
reg signed [15:0] locktrig2 = Vtrig2*16'b0111_1111_1111_1111; 

reg relock1_on, relock2_on; //filtered input
//reg relock1_nf, relock2_nf; //no filter
always @(posedge clk_in) begin
    /*
    if ($signed(trans1_LP) < $signed(minval1))
        relock1_on <= 1'b1;
    else
        relock1_on <= 1'b0;
    if ($signed(trans2_LP) < $signed(minval2))
        relock2_on <= 1'b1;
    else
        relock2_on <= 1'b0;
   */
        
    if ($signed(trans1_in) < $signed(locktrig1))
        relock1_on <= 1'b1;
    else
        relock1_on <= 1'b0;
    if ($signed(trans2_LP) < $signed(locktrig2))
        relock2_on <= 1'b1;
    else
        relock2_on <= 1'b0; 
end

wire [15:0] relock1_out, relock2_out;

reg signed [15:0] stop_sweep_1 = (0.65625)*(16'b0111_1111_1111_1111);
reg signed [15:0] start_sweep_1 = (0.1875)*(16'b0111_1111_1111_1111); 
reg        [31:0] sweep_rate_1 = 32'b0000_0000_0000_0000_0000_0001_0000_0000; //Change LSB every 128 clock cycles

reg signed [15:0] stop_sweep_2 = (0.65625)*(16'b0111_1111_1111_1111);
reg signed [15:0] start_sweep_2 = (0.1875)*(16'b0111_1111_1111_1111); 
reg        [31:0] sweep_rate_2 = 32'b0000_0000_0000_0000_0000_0001_0000_0000; //Change LSB every 128 clock cycles

Sweep relockSweep1(
    .clk_in(clk_in),
    .on_in(1'b1),
    .hold_in(~relock1_on),
    .minval_in(start_sweep_1),
    .maxval_in(stop_sweep_1),
    .stepsize_in(sweep_rate_1),
    .signal_out(relock1_out)
);

Sweep relockSweep2(
    .clk_in(clk_in),
    .on_in(1'b1),
    .hold_in(~relock2_on),
    .minval_in(start_sweep_2),
    .maxval_in(stop_sweep_2),
    .stepsize_in(sweep_rate_2),
    .signal_out(relock2_out)
);

//Offset
//LBO
localparam real Voff1 = -0.012; // -135 mV give +8 mV offset(to match offset from intruments)
reg signed [15:0] offset1 = Voff1*16'b0111_1111_1111_1111;
wire [15:0] ref_e1;
assign ref_e1 = e1_in - offset1;
//assign ref_e1 = e1f - offset1;
//BBO
localparam real Voff2 = -0.0174; // -18 mV to give 0.5V instrumentation offset
reg signed [15:0] offset2 = Voff2*16'b0111_1111_1111_1111;
wire [15:0] ref_e2;
//assign ref_e2 = e2_in - offset2;
assign ref_e2 = e2f - offset2;

//State machine for relock LEDs
localparam LOCKED       = 3'b100;
localparam UNLOCKED     = 3'b010;
localparam UNLOCKED1S   = 3'b101;
//Combinatorial part
function [2:0] relock_next_state;
    input        relock_on;
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
reg [27:0] relock1_counter = 28'b0; //Counter for led that stays on 1s after relock acquired
reg [27:0] relock2_counter = 28'b0; //Counter for led that stays on 1s after relock acquired
reg [2:0] relock1_state, relock2_state;
always @(posedge clk_in) begin
    relock1_state <= relock_next_state(relock1_on, trans1_in, relock1_state, relock1_counter);
    relock2_state <= relock_next_state(relock2_on, trans2_in, relock2_state, relock2_counter);
    led_out[0] <= ~relock1_state[1]; //not locked
    led_out[1] <= ~relock1_state[0]; //not locked 1s ago
    led_out[2] <= ~relock2_state[1]; //not locked
    led_out[3] <= ~relock2_state[0]; //not locked 1s ago
    if (relock1_state == UNLOCKED1S)
        relock1_counter <= relock1_counter + 28'b1;
    if (relock1_state == LOCKED)
        relock1_counter <= 1'b0;
    if (relock2_state == UNLOCKED1S)
        relock2_counter <= relock2_counter + 28'b1;
    if (relock2_state == LOCKED)
        relock2_counter <= 1'b0;
end

//////////End of relock/////////////

////////PID///////////

//localparam real Ts = 1e-8;  //10ns (sample period)
//localparam real pi = 3.14159265358979;

//default PID parameters
localparam G1 = -0.7;
localparam real P21 = G1*0.2;  // P_dif = P2 in excel sheet     
localparam real P11 = -0.15; // P_int = P1 in excel sheet / if G1 is negative this must be too
localparam real I1  = G1*600;       
localparam real D1  = G1*0.5e-6;       
localparam real fc1 = 0.5e6;        //Rolloff requency [15, 90] dB, [32Hz, 1GHz] makes no sense to go above 100MHz though

//Have servo on if we see enough transmission
wire PID1_on, PID2_on;
assign PID1_on = ~relock1_on;
assign PID2_on = ~relock2_on;

//IIR filter parameter defaults

//PD\\

//Ts = 10^-8 for 100MHz sample clock frequency
//Definitions of filter coefficients. Added scale factors to make gains resonable

//reg signed [34:0] a1_1_PD = (1-2*pi*Ts*fc1)*(2**26); // correct for gains set before 4 Sept 2017
reg signed [34:0] a1_1_PD = (1-pi*Ts*fc1)/(1+pi*Ts*fc1)*(2**26); // correct for gains set after 4 Setp 2017
// D/P1*(fc/(1+pi*Ts*fc)) + P2*((pi*Ts*fc)/(1+pi*Ts*fc))
reg signed [34:0] b0_1_PD = ((D1/P11)*(fc1/(1+pi*Ts*fc1))+ P21*((pi*Ts*fc1)/(1+pi*Ts*fc1)))*(2**26);
//-D/P1*(fc/(1+pi*Ts*fc)) + P2*((pi*Ts*fc)/(1+pi*Ts*fc))
reg signed [34:0] b1_1_PD = (P21*((pi*Ts*fc1)/(1+pi*Ts*fc1))-1*D1/P11*(fc1/(1+pi*Ts*fc1)))*(2**26);
//PI\\

//Definitions of filter coefficients. Added scale factors to make gains resonable
//All coefficients scaled by 2^26
reg signed [34:0] a1_1_PI = 1*(2**26);
// Pi + I/Pd*pi*Ts
reg signed [34:0] b0_1_PI = (P11+(I1*pi*Ts)/P21)*(2**26);
//-Pi + I/Pd*pi*Ts 
reg signed [34:0] b1_1_PI = (I1/P21*pi*Ts-P11)*(2**26);

//Error signal out
wire [15:0] e1_out, e2_out;
//Servo 1 module
PIDservo_changeParam LBO1 (
    .clk_in(clk_in),
    .on_in(PID1_on),
    .a1_PD(a1_1_PD),
    .b0_PD(b0_1_PD),
    .b1_PD(b1_1_PD),
    .a1_PI(a1_1_PI),
    .b0_PI(b0_1_PI),
    .b1_PI(b1_1_PI),    
    .e_in(ref_e1),
    .e_out(e1_out)
);

//default PID parameters
//localparam G2 = -1;
//localparam real P22 = G2*0.02;          
//localparam real P12 = -0.035;
//localparam real I2  = G2*25;       
//localparam real D2  = G2*0.012e-6;       
//localparam real fc2 = 0.5e6;        //Rolloff requency [15, 90] dB, [32Hz, 1GHz] makes no sense to go above 100MHz though

localparam G2 = -0.7;
localparam real P22 = G2*0.2;  // P_dif = P2 in excel sheet     
localparam real P12 = -0.15; // P_int = P1 in excel sheet / if G1 is negative this must be too
localparam real I2  = G2*600;       
localparam real D2  = G2*0.5e-6;       
localparam real fc2 = 0.5e6;        //Rolloff requency [15, 90] dB, [32Hz, 1GHz] makes no sense to go above 100MHz though


//IIR filter parameter defaults

//PD\\

//Ts = 10^-8 for 100MHz sample clock frequency
//Definitions of filter coefficients. Added scale factors to make gains resonable

//reg signed [34:0] a1_2_PD = (1-2*pi*Ts*fc2)*(2**26); //correct for gains set before 4 Sept 2017
reg signed [34:0] a1_2_PD = (1-pi*Ts*fc2)/(1+pi*Ts*fc2)*(2**26); //correct for gains set after 4 Sept 2017
// D/P1*(fc/(1+pi*Ts*fc)) + P2*((pi*Ts*fc)/(1+pi*Ts*fc))
reg signed [34:0] b0_2_PD = ((D2/P12)*(fc2/(1+pi*Ts*fc2))+ P22*((pi*Ts*fc2)/(1+pi*Ts*fc2)))*(2**26);
//-D/P1*(fc/(1+pi*Ts*fc)) + P2*((pi*Ts*fc)/(1+pi*Ts*fc))
reg signed [34:0] b1_2_PD = (P22*((pi*Ts*fc2)/(1+pi*Ts*fc2))-1*D2/P12*(fc2/(1+pi*Ts*fc2)))*(2**26);

//PI\\

//Definitions of filter coefficients. Added scale factors to make gains resonable
//All coefficients scaled by 2^26
reg signed [34:0] a1_2_PI = 1*(2**26);
// Pi + I/Pd*pi*Ts
reg signed [34:0] b0_2_PI = (P12+(I2*pi*Ts)/P22)*(2**26);
//-Pi + I/Pd*pi*Ts 
reg signed [34:0] b1_2_PI = (I2/P22*pi*Ts-P12)*(2**26);

//Servo 2 module
PIDservo_changeParam LBO2 (
    .clk_in(clk_in),
    .on_in(PID2_on),
    .a1_PD(a1_2_PD),
    .b0_PD(b0_2_PD),
    .b1_PD(b1_2_PD),
    .a1_PI(a1_2_PI),
    .b0_PI(b0_2_PI),
    .b1_PI(b1_2_PI), 
    .e_in(ref_e2),   
    .e_out(e2_out)
);

/////End of PID///////

///////////parameter reassignment//////////

localparam [15:0] handshake_default = 16'h6364;

always @(posedge clk_in) begin
    if (handshake == handshake_default) begin
        // Change sweep params
        locktrig1     <= {lock_trigger_new[34], lock_trigger_new[14:0]};    // 16 bit
        offset1       <= {offset_new[34], offset_new[14:0]};                // 16 bit
        start_sweep_1 <= {start_sweep_new[34], start_sweep_new[14:0]};      // 16 bit
        stop_sweep_1  <= {stop_sweep_new[34], stop_sweep_new[14:0]};        // 16 bit
        sweep_rate_1  <= sweep_rate_new[34:3];                              // 32 bit (power of 2)
        // Change servo params (35 bit, signed)
        a1_1_PD       <= a1PDnew;
        b0_1_PD       <= b0PDnew;
        b1_1_PD       <= b1PDnew;
        a1_1_PI       <= a1PInew;
        b0_1_PI       <= b0PInew;
        b1_1_PI       <= b1PInew;
    end
    if (handshake == handshake_default + 16'd1) begin
        // Change sweep params
        locktrig2     <= {lock_trigger_new[34], lock_trigger_new[14:0]};    // 16 bit signed
        offset2       <= {offset_new[34],       offset_new[14:0]};          // 16 bit signed
        start_sweep_2 <= {start_sweep_new[34],  start_sweep_new[14:0]};     // 16 bit signed
        stop_sweep_2  <= {stop_sweep_new[34],   stop_sweep_new[14:0]};      // 16 bit signed
        sweep_rate_2  <= sweep_rate_new[34:3];                              // 32 bit (power of 2)
        // Change servo params (35 bit, signed)
        a1_2_PD       <= a1PDnew;
        b0_2_PD       <= b0PDnew;
        b1_2_PD       <= b1PDnew;
        a1_2_PI       <= a1PInew;
        b0_2_PI       <= b0PInew;
        b1_2_PI       <= b1PInew;
        // Low-pass input
        a1_LP2        <= a1LPnew;
        b0_LP2        <= b0LPnew;
    end
end

//////end of parameter reassignment////////

////////Output to DAC//////

wire signed [15:0] signal1_out;
assign signal1_out = relock1_out + e1_out;
wire signed [15:0] signal2_out;
assign signal2_out = relock2_out + e2_out;


// Instantiate DAC1 driver module
AD9783 #(
	.CLKDIV(4) //200MHz clock
)
 DAC0 (
     .clk_in(clk_in), 
     .rst_in(rst_in), 
     .DAC0_in(signal1_out), 
     .DAC1_in(ref_e1),
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
    

// Instantiate DAC1 driver module
AD9783 #(
	.CLKDIV(4) //200MHz clock
)
 DAC1 (
     .clk_in(clk_in), 
     .rst_in(rst_in), 
     .DAC0_in(signal2_out), 
     .DAC1_in(ref_e2), 
     .CLK_out_p(), 
     .CLK_out_n(), 
     .DCI_out_p(DCI1_out_p), 
     .DCI_out_n(DCI1_out_n), 
     .D_out_p(D1_out_p), 
     .D_out_n(D1_out_n),
	 .rst_out(dac_rst1),
	 .spi_scs_out(dac_csb1),
	 .spi_sck_out(),
	 .spi_sdo_out(),
	 .spi_sdi_in(),
	 .cmd_trig_in(1'b0),
	 .cmd_addr_in(16'b0),
	 .cmd_data_in(16'b0),
	 .cmd_data_out(),
	 .clk_out()
    );
  
////////End of output to DAC///////
    
endmodule
