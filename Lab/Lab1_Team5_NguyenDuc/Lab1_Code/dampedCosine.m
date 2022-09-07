diary team5
%INSERT your name and section into these display commands
disp('NgocNguyen_DaiDuc');
disp('SECTION: Lab1-Exercise 1')
datestr(cputime)

%dampedCosine.m produces a plot of a cosine with frequency 1 Hz, with amplitude
% scaled by a decaying exponential 

x = -5:0.01:5;
y1=exp(-abs(x)).*cos(2*pi*x);
y2=exp(-abs(x)).*cos(pi*x);
subplot(2,1,1);
plot(x,y1);
xlabel('time');
ylabel('amplitude');
title('f(x)=exp(-|x|)cos(2*pi*x)');
suptitle('NgocNguyen_DaiDuc');
subplot(2,1,2);
plot (x,y2);
xlabel('time');
ylabel('amplitude');
title('f(x)=exp(-|x|)cos(pi*x)');
diary off