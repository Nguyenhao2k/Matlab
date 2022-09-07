load('fall');
Fs = 8000;
whos;

subplot(3,1,1);
plot(fall);
title('NguyenDuc');
subtitle('Fall');
soundsc(fall, Fs);
pause(2);

h = [1 zeros(1, round(Fs/4)) .25 zeros(1, 1000)];
subplot(3,1,2);
plot(h)
subtitle('Impulse Response');
soundsc(h, Fs);
pause(2);

y =  conv(fall, h);
subplot(3,1,3);
plot(y);
subtitle('Convolution');
soundsc(y, Fs);




