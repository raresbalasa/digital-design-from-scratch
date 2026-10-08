module tb_rom;

    logic clk;
    logic [2:0] addr;
    logic [7:0] data_out;

    rom dut (
    .*
    );

    always #5 clk = ~clk;

    initial begin
        clk  = 1'b0;
        addr = 3'd0;
        #12;

        addr = 3'd1; #10;
        addr = 3'd2; #10;
        addr = 3'd3; #10;
        addr = 3'd4; #10;
        addr = 3'd5; #10;
        addr = 3'd6; #10;
        addr = 3'd7; #10;

        $finish;
    end

endmodule