module counter (
    input  logic clk,
    input  logic rst,
    input  logic en,
    output logic [7:0] cnt
);

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            cnt <= 8'b00000000;
        end else if (en) begin
            cnt <= cnt + 8'd1;
        end
    end

endmodule