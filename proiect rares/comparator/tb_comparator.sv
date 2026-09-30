module tb_comparator;
    logic [7:0] a;
    logic [7:0] b;
    logic eq, lt, gt;

    comparator dut (.*);

    initial begin
        a = 8'd25; b = 8'd25; #10;
        a = 8'd10; b = 8'd30; #10;
        a = 8'd50; b = 8'd20; #10;
        $finish;
    end
endmodule