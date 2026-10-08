module tb_sign_extender;

    logic [3:0] in;
    logic [7:0] out;

    sign_extender dut (
        .in(in),
        .out(out)
    );

    initial begin
        in = 4'b0011; #10;
        in = 4'b1101; #10;
        in = 4'b1000; #10;
        in = 4'b0111; #10;
        $finish;
    end

endmodule