`timescale 1ns/10ps
module Half_Adder (Sum,Carry,A,B);

input A,B;
output Sum,Carry;

and inst1(Carry,A,B);
xor inst2(Sum,A,B);

endmodule
