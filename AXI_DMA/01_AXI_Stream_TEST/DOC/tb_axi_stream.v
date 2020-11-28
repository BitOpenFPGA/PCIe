`timescale 1 ns / 1 ps

module tb_axi_stream();

    reg sys_clk_i;
    reg sys_rst_n;

    wire axis_tlast;
    wire axis_tready;
    wire axis_tvalid;
    wire [32 - 1  :0] axis_tdata;
    wire [(32/8)-1:0] axis_tstrb;

    initial begin
        sys_clk_i = 0;
        sys_rst_n = 0;
        #40 sys_rst_n = 1;
    end

    always #10 sys_clk_i = ~sys_clk_i;

    AXI_stream_v1 #(
        .C_M00_AXIS_TDATA_WIDTH(32),
        .C_M00_AXIS_START_COUNT(32),

        // Parameters of Axi Slave Bus Interface S00_AXIS
        .C_S00_AXIS_TDATA_WIDTH(32)
    ) u_AXI_stream_v1 (
        // Ports of Axi Master Bus Interface M00_AXIS
        .m00_axis_aclk(sys_clk_i),
        .m00_axis_aresetn(sys_rst_n),
        .m00_axis_tvalid(axis_tvalid),
        .m00_axis_tdata(axis_tdata),
        .m00_axis_tstrb(axis_tstrb),
        .m00_axis_tlast(axis_tlast),
        .m00_axis_tready(axis_tready),

        // Ports of Axi Slave Bus Interface S00_AXIS
        .s00_axis_aclk(sys_clk_i),
        .s00_axis_aresetn(sys_rst_n),
        .s00_axis_tready(axis_tready),
        .s00_axis_tdata(axis_tdata),
        .s00_axis_tstrb(axis_tstrb),
        .s00_axis_tlast(axis_tlast),
        .s00_axis_tvalid(axis_tvalid)
    );

endmodule // tb_axi_stream