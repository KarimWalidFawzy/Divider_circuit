parameter ARG_BIT_WIDTH = 32;
parameter PRECISION=64;
module divider(
    input [ARG_BIT_WIDTH-1:0] A,
    input [ARG_BIT_WIDTH-1:0] B,
    output [(ARG_BIT_WIDTH-1)+(PRECISION):0] dividend_and_fraction,
    output DZ);
    reg [PRECISION-1:0] C;
    reciprocal R(B,C,DZ);
    reg [ARG_BIT_WIDTH+PRECISION-1:0] Temp;
    always @(*) begin
        if (!DZ) begin
            Temp<= ((96'b0+C)*(96'b0+A));//(PRECISION+ARG_BIT_WIDTH)'b0
        end
    end
    assign dividend_and_fraction = Temp;
endmodule
/*
dividend[PRECISION-1:0]=fraction
dividend[ARG_BIT_WIDTH-1:PRECISION]=integer
*/