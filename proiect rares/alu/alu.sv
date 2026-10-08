module alu (
    input  logic [7:0] a,
    input  logic [7:0] b,
    input  logic [2:0] alu_op, 
    output logic [7:0] result,
    output logic zero   
);

    always_comb begin
        case (alu_op)
            3'b000: result = a + b;
            3'b001: result = a - b;
            3'b010: result = a & b;
            3'b011: result = a | b;
            3'b100: result = a ^ b;
            3'b101: result = ~a;
            3'b110: result = a << 1;  
            3'b111: result = a >> 1;
            default: result = 8'd0;
        endcase

        zero = (result == 8'd0);
    end

endmodule