function [ y ] = fade(x, level)
%
% fade(x): this function fades the audio vector x.
%
% Example:  
% y = fade(x);
if level<0 || level>1
    disp('Invalid input');
end
% create the ramp vector
t = linspace(0, 1, length(x));
t = t.*level;
% multiply the audio vector with the ramp vector to fade
y = (1 - (t)) .*x;