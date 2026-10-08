module timer (
    input  logic clk,
    input  logic rst,
    input  logic en,
    input  logic [7:0] limit,
    output logic done
);

    logic [7:0] count;

    always_ff @(posedge clk) begin
        if (rst) begin
            count <= 8'd0;
            done  <= 1'b0;
        end else if (en) begin
            if (count >= limit) begin
                count <= 8'd0;
                done  <= 1'b1;
            end else begin
                count <= count + 8'd1;
                done  <= 1'b0;
            end
        end else begin
            done <= 1'b0;
        end
    end

endmodule