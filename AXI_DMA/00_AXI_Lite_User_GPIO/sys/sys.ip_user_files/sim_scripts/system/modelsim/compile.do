vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_4
vlib modelsim_lib/msim/processing_system7_vip_v1_0_6
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/gigantic_mux
vlib modelsim_lib/msim/xlconcat_v2_1_1
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_18
vlib modelsim_lib/msim/fifo_generator_v13_2_3
vlib modelsim_lib/msim/axi_data_fifo_v2_1_17
vlib modelsim_lib/msim/axi_crossbar_v2_1_19
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_18

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 modelsim_lib/msim/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 modelsim_lib/msim/processing_system7_vip_v1_0_6
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap gigantic_mux modelsim_lib/msim/gigantic_mux
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_18 modelsim_lib/msim/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 modelsim_lib/msim/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 modelsim_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 modelsim_lib/msim/axi_crossbar_v2_1_19
vmap axi_protocol_converter_v2_1_18 modelsim_lib/msim/axi_protocol_converter_v2_1_18

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"F:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
"../../../bd/system/ipshared/23c4/hdl/GPIO_LITE_ML_v1_0_S00_AXI.v" \
"../../../bd/system/ipshared/23c4/hdl/GPIO_LITE_ML_v1_0.v" \
"../../../bd/system/ip/system_GPIO_LITE_ML_0_1/sim/system_GPIO_LITE_ML_0_1.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \
"../../../bd/system/ipshared/b180/math_ip.srcs/sources_1/imports/lab2/lab2_user_logic.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ipshared/b180/math_ip.srcs/sources_1/imports/lab2/math_ip.v" \
"../../../bd/system/ip/system_math_ip_0_0/sim/system_math_ip_0_0.v" \
"../../../bd/system/ip/system_ila_0_0/sim/system_ila_0_0.v" \
"../../../bd/system/ip/system_vio_0_0/sim/system_vio_0_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_0/sim/bd_d5b8_ila_lib_0.v" \

vlog -work gigantic_mux -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_1/bd_d5b8_g_inst_0_gigantic_mux.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_1/sim/bd_d5b8_g_inst_0.v" \

vlog -work xlconcat_v2_1_1 -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_2/sim/bd_d5b8_slot_0_aw_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_3/sim/bd_d5b8_slot_0_w_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_4/sim/bd_d5b8_slot_0_b_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_5/sim/bd_d5b8_slot_0_ar_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_6/sim/bd_d5b8_slot_0_r_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/sim/bd_d5b8.v" \
"../../../bd/system/ip/system_system_ila_0_0/sim/system_system_ila_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_18 -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+../../../../Miz_sys.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+F:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

