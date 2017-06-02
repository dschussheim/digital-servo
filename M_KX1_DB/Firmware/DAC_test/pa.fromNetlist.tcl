
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name DAC_test -dir "C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/DAC_test/planAhead_run_3" -part xc7k160tfbg676-1
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/DAC_test/DAC_Sweep_Test.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/DAC_test} }
set_property target_constrs_file "DAC_Sweep_Test.ucf" [current_fileset -constrset]
add_files [list {DAC_Sweep_Test.ucf}] -fileset [get_property constrset [current_run]]
link_design
