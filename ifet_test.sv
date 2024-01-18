`timescale 1ns / 1ps

module ifet_test();

reg clk;
reg reset;
reg[31:0] pcnew;
wire[31:0] instruction; 
wire[31:0] pcpresent;



instruction_fetch dut (reset,clk, pcnew, instruction, pcpresent );

initial clk=0;

always 
begin
clk = !clk;
#5;
end

initial begin 

reset = 1'b0;
pcnew = 0;
#10;

pcnew = 4;
#10;

pcnew = 8;
#10;

reset=1'b1;
#10;

$stop;

end

endmodule

