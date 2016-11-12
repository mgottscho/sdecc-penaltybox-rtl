# Author: Mark Gottscho
# Email: mgottscho@ucla.edu
# Synthesis Tcl Script
# Based on lab2 Synthesis TCL script from EE 201A Fall 2015 TA

#**************************************************/
#* Script for Cadence RTL Compiler synthesis      */
#*                                                */
#* To run: rc < synth.tcl                 */
#*                                                */
#**************************************************/

set_db common_ui false

# Use verbose RC script console output
set_attribute information_level 9

# Set base working directory: have this point to your directory where you will be doing the work 
set base_dir "/app/design/puneet/projects/mgottscho/fifo-synth/"

# Set path where RC will look for RTL design files
set_attribute hdl_search_path {./}

# Make sure errors are reported for missing modules
set_attribute hdl_error_on_blackbox true /

# Set path where RC will look for timing libraries, i.e., Liberty files (.lib suffix)
set_attribute lib_search_path {./}

# Set filename of the Liberty file for our Nangate library
set_attribute library NanGate_15nm_OCL_typical_conditional_ecsm.lib
#NangateOpenCellLibrary_typical.lib

# Set list of all necessary RTL files written in HDLs like Verilog or VHDL, separated by spaces
#set hdl_files {syn_fifo.v ram_dp_ar_aw.v}
set hdl_files {bypass_latch.sv bypass_latch_chain.sv latch_word.sv}

# Set the name of the design within RC
set DNAME bypass_latch_chain

# Set the name of the top-level module used in the design HDL
set DESIGN bypass_latch_chain

# Set the name of the clock signal used in the design HDL
set clkpin clk

# Load Verilog design files into RC
read_hdl -sv ${hdl_files}

# Initialize design from design RTL
elaborate $DESIGN

###################################
# Apply design constraints for logic synthesis -- define clock period, slew rate, relative block I/O delays, etc. Here, we've only set timing constraints, with no area or power constraints listed.

# Set clock period
# EE 201A Lab 2 Problem 1A: Modify ONLY the clock period constraint in following line
set clock [define_clock -period 1000 -name ${clkpin} [clock_ports]]	

# Set block I/O external delays (needed for tool to "close timing")
external_delay -input 0 -clock ${clkpin} [find / -port ports_in/*]
external_delay -output 0 -clock ${clkpin} [find / -port ports_out/*]

# Set clock slew rate (rise/fall time)
dc::set_clock_transition .1 ${clkpin}
###################################

# Check for any issues
check_design -unresolved

# List possible timing problems prior to synthesis
report timing -lint

# Synthesize design and map it to technology library
synthesize -to_mapped

# List possible timing problems after synthesis
report timing -lint

# Generate post-synthesis reports on timing, area, and power estimates
report timing  > output/synth_report_timing.txt
report gates  > output/synth_report_gates.txt
report power  > output/synth_report_power.txt

# Output the synthesized netlist to a new Verilog file
write_hdl -mapped > output/${DNAME}_synthesized.v

# Export the design constraints to SDC file
write_sdc >  output/${DNAME}.sdc

# Report final timing again to console for user to review
report timing -lint -verbose

puts \n 
puts "Synthesis Finished!         "
puts \n
puts "Check output/ for synthesis results and reports."
puts \n

# Exit RC 
quit
