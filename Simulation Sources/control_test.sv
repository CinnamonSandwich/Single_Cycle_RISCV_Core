`timescale 1ns / 1ps

module control_test();

reg[6:0] opcode;
reg[6:0] fn7; 
reg[2:0] fn3;
wire alu_source;
wire mem_read; 
wire mem_write;
wire mem_to_reg; 
wire branch; 
wire reg_write; 
wire[3:0] alu_operation;

control_unit dut (opcode, fn7, fn3, alu_source, mem_read, mem_write, mem_to_reg, branch, reg_write, alu_operation);

initial begin
opcode =  7'b0000011;
fn3 = 0;
fn7 = 0;
#5;
fn3 = 1;
#5;
fn3 = 3'b101;
#5;
fn3 = 3'b100;
#5;
fn3 = 3'b110;
#5;
fn7 = 7'b0100000;
#5;
opcode = 7'b0110011;
#5;
opcode = 7'b0100011;
#5;
opcode = 7'b0010011;
#5;
opcode = 7'b1100011;
#5;
$stop;

end

endmodule
