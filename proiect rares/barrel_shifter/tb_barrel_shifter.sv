module tb_barrel_shifter;

    logic [7:0] in;
    logic [2:0] bits;
    logic [7:0] out;

    barrel_shifter dut (
          .*
    );

    initial begin
        in = 8'b10101100; bits = 3'd1; #10;
        in = 8'b10101100; bits = 3'd3; #10;
        in = 8'b11110000; bits = 3'd4; #10;
        $finish;
    end

endmodule