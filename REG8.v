`timescale 1ns / 1ps

module REG8(
    input [7:0] reg_input,
    output reg[7:0] reg_output,
    input reg_load,
    input clk
    );
   always @(posedge clk)
     if (reg_load ==1)
	     reg_output<= reg_input;
	     
endmodule
