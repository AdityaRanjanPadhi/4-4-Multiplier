`timescale 1ns/10ps

module test_tb;

reg A,B,C;
wire Y;

test UUT (A,B,C,Y);

initial
    begin
        $dumpfile("test_tb.vcd");
        $dumpvars(0,test_tb);

        A=0;
        B=0;
        C=0;
    end

initial
    begin
        
        #10
        A = 1;

        #10
        B = 1;
        A = 0;

        #10
        C = 1;

    end

always @(Y)
$display("time =%0t \t A =%b, B =%b, C =%b and Y =%b",$time,A,B,C,Y);

endmodule