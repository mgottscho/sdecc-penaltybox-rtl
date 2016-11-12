# ####################################################################

#  Created by Genus(TM) Synthesis Solution 16.10-p006_1 on Fri Nov 11 17:36:50 -0800 2016

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1.0fF
set_units -time 1.0ps

# Set the current design
current_design bypass_latch_chain

create_clock -name "clk" -period 1000.0 -waveform {0.0 500.0} 
set_clock_transition 0.1 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[8]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[9]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[10]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[11]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[12]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[13]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[14]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[15]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[16]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[17]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[18]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[19]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[20]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[21]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[22]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[23]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[24]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[25]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[26]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[27]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[28]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[29]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[30]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[31]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[32]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[33]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[34]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[35]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[36]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[37]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[38]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[39]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[40]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[41]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[42]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[43]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[44]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[45]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[46]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[47]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[48]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[49]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[50]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[51]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[52]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[53]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[54]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[55]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[56]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[57]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[58]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[59]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[60]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[61]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[62]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[63]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[64]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[65]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[66]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[67]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[68]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[69]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[70]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {in[71]}]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports en]
set_input_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports clk]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[4]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[5]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[6]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[7]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[8]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[9]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[10]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[11]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[12]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[13]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[14]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[15]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[16]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[17]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[18]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[19]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[20]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[21]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[22]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[23]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[24]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[25]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[26]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[27]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[28]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[29]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[30]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[31]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[32]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[33]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[34]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[35]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[36]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[37]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[38]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[39]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[40]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[41]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[42]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[43]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[44]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[45]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[46]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[47]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[48]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[49]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[50]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[51]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[52]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[53]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[54]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[55]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[56]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[57]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[58]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[59]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[60]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[61]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[62]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[63]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[64]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[65]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[66]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[67]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[68]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[69]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[70]}]
set_output_delay -clock [get_clocks clk] -add_delay 0.0 [get_ports {out[71]}]
set_wire_load_mode "enclosed"
set_dont_use [get_lib_cells NanGate_15nm_OCL/ANTENNA]
set_dont_use [get_lib_cells NanGate_15nm_OCL/FILLTIE]
set_dont_use [get_lib_cells NanGate_15nm_OCL/FILL_X1]
set_dont_use [get_lib_cells NanGate_15nm_OCL/FILL_X2]
set_dont_use [get_lib_cells NanGate_15nm_OCL/FILL_X4]
set_dont_use [get_lib_cells NanGate_15nm_OCL/FILL_X8]
set_dont_use [get_lib_cells NanGate_15nm_OCL/FILL_X16]
set_dont_use [get_lib_cells NanGate_15nm_OCL/TIEH]
set_dont_use [get_lib_cells NanGate_15nm_OCL/TIEL]