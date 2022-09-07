%% 

bleeep = audioread('bleeep.wav');
f = 1000;
sound(bleeep, f);

%% 
shake = audioread('snare.wav');
f = 1000;
sound(shake, f)
%% 
time = 0:0.01:1;
y = cos(time .*pi .*25);
subplot(2,1,1);
plot(time, y);
xlabel('time(t)');
ylabel('amplitude');
title('y = cos(25pi*t)');

subplot(2,1,2)
%% SECTION TITLE
% DESCRIPTIVE TEXT
function [ y ] = timescale(x, p, q)
%
% timescale(x, p, q): this function time-scales the vector x at 
% P/Q times the original speed. p and q must be positive integers.  
%
% Example:  
% This will slow the signal x down by a factor of 2/3.
% y = timescale(x, 2, 3)
%

y = resample(x, p, q);
end 



