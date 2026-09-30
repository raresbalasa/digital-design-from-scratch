module subtractor (
    input  logic [7:0] a,
    input  logic [7:0] b,
    output logic [7:0] diff
);

    assign diff = a - b;

endmodule