# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7k160tfbg676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_TEST_VIVADO/project_1/project_1.cache/wt [current_project]
set_property parent.project_path C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_TEST_VIVADO/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_TEST_VIVADO/project_1/project_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_TEST_VIVADO/project_1/AD9783.v
  C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_TEST_VIVADO/project_1/LTC2195.v
  C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_TEST_VIVADO/project_1/timescale.v
  C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_TEST_VIVADO/project_1/SPI.v
  C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_TEST_VIVADO/project_1/clk_div.v
  C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_TEST_VIVADO/project_1/deserializer.v
  C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_TEST_VIVADO/project_1/ADC_test.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_TEST_VIVADO/project_1/project_1.srcs/constrs_1/new/ADC_test_const.xdc
set_property used_in_implementation false [get_files C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_TEST_VIVADO/project_1/project_1.srcs/constrs_1/new/ADC_test_const.xdc]


synth_design -top ADC_test -part xc7k160tfbg676-1


write_checkpoint -force -noxdef ADC_test.dcp

catch { report_utilization -file ADC_test_utilization_synth.rpt -pb ADC_test_utilization_synth.pb }
