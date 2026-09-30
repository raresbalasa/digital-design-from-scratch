module tb_adder;
    logic [7:0] a;
    logic [7:0] b;
    logic [8:0] sum;

    adder dut (.a(a), .b(b), .sum(sum));

    initial begin
        a = 8'd15; b = 8'd25; #10;
        a = 8'd100; b = 8'd200; #10;
        $finish;
    end
endmodule