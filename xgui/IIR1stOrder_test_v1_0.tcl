# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLKDIV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "D" -parent ${Page_0}
  ipgui::add_param $IPINST -name "I" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Pd" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Pi" -parent ${Page_0}
  ipgui::add_param $IPINST -name "fc" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLKDIV { PARAM_VALUE.CLKDIV } {
	# Procedure called to update CLKDIV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLKDIV { PARAM_VALUE.CLKDIV } {
	# Procedure called to validate CLKDIV
	return true
}

proc update_PARAM_VALUE.D { PARAM_VALUE.D } {
	# Procedure called to update D when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.D { PARAM_VALUE.D } {
	# Procedure called to validate D
	return true
}

proc update_PARAM_VALUE.I { PARAM_VALUE.I } {
	# Procedure called to update I when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.I { PARAM_VALUE.I } {
	# Procedure called to validate I
	return true
}

proc update_PARAM_VALUE.Pd { PARAM_VALUE.Pd } {
	# Procedure called to update Pd when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Pd { PARAM_VALUE.Pd } {
	# Procedure called to validate Pd
	return true
}

proc update_PARAM_VALUE.Pi { PARAM_VALUE.Pi } {
	# Procedure called to update Pi when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Pi { PARAM_VALUE.Pi } {
	# Procedure called to validate Pi
	return true
}

proc update_PARAM_VALUE.fc { PARAM_VALUE.fc } {
	# Procedure called to update fc when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.fc { PARAM_VALUE.fc } {
	# Procedure called to validate fc
	return true
}


proc update_MODELPARAM_VALUE.CLKDIV { MODELPARAM_VALUE.CLKDIV PARAM_VALUE.CLKDIV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLKDIV}] ${MODELPARAM_VALUE.CLKDIV}
}

proc update_MODELPARAM_VALUE.Pd { MODELPARAM_VALUE.Pd PARAM_VALUE.Pd } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Pd}] ${MODELPARAM_VALUE.Pd}
}

proc update_MODELPARAM_VALUE.Pi { MODELPARAM_VALUE.Pi PARAM_VALUE.Pi } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Pi}] ${MODELPARAM_VALUE.Pi}
}

proc update_MODELPARAM_VALUE.I { MODELPARAM_VALUE.I PARAM_VALUE.I } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.I}] ${MODELPARAM_VALUE.I}
}

proc update_MODELPARAM_VALUE.D { MODELPARAM_VALUE.D PARAM_VALUE.D } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.D}] ${MODELPARAM_VALUE.D}
}

proc update_MODELPARAM_VALUE.fc { MODELPARAM_VALUE.fc PARAM_VALUE.fc } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.fc}] ${MODELPARAM_VALUE.fc}
}

