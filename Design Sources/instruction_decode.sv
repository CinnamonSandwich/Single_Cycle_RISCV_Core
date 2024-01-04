`timescale 1ns / 1ps

module instruction_decode #(parameter s=32) (input bit[s-1:0] instruction,rd_value, input bit register_write,reset,clk,alu_source, output bit[s-1:0] source1_value,source2_value,reg_to_mux,ex_to_mux, output bit[6:0]opcode,fn7, output bit[2:0]fn3, output bit[4:0] rs1,rs2,rd);

assign opcode=instruction[6:0];
assign rd=instruction[11:7];
assign rs1=instruction[19:15];
assign rs2=instruction[24:20];
assign fn3=instruction[14:12];
assign fn7=instruction[31:25];
bit[s-1:0]reg_to_mux,ex_to_mux;
            
register_file fr(rs1,rs2,rd ,register_write,reset,clk,rd_value,source1_value,reg_to_mux);
            
bit[11:0] imm_in=instruction[31:20];
          
sign_extender s1(imm_in,ex_to_mux);
mux_aluout m(reg_to_mux,ex_to_mux,alu_source,source2_value);
           
endmodule
