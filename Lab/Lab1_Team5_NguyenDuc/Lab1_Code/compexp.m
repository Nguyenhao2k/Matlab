function [] = compexp( f,d )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
t = 0:0.01:5;
y=3*exp(-(0.25*f+1i*(2*pi*d))*t); %reduce the frequency by half
subplot(3,1,1);
plot3(t,real(y),imag(y));
grid
xlabel('t'),ylabel('Re(y)'),zlabel('Im(y)');
title('3-D plot of a Complex Exponential');

end

