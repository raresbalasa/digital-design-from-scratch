module tb_pulse_generator;

    parameter int WIDTH = 8;

    logic clk;
    logic rst;
    logic [WIDTH-1:0] in_signal;
    logic [WIDTH-1:0] pulse;

    pulse_generator #(.WIDTH(WIDTH)) dut (
      .*
    );

    always #5 clk = ~clk;

    initial begin
        clk       = 1'b0;
        rst       = 1'b1;
        in_signal = '0;
        #12;

        rst = 1'b0;
        #10;

        in_signal = 8'b00000001; #10;
        in_signal = 8'b00000011; #10;
        in_signal = 8'b00000000; #10;
        in_signal = 8'b10101010; #10;
        in_signal = 8'b11111111; #20;

        $finish;
    end

endmodule