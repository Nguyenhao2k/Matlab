t1 = [-3:0.5:3];
t2 = [-3:0.05:3];
t3 = [-3:0.001:3];

y1 = boxt(t1, 1, -1);
y2 = boxt(t2, 1, -1);
y3 = boxt(t3, 1, -1);

subplot(3,1,1);
plot(t1, y1,'-r', 'Linewidth', 2);
grid;
xlabel('t'), title('[u(t+1)-u(t-1)]:step size of 0.5');

subplot(3,1,2);
plot(t2, y2, '-g', 'Linewidth', 2);
grid;
xlabel('t'), title('[u(t+1)-u(t-1)]:step size of 0.05');

subplot(3,1,3);
plot(t3, y3, '-b', 'Linewidth', 2);
grid;
xlabel('t'), title('[u(t+1)-u(t-1)]:step size of 0.001');
subtitle('NgocNguyen-DucDuc');
