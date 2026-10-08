module tb_priority_encoder;

    logic [3:0] in;
    logic [1:0] out;
    logic valid;

    priority_encoder dut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin

        in = 4'b0001; #10;
        in = 4'b0101; #10;
        in = 4'b1011; #10;
        in = 4'b0000; #10;
        
        $finish;
    end

endmodule