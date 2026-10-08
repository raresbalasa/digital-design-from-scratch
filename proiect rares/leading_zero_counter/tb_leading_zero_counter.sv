module tb_leading_zero_counter;

    logic [7:0] in;
    logic [3:0] count;

    leading_zero_counter dut (
        .in(in),
        .count(count)
    );

    initial begin
        in = 8'b10000000; #10; 
        in = 8'b01000000; #10; 
        in = 8'b00010000; #10; 
        in = 8'b00000000; #10; 
        $finish;
    end

endmodule