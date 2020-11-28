set_property IOSTANDARD LVCMOS15 [get_ports DC]
set_property IOSTANDARD LVCMOS15 [get_ports RES]
set_property IOSTANDARD LVCMOS15 [get_ports SCLK]
set_property IOSTANDARD LVCMOS15 [get_ports SDIN]
set_property IOSTANDARD LVCMOS15 [get_ports VBAT]
set_property IOSTANDARD LVCMOS15 [get_ports VDD]

set_property PACKAGE_PIN B9 [get_ports DC]
set_property PACKAGE_PIN K10 [get_ports RES]
set_property PACKAGE_PIN H11 [get_ports SCLK]
set_property PACKAGE_PIN G9 [get_ports SDIN]

set_property SEVERITY {warning} [get_drc_checks NSTD-1]
set_property SEVERITY {warning} [get_drc_checks UCIO-1]


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list system_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 4 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {system_i/axis_data_fifo_0_M_AXIS_TKEEP[0]} {system_i/axis_data_fifo_0_M_AXIS_TKEEP[1]} {system_i/axis_data_fifo_0_M_AXIS_TKEEP[2]} {system_i/axis_data_fifo_0_M_AXIS_TKEEP[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {system_i/axis_data_fifo_0_M_AXIS_TDATA[0]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[1]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[2]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[3]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[4]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[5]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[6]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[7]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[8]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[9]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[10]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[11]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[12]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[13]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[14]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[15]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[16]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[17]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[18]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[19]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[20]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[21]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[22]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[23]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[24]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[25]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[26]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[27]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[28]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[29]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[30]} {system_i/axis_data_fifo_0_M_AXIS_TDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[0]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[1]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[2]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[3]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[4]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[5]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[6]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[7]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[8]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[9]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[10]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[11]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[12]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[13]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[14]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[15]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[16]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[17]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[18]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[19]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[20]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[21]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[22]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[23]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[24]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[25]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[26]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[27]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[28]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[29]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[30]} {system_i/axi_dma_0_M_AXIS_MM2S_TDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 4 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {system_i/axi_dma_0_M_AXIS_MM2S_TKEEP[0]} {system_i/axi_dma_0_M_AXIS_MM2S_TKEEP[1]} {system_i/axi_dma_0_M_AXIS_MM2S_TKEEP[2]} {system_i/axi_dma_0_M_AXIS_MM2S_TKEEP[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list system_i/axi_dma_0_M_AXIS_MM2S_TLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list system_i/axi_dma_0_M_AXIS_MM2S_TREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list system_i/axi_dma_0_M_AXIS_MM2S_TVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list system_i/axi_dma_0_s2mm_introut]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list system_i/axis_data_fifo_0_M_AXIS_TLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list system_i/axis_data_fifo_0_M_AXIS_TREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list system_i/axis_data_fifo_0_M_AXIS_TVALID]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
