`timescale 1ns / 1ps

module instruction_decode_test();

reg[31:0] instruction;
reg[31:0] rd_value;
reg register_write;
reg reset;
reg clk;
reg alu_source;  
wire[31:0] source1_value;
wire[31:0] source2_value; 
wire[6:0]opcode;
wire[6:0]fn7; 
wire[2:0]fn3;
wire[31:0]reg_to_mux;
wire[31:0] ex_to_mux;
wire[4:0] rd;
wire[4:0] rs1;
wire[4:0] rs2;

instruction_decode dut(instruction,rd_value,register_write,reset,clk,alu_source,source1_value,source2_value,reg_to_mux,ex_to_mux,opcode,fn7,fn3,rs1,rs2,rd); 

initial clk=0;

always 
begin
clk = !clk;
#5;
end

initial begin 

instruction = 32'h002081B3; // add $1, $2, $3
rd_value = 32'b0;
register_write = 1'b0;
reset = 1'b0;

alu_source = 1'b0;
#5;
instruction =32'h403202B3;
#5;
instruction =32'h00308383;
#5;
instruction =32'h0013F333;
#5;
instruction =32'h001112B3;
#5;
instruction =32'h001122B3;
#5;
$stop;
end

endmodule
