module tb_demux_1_n;

    localparam WIDTH = 8;
    logic  in;
    logic  sel;
    logic [WIDTH-1:0] out0;
    logic [WIDTH-1:0] out1;

    demux_1_n #(.WIDTH(WIDTH)) dut (
        .in(in),
        .sel(sel),
        .out0(out0),
        .out1(out1)
    );

    initial begin
        in = 1'b1; sel = 1'b0; #10;
        sel = 1'b1; #10;
        in = 1'b0; sel = 1'b0; #10;
        sel = 1'b1; #10;
        $finish;
    end

endmodule