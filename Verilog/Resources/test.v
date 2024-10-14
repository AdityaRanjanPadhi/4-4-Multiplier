`timescale 1ns/10ps
module test (A,B,C,Y);

input A,B,C;
output Y;
wire x1;

and inst1(x1,A,B);
or inst2(Y,x1,C);

endmodule