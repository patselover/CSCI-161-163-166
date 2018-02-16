function [out2] = step2(a)
    for i=1:10,
        out2(i)=(((a(i)^3)/6) - ((a(i)^5)/120) + ((a(i)^7)/5040) - ((a(i)^9)/362880));
    end;
return;
