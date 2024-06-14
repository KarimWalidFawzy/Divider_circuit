module divider(
    input [31:0] A,
    input [31:0] B,
    output [31:0] dividend,
    output [31:0] remainder,
    output DZ);
    reg [63:0] C;
    reciprocal R(B,C,DZ);
    reg [99:0] Temp;
    always @(*) begin
        if (!DZ) begin
            Temp<= (C*A)>>64;
        end
    end
    assign dividend = Temp;
endmodule
/*    ___________
   B |A

(A-)
*/