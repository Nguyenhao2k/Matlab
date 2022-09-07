function [ out ] = delay(in,time_delay,Fs)
%UNTITLED10 Summary of this function goes here
%   delay a signal by the amount of time-delay
%N = fix(Fs*time_delay);
%out = [zeros(1,N)';in];
temp = zeros(1,time_delay*Fs);
out = [temp in];
end

