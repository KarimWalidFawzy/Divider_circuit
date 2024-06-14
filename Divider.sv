parameter ARG_BIT_WIDTH = 32;
parameter PRECISION=64;
module divider(
    input [ARG_BIT_WIDTH-1:0] A,
    input [ARG_BIT_WIDTH-1:0] B,
    output [(ARG_BIT_WIDTH-1)+(PRECISION-1):0] dividend_and_fraction,
    output DZ);
    reg [PRECISION-1:0] C;
    reciprocal R(B,C,DZ);
    reg [95:0] Temp;
    always @(*) begin
        if (!DZ) begin
            Temp<= ((96'b0+C)*(96'b0+A));
        end
    end
    assign dividend_and_fraction = Temp;
endmodule