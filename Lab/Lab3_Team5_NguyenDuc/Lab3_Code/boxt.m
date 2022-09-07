function [out] = boxt(time, t1, t2)
    temp1 = unitstep(time, t1);
    temp2 = unitstep(time, t2);
    out = temp1 - temp2;
end 