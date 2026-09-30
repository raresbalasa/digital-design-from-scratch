module tb_mux_n;

    localparam WIDTH = 8;
    logic [WIDTH-1:0] in0;
    logic [WIDTH-1:0] in1;
    logic sel;
    logic [WIDTH-1:0] out;

    mux_n #(.WIDTH(WIDTH)) dut (
        .in0(in0),
        .in1(in1),
        .sel(sel),
        .out(out)
    );

    initial begin

        //sel=0 selectează in0
        in0 = 8'd10; in1 = 8'd20; sel = 1'b0; #10;
        //sel=1 selectează in1
        sel = 1'b1; #10;
        in0 = 8'd50; in1 = 8'd100; sel = 1'b0; #10;
        sel = 1'b1; #10;
        $finish;
    end

endmodule