del = 0.01;
t = -5:del:10;
y1 = boxt(del, t, -1, 1);
y2 = boxt(del, t, 0, 4);

subplot(3,1,1);
plot(t,y1);
xlabel('t'), title('Boxt from (-1,1): step size of 0.01');

subplot(3,1,2);
plot(t,y2);
xlabel('t'), title('Boxt from (0,4): step size of 0.01');

subplot(3,1,3);
plot(-10:0.01:20, del*conv(y1, y2)); grid on;
xlabel('t'), title('Convolution of the two boxes from (0,4) and (-1,1): step size of 0.01');
