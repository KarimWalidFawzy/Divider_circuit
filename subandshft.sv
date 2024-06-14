parameter ARG_BIT_WIDTH = 32;
parameter PRECISION=64;
module subandshft(
    input [ARG_BIT_WIDTH:0] a,
    input [ARG_BIT_WIDTH-1:0] b,
    output [ARG_BIT_WIDTH:0] c,
    output nn);
    reg [ARG_BIT_WIDTH:0] diff;
    always @(*) begin
        diff<=a-b;
    end
    assign nn=~(diff<0);
    assign c=nn?(diff<<1):(a<<1);
endmodule