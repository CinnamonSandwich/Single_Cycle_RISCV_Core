`timescale 1ns / 1ps

module memory_allocate_test();


  reg [31:0] alu_out;
  reg [31:0] data_rs2;
  reg memtoreg;
  reg mem_read;
  reg mem_write;
  wire [31:0] data_value;

  memory_allocate dut (alu_out, data_rs2 , mem_read, mem_write, memtoreg, data_value);
    
  initial begin
    alu_out = 32'h00000000;
    data_rs2 = 32'h00001234;
    memtoreg = 1'b0;
    mem_read  = 1'b0;
    mem_write = 1'b1;
    #10;
    memtoreg = 1'b1; 
    mem_read = 1'b1;
    mem_write = 1'b0;
    #10;
    memtoreg = 1'b0; 
    #10;
    alu_out = 32'h56789ABC; 
    #10;
    $stop; 
  end

endmodule

