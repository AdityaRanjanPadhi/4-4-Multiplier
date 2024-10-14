`timescale 1ns/10ps

module Half_Adder_tb;

reg A,B;
wire Sum,Carry;

Half_Adder UUT (Sum,Carry,A,B);

initial
    begin
        $dumpfile("Half_Adder_tb.vcd");
        $dumpvars(0,Half_Adder_tb);

        A=0;
        B=0;
    end

initial
    begin
        
        #10
        A = 0;
        B = 1;

        #10
        A = 1;
        B = 0;

        #10
        A = 1;
        B = 1;
        
        #10
        A = 1;
        B = 1;

    end

always @(Sum,Carry)
$display("time =%0t \t A =%b, B =%b, Sum =%b and Carry =%b",$time,A,B,Sum,Carry);

endmodule
