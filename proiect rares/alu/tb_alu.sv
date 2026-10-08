module tb_alu;

    logic [7:0] a;
    logic [7:0] b;
    logic [2:0] alu_op;
    logic [7:0] result;
    logic zero;

    alu dut (
       .*
    );

    initial begin
        a = 8'd15; b = 8'd10; alu_op = 3'b000; #10; // adunare
        a = 8'd15; b = 8'd10; alu_op = 3'b001; #10; // scadere
        a = 8'b11110000; b = 8'b00001111; alu_op = 3'b010; #10; // and
        a = 8'b10101010; b = 8'b00000000; alu_op = 3'b110; #10; // shift stânga
        $finish;
    end

endmodule