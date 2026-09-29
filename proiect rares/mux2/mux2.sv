module mux2 (
    input  logic in0,
    input  logic in1,
    input  logic sel,
    output logic out
);

    always_comb begin
        if (sel == 1'd0) begin
            out = in0;
        end else begin
            out = in1;
        end
    end

endmodule