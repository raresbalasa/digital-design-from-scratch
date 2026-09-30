module tb_subtractor;
    logic [7:0] a;
    logic [7:0] b;
    logic [7:0] diff;

    subtractor dut (.a(a), .b(b), .diff(diff));

    initial begin
        a = 8'd50; b = 8'd20; #10;
        a = 8'd100; b = 8'd45; #10;
        $finish;
    end
endmodule