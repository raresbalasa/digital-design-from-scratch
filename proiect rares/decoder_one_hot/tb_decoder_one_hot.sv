module tb_decoder_one_hot;

    logic [2:0] in;
    logic [7:0] out;

    decoder_one_hot dut (
        .in(in),
        .out(out)
    );

    initial begin
        in = 3'd0; #10;
        in = 3'd2; #10;
        in = 3'd5; #10;
        in = 3'd7; #10;
        $finish;
    end

endmodule