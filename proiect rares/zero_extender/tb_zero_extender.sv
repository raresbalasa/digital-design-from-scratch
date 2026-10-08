module tb_zero_extender;

    logic [3:0] in;
    logic [7:0] out;

    zero_extender dut (
        .in(in),
        .out(out)
    );

    initial begin
        in = 4'b0000; #10;
        in = 4'b0111; #10;
        in = 4'b1010; #10;
        in = 4'b1111; #10;
        $finish;
    end

endmodule