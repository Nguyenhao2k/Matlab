del = 0.01;
scale = 1/100;
t1 = 0; t2 = 4; t3 = -1; t4 = 1;
tc = -5:del:10;
tt = -10:del:20;

y1 = boxt(tc, t1, t2)*scale;
y2 = boxt(tc, t3, t4);
out = conv(y1, y2);

subplot(3,1,1);
plot(tc, y1, '-r', 'Linewidth', 2);
title('Graph of the INPUT');
grid on;

subplot(3,1,2);
plot(tc, y2, '-g', 'Linewidth', 2);
title('Graph of the Impulse Response');
grid on;

subplot(3,1,3);
plot(tt, out, '-b', 'Linewidth', 2);
title('Graph of the OUTPUT');
grid on;
subtitle('NgocNguyen-DaiDuc');



