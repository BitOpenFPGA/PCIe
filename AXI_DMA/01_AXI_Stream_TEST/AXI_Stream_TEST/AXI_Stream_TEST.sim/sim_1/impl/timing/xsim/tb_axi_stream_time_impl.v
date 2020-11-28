// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sun Aug 30 21:02:41 2020
// Host        : LAPTOP-8E6RLG3I running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               F:/FILE/FPGA/ZYNQ/PCIe/01_AXI_Stream_TEST/AXI_Stream_TEST/AXI_Stream_TEST.sim/sim_1/impl/timing/xsim/tb_axi_stream_time_impl.v
// Design      : AXI_stream_v1
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* C_M00_AXIS_START_COUNT = "32" *) (* C_M00_AXIS_TDATA_WIDTH = "32" *) (* C_S00_AXIS_TDATA_WIDTH = "32" *) 
(* ECO_CHECKSUM = "481736c1" *) 
(* NotValidForBitStream *)
module AXI_stream_v1
   (m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready,
    s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid);
  input m00_axis_aclk;
  input m00_axis_aresetn;
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output [3:0]m00_axis_tstrb;
  output m00_axis_tlast;
  input m00_axis_tready;
  input s00_axis_aclk;
  input s00_axis_aresetn;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input [3:0]s00_axis_tstrb;
  input s00_axis_tlast;
  input s00_axis_tvalid;

  wire m00_axis_aclk;
  wire m00_axis_aclk_IBUF;
  wire m00_axis_aclk_IBUF_BUFG;
  wire m00_axis_aresetn;
  wire m00_axis_aresetn_IBUF;
  wire [31:0]m00_axis_tdata;
  wire [3:0]m00_axis_tdata_OBUF;
  wire m00_axis_tlast;
  wire m00_axis_tlast_OBUF;
  wire m00_axis_tready;
  wire m00_axis_tready_IBUF;
  wire [3:0]m00_axis_tstrb;
  wire m00_axis_tvalid;
  wire m00_axis_tvalid_OBUF;
  wire s00_axis_aclk;
  wire s00_axis_aclk_IBUF;
  wire s00_axis_aclk_IBUF_BUFG;
  wire s00_axis_aresetn;
  wire s00_axis_aresetn_IBUF;
  wire s00_axis_tlast;
  wire s00_axis_tlast_IBUF;
  wire s00_axis_tready;
  wire s00_axis_tready_OBUF;
  wire s00_axis_tvalid;
  wire s00_axis_tvalid_IBUF;

initial begin
 $sdf_annotate("tb_axi_stream_time_impl.sdf",,,,"tool_control");
end
  AXI_stream_v1_M00_AXIS AXI_stream_v1_M00_AXIS_inst
       (.Q(m00_axis_tdata_OBUF),
        .m00_axis_aclk_IBUF_BUFG(m00_axis_aclk_IBUF_BUFG),
        .m00_axis_aresetn_IBUF(m00_axis_aresetn_IBUF),
        .m00_axis_tlast_OBUF(m00_axis_tlast_OBUF),
        .m00_axis_tready_IBUF(m00_axis_tready_IBUF),
        .m00_axis_tvalid_OBUF(m00_axis_tvalid_OBUF));
  AXI_stream_v1_S00_AXIS AXI_stream_v1_S00_AXIS_inst
       (.s00_axis_aclk_IBUF_BUFG(s00_axis_aclk_IBUF_BUFG),
        .s00_axis_aresetn_IBUF(s00_axis_aresetn_IBUF),
        .s00_axis_tlast_IBUF(s00_axis_tlast_IBUF),
        .s00_axis_tready_OBUF(s00_axis_tready_OBUF),
        .s00_axis_tvalid_IBUF(s00_axis_tvalid_IBUF));
  BUFG m00_axis_aclk_IBUF_BUFG_inst
       (.I(m00_axis_aclk_IBUF),
        .O(m00_axis_aclk_IBUF_BUFG));
  IBUF m00_axis_aclk_IBUF_inst
       (.I(m00_axis_aclk),
        .O(m00_axis_aclk_IBUF));
  IBUF m00_axis_aresetn_IBUF_inst
       (.I(m00_axis_aresetn),
        .O(m00_axis_aresetn_IBUF));
  OBUF \m00_axis_tdata_OBUF[0]_inst 
       (.I(m00_axis_tdata_OBUF[0]),
        .O(m00_axis_tdata[0]));
  OBUF \m00_axis_tdata_OBUF[10]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[10]));
  OBUF \m00_axis_tdata_OBUF[11]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[11]));
  OBUF \m00_axis_tdata_OBUF[12]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[12]));
  OBUF \m00_axis_tdata_OBUF[13]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[13]));
  OBUF \m00_axis_tdata_OBUF[14]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[14]));
  OBUF \m00_axis_tdata_OBUF[15]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[15]));
  OBUF \m00_axis_tdata_OBUF[16]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[16]));
  OBUF \m00_axis_tdata_OBUF[17]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[17]));
  OBUF \m00_axis_tdata_OBUF[18]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[18]));
  OBUF \m00_axis_tdata_OBUF[19]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[19]));
  OBUF \m00_axis_tdata_OBUF[1]_inst 
       (.I(m00_axis_tdata_OBUF[1]),
        .O(m00_axis_tdata[1]));
  OBUF \m00_axis_tdata_OBUF[20]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[20]));
  OBUF \m00_axis_tdata_OBUF[21]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[21]));
  OBUF \m00_axis_tdata_OBUF[22]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[22]));
  OBUF \m00_axis_tdata_OBUF[23]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[23]));
  OBUF \m00_axis_tdata_OBUF[24]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[24]));
  OBUF \m00_axis_tdata_OBUF[25]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[25]));
  OBUF \m00_axis_tdata_OBUF[26]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[26]));
  OBUF \m00_axis_tdata_OBUF[27]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[27]));
  OBUF \m00_axis_tdata_OBUF[28]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[28]));
  OBUF \m00_axis_tdata_OBUF[29]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[29]));
  OBUF \m00_axis_tdata_OBUF[2]_inst 
       (.I(m00_axis_tdata_OBUF[2]),
        .O(m00_axis_tdata[2]));
  OBUF \m00_axis_tdata_OBUF[30]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[30]));
  OBUF \m00_axis_tdata_OBUF[31]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[31]));
  OBUF \m00_axis_tdata_OBUF[3]_inst 
       (.I(m00_axis_tdata_OBUF[3]),
        .O(m00_axis_tdata[3]));
  OBUF \m00_axis_tdata_OBUF[4]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[4]));
  OBUF \m00_axis_tdata_OBUF[5]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[5]));
  OBUF \m00_axis_tdata_OBUF[6]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[6]));
  OBUF \m00_axis_tdata_OBUF[7]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[7]));
  OBUF \m00_axis_tdata_OBUF[8]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[8]));
  OBUF \m00_axis_tdata_OBUF[9]_inst 
       (.I(1'b0),
        .O(m00_axis_tdata[9]));
  OBUF m00_axis_tlast_OBUF_inst
       (.I(m00_axis_tlast_OBUF),
        .O(m00_axis_tlast));
  IBUF m00_axis_tready_IBUF_inst
       (.I(m00_axis_tready),
        .O(m00_axis_tready_IBUF));
  OBUF \m00_axis_tstrb_OBUF[0]_inst 
       (.I(1'b1),
        .O(m00_axis_tstrb[0]));
  OBUF \m00_axis_tstrb_OBUF[1]_inst 
       (.I(1'b1),
        .O(m00_axis_tstrb[1]));
  OBUF \m00_axis_tstrb_OBUF[2]_inst 
       (.I(1'b1),
        .O(m00_axis_tstrb[2]));
  OBUF \m00_axis_tstrb_OBUF[3]_inst 
       (.I(1'b1),
        .O(m00_axis_tstrb[3]));
  OBUF m00_axis_tvalid_OBUF_inst
       (.I(m00_axis_tvalid_OBUF),
        .O(m00_axis_tvalid));
  BUFG s00_axis_aclk_IBUF_BUFG_inst
       (.I(s00_axis_aclk_IBUF),
        .O(s00_axis_aclk_IBUF_BUFG));
  IBUF s00_axis_aclk_IBUF_inst
       (.I(s00_axis_aclk),
        .O(s00_axis_aclk_IBUF));
  IBUF s00_axis_aresetn_IBUF_inst
       (.I(s00_axis_aresetn),
        .O(s00_axis_aresetn_IBUF));
  IBUF s00_axis_tlast_IBUF_inst
       (.I(s00_axis_tlast),
        .O(s00_axis_tlast_IBUF));
  OBUF s00_axis_tready_OBUF_inst
       (.I(s00_axis_tready_OBUF),
        .O(s00_axis_tready));
  IBUF s00_axis_tvalid_IBUF_inst
       (.I(s00_axis_tvalid),
        .O(s00_axis_tvalid_IBUF));
endmodule

module AXI_stream_v1_M00_AXIS
   (m00_axis_tvalid_OBUF,
    m00_axis_tlast_OBUF,
    Q,
    m00_axis_aclk_IBUF_BUFG,
    m00_axis_tready_IBUF,
    m00_axis_aresetn_IBUF);
  output m00_axis_tvalid_OBUF;
  output m00_axis_tlast_OBUF;
  output [3:0]Q;
  input m00_axis_aclk_IBUF_BUFG;
  input m00_axis_tready_IBUF;
  input m00_axis_aresetn_IBUF;

  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_2_n_0 ;
  wire [3:0]Q;
  wire axis_tlast_delay_i_1_n_0;
  wire axis_tvalid;
  wire axis_tvalid_delay_i_1_n_0;
  wire count;
  wire \count[2]_i_1_n_0 ;
  wire [4:0]count_reg__0;
  wire m00_axis_aclk_IBUF_BUFG;
  wire m00_axis_aresetn_IBUF;
  wire m00_axis_tlast_OBUF;
  wire m00_axis_tready_IBUF;
  wire m00_axis_tvalid_OBUF;
  wire [1:0]mst_exec_state;
  wire [4:0]p_0_in;
  wire [3:0]p_1_in;
  wire \read_pointer[3]_i_1_n_0 ;
  wire [3:0]read_pointer_reg__0;
  wire tx_done_i_1_n_0;
  wire tx_done_i_2_n_0;
  wire tx_done_reg_n_0;
  wire tx_en;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9D00)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I3(m00_axis_aresetn_IBUF),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCE8A0000)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(tx_done_reg_n_0),
        .I3(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I4(m00_axis_aresetn_IBUF),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_mst_exec_state[1]_i_2 
       (.I0(count_reg__0[3]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[0]),
        .I3(count_reg__0[4]),
        .I4(count_reg__0[2]),
        .O(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axis_tlast_delay_i_1
       (.I0(read_pointer_reg__0[3]),
        .I1(read_pointer_reg__0[2]),
        .I2(read_pointer_reg__0[0]),
        .I3(read_pointer_reg__0[1]),
        .O(axis_tlast_delay_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axis_tlast_delay_reg
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axis_tlast_delay_i_1_n_0),
        .Q(m00_axis_tlast_OBUF),
        .R(axis_tvalid_delay_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tvalid_delay_i_1
       (.I0(m00_axis_aresetn_IBUF),
        .O(axis_tvalid_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    axis_tvalid_delay_i_2
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(read_pointer_reg__0[3]),
        .O(axis_tvalid));
  FDRE #(
    .INIT(1'b0)) 
    axis_tvalid_delay_reg
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axis_tvalid),
        .Q(m00_axis_tvalid_OBUF),
        .R(axis_tvalid_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[2]),
        .I3(count_reg__0[3]),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'h04)) 
    \count[4]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[3]),
        .I4(count_reg__0[4]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(count),
        .D(p_0_in[0]),
        .Q(count_reg__0[0]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(count),
        .D(p_0_in[1]),
        .Q(count_reg__0[1]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(count),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg__0[2]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(count),
        .D(p_0_in[3]),
        .Q(count_reg__0[3]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(count),
        .D(p_0_in[4]),
        .Q(count_reg__0[4]),
        .R(axis_tvalid_delay_i_1_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    \read_pointer[3]_i_1 
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(m00_axis_tready_IBUF),
        .I3(read_pointer_reg__0[3]),
        .O(\read_pointer[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[0] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(\read_pointer[3]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(read_pointer_reg__0[0]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[1] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(\read_pointer[3]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(read_pointer_reg__0[1]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[2] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(\read_pointer[3]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(read_pointer_reg__0[2]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[3] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(\read_pointer[3]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(read_pointer_reg__0[3]),
        .R(axis_tvalid_delay_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_data_out[0]_i_1 
       (.I0(read_pointer_reg__0[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \stream_data_out[1]_i_1 
       (.I0(read_pointer_reg__0[0]),
        .I1(read_pointer_reg__0[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \stream_data_out[2]_i_1 
       (.I0(read_pointer_reg__0[0]),
        .I1(read_pointer_reg__0[1]),
        .I2(read_pointer_reg__0[2]),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'h0020)) 
    \stream_data_out[3]_i_1 
       (.I0(m00_axis_tready_IBUF),
        .I1(read_pointer_reg__0[3]),
        .I2(mst_exec_state[1]),
        .I3(mst_exec_state[0]),
        .O(tx_en));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \stream_data_out[3]_i_2 
       (.I0(read_pointer_reg__0[1]),
        .I1(read_pointer_reg__0[0]),
        .I2(read_pointer_reg__0[2]),
        .I3(read_pointer_reg__0[3]),
        .O(p_1_in[3]));
  FDSE #(
    .INIT(1'b1)) 
    \stream_data_out_reg[0] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(tx_en),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .S(axis_tvalid_delay_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[1] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(tx_en),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[2] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(tx_en),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[3] 
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(tx_en),
        .D(p_1_in[3]),
        .Q(Q[3]),
        .R(axis_tvalid_delay_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAAABA)) 
    tx_done_i_1
       (.I0(tx_done_reg_n_0),
        .I1(read_pointer_reg__0[1]),
        .I2(read_pointer_reg__0[3]),
        .I3(read_pointer_reg__0[2]),
        .I4(read_pointer_reg__0[0]),
        .I5(tx_done_i_2_n_0),
        .O(tx_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0040FFFF)) 
    tx_done_i_2
       (.I0(read_pointer_reg__0[3]),
        .I1(m00_axis_tready_IBUF),
        .I2(mst_exec_state[1]),
        .I3(mst_exec_state[0]),
        .I4(m00_axis_aresetn_IBUF),
        .O(tx_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(m00_axis_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_done_i_1_n_0),
        .Q(tx_done_reg_n_0),
        .R(1'b0));
endmodule

module AXI_stream_v1_S00_AXIS
   (s00_axis_tready_OBUF,
    s00_axis_tlast_IBUF,
    s00_axis_aclk_IBUF_BUFG,
    s00_axis_tvalid_IBUF,
    s00_axis_aresetn_IBUF);
  output s00_axis_tready_OBUF;
  input s00_axis_tlast_IBUF;
  input s00_axis_aclk_IBUF_BUFG;
  input s00_axis_tvalid_IBUF;
  input s00_axis_aresetn_IBUF;

  wire mst_exec_state_i_1_n_0;
  wire s00_axis_aclk_IBUF_BUFG;
  wire s00_axis_aresetn_IBUF;
  wire s00_axis_tlast_IBUF;
  wire s00_axis_tready_OBUF;
  wire s00_axis_tvalid_IBUF;
  wire [2:0]write_pointer;
  wire \write_pointer[0]_i_1_n_0 ;
  wire \write_pointer[1]_i_1_n_0 ;
  wire \write_pointer[2]_i_1_n_0 ;
  wire writes_done;
  wire writes_done0_n_0;
  wire writes_done_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    mst_exec_state_i_1
       (.I0(s00_axis_tvalid_IBUF),
        .I1(s00_axis_tready_OBUF),
        .I2(writes_done),
        .I3(s00_axis_aresetn_IBUF),
        .O(mst_exec_state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mst_exec_state_reg
       (.C(s00_axis_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(mst_exec_state_i_1_n_0),
        .Q(s00_axis_tready_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \write_pointer[0]_i_1 
       (.I0(write_pointer[0]),
        .I1(s00_axis_tvalid_IBUF),
        .I2(s00_axis_tready_OBUF),
        .I3(s00_axis_aresetn_IBUF),
        .O(\write_pointer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \write_pointer[1]_i_1 
       (.I0(write_pointer[1]),
        .I1(s00_axis_tready_OBUF),
        .I2(s00_axis_tvalid_IBUF),
        .I3(write_pointer[0]),
        .I4(s00_axis_aresetn_IBUF),
        .O(\write_pointer[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \write_pointer[2]_i_1 
       (.I0(write_pointer[2]),
        .I1(s00_axis_tready_OBUF),
        .I2(s00_axis_tvalid_IBUF),
        .I3(write_pointer[1]),
        .I4(write_pointer[0]),
        .I5(s00_axis_aresetn_IBUF),
        .O(\write_pointer[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_pointer_reg[0] 
       (.C(s00_axis_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\write_pointer[0]_i_1_n_0 ),
        .Q(write_pointer[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_pointer_reg[1] 
       (.C(s00_axis_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\write_pointer[1]_i_1_n_0 ),
        .Q(write_pointer[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_pointer_reg[2] 
       (.C(s00_axis_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\write_pointer[2]_i_1_n_0 ),
        .Q(write_pointer[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF80)) 
    writes_done0
       (.I0(write_pointer[2]),
        .I1(write_pointer[0]),
        .I2(write_pointer[1]),
        .I3(s00_axis_tlast_IBUF),
        .O(writes_done0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF2A0000)) 
    writes_done_i_1
       (.I0(writes_done),
        .I1(s00_axis_tvalid_IBUF),
        .I2(s00_axis_tready_OBUF),
        .I3(writes_done0_n_0),
        .I4(s00_axis_aresetn_IBUF),
        .O(writes_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    writes_done_reg
       (.C(s00_axis_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
