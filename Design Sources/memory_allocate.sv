`timescale 1ns / 1ps

module memory_allocate #(parameter s=32)(input bit[s-1:0] address_alu_out,data_in_rs2, input bit mem_read,mem_write,mem_to_reg, output bit[s-1:0] data_rd_value);

bit[s-1:0] data;

data_memory mem(address_alu_out ,data_in_rs2, mem_read, mem_write, data);
mux_mem_alloc mux1(address_alu_out, data, mem_to_reg, data_rd_value);

endmodule
