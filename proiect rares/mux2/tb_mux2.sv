`timescale 1ns/1ps
module tb_mux2;

    logic in0;
    logic in1;
    logic sel;
    logic out;

    mux2 mux2tb (
        .in0(in0),
        .in1(in1),
        .sel(sel),
        .out(out)
    );

    initial begin
        sel = 1'b0; in0 = 1'b0; in1 = 1'b0; #10;
        sel = 1'b0; in0 = 1'b1; in1 = 1'b0; #10;
        sel = 1'b1; in0 = 1'b0; in1 = 1'b0; #10;
        sel = 1'b1; in0 = 1'b0; in1 = 1'b1; #10;

        $finish;
    end

endmodule