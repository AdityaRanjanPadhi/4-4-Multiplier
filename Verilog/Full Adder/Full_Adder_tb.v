`timescale 1ns/10ps

module Full_Adder_tb;

reg A,B,CI;
wire Sum,Carry;


Full_Adder UUT (Sum,Carry,A,B,CI);

initial
    begin
        $dumpfile("Full_Adder_tb.vcd");
        $dumpvars(0,Full_Adder_tb);

        A=0;
        B=0;
        CI=0;
    end

initial
    begin
        
        #10
        A = 0;
        B = 1;
        CI=0;

        #10
        A = 1;
        B = 0;
        CI=0;

        #10
        A = 1;
        B = 1;
        CI=0;
        
        #10
        A=0;
        B=0;
        CI=1;

        #10
        A=0;
        B=1;
        CI=1;

        #10
        A=1;
        B=0;
        CI=1;

        #10
        A=1;
        B=1;
        CI=1;

        #10
        A=1;
        B=1;
        CI=1;

    end

always @(Sum,Carry)
$display("time =%0t \t A =%b, B =%b, CI =%b, Sum =%b and Carry =%b",$time,A,B,CI,Sum,Carry);

endmodule
