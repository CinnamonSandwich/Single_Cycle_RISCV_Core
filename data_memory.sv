`timescale 1ns / 1ps

module data_memory #(parameter s=32)(input bit[s-1:0] address_alu_out,data_in_rs2, input bit mem_read,mem_write, output bit[s-1:0] data);

bit[s-1:0] mem_file[s-1:0];

always@(address_alu_out, data_in_rs2, mem_read, mem_write)
    begin
    
    if(mem_read == 1 && mem_write == 0)
    begin
    data =  mem_file[address_alu_out];
    end
    else if(mem_read == 0 && mem_write == 1)
    begin
    mem_file[address_alu_out] = data_in_rs2;
    end 
    
    end


endmodule
