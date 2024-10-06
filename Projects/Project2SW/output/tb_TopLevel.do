#########################################################################
## Jake Hafele, Thomas Gaul
## Department of Electrical and Computer Engineering
## Iowa State University
#########################################################################
## tb.do
#########################################################################
## DESCRIPTION: This file contains a do file for the testbench for the 
##              tb unit. It adds some useful signals for testing
##              functionality and debugging the system. It also formats
##              the waveform and runs the simulation.
##              
## Created 03/08/2023
#########################################################################

#delete wave /tb/MyMips/*

add wave -noupdate -divider {General Inputs}
add wave -noupdate -color magenta -radix signed /tb/MyMips/iCLK
add wave -noupdate -color magenta -radix signed /tb/MyMips/iRST

# Internal Signals
add wave -noupdate -divider {Instruction Fetch}
add wave -noupdate -color cyan -radix hexadecimal /tb/MyMips/s_Inst
add wave -noupdate -color cyan -radix hexadecimal /tb/MyMips/s_IF_PC
add wave -noupdate -color cyan -radix hexadecimal /tb/MyMips/s_IF_PC_4

add wave -noupdate -divider {Instruction Decode}
add wave -noupdate -color orange -radix hexadecimal /tb/MyMips/s_ID_INSTR
add wave -noupdate -color orange -radix hexadecimal /tb/MyMips/s_ID_OPCODE
add wave -noupdate -color orange -radix hexadecimal /tb/MyMips/s_ID_FUNCT
add wave -noupdate -color orange -radix hexadecimal /tb/MyMips/s_ID_PC_4
add wave -noupdate -color orange -radix unsigned /tb/MyMips/s_ID_rs_ADDR
add wave -noupdate -color orange -radix unsigned /tb/MyMips/s_ID_rt_ADDR
add wave -noupdate -color orange -radix unsigned /tb/MyMips/s_ID_rd_ADDR
add wave -noupdate -color orange -radix decimal /tb/MyMips/s_ID_rs_DATA
add wave -noupdate -color orange -radix decimal /tb/MyMips/s_ID_rt_DATA

add wave -noupdate -divider {Execute}
add wave -noupdate -color red -radix hexadecimal /tb/MyMips/s_EX_nAdd_Sub
add wave -noupdate -color red -radix hexadecimal /tb/MyMips/s_EX_shift_SEL
add wave -noupdate -color red -radix hexadecimal /tb/MyMips/s_EX_logic_SEL
add wave -noupdate -color red -radix hexadecimal /tb/MyMips/s_EX_out_SEL
add wave -noupdate -color red -radix hexadecimal /tb/MyMips/s_EX_PC_4
add wave -noupdate -color red -radix unsigned /tb/MyMips/s_EX_rt_ADDR
add wave -noupdate -color red -radix unsigned /tb/MyMips/s_EX_rd_ADDR
add wave -noupdate -color red -radix decimal /tb/MyMips/s_EX_rs_DATA
add wave -noupdate -color red -radix decimal /tb/MyMips/s_EX_rt_DATA
add wave -noupdate -color red -radix decimal /tb/MyMips/s_EX_ALUOut

add wave -noupdate -divider {DMEM}
add wave -noupdate -color blue -radix hexadecimal /tb/MyMips/s_DMEM_reg_DST_DATA_SEL
add wave -noupdate -color blue -radix hexadecimal /tb/MyMips/s_DMEM_mem_WE
add wave -noupdate -color blue -radix hexadecimal /tb/MyMips/s_DMEM_PC_4
add wave -noupdate -color blue -radix unsigned /tb/MyMips/s_DMEM_RegWrAddr
add wave -noupdate -color blue -radix decimal /tb/MyMips/s_DMEM_DMEM_DATA
add wave -noupdate -color blue -radix decimal /tb/MyMips/s_DMEM_rt_DATA
add wave -noupdate -color blue -radix decimal /tb/MyMips/s_DMEM_ALUOut

add wave -noupdate -divider {Write Back}
add wave -noupdate -color white -radix hexadecimal /tb/MyMips/s_Ovfl
add wave -noupdate -color white -radix hexadecimal /tb/MyMips/s_Halt
add wave -noupdate -color white -radix hexadecimal /tb/MyMips/s_WB_PC_4
add wave -noupdate -color white -radix decimal /tb/MyMips/s_WB_ALUOut
add wave -noupdate -color white -radix hexadecimal /tb/MyMips/s_WB_RegWr
add wave -noupdate -color white -radix decimal /tb/MyMips/s_RegWrData
add wave -noupdate -color white -radix unsigned /tb/MyMips/s_WB_RegWrAddr

# toggle leaf name to off (only see one level)
config wave -signalnamewidth 1

# zoom fit to waves
wave zoom full
