`timescale 1ns / 1ps


module reg16(
  input clk, INR, LOAD,CLR,
  input [15:0] IN,   
  output reg [15:0] OUT
    );
    always @(posedge clk)  
       if (CLR==1)   
         OUT<=16'h0000;
       else if (LOAD==1)  
          OUT <= IN;
       else if(INR==1)  
          OUT <= OUT+1;
   
endmodule
