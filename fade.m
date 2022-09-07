function [y] = fade(x, level)

if level < 0 || level > 1
    disp('Invalid level');
else 
    %create a ramp vector
    t = linspace(0, 1, length(x));
    t = t*level;

    %multiply the audio vector with the ramp vector to fade
    y = (1 - (t)) .*x;
end