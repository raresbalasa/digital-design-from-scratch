module tb_counter;

    logic clk;
    logic rst;
    logic en;
    logic [7:0] cnt;

    counter dut (
        .*
    );

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        en  = 1'b0;
        #12;

        rst = 1'b0;
        #10;

        en = 1'b1;  
        #50;

        en = 1'b0;  
        #20;

        en = 1'b1;  
        #30;

        rst = 1'b1;
        #10;

        $finish;
    end

endmodule