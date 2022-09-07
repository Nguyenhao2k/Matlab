function [out] = repeat(in, N)
temp = in;
for i = 0 : 1 : N -1
    temp = [temp in];
end 
out = temp;