time = 0:0.01:1;

x = cos(time .* pi .*25);
y = fade(x, 0);

subplot(3,1,1);
plot(y);
title('The function at leve 0');

y = fade(x, 0.75);
subplot(3,1,2);
plot(y)
title('The function at level 0.75');

y = fade(x, 1);
subplot(3,1,3);
plot(y)
title('The function at level 1');

%%
time = 0: 0.01: 1;
y =cos(time .*pi .*25);
subplot(2, 1, 1);
plot(time, y);
xlabel('time(t)');
ylabel('amplitude');
title('y = cos(25*pi*t)');

subplot(2, 1, 2);
plot(time, fade(y, 0.5));
xlabel('time(t)');
ylabel('amplitude');
title('Fade 0.5 of y = cos(25*pi*t)');

%%




