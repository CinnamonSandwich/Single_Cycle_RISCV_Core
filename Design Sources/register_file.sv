`timescale 1ns / 1ps

module register_file #(parameter s=32) (input bit[5:0]rs1,rs2,rd, input bit register_write,reset,clk, input bit[s-1:0] rd_value, output bit[s-1:0] rs1_value,rs2_value);

bit [s-1:0]reg_file[31:0];

assign rs1_value=reg_file[rs1];
assign rs2_value=reg_file[rs2];

always@(posedge clk,posedge reset)
begin
    if (reset) begin
        for(int i=0;i<32;i++)
            begin 
                reg_file[i]=32'b0;
            end
    end 
    else if (!reset && register_write)begin
        reg_file[rd]=rd_value;
        end  
end

endmodule 
     
    
        
                



