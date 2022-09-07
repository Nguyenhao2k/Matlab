time = [-3:0.01:3];
t1 = -1;
t2 = 1;
out = boxt(time, t1, t2);
plot(time, out, '-r', 'LineWidth', 3);
grid;
title('u(t+1) - u(t-1)');
subtitle('NgocNguyen-DaiDuc');