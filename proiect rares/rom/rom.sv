module rom (
    input  logic clk,
    input  logic [2:0] addr,
    output logic [7:0] data_out
);

    logic [7:0] memory [7:0];

    initial begin
        memory[0] = 8'hAA;
        memory[1] = 8'h55;
        memory[2] = 8'h0F;
        memory[3] = 8'hF0;
        memory[4] = 8'h33;
        memory[5] = 8'hCC;
        memory[6] = 8'hFF;
        memory[7] = 8'h00;
    end

    always_ff @(posedge clk) begin
        data_out <= memory[addr];
    end

endmodule