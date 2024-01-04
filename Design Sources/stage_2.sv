`timescale 1ns / 1ps

module stage_2(input bit[2:0] fn3, input bit[6:0] fn7, input bit[1:0] aluop, output bit[3:0] alu_operation);

always@(aluop)
    begin
        case(aluop)
            2'b10 : case(fn3)
                        3'b000 : begin
                                 if(fn7 == 7'b0100000)
                                    alu_operation = 4'b0001;
                                 else if(fn7 == 0)
                                    alu_operation = 4'b0000;
                                 end
                        3'b001 : begin
                                    alu_operation = 4'b0010;
                                 end
                        3'b101 : begin
                                    if(fn7 == 0)
                                    alu_operation = 4'b0110;
                                    else if(fn7 == 7'b0100000)
                                    alu_operation = 4'b0111;
                                 end
                        3'b100 : begin 
                                    alu_operation = 4'b0101;
                                 end
                        3'b110 : begin
                                    alu_operation = 4'b1000;
                                 end
                        3'b111 : begin
                                    alu_operation = 4'b1001;
                                 end
                    endcase
         
            2'b00 : begin
                    alu_operation = 4'b0000;
                    end
                    
            2'b01 : begin 
                    alu_operation = 4'b0001;    
                    end
        endcase
    end                                       
endmodule
