function [out3] = step3(a)
    for i=1:10,
    exp = [-362880, 0, 5040, 0, -120, 0, 6, 0, 0, 0];
    out3(i)=a(i)*exp(1) + exp(2);
      for e=3:10,
        if exp(e) == 0
            out3(i) *= a(i);
        else
            out3(i) *= a(i);
            out3(i) += 1/exp(e);
        end;
      end;
    end;
return;