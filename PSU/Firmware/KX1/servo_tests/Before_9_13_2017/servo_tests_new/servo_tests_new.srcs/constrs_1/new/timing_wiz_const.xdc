#Clock input
set_property PACKAGE_PIN AA3 [get_ports clk]

#Reset led
set_property PACKAGE_PIN M17 [get_ports rst_led]
set_property IOSTANDARD LVCMOS25 [get_ports rst_led]

#set_property PACKAGE_PIN M17     [get_ports led_out[3]]
#set_property IOSTANDARD LVCMOS25 [get_ports led_out[3]]
#set_property PACKAGE_PIN L18     [get_ports led_out[2]]
#set_property IOSTANDARD LVCMOS25 [get_ports led_out[2]]
#set_property PACKAGE_PIN L17     [get_ports led_out[1]]
#set_property IOSTANDARD LVCMOS25 [get_ports led_out[1]]
#set_property PACKAGE_PIN K18     [get_ports led_out[0]]
#set_property IOSTANDARD LVCMOS25 [get_ports led_out[0]]

#DAC1 output pins
set_property PACKAGE_PIN K16 [get_ports {D0_out_p[0]}]
set_property PACKAGE_PIN K17 [get_ports {D0_out_n[0]}]
set_property PACKAGE_PIN J18 [get_ports {D0_out_p[1]}]
set_property PACKAGE_PIN J19 [get_ports {D0_out_n[1]}]
set_property PACKAGE_PIN L19 [get_ports {D0_out_p[2]}]
set_property PACKAGE_PIN L20 [get_ports {D0_out_n[2]}]
set_property PACKAGE_PIN K20 [get_ports {D0_out_p[3]}]
set_property PACKAGE_PIN J20 [get_ports {D0_out_n[3]}]
set_property PACKAGE_PIN H17 [get_ports {D0_out_p[4]}]
set_property PACKAGE_PIN H18 [get_ports {D0_out_n[4]}]
set_property PACKAGE_PIN E18 [get_ports {D0_out_p[5]}]
set_property PACKAGE_PIN D18 [get_ports {D0_out_n[5]}]
set_property PACKAGE_PIN G19 [get_ports {D0_out_p[6]}]
set_property PACKAGE_PIN F20 [get_ports {D0_out_n[6]}]
set_property PACKAGE_PIN D19 [get_ports {D0_out_p[7]}]
set_property PACKAGE_PIN D20 [get_ports {D0_out_n[7]}]
set_property PACKAGE_PIN J15 [get_ports {D0_out_p[8]}]
set_property PACKAGE_PIN J16 [get_ports {D0_out_n[8]}]
set_property PACKAGE_PIN G15 [get_ports {D0_out_p[9]}]
set_property PACKAGE_PIN F15 [get_ports {D0_out_n[9]}]
set_property PACKAGE_PIN G17 [get_ports {D0_out_p[10]}]
set_property PACKAGE_PIN F18 [get_ports {D0_out_n[10]}]
set_property PACKAGE_PIN E15 [get_ports {D0_out_p[11]}]
set_property PACKAGE_PIN E16 [get_ports {D0_out_n[11]}]
set_property PACKAGE_PIN H16 [get_ports {D0_out_p[12]}]
set_property PACKAGE_PIN G16 [get_ports {D0_out_n[12]}]
set_property PACKAGE_PIN F17 [get_ports {D0_out_p[13]}]
set_property PACKAGE_PIN E17 [get_ports {D0_out_n[13]}]
set_property PACKAGE_PIN D15 [get_ports {D0_out_p[14]}]
set_property PACKAGE_PIN D16 [get_ports {D0_out_n[14]}]
set_property PACKAGE_PIN C17 [get_ports {D0_out_p[15]}]
set_property PACKAGE_PIN C18 [get_ports {D0_out_n[15]}]

#DAC2 output pins
#set_property PACKAGE_PIN B17  [get_ports {D1_out_p[0]}]
#set_property PACKAGE_PIN A17  [get_ports {D1_out_n[0]}]
#set_property PACKAGE_PIN A18  [get_ports {D1_out_p[1]}]
#set_property PACKAGE_PIN A19  [get_ports {D1_out_n[1]}]
#set_property PACKAGE_PIN A13  [get_ports {D1_out_p[2]}]
#set_property PACKAGE_PIN A12  [get_ports {D1_out_n[2]}]
#set_property PACKAGE_PIN C16  [get_ports {D1_out_p[3]}]
#set_property PACKAGE_PIN B16  [get_ports {D1_out_n[3]}]
#set_property PACKAGE_PIN B15  [get_ports {D1_out_p[4]}]
#set_property PACKAGE_PIN A15  [get_ports {D1_out_n[4]}]
#set_property PACKAGE_PIN B10  [get_ports {D1_out_p[5]}]
#set_property PACKAGE_PIN A10  [get_ports {D1_out_n[5]}]
#set_property PACKAGE_PIN B12  [get_ports {D1_out_p[6]}]
#set_property PACKAGE_PIN B11  [get_ports {D1_out_n[6]}]
#set_property PACKAGE_PIN B14  [get_ports {D1_out_p[7]}]
#set_property PACKAGE_PIN A14  [get_ports {D1_out_n[7]}]
#set_property PACKAGE_PIN G12  [get_ports {D1_out_p[8]}]
#set_property PACKAGE_PIN F12  [get_ports {D1_out_n[8]}]
#set_property PACKAGE_PIN D14  [get_ports {D1_out_p[9]}]
#set_property PACKAGE_PIN D13  [get_ports {D1_out_n[9]}]
#set_property PACKAGE_PIN C12  [get_ports {D1_out_p[10]}]
#set_property PACKAGE_PIN C11  [get_ports {D1_out_n[10]}]
#set_property PACKAGE_PIN E11  [get_ports {D1_out_p[11]}]
#set_property PACKAGE_PIN D11  [get_ports {D1_out_n[11]}]
#set_property PACKAGE_PIN F9   [get_ports {D1_out_p[12]}]
#set_property PACKAGE_PIN F8   [get_ports {D1_out_n[12]}]
#set_property PACKAGE_PIN F14  [get_ports {D1_out_p[13]}]
#set_property PACKAGE_PIN F13  [get_ports {D1_out_n[13]}]
#set_property PACKAGE_PIN AF24 [get_ports {D1_out_p[14]}]
#set_property PACKAGE_PIN AF25 [get_ports {D1_out_n[14]}]
#set_property PACKAGE_PIN AD23 [get_ports {D1_out_p[15]}]
#set_property PACKAGE_PIN AD24 [get_ports {D1_out_n[15]}]

#DAC clock
set_property PACKAGE_PIN C19 [get_ports CLK_out_p]
set_property PACKAGE_PIN B19 [get_ports CLK_out_n]
#DAC DCI
set_property PACKAGE_PIN H19 [get_ports DCI0_out_p]
set_property PACKAGE_PIN G20 [get_ports DCI0_out_n]
#set_property PACKAGE_PIN C14 [get_ports DCI1_out_p]
#set_property PACKAGE_PIN C13 [get_ports DCI1_out_n]

#SPI IOs for DAC
set_property PACKAGE_PIN M25 [get_ports dac_csb0]
#set_property PACKAGE_PIN K25 [get_ports dac_csb1]
set_property PACKAGE_PIN L25 [get_ports dac_rst0]
#set_property PACKAGE_PIN K26 [get_ports dac_rst1]
set_property PACKAGE_PIN P26 [get_ports dac_sck]
set_property PACKAGE_PIN N23 [get_ports dac_sdi]
set_property PACKAGE_PIN P23 [get_ports dac_sdo]

set_property IOSTANDARD LVCMOS25 [get_ports dac_csb0]
#set_property IOSTANDARD LVCMOS25 [get_ports dac_csb1]
set_property IOSTANDARD LVCMOS25 [get_ports dac_rst0]
#set_property IOSTANDARD LVCMOS25 [get_ports dac_rst1]
set_property IOSTANDARD LVCMOS25 [get_ports dac_sck]
set_property IOSTANDARD LVCMOS25 [get_ports dac_sdi]
set_property IOSTANDARD LVCMOS25 [get_ports dac_sdo]

#ADC1 input pins
set_property PACKAGE_PIN AD21 [get_ports {D10_p[0]}]
set_property PACKAGE_PIN AE21 [get_ports {D10_n[0]}]
set_property PACKAGE_PIN AE23 [get_ports {D10_p[1]}]
set_property PACKAGE_PIN AF23 [get_ports {D10_n[1]}]
set_property PACKAGE_PIN M24 [get_ports {D11_p[0]}]
set_property PACKAGE_PIN L24 [get_ports {D11_n[0]}]
set_property PACKAGE_PIN T24 [get_ports {D11_p[1]}]
set_property PACKAGE_PIN T25 [get_ports {D11_n[1]}]

#ADC2 input pins
#set_property PACKAGE_PIN AB22 [get_ports {D20_p[0]}]
#set_property PACKAGE_PIN AC22 [get_ports {D20_n[0]}]
#set_property PACKAGE_PIN AD26 [get_ports {D20_p[1]}]
#set_property PACKAGE_PIN AE26 [get_ports {D20_n[1]}]
#set_property PACKAGE_PIN U24  [get_ports {D21_p[0]}]
#set_property PACKAGE_PIN U25  [get_ports {D21_n[0]}]
#set_property PACKAGE_PIN AC23 [get_ports {D21_p[1]}]
#set_property PACKAGE_PIN AC24 [get_ports {D21_n[1]}]

#ENC input
set_property PACKAGE_PIN AA25 [get_ports ENC_p]
set_property PACKAGE_PIN AB25 [get_ports ENC_n]

#FR input
set_property PACKAGE_PIN R25 [get_ports FR1_p]
set_property PACKAGE_PIN P25 [get_ports FR1_n]

#set_property PACKAGE_PIN W23 [get_ports FR2_p]
#set_property PACKAGE_PIN W24 [get_ports FR2_n]

#adc DCO
set_property PACKAGE_PIN N26 [get_ports adc_DCO1_p]
set_property PACKAGE_PIN M26 [get_ports adc_DCO1_n]

#set_property PACKAGE_PIN AD25 [get_ports adc_DCO2_p]
#set_property PACKAGE_PIN AE25 [get_ports adc_DCO2_n]

#SPI IOs for ADC
set_property PACKAGE_PIN Y21 [get_ports adc_sck]
set_property PACKAGE_PIN W26 [get_ports adc_scs1]
#set_property PACKAGE_PIN W25  [get_ports adc_scs2]
set_property PACKAGE_PIN W20 [get_ports adc_sdi]
set_property PACKAGE_PIN AC26 [get_ports adc_sdo]

set_property IOSTANDARD LVCMOS25 [get_ports adc_sck]
set_property IOSTANDARD LVCMOS25 [get_ports adc_scs1]
#set_property IOSTANDARD LVCMOS25 [get_ports adc_scs2]
set_property IOSTANDARD LVCMOS25 [get_ports adc_sdi]
set_property IOSTANDARD LVCMOS25 [get_ports adc_sdo]

#Locked/unlocked LEDs
set_property PACKAGE_PIN L18 [get_ports locked_out]
set_property IOSTANDARD LVCMOS25 [get_ports locked_out]
set_property PACKAGE_PIN L17 [get_ports notlocked_out]
set_property IOSTANDARD LVCMOS25 [get_ports notlocked_out]
set_property PACKAGE_PIN K18 [get_ports notlocked1s_out]
set_property IOSTANDARD LVCMOS25 [get_ports notlocked1s_out]

#Serial line IOs
#in (IO1P)
set_property PACKAGE_PIN V21 [get_ports serial_in]
set_property IOSTANDARD LVCMOS25 [get_ports serial_in]
#clkDout (IO2P)
set_property PACKAGE_PIN AA23 [get_ports serial_clk_out]
set_property IOSTANDARD LVCMOS25 [get_ports serial_clk_out]
#trig_out
set_property PACKAGE_PIN Y22 [get_ports serial_trig_out]
set_property IOSTANDARD LVCMOS25 [get_ports serial_trig_out]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 2.5 [current_design]

