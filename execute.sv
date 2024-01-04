`timescale 1ns / 1ps

module execute #(parameter s=32) (input bit[s-1:0] source1_value,source2_value, input bit[3:0]alu_control, output bit zero, output bit[s-1:0]alu_out);

bit [s-1:0] addval = source1_value + source2_value;

always@(source1_value , source2_value, alu_control)
    begin
    case(alu_control)
    
    5'b0000: alu_out = source1_value + source2_value ;                             //Addition

    5'b0001: alu_out = source1_value - source2_value ;                             //Subtraction

    5'b0010: alu_out = source1_value << source2_value [4:0];                        //Shift Left Logical

    5'b0101: alu_out = source1_value ^ source2_value;                              //LOgical xor

    5'b0110: alu_out = source1_value >> source2_value;                             //Shift Right Logical

    5'b0111: alu_out = source1_value >>> source2_value[4:0];                       //Shift Right Arithmetic

    5'b1000: alu_out = source1_value | source2_value;                              //Logical Or

    5'b1001: alu_out = source1_value & source2_value;                              //Logical and
  
    default:  alu_out = source1_value + source2_value;
    endcase
    end

always@(source1_value , source2_value, alu_control)
begin
if ((source1_value - source2_value) == 0)
     zero = 1'b1;
else 
    zero = 1'b0;

end

endmodule
