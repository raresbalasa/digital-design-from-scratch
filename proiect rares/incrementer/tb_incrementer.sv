module tb_incrementer;
    logic [7:0] in;
    logic [7:0] out;

    incrementer dut (.in(in), .out(out));

    initial begin
        in = 8'd0; #10;
        in = 8'd41; #10;
        in = 8'd254; #10;
        $finish;
    end
endmodule