`timescale 1ns / 1ps

module execute_test();

reg[31:0] source1_value;
reg[31:0] source2_value; 
reg[3:0] alu_control;
wire zero;
wire[31:0] alu_out;

execute dut(source1_value,source2_value,alu_control,zero,alu_out);

initial begin 

source1_value = 3;
source2_value = 3;
alu_control = 0;
#5;
source1_value = 5;
source2_value = 4;
alu_control = 0;
#5;
alu_control =5'b0001;
#5;
alu_control = 5'b0101;
#5;
alu_control = 5'b1001;
#5;
alu_control = 5'b1000;
#5;
alu_control = 5'b0110;
#5;
$stop;

end 



endmodule
