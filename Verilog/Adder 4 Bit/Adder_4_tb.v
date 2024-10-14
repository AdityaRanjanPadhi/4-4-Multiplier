`timescale 1ns/10ps

module Adder_4_tb;

reg [3:0] A;
reg [3:0] B;
wire [3:0] Sum;
wire Carry;


Adder_4 UUT (Sum,Carry,A[3:0],B[3:0]);

integer i;

initial
    begin
        $dumpfile("Adder_4_tb.vcd");
        $dumpvars(0,Adder_4_tb);

        A=4'b0000; B=4'b0000;
    end
initial
    begin
        for (i=0;i<256; i = i + 1)
            begin
                {B,A} = i;
                #10;
            end
    end

always @(Sum,Carry)
$display("time =%0t \t A =%4b, B =%4b, Sum =%4b and Carry =%4b",$time,A[3:0], B[3:0], Sum[3:0],Carry);

endmodule
