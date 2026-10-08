module zero_extender (
    input  logic [3:0] in,
    output logic [7:0] out
);

    always_comb begin
        out = {4'b0000, in};
    end

endmodule