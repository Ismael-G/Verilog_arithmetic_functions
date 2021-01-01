/*
  * Ismael Garcia
  * January 2021
  * Delay Efficient 32 - bit adder
  *
  * Logic derived from : https://doi.org/10.1155/2008/218565
  * 
  */
module carry_skip_adders(
  localparam BIT_SIZE = 32;

);

input logic[ BIT_SIZE - 1 : 0] add1 ;
input logic[ BIT_SIZE - 1 : 0] add2 ;

output logic[32 : 0] sum ;


assign add1 [BIT_SIZE - 1 : ]

initial begin
  always(*) begin
    // Start of combinational logic
    end
  end


endmodule
