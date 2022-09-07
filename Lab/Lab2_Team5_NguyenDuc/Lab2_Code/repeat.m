function [out] = repeat(in,N)
%
% repeat(in,N): this function repeats the signal N times
%
% Example:  
% y = repeat(in,5);
temp = in;
for i=0:1:N-1
    temp = [temp in];
    %repmat(in,N,1);
end
out = temp;