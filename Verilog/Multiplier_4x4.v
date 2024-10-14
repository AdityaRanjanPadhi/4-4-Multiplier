`timescale 1ns/10ps

`include "Adder_4.v"

module Multiplier_4x4 (Product,A,B);

input [3:0] A;
input [3:0] B;
output [7:0] Product;
wire w1;
wire [3:0] x1;
wire [3:0] x2;
wire [3:0] x3;
wire [3:0] x4;
wire [4:0] s1;
wire [4:0] s2;

and inst1(Product[0],A[0],B[0]);
and inst2(x1[0],A[0],B[1]);
and inst3(x1[1],A[0],B[2]);
and inst4(x1[2],A[0],B[3]);
not inst5(w1,A[0]);
and inst6(x1[3],A[0],w1);

and inst7(x2[0],A[1],B[0]);
and inst8(x2[1],A[1],B[1]);
and inst9(x2[2],A[1],B[2]);
and inst10(x2[3],A[1],B[3]);

Adder_4 inst11(s1[3:0],s1[4],x1[3:0],x2[3:0]);

and inst12(x3[0],A[2],B[0]);
and inst13(x3[1],A[2],B[1]);
and inst14(x3[2],A[2],B[2]);
and inst15(x3[3],A[2],B[3]);
or inst16(Product[1],s1[0],s1[0]);

Adder_4 inst17(s2[3:0],s2[4],s1[4:1],x3[3:0]);

and inst18(x4[0],A[3],B[0]);
and inst19(x4[1],A[3],B[1]);
and inst20(x4[2],A[3],B[2]);
and inst21(x4[3],A[3],B[3]);
or inst22(Product[2],s2[0],s2[0]);

Adder_4 inst23(Product[6:3],Product[7],s2[4:1],x4[3:0]);

endmodule
