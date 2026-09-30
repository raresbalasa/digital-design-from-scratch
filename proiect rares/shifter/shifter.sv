module shifter (
    input  logic [7:0] data_in,
    input  logic [2:0] nrb,   //numarul de biti de shiftare(0-7)
    input  logic dir, // 0=shift la stanga, 1=shift la dreapta
    output logic [7:0] data_out
);

    always_comb begin
        if (dir == 1'b0)
            data_out = data_in<<nrb; 
        else
            data_out = data_in>>nrb;
    end

endmodule