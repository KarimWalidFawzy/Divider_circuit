parameter ARG_BIT_WIDTH = 32;
parameter PRECISION = 64;
parameter COUNTER_BITS = $clog2(64)+1;//clog2
module sequential_reciprocal(
    input clk,
    input start,
    output done,
    input [ARG_BIT_WIDTH-1:0] argument,
    output [PRECISION-1:0] out_numbers,
    output dvz);
    reg d;
    assign dvz = (argument==0);
    reg [COUNTER_BITS-1:0] counter;
    reg [ARG_BIT_WIDTH:0] fp;
    reg [PRECISION-1:0] result;
    always @(posedge clk) begin
        if (start) begin
            d<=1'b0; 
          fp<='b01;
            counter<={(COUNTER_BITS){0}};
        end 
        else if(d==0 && !dvz) begin
            counter<=counter+1;
          if(fp<argument) begin
                fp<=(fp<<1);
            result[PRECISION-counter-1]<=1'b0;            
                end
            else begin
              fp<=((fp-argument)<<1);
              result[PRECISION-counter-1]<=1'b1;
            end
        end
      if(!(counter<PRECISION)) begin 
            d<=1;
            counter<='b0;
        end
    end
    assign out_numbers = result;
    assign done = d;
endmodule
/**        _   _   _ 
clk      _/ \_/ \_/ \_
           _______________________
start    _/                       \_____
         _______  ____
A        __0x13_><
O        __ **Starting to calculate 
done     __________________________/done calculation and wait a clock cycle before starting again
uint32 x=1;
uint32 y;
uint64=z;
z=0;
while(1){
    if(x<y){
    x=x<<1;
    z[]
    }
}
001  is(1<2)
010
---

*/