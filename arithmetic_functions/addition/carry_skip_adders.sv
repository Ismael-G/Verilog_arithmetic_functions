/*
  * Ismael Garcia
  * January 2021
  * Delay Efficient 32 - bit adder
  *
  * Logic derived from : https://doi.org/10.1155/2008/218565
  * 
  * Note: Logic included up to 32 bits
  * TODO: Create behaivoral verilog model
*/

/* 1-BIT FULL ADDER */

module full_adder(
  input logic X ,
  input logic Y ,
  input logic carry_in,

  output logic sum ,
  output logic carry_out
);
assign sum = (X ^ Y) ^ carry_in ;
/* carry out if X + Y = b'10 or if X + Y + carry_in = b'11 */
assign carry_out = ( ( X ^ Y ) & carry_in  ) | ( X & Y ) ;
endmodule

/* END OF FULL ADDER */


/* 1-BIT HALF ADDER */

module half_adder(
  input logic in_1 ,
  input logic in_2 ,
  output logic out_sum ,
  output logic out_carry
);

assign out_sum = in_1 ^ in_2 ; 
assign out_carry = in_1 & in_2 ;

endmodule

/* END OF HALF ADDER */


/* START OF RIPPLE ADDERS */ 

module three_bit_adder(
  
);
endmodule


module ripple_adder(
  
);

endmodule
/* END OF RIPPLE ADDERS */

/* AOI3 */
module AOI3(
  input logic A,
  input logic B,
  input logic C,

  output logic out
);


endmodule

/* END OF AOI3 */

/* AOI5 */

module AOI5(
  input logic A ,
  input logic B ,
  input logic C ,
  input logic D ,
  input logic E ,
  output logic out
);

assign out = ~ (A | (B & (C | (D&E)))) ;

endmodule

/* END OF AOI5 */

/* 18-BIT ADDER */ 

module 18_bit_adder
#(
parameter WIDTH = 10 ;
parameter MSB = WIDTH - 1 ;
)
(
input logic [WIDTH - 1 : 0] x ,
input logic [WIDTH - 1 : 0] y , 
input logic carry_in , // carry in from 10-bit adder

output logic carry_out , // will be 1 if sum of LSB 18-bits overflow
output logic [ WIDTH - 1 : 0] sum
);

/*  */
/* TODO expand this  */
assign sum = x + y + carry_out;
// if LSB of sum is 0 and either/both x and/or y is MSB, then there is
// overflow
assign carry_out  = ( ( sum[ MSB ] == 0 ) && ( x[ MSB ] || y[ MSB ] )  )? 1'b1 : 1'b0 ;
/* */

endmodule
/* END OF 18-BIT ADDER */


module 10_bit_adder(
  
);
endmodule

module 3_bit_adder(
  input logic [1:0] X,
  input logic [1:0] Y,

  output logic [1:0] sum,
  output logic carry_out
);




endmodule



module carry_skip_adders #(
  parameter BIT_SIZE = 32;
  parameter S0 = 0 ;
  parameter S1 = 3 ;
  parameter S2 = BIT_SIZE - 19 ; // 13
  parameter S3 = BIT_SIZE - 1 ; // 31
)
(
  input logic[ BIT_SIZE - 1 : 0] add1 ,
  input logic[ BIT_SIZE - 1 : 0] add2 ,
  output logic[32 : 0] sum
);

logic s0_sum ; // 1bit sum 
logic s0_co, s1_co ; // carry out logic

/* A0 1-bit adder */
full_adder( .X( add1[s0] ), .Y( add2[s0] ), .carry_in( 1'b0 ) , .sum( s0_sum ), .carry_out( s0_co ) ) ; 

/* A1 3-bit adder */
3_bit_adder( ) ;

/* A2 10-bit adder */
10_bit_adder( ) ;

/* A3 18-bit adder */
18_bit_adder( ) ;

assign sum = { sum_s3, sum_s2 , sum_s1, sum_s0 } ;

endmodule
