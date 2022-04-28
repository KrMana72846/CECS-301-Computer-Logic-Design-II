vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xlslice_v1_0_2
vlib activehdl/util_vector_logic_v2_0_1

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlslice_v1_0_2 activehdl/xlslice_v1_0_2
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1

vcom -work xil_defaultlib -93 \
"../../../bd/Datapath/ip/Datapath_ALU_0_0/sim/Datapath_ALU_0_0.vhd" \
"../../../bd/Datapath/ip/Datapath_instmem_0_0/sim/Datapath_instmem_0_0.vhd" \
"../../../bd/Datapath/ip/Datapath_PC_0_0/sim/Datapath_PC_0_0.vhd" \
"../../../bd/Datapath/ip/Datapath_PCADD_0_0/sim/Datapath_PCADD_0_0.vhd" \
"../../../bd/Datapath/ip/Datapath_regfile_0_0/sim/Datapath_regfile_0_0.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 \
"../../../../lab_5.srcs/sources_1/bd/Datapath/ipshared/f044/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Datapath/ip/Datapath_xlslice_0_0/sim/Datapath_xlslice_0_0.v" \
"../../../bd/Datapath/ip/Datapath_xlslice_0_1/sim/Datapath_xlslice_0_1.v" \
"../../../bd/Datapath/ip/Datapath_xlslice_0_2/sim/Datapath_xlslice_0_2.v" \
"../../../bd/Datapath/ip/Datapath_xlslice_0_3/sim/Datapath_xlslice_0_3.v" \
"../../../bd/Datapath/ip/Datapath_xlslice_3_0/sim/Datapath_xlslice_3_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Datapath/ip/Datapath_ADD_0_0/sim/Datapath_ADD_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Datapath/ip/Datapath_xlslice_4_0/sim/Datapath_xlslice_4_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Datapath/ip/Datapath_signExtend_0_0/sim/Datapath_signExtend_0_0.vhd" \
"../../../bd/Datapath/ip/Datapath_shiftReg_0_0/sim/Datapath_shiftReg_0_0.vhd" \
"../../../bd/Datapath/ip/Datapath_mux_0_0/sim/Datapath_mux_0_0.vhd" \
"../../../bd/Datapath/ip/Datapath_datamem_0_0/sim/Datapath_datamem_0_0.vhd" \
"../../../bd/Datapath/ip/Datapath_mux_1_0/sim/Datapath_mux_1_0.vhd" \
"../../../bd/Datapath/ip/Datapath_mux_5bit_0_0/sim/Datapath_mux_5bit_0_0.vhd" \

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../lab_5.srcs/sources_1/bd/Datapath/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Datapath/ip/Datapath_util_vector_logic_0_0/sim/Datapath_util_vector_logic_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Datapath/ip/Datapath_mux_1_1/sim/Datapath_mux_1_1.vhd" \
"../../../bd/Datapath/ip/Datapath_Control_0_5/sim/Datapath_Control_0_5.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

