Multiplier

.include TSMC_180nm.txt
.option TEMP = 27C
.param LAMBDA = 0.18u
.param width_N = {10*LAMBDA}
.param width_P = {2.5*width_N}

vpower vdd 0 1.8
vgnd vss 0 0

vA A0 vss pulse 0 1.8 0 100p 100p 50n 100n
vB A1 vss pulse 0 1.8 0 100p 100p 100n 200n
vC A2 vss pulse 0 1.8 0 100p 100p 200n 400n
vD A3 vss pulse 0 1.8 0 100p 100p 400n 800n
vE B0 vss pulse 0 1.8 0 100p 100p 800n 1600n
vF B1 vss pulse 0 1.8 0 100p 100p 1600n 3200n
vG B2 vss pulse 0 1.8 0 100p 100p 3200n 6400n
vH B3 vss pulse 0 1.8 0 100p 100p 6400n 12800n

  x1 A0 B0 P0 vdd AND 
  x2 A1 B0 b01 vdd AND
  x3 A2 B0 b11 vdd AND
  x4 A3 B0 b21 vdd AND
  
  x5 A0 B1 a01 vdd AND 
  x6 A1 B1 a11 vdd AND
  x7 A2 B1 a21 vdd AND
  x8 A3 B1 a31 vdd AND

  x9 a31 a21 a11 a01 vss b21 b11 b01 b32 b22 b12 b02 P1 vdd Adder

  x10 A0 B2 a02 vdd AND 
  x11 A1 B2 a12 vdd AND
  x12 A2 B2 a22 vdd AND
  x13 A3 B2 a32 vdd AND

  x14 a32 a22 a12 a02 b32 b22 b12 b02 b33 b23 b13 b03 P2 vdd Adder

  x15 A0 B3 a03 vdd AND 
  x16 A1 B3 a13 vdd AND
  x17 A2 B3 a23 vdd AND
  x18 A3 B3 a33 vdd AND

  x19 a33 a23 a13 a03 b33 b23 b13 b03 P7 P6 P5 P4 P3 vdd Adder

.control
  run
  set xbrushwidth=3.5
  tran 1n 12800n
  
    meas tran trise TRIG v(A0) VAL = 0.9 RISE =1 TARG v(P7) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A0) VAL = 0.9 FALL =1 TARG v(P7) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A0) VAL = 0.9 RISE =1 TARG v(P6) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A0) VAL = 0.9 FALL =1 TARG v(P6) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A0) VAL = 0.9 RISE =1 TARG v(P5) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A0) VAL = 0.9 FALL =1 TARG v(P5) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A0) VAL = 0.9 RISE =1 TARG v(P4) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A0) VAL = 0.9 FALL =1 TARG v(P4) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A0) VAL = 0.9 RISE =1 TARG v(P3) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A0) VAL = 0.9 FALL =1 TARG v(P3) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A0) VAL = 0.9 RISE =1 TARG v(P2) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A0) VAL = 0.9 FALL =1 TARG v(P2) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A0) VAL = 0.9 RISE =1 TARG v(P1) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A0) VAL = 0.9 FALL =1 TARG v(P1) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A0) VAL = 0.9 RISE =1 TARG v(P0) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A0) VAL = 0.9 FALL =1 TARG v(P0) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A1) VAL = 0.9 RISE =1 TARG v(P7) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A1) VAL = 0.9 FALL =1 TARG v(P7) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A1) VAL = 0.9 RISE =1 TARG v(P6) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A1) VAL = 0.9 FALL =1 TARG v(P6) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A1) VAL = 0.9 RISE =1 TARG v(P5) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A1) VAL = 0.9 FALL =1 TARG v(P5) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A1) VAL = 0.9 RISE =1 TARG v(P4) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A1) VAL = 0.9 FALL =1 TARG v(P4) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A1) VAL = 0.9 RISE =1 TARG v(P3) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A1) VAL = 0.9 FALL =1 TARG v(P3) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A1) VAL = 0.9 RISE =1 TARG v(P2) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A1) VAL = 0.9 FALL =1 TARG v(P2) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A1) VAL = 0.9 RISE =1 TARG v(P1) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A1) VAL = 0.9 FALL =1 TARG v(P1) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A1) VAL = 0.9 RISE =1 TARG v(P0) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A1) VAL = 0.9 FALL =1 TARG v(P0) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A2) VAL = 0.9 RISE =1 TARG v(P7) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A2) VAL = 0.9 FALL =1 TARG v(P7) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A2) VAL = 0.9 RISE =1 TARG v(P6) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A2) VAL = 0.9 FALL =1 TARG v(P6) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A2) VAL = 0.9 RISE =1 TARG v(P5) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A2) VAL = 0.9 FALL =1 TARG v(P5) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A2) VAL = 0.9 RISE =1 TARG v(P4) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A2) VAL = 0.9 FALL =1 TARG v(P4) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A2) VAL = 0.9 RISE =1 TARG v(P3) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A2) VAL = 0.9 FALL =1 TARG v(P3) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A2) VAL = 0.9 RISE =1 TARG v(P2) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A2) VAL = 0.9 FALL =1 TARG v(P2) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A2) VAL = 0.9 RISE =1 TARG v(P1) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A2) VAL = 0.9 FALL =1 TARG v(P1) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A2) VAL = 0.9 RISE =1 TARG v(P0) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A2) VAL = 0.9 FALL =1 TARG v(P0) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A3) VAL = 0.9 RISE =1 TARG v(P7) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A3) VAL = 0.9 FALL =1 TARG v(P7) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A3) VAL = 0.9 RISE =1 TARG v(P6) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A3) VAL = 0.9 FALL =1 TARG v(P6) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A3) VAL = 0.9 RISE =1 TARG v(P5) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A3) VAL = 0.9 FALL =1 TARG v(P5) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A3) VAL = 0.9 RISE =1 TARG v(P4) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A3) VAL = 0.9 FALL =1 TARG v(P4) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A3) VAL = 0.9 RISE =1 TARG v(P3) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A3) VAL = 0.9 FALL =1 TARG v(P3) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A3) VAL = 0.9 RISE =1 TARG v(P2) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A3) VAL = 0.9 FALL =1 TARG v(P2) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A3) VAL = 0.9 RISE =1 TARG v(P1) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A3) VAL = 0.9 FALL =1 TARG v(P1) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A3) VAL = 0.9 RISE =1 TARG v(P0) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A3) VAL = 0.9 FALL =1 TARG v(P0) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A4) VAL = 0.9 RISE =1 TARG v(P7) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A4) VAL = 0.9 FALL =1 TARG v(P7) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A4) VAL = 0.9 RISE =1 TARG v(P6) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A4) VAL = 0.9 FALL =1 TARG v(P6) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A4) VAL = 0.9 RISE =1 TARG v(P5) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A4) VAL = 0.9 FALL =1 TARG v(P5) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A4) VAL = 0.9 RISE =1 TARG v(P4) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A4) VAL = 0.9 FALL =1 TARG v(P4) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A4) VAL = 0.9 RISE =1 TARG v(P3) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A4) VAL = 0.9 FALL =1 TARG v(P3) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A4) VAL = 0.9 RISE =1 TARG v(P2) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A4) VAL = 0.9 FALL =1 TARG v(P2) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A4) VAL = 0.9 RISE =1 TARG v(P1) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A4) VAL = 0.9 FALL =1 TARG v(P1) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A4) VAL = 0.9 RISE =1 TARG v(P0) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A4) VAL = 0.9 FALL =1 TARG v(P0) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A5) VAL = 0.9 RISE =1 TARG v(P7) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A5) VAL = 0.9 FALL =1 TARG v(P7) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A5) VAL = 0.9 RISE =1 TARG v(P6) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A5) VAL = 0.9 FALL =1 TARG v(P6) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A5) VAL = 0.9 RISE =1 TARG v(P5) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A5) VAL = 0.9 FALL =1 TARG v(P5) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A5) VAL = 0.9 RISE =1 TARG v(P4) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A5) VAL = 0.9 FALL =1 TARG v(P4) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A5) VAL = 0.9 RISE =1 TARG v(P3) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A5) VAL = 0.9 FALL =1 TARG v(P3) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A5) VAL = 0.9 RISE =1 TARG v(P2) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A5) VAL = 0.9 FALL =1 TARG v(P2) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A5) VAL = 0.9 RISE =1 TARG v(P1) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A5) VAL = 0.9 FALL =1 TARG v(P1) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A5) VAL = 0.9 RISE =1 TARG v(P0) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A5) VAL = 0.9 FALL =1 TARG v(P0) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A6) VAL = 0.9 RISE =1 TARG v(P7) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A6) VAL = 0.9 FALL =1 TARG v(P7) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A6) VAL = 0.9 RISE =1 TARG v(P6) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A6) VAL = 0.9 FALL =1 TARG v(P6) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A6) VAL = 0.9 RISE =1 TARG v(P5) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A6) VAL = 0.9 FALL =1 TARG v(P5) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A6) VAL = 0.9 RISE =1 TARG v(P4) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A6) VAL = 0.9 FALL =1 TARG v(P4) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A6) VAL = 0.9 RISE =1 TARG v(P3) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A6) VAL = 0.9 FALL =1 TARG v(P3) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A6) VAL = 0.9 RISE =1 TARG v(P2) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A6) VAL = 0.9 FALL =1 TARG v(P2) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A6) VAL = 0.9 RISE =1 TARG v(P1) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A6) VAL = 0.9 FALL =1 TARG v(P1) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  meas tran trise TRIG v(A6) VAL = 0.9 RISE =1 TARG v(P0) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A6) VAL = 0.9 FALL =1 TARG v(P0) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  plot P0+14 P1+12 P2+10 P3+8 P4+6 P5+4 P6+2 P7 
  plot A3-2 A2-4 A1-6 A0-8 B3-10 B2-12 B1-14 B0-16
    
.endc

.end

.SUBCKT INV A out vdd
    MP1 out A vdd vdd CMOSP W={width_P} L={LAMBDA} 
    MN1 out A 0 0 CMOSN W={width_N} L={LAMBDA}
.ENDS

.SUBCKT NAND A B out vdd
    MP1 out A vdd vdd CMOSP W={width_P} L={LAMBDA} 
    MP2 out B vdd vdd CMOSP W={width_P} L={LAMBDA} 
    MN1 out A node1 0 CMOSN W={width_N} L={LAMBDA}
    MN2 node1 B 0 0 CMOSN W={width_N} L={LAMBDA}
.ENDS

.SUBCKT AND A B out vdd
    x1 A B out_bar vdd NAND
    x2 out_bar out vdd INV
.ENDS

.SUBCKT NOR A B out vdd
    MP1 node1 A vdd vdd CMOSP W={width_P} L={LAMBDA} 
    MP2 out B node1 vdd CMOSP W={width_P} L={LAMBDA} 
    MN1 out A 0 0 CMOSN W={width_N} L={LAMBDA}
    MN2 out B 0 0 CMOSN W={width_N} L={LAMBDA}
.ENDS

.SUBCKT OR A B out vdd
    x1 A B out_bar vdd NOR
    x2 out_bar out vdd INV
.ENDS

.SUBCKT XOR A B out vdd
    x1 A A_bar vdd INV
    x2 B B_bar vdd INV
    MP1 node1 A vdd vdd CMOSP W={width_P} L={LAMBDA} 
    MP2 out B_bar node1 vdd CMOSP W={width_P} L={LAMBDA} 
    MP3 node2 A_bar vdd vdd CMOSP W={width_P} L={LAMBDA} 
    MP4 out B node2 vdd CMOSP W={width_P} L={LAMBDA} 
    MN1 out A node3 0 CMOSN W={width_N} L={LAMBDA}
    MN2 node3 B 0 0 CMOSN W={width_N} L={LAMBDA}
    MN3 out A_bar node4 0 CMOSN W={width_N} L={LAMBDA}
    MN4 node4 B_bar 0 0 CMOSN W={width_N} L={LAMBDA}
.ENDS 

.SUBCKT Half_Adder A B Sum Carry vdd
    x1 A B Sum vdd XOR
    x2 A B Carry vdd AND
.ENDS

.SUBCKT Full_Adder A B CI Sum Carry vdd
    x1 A B S1 C1 vdd Half_Adder
    x2 S1 CI Sum C2 vdd Half_Adder
    x3 C1 C2 Carry vdd OR
.ENDS

.SUBCKT Adder A3 A2 A1 A0 B3 B2 B1 B0 Carry S3 S2 S1 S0 vdd
    x1 A0 B0 S0 C1 vdd Half_Adder
    x2 A1 B1 C1 S1 C2 vdd Full_Adder
    x3 A2 B2 C2 S2 C3 vdd Full_Adder
    x4 A3 B3 C3 S3 Carry vdd Full_Adder
.ENDS
