@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim IIR1stOrder_test_behav -key {Behavioral:sim_1:Functional:IIR1stOrder_test} -tclbatch IIR1stOrder_test.tcl -view C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/servo_tests/servo_tests_new/LTC2195x2_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
