module reciprocal_tb;
  bit clk;
  always clk=#5~clk;
  bit start;
  bit [31:0] argument;
  wire done;
  wire [63:0] out_numbers;
  wire dvz;
  sequential_reciprocal sr(.clk(clk),.start(start),
                        .done(done),.argument(argument),
                        .out_numbers(out_numbers),
                        .dvz(dvz));
  initial
    begin
      argument<=2'b10;
      start<=1;
      #100
      $display("s:%0b done:%0b",start,done);
      start<=0;
      while(done=='b0) begin 
        #5;
      end
      if(done)
      $display("%x",out_numbers);
      $finish;
    end
endmodule