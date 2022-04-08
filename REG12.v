`timescale 1ns / 1ps

module reg12(
  input clk, INR, LOAD,CLR,
  input [11:0] IN,
  output reg [11:0] OUT
    );
 always @(posedge clk)  
       if (CLR==1)   
         OUT<=0;
       else if (LOAD==1)  
          OUT <= IN;
       else if(INR==1)  
          OUT <= OUT+1;

endmodule
