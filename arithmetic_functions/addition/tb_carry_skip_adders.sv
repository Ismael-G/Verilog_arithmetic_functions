`include "carry_skip_adders.sv"
`define BIT_WIDTH 32


module tb_carry_skip_adders;

logic[BIT_WIDTH - 1 : 0] value1 ;

logic[BIT_WIDTH - 1 : 0] value2 ; 

logic[BIT_WIDTH - 1: 0] sum;

initial begin
    #10
    // regular addd
    value1 <= 32'h0000FFFF1
    value2 <= 32'h00000000E
    $$display(" %value1 + %value2 = %sum"); $assert (sum ==32'h0000FFFFF); 
    // TODO: add testbenches for adders that will use their carry over bit

    #10
    // saturated add
    value1 <= 32'h0000FFFF1
    value2 <= 32'h00000000E
    $$display(" %value1 + %value2 = %sum"); $assert (sum ==32'h0000FFFFF); 
end
