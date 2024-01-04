module flipflop #parameter size=32 (input logic [size-1] d,input logic clk, output logic [size-1:0] q);
always@(posedge clk)
q=d;
end 
endmodule 
