`timescale 1ns / 1ps

module inst_memory #(parameter s=32)(input bit [s-1:0] pcpresent, output bit [s-1:0] instruction);
    bit [s-1:0] memory [s-1:0];
    initial 
    begin
    memory[0] = 32'h002081B3; // add $1, $2, $3
    memory[4] = 32'h403202B3; // sub $4, $3, $5
    memory[8] = 32'h00308383; // lw $7, 3($1)
    memory[12] = 32'h0013F333; // and $7, $1, $6
    memory[16] = 32'h001112B3; // sll $5, $2, $1
    memory[20] = 32'h001122B3; // slt $5, $2, $1
    memory[24] = 32'h00210463; // beq $2, $3, 4 // 4 is offset
    memory[28] = 32'h001132B3; // sltu $5, $2, $1
    memory[32] = 32'h001142B3; // xor $5, $2, $1
    memory[36] = 32'h001152B3; // srl $5, $2, $1
    memory[40] = 32'h401152B3; // sra $5, $2, $1
    memory[44] = 32'h008002EF; // jal $5, 2 
    memory[48] = 32'h00110293; // addi $5, $2, 1
    memory[52] = 32'h00312293; // slti $5, $2, 3
    memory[56] = 32'h00517293; // andi $5, $2, 5
    memory[60] = 32'h00211293; // slli $5, $2, 2
    memory[64] = 32'h002102E7; // jar $5, $2, 2  // will jump on instruction 4
    end

    assign instruction=memory[pcpresent];

endmodule  
