import os
import math
import string
import struct
import sys
base_dir = os.path.abspath('./')
#os.chdir(base_dir)

args=sys.argv
try: filepath = (args[1])
except IndexError: sys.exit('Please input the verilog file. Format: python evaluate_design <path to synthesized verilog file> <your synthesized verilog filename>')
try: verilog_file = (args[2])
except IndexError: sys.exit('Please input the verilog file. Format: python evaluate_design <path to synthesized verilog file> <your synthesized verilog filename>')
flag_1=0
flag_2=0
print('Evaluating...')
for files in os.listdir(filepath):
	if verilog_file == files:
		flag_1=1
for files in os.listdir('./'):
	if 'template_evaluate' == files:
		flag_2=1

if(flag_1==0):
	sys.exit('Can\'t find verilog file: %s in folder %s' % verilog_file % filepath)
if(flag_2==0):
	sys.exit('Can\'t find file: template_evaluate in current folder')
		
os.system('sed s/Verilog_filename/%s/g template_evaluate > evaluate_tmp.tcl ' % verilog_file)
os.system('rc -f evaluate_tmp.tcl');

timing_file ='output/evaluate_report_timing.txt'
power_file = 'output/evaluate_report_power.txt'

fs = open(timing_file,"r") # read log file
content = fs.readlines()
fs.close()

temp = content[len(content)-3].split()
try: Min_clock = 1000 - int(temp[len(temp)-1].split('ps')[0])
except ValueError: print('Errors in your verilog file!') 
print('Your minimum clock period is %i ps' % Min_clock)

fs = open(power_file,"r") # read log file
content = fs.readlines()
fs.close()

temp = content[len(content)-2].split()
try: Power = float(temp[len(temp)-1])
except ValueError: print('Errors in your verilog file!') 
print('Your power is %f nW' % Power)

os.system('rm evaluate_tmp.tcl output/evaluate_report_timing.txt output/evaluate_report_power.txt')
print('Done.')
