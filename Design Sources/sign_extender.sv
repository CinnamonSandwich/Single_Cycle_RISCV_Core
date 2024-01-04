`timescale 1ns / 1ps

module sign_extender #(parameter s=32) (input bit[12:0] imm_in,output bit[s-1:0]imm_out);
assign imm_out = imm_in;
endmodule
