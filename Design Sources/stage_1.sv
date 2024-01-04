`timescale 1ns / 1ps

module stage_1(input bit[7:0] opcode, output bit[1:0] aluop, output bit alu_source,branch,reg_write,mem_read,mem_write,mem_to_reg);

always@(opcode)
begin
    case(opcode)
    7'b0110011 : begin              //rtype
                aluop = 2'b10;
                alu_source = 0;
                branch = 0;
                mem_read = 0;
                mem_write = 0;
                reg_write = 1;
                mem_to_reg = 0;
                end 
    7'b0000011 :begin               //load
                aluop = 2'b00;
                alu_source = 1;
                branch = 0;
                mem_read = 1;
                mem_write = 0;
                reg_write = 1;
                mem_to_reg = 1;
                end
    7'b0100011 :begin               //store
                aluop = 2'b00;
                alu_source = 1;
                branch = 0;
                mem_read = 0;
                mem_write = 1;
                reg_write = 0;
                mem_to_reg = 0;
                end
    7'b1100011 :begin               //branch
                aluop = 2'b01;
                alu_source = 0;
                branch = 1;
                mem_read = 0;
                mem_write = 0;
                reg_write = 0;
                mem_to_reg = 0;
                end
    7'b0010011 :begin              //i type 
                aluop = 2'b11;
                alu_source = 1;
                branch = 0;
                mem_read = 0;
                mem_write = 0;
                reg_write = 1;
                mem_to_reg = 0;
                end 
    endcase
end 

endmodule
