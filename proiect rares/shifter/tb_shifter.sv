module tb_shifter;

    logic [7:0] data_in;
    logic [2:0] nrb;
    logic dir;
    logic [7:0] data_out;

    shifter dut (
        .*
    );

    initial begin

        data_in = 8'd5; dir = 1'b0; nrb = 3'd2; #10;
        data_in = 8'd10; dir = 1'b0; nrb = 3'd3; #10;
        data_in = 8'd40; dir = 1'b1; nrb = 3'd1; #10;
        data_in = 8'd100; dir = 1'b1; nrb = 3'd3; #10;
        $finish;

    end

endmodule