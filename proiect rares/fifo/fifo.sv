module fifo (
    input  logic       clk,
    input  logic       rst,
    input  logic       wr_en,
    input  logic       rd_en,
    input  logic [7:0] din,
    output logic [7:0] dout,
    output logic       full,
    output logic       empty
);

    logic [7:0] mem [7:0];
    logic [2:0] wr_ptr;
    logic [2:0] rd_ptr;
    logic [3:0] count; 

    assign empty = (count == 4'd0);
    assign full  = (count == 4'd8);

    always_ff @(posedge clk) begin
        if (rst) begin
            wr_ptr <= 3'd0;
            rd_ptr <= 3'd0;
            count  <= 4'd0;
        end else begin
            if (wr_en && !full) begin
                mem[wr_ptr] <= din;
                wr_ptr      <= wr_ptr + 3'd1;
            end

            if (rd_en && !empty) begin
                dout   <= mem[rd_ptr];
                rd_ptr <= rd_ptr + 3'd1;
            end

            if (wr_en && !full && !(rd_en && !empty)) begin
                count <= count + 4'd1;
            end else if (!wr_en && (rd_en && !empty)) begin
                count <= count - 4'd1;
            end
        end
    end

endmodule