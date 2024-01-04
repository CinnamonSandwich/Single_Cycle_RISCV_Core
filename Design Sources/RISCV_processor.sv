`timescale 1ns / 1ps

module RISCV_processor #(parameter s=32)(input bit clk,reset);

bit reset,clk;
bit[s-1:0] pcnew,instruction,source1_value,source2_value,reg_to_mux,ex_to_mux,alu_out,data_rd_value,pcpresent;
bit register_write,reset,clk,alu_source,zero,mem_read,mem_write,mem_to_reg,branch;
bit[6:0] opcode,fn7;
bit[2:0] fn3;
bit[3:0] alu_control;


instruction_fetch ifet (reset,clk,pcnew,instruction,pcpresent);
instruction_decode id (instruction,data_rd_value,register_write,reset,clk,alu_source,source1_value,source2_value,reg_to_mux,ex_to_mux,opcode,fn7,fn3);
control_unit cu (opcode,fn7,fn3,alu_source, mem_read, mem_write, mem_to_reg, branch, register_write,alu_control);
execute ex (source1_value,source2_value,alu_control,zero,alu_out);
memory_allocate ma (alu_out,reg_to_mux,mem_read,mem_write,mem_to_reg,data_rd_value);
write_back wb (branch,zero,ex_to_mux,pcpresent,pcnew);

endmodule
