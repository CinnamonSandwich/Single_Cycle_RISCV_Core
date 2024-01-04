`timescale 1ns / 1ps

module control_unit(input bit[6:0] opcode,fn7, input bit[2:0] fn3, output bit alu_source, mem_read, mem_write, mem_to_reg, branch, reg_write, output bit[3:0] alu_operation);

bit[1:0] aluop;

stage_1 st1(opcode,aluop,alu_source,branch,reg_write,mem_read,mem_write,mem_to_reg);
stage_2 st2(fn3,fn7,aluop,alu_operation);

endmodule
