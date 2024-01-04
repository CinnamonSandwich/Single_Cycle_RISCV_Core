`timescale 1ns / 1ps

module mux_aluout #(parameter s=32) (input bit[s-1:0]rs2_value,imm_out, input bit alu_source, output bit[s-1:0] alu_in);
assign alu_in=alu_source?imm_out : rs2_value;
endmodule
