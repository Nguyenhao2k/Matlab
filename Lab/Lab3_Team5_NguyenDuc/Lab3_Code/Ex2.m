load('fall');
Fs = 8000;
whos;

subplot(2,1,1);
plot(6400:6500, fall(6400:6500));
title('NguyenDuc');
subtitle('Input-Fall');

h2 = [ones(1, 50)/50 zeros(1,20)];
y2 = conv(fall, h2);
subplot(2,1,2)
plot(6400:6500, y2(6400:6500));
subtitle('Convolution');
soundsc(y2, Fs);
