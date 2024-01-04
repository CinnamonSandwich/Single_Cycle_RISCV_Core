`timescale 1ns / 1ps

module write_back_test();

reg branch;
reg zero;
reg[31:0] imm_offset;
reg[31:0] pcpresent;
wire[31:0] pcupdate;

write_back dut(branch,zero,imm_offset,pcpresent,pcupdate);

initial begin
    branch=1'b0;
    zero=1'b0;
    imm_offset = 32'h000012A7;
    pcpresent = 32'h00000000;
    #10;
    branch = 1'b1;
    #10;
    zero = 1'b1;
    #10;
    
end
endmodule
