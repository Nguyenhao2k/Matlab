load blueslick;
Fs = 8000;
in = blueslick'; %input signal
N = 3; %repeat times
M = 1; %silent times
out1 = repeat(in,N);
out2 = repeatSilent(in,N,M,Fs);

subplot(2,1,1);
plot(out1); grid;
title('repeat, not silent');
subtitle('Team5: NgocNguyen DaiDuc');

subplot(2,1,2);
plot(out2);
title('repeat, 1s silent');
sound(out,Fs);
grid;