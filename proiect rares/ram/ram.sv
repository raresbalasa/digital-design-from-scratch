module ram (
    input  logic clk,
    input  logic we,
    input  logic [2:0] addr,
    input  logic [7:0] data_in,
    output logic [7:0] data_out
);

    logic [7:0] memory [7:0];
    always_ff @(posedge clk) begin
        if (we) begin
            memory[addr] <= data_in;
        end
        data_out <= memory[addr];
    end

endmodule