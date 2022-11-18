Fs = 8000;
count = 4000;
duration = 800;
leng = 13*count - 8*duration;
tt = 0:1/Fs:0.5-1/Fs;

n1 = [[A2 A2].* ADSR2 zeros(1, leng-8000)];
n2 = [zeros(1, 7000) A1.*ADSR1 zeros(1, leng-7000-4000)];
n3 = [zeros(1, 10000) E1.*ADSR1 zeros(1, leng-10000-4000)];
n4 = [zeros(1, 13000) E1.*ADSR1 zeros(1, leng-13000-4000)];
n5 = [zeros(1, 16000) E1.*ADSR1 zeros(1, leng-16000-4000)];
n6 = [zeros(1, 19000) B1.*ADSR1 zeros(1, leng-19000-4000)];
n7 = [zeros(1, 22000) C1.*ADSR1 zeros(1, leng-22000-4000)];
n8 = [zeros(1, 25000) B1.*ADSR1 zeros(1, leng-25000-4000)];
n9 = [zeros(1, 28000) [A4 A4 A4 A4].*ADSR4 ];

y1 = [A2 p A1 p E1 p E1 p E1 p B1 p C1 p B1 p A4];
y2 = [[A2 A2].*ADSR2 p A1.*ADSR1 p E1.*ADSR1 p E1.*ADSR1 p E1.*ADSR1 p C1.*ADSR1 p B1.*ADSR1 p [A4 A4 A4 A4].*ADSR4];
y3 = n1 + n2 + n3 + n4 + n5 + n6 + n7 + n8 + n9;

sound(y3, Fs);
subplot(3, 1, 1);
plot(y1); title('The original')

subplot(3,1, 2);
plot(y2); title('ADSR function')

subplot(3, 1, 3)
plot(y3); title('ADSR + Overlapping');

subtitle('Lap1: NgocNguyen-XuanKien')