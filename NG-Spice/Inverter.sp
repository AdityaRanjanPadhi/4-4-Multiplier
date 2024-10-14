Inverter

.include TSMC_180nm.txt
.option TEMP = 27C
.param LAMBDA = 0.18u
.param width_N = {10*LAMBDA}
.param width_P = {2.5*width_N}

vpower vdd 0 1.8
vgnd vss 0 0






































Inverter

.include TSMC_180nm.txt
.option TEMP = 27C
.param LAMBDA = 0.18u
.param width_N = {10*LAMBDA}
.param width_P = {2.5*width_N}

vpower vdd 0 1.8
vgnd vss 0 0

vA A0 vss pulse 0 1.8 0 100p 100p 50n 100n
   
   MP1 out A vdd vdd CMOSP W={width_P} L={LAMBDA} 
   MN1 out A 0 0 CMOSN W={width_N} L={LAMBDA}

   .control
  run
  set xbrushwidth=3.5
  tran 1n 12800n
  
    meas tran trise TRIG v(A0) VAL = 0.9 RISE =1 TARG v(P7) VAL = 0.9 RISE =1 
  meas tran tfall TRIG v(A0) VAL = 0.9 FALL =1 TARG v(P7) VAL = 0.9 FALL =1
  print (trise+tfall)/2

  plot P0+14 P1+12 P2+10 P3+8 P4+6 P5+4 P6+2 P7 A3-2 A2-4 A1-6 A0-8 B3-10 B2-12 B1-14 B0-16
    
.endc

.end