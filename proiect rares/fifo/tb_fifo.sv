module tb_fifo;

    logic       clk;
    logic       rst;
    logic       wr_en;
    logic       rd_en;
    logic [7:0] din;
    logic [7:0] dout;
    logic       full;
    logic       empty;

    fifo dut (
       .*
    );

    always #5 clk = ~clk;

    initial begin
        clk   = 1'b0;
        rst   = 1'b1;
        wr_en = 1'b0;
        rd_en = 1'b0;
        din   = 8'd0;
        #12;

        rst = 1'b0;
        #10;

        wr_en = 1'b1;
        din   = 8'h11; #10;
        din   = 8'h22; #10;
        din   = 8'h33; #10;
        din   = 8'h44; #10;
        wr_en = 1'b0;
        #10;

        rd_en = 1'b1;
        #40;
        rd_en = 1'b0;
        #20;

        $finish;
    end

endmodule