module pulse_generator #(
    parameter int WIDTH = 8
) (
    input  logic clk,
    input  logic rst,
    input  logic [WIDTH-1:0] in_signal,
    output logic [WIDTH-1:0] pulse
);

    logic [WIDTH-1:0] in_d;

    always_ff @(posedge clk) begin
        if (rst) begin
            in_d  <= 0;
            pulse <= 0;
        end else begin
            in_d  <= in_signal;
            pulse <= in_signal & ~in_d;
        end
    end

endmodule