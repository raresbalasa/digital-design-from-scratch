module tb_timer;

    logic clk;
    logic rst;
    logic en;
    logic [7:0] limit;
    logic done;

    timer dut (
    .*
    );

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        en = 1'b0;
        limit = 8'd4; 
        #12;
        rst = 1'b0;
        #10;
        en = 1'b1;
        #70;
        en = 1'b0;
        #20;
        rst = 1'b1;
        #10;

        $finish;
    end

endmodule