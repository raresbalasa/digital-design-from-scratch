module logic_gates (
    input  logic a,
    input  logic b,
    output logic and_out,
    output logic or_out,
    output logic not_out_a,
    output logic xor_out,
    output logic nand_out,
    output logic nor_out,
    output logic xnor_out
);

    always_comb begin
        and_out   = a & b;
        or_out    = a | b;
        not_out_a = ~a;
        xor_out   = a ^ b;
        nand_out  = ~(a & b);
        nor_out   = ~(a | b);
        xnor_out  = ~(a ^ b);
    end

endmodule