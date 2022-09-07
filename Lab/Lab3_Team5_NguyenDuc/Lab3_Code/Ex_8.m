del = 0.01;
t = [-50:del:50];
x = boxt(-10, 30, t);
tt = [-50:del:50];
h = boxt(-20, 20, tt);
to = -100:del:100;
y = conv(x, h).*del;
subplot(3, 1, 1);
plot(t, x, 'g', 'Linewidth', 2);
title('The input');
grid on;

subplot(3,1,2);
plot(tt, h, 'r', 'Linewidth', 2);
title('The Impulse Response');
grid on;


subplot(3,1,3);
plot(to, y, 'b', 'Linewidth', 2);
title('The triangle pulse');
grid on;
subtitle('NgocNguyen-DaiDuc');