t = -5:0.01:5;
ts =1;
unitgraph = unitstep(t, ts);
plot(t, unitgraph);
xlabel('t');
ylabel('u(t)');
subtitle('NgocNguyen-DaiDuc');