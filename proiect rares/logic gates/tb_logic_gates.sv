module tb_logic_gates;

    logic a;
    logic b;
    logic and_out;
    logic or_out;
    logic not_out_a;
    logic xor_out;
    logic nand_out;
    logic nor_out;
    logic xnor_out;

    logic_gates dut (
        .a(a),
        .b(b),
        .and_out(and_out),
        .or_out(or_out),
        .not_out_a(not_out_a),
        .xor_out(xor_out),
        .nand_out(nand_out),
        .nor_out(nor_out),
        .xnor_out(xnor_out)
    );

    initial begin
        a = 1'b0; b = 1'b0; #10;
        a = 1'b0; b = 1'b1; #10;
        a = 1'b1; b = 1'b0; #10;
        a = 1'b1; b = 1'b1; #10;
        $finish;
    end

endmodule