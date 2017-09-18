proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param xicom.use_bs_reader 1
  create_project -in_memory -part xc7k160tfbg676-1
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/dschussheim/Documents/GitHub/digital-servo/PSU/Firmware/KX1/servo_tests/9_15_2017/servo_tests_new/servo_tests_new.cache/wt [current_project]
  set_property parent.project_path C:/Users/dschussheim/Documents/GitHub/digital-servo/PSU/Firmware/KX1/servo_tests/9_15_2017/servo_tests_new/servo_tests_new.xpr [current_project]
  set_property ip_output_repo C:/Users/dschussheim/Documents/GitHub/digital-servo/PSU/Firmware/KX1/servo_tests/9_15_2017/servo_tests_new/servo_tests_new.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet C:/Users/dschussheim/Documents/GitHub/digital-servo/PSU/Firmware/KX1/servo_tests/9_15_2017/servo_tests_new/servo_tests_new.runs/synth_1/LBOx2.dcp
  read_xdc C:/Users/dschussheim/Documents/GitHub/digital-servo/PSU/Firmware/KX1/servo_tests/9_15_2017/servo_tests_new/servo_tests_const.xdc
  link_design -top LBOx2 -part xc7k160tfbg676-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force LBOx2_opt.dcp
  catch { report_drc -file LBOx2_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force LBOx2_placed.dcp
  catch { report_io -file LBOx2_io_placed.rpt }
  catch { report_utilization -file LBOx2_utilization_placed.rpt -pb LBOx2_utilization_placed.pb }
  catch { report_control_sets -verbose -file LBOx2_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force LBOx2_routed.dcp
  catch { report_drc -file LBOx2_drc_routed.rpt -pb LBOx2_drc_routed.pb -rpx LBOx2_drc_routed.rpx }
  catch { report_methodology -file LBOx2_methodology_drc_routed.rpt -rpx LBOx2_methodology_drc_routed.rpx }
  catch { report_power -file LBOx2_power_routed.rpt -pb LBOx2_power_summary_routed.pb -rpx LBOx2_power_routed.rpx }
  catch { report_route_status -file LBOx2_route_status.rpt -pb LBOx2_route_status.pb }
  catch { report_clock_utilization -file LBOx2_clock_utilization_routed.rpt }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file LBOx2_timing_summary_routed.rpt -rpx LBOx2_timing_summary_routed.rpx }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force LBOx2_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force LBOx2.mmi }
  write_bitstream -force LBOx2.bit 
  catch {write_debug_probes -no_partial_ltxfile -quiet -force debug_nets}
  catch {file copy -force debug_nets.ltx LBOx2.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

