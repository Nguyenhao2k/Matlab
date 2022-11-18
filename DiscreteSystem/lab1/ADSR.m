function [x] = ADSR(time)
A = linspace(0, 1, length(time) * 0.125);
D = linspace(1, 0.5, length(time) * 0.125);
S = linspace(0.5, 0.8, length(time) * 0.25);
R = linspace(0.8, 0, length(time) * 0.25);

x = [A, D, S, R];

end