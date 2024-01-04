`timescale 1ns / 1ps

module write_back #(parameter s=32)(input bit branch,zero, input bit[s-1:0] imm_offset,pcpresent, output bit[s-1:0] pcupdate);

bit isbranch;
bit[s-1:0] pc_offset,pcnext; 

assign isbranch =  zero & branch;
assign pc_offset = imm_offset + pcpresent;
assign pcnext = pcpresent + 4;

assign pcupdate = isbranch ? pc_offset : pcnext;

endmodule
