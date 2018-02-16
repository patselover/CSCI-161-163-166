function [out4] = step4(a)
    for i=1:10,
        out4(i)=a(i)-sin(a(i));
    end;
return;