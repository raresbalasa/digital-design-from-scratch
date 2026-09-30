module demux_1_n #(
    parameter WIDTH = 8
)(
    input  logic  in,
    input  logic  sel,
    output logic [WIDTH-1:0] out0,
    output logic [WIDTH-1:0] out1
);

    always_comb begin
        out0 = '0;
        out1 = '0;
        if (sel == 1'b0)
            out0 = {WIDTH{in}};
        else
            out1 = {WIDTH{in}};
    end

endmodule