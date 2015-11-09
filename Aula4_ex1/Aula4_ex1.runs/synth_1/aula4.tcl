# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1
set_property target_language Verilog [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
read_vhdl -library xil_defaultlib T:/Valdecir/Aula4/Aula4_ex1/Aula4_ex1.srcs/sources_1/new/Aula4_ex1.vhd
read_xdc T:/Valdecir/Aula4/Aula4_ex1/Aula4_ex1.srcs/constrs_1/imports/Problemas/io_basico.xdc
set_property used_in_implementation false [get_files T:/Valdecir/Aula4/Aula4_ex1/Aula4_ex1.srcs/constrs_1/imports/Problemas/io_basico.xdc]

set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir T:/Valdecir/Aula4/Aula4_ex1/Aula4_ex1.cache/wt [current_project]
set_property parent.project_dir T:/Valdecir/Aula4/Aula4_ex1 [current_project]
synth_design -top aula4 -part xc7a100tcsg324-1
write_checkpoint aula4.dcp
report_utilization -file aula4_utilization_synth.rpt -pb aula4_utilization_synth.pb
