module barrel_shifter (
    input  logic [7:0] in,
    input  logic [2:0] bits,
    output logic [7:0] out
);

    always_comb begin
        out = (in << bits) | (in >> (8 - bits));
    end

endmodule