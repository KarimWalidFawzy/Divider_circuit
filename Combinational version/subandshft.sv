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
/*
a=[]
b=[]
a= 010110 | 22-10=12=1100
b= 001010 | ~b=110101 (~b+1)= 110110
---------
   010110
   110110
---------
(1)001100 ignore the one -considered overflow-

a+~b+1==(a+1)+~b
x[n:0];
x<<1+1=={x[n-1:0],1};
concatenate by 1 or concatenate by 0 
a[31]=1



*/