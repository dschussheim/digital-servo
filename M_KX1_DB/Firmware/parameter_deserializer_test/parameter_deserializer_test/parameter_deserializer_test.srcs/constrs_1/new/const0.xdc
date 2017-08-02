#Clock input
set_property PACKAGE_PIN AA3 [get_ports clk]

#in (IO1P)
set_property PACKAGE_PIN V21     [get_ports in]
set_property IOSTANDARD LVCMOS25 [get_ports in]
#clkDout (IO2P)
set_property PACKAGE_PIN AA23    [get_ports clkDout]
set_property IOSTANDARD LVCMOS25 [get_ports clkDout]
#trig_out
set_property PACKAGE_PIN Y22     [get_ports trig_out]
set_property IOSTANDARD LVCMOS25 [get_ports trig_out]
#LEDs
set_property PACKAGE_PIN M17     [get_ports out[3]]
set_property IOSTANDARD LVCMOS25 [get_ports out[3]]
set_property PACKAGE_PIN L18     [get_ports out[2]]
set_property IOSTANDARD LVCMOS25 [get_ports out[2]]
set_property PACKAGE_PIN L17     [get_ports out[1]]
set_property IOSTANDARD LVCMOS25 [get_ports out[1]]
set_property PACKAGE_PIN K18     [get_ports out[0]]
set_property IOSTANDARD LVCMOS25 [get_ports out[0]]