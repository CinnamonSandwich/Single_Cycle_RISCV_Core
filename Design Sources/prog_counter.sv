`timescale 1ns / 1ps

module prog_counter #(parameter s=32) (input bit clk,reset, input bit [s-1:0]pcnew, output bit[s-1:0] pcpresent);

always@ (posedge clk)
begin
if(reset==1)
pcpresent<=0;
else
pcpresent<=pcnew;
end

endmodule
