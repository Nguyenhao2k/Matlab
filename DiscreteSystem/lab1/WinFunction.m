%Original file
Fs = 8192;

A = 220;
B = 220*2^(2/12);
C = 220*2^(3/12);
E = 220*2^(7/12);

%Time duration
tt1 = 0:1/Fs:0.5;
tt2 = 0:1/Fs:1;
tt4 = 0:1/Fs:2;

%sin
A2 = sin(2*pi * tt2*A);
A1 = sin(2*pi * tt1*A);
E1 = sin(2*pi * tt1*E);
B1 = sin(2*pi * tt1*B);
C1 = sin(2*pi * tt1*C);
A4 = sin(2*pi * tt4*A);
p = zeros(1, 1000);


%ADSR Function
ADSR1 = ADSR(tt1);
ADSR2 = ADSR(tt2);
ADSR4 = ADSR(tt4);

A2_ADSR = ADSR2.*A2;
A1_ADSR = ADSR1.*A1;
E1_ADSR = ADSR1.*E1;
B1_ADSR = ADSR1.*B1;
C1_ADSR = ADSR1.*C1;
A4_ADSR = ADSR4.*A4;

%Plotting
y1 = [A2 p A1 p E1 p E1 p E1 p B1 p C1 p B1 p A4];
subplot(2, 1, 1);
plot(y1);
title("Original");
sound(y1, Fs);

y2 = [A2_ADSR p A1_ADSR p E1_ADSR p E1_ADSR p E1_ADSR p B1_ADSR p C1_ADSR p B1_ADSR p A4_ADSR];
pause
sound(y2, Fs);
subplot(2, 1, 2);
plot(y2);
title("Using Windown Function!!!");
subtile("WE ARE TEAM: NgocNguyen-XuanKien")



