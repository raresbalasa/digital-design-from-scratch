module comparator (
    input  logic [7:0] a,
    input  logic [7:0] b,
    output logic eq,
    output logic lt,
    output logic gt
);
    always_comb begin
    if (a==b) begin eq=1;end
        else if (a<b) begin lt=1; end
            else begin gt=1; end
    end
endmodule