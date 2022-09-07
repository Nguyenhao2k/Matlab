function [out] = repeatSilent(in,N,M,F)
temp = in;
for i=0:1:N-1
    if M>0
        a = zeros(1, M*F);
        temp = [temp a];
    else
    end
    temp = [temp in];
end
out = temp;