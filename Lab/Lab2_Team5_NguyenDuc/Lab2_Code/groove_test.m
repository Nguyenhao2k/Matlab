in1 = blueslick';
in2 = tag';
Fs = 8000;

subplot(6,1,1);
plot(in1);grid;
title('The first input signal');
subtitle('Team5:NgocNguyen DaiDuc');

subplot(6,1,2);
plot(in2);grid;
title('The second input signal');

subplot(6,1,3);
sig1 = fade(in1,0.4);
plot(sig1);grid;
title('The faded = 0.4 signal for input 1');

subplot(6,1,4);
time_repeat = 5;
sig2 = repeat(in2,time_repeat);
plot(sig2);grid;
title('The repeated signal for signal 2, N = 3');

subplot(6,1,5);
time_delay = 2;
sig3 = delay(sig2,time_delay,Fs);
plot(sig3);grid;
title('The delay signal for signal 2');

subplot(6,1,6);
sig4 = mixer(sig1,sig3);
plot(sig4);grid;
title('The mix sound of input signal 1 and 2');

sound(sig4);
filename = 'team5_audio.wav';
audiowrite(filename,sig4,Fs);