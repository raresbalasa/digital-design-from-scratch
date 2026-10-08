module priority_encoder (
    input  logic [3:0] in,
    output logic [1:0] out,
    output logic valid 
);

    always_comb begin
        out   = 2'b00;
        valid = 1'b1;

        if (in[3] == 1'b1) begin
            out = 2'b11;
        end else if (in[2] == 1'b1) begin
            out = 2'b10;
        end else if (in[1] == 1'b1) begin
            out = 2'b01;
        end else if (in[0] == 1'b1) begin
            out = 2'b00;
        end else begin
            out   = 2'b00;
            valid = 1'b0; 
        end
    end

endmodule