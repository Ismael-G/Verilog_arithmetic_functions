/* Ismael Garcia
* January 2021
* Newton Raphson Division Algorithm
* Express D as M × 2e where 1 ≤ M < 2 (standard floating point representation)
D' := D / 2e+1   // scale between 0.5 and 1, can be performed with bit shift / exponent subtraction
N' := N / 2e+1
X := 48/17 − 32/17 × D'   // precompute constants with same precision as D
repeat 
⌈
log
2
⁡
P
+
1
log
2
⁡
17
⌉
\left\lceil \log _{2}{\frac {P+1}{\log _{2}17}}\right\rceil \, times   // can be precomputed based on fixed P
    X := X + X × (1 - D' × X)
end
return N' × X
*/


module newton_raphson(
  
);

input logic divisor ;
input logic dividend ;

output logic quotient ;


endmodule
