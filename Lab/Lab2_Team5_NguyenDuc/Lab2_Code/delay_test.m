load shake;
Fs = 8000;
in = shake'; %input signal
time_delay = 3;

subplot(2,1,1);
plot(in); grid;
title('Initial signal');
subtitle('Team5: NgocNguyen DaiDuc');

subplot(2,1,2);
out = delay(in,time_delay,Fs);
plot(out);
title('After delay time');
sound(out,Fs);
grid;