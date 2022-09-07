function [out] = mixer(in1, in2)
    out = 0;
    in1 = in1(:);
    in2 = in2(:);
    if length(in1) < length(in2) 
        out = in2 + [in1; zeros(length(in2) - length(in1))];
    elseif length(in1) > length(in2)
        out = in1 + [in2; zeros(length(in1) - length(in2))];
    else length(in1) == length(in2)
        out = in1 + in2;
    end 

    if max(out) - min(out) <= 2
        out = out - (abs(max(out)) - abs(min(out)))/2;
    else out = out/max(out);
    end 
    
end 
