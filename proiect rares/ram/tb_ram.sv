module tb_ram;

    logic clk;
    logic we;
    logic [2:0] addr;
    logic [7:0] data_in;
    logic [7:0] data_out;

    ram dut (
       .*
    );

    always #5 clk = ~clk;

    initial begin
        clk     = 1'b0;
        we      = 1'b0;
        addr    = 3'd0;
        data_in = 8'd0;
        #12;

        we      = 1'b1;
        addr    = 3'd0; data_in = 8'hA1; #10;
        addr = 3'd1; data_in = 8'hB2; #10;
        addr = 3'd2; data_in = 8'hC3; #10;

        we      = 1'b0;
        addr    = 3'd0; #10;
        addr    = 3'd1; #10;
        addr    = 3'd2; #10;

        $finish;
    end

endmodule