
function [out] = unitstep(t, ts)
    out = (t >= (ts));
    plot(t, out);
end 


