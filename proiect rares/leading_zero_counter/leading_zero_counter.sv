module leading_zero_counter (
    input  logic [7:0] in,
    output logic [3:0] count
);

    always_comb begin
        if      (in[7] == 1'b1) count = 4'd0;
        else if (in[6] == 1'b1) count = 4'd1;
        else if (in[5] == 1'b1) count = 4'd2;
        else if (in[4] == 1'b1) count = 4'd3;
        else if (in[3] == 1'b1) count = 4'd4;
        else if (in[2] == 1'b1) count = 4'd5;
        else if (in[1] == 1'b1) count = 4'd6;
        else if (in[0] == 1'b1) count = 4'd7;
        else                    count = 4'd8; 
    end

endmodule