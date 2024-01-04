`timescale 1ns / 1ps

module mux_mem_alloc #(parameter s=32)(input bit[s-1:0] address_alu_out,data, input bit mem_to_reg, output bit[s-1:0] data_rd_value );

always@(address_alu_out ,data)
begin 
if(mem_to_reg==0)
data_rd_value = address_alu_out;
else
data_rd_value = data;
end

endmodule
