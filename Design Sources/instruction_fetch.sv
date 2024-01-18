`timescale 1ns / 1ps

module instruction_fetch #(parameter s=32) (input bit reset,clk, input bit[s-1:0] pcnew, output bit[s-1:0] instruction, pcpresent );

bit[s-1:0] pcpresent;

prog_counter counter(clk,reset,pcnew,pcpresent);
  inst_memory mem(pcpresent,reset,instruction); 

endmodule
