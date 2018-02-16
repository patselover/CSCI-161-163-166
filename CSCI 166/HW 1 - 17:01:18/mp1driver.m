%file step1.m
%file step2.m
%file step3.m
%file step4.m

a = [.05, .04, .03, .02, .01, .001, .0001, .00001, .000001, .0000001];

asing = single(a);
out1 = step1(asing);
table1 = [asing; out1];
fprintf(' Step 1, original formula: f(x)= x-sin(x)\n    	 x		f(x)');
fprintf('\n %9.7f    %14.7e',table1);
fprintf('\n\n');
fprintf('The end\n');

out2 = step2(a);
table2 = [a; out2];
fprintf(' Step 2, original formula: f(x)=x^3/6-x^5/120+x^7/5040-x^9/362880\n    	 x      	f(x)');
fprintf('\n %9.7f    %14.7e',table2);
fprintf('\n\n');
fprintf('The end\n');

out3 = step3(a);
table3 = [a; out3];
fprintf(' Step 3, original formula: f(x)=x^3/6-x^5/120+x^7/5040-x^9/362880\n    	 x      	f(x)');
fprintf('\n %9.7f    %14.7e',table3);
fprintf('\n\n');
fprintf('The end\n');

out4 = step4(a);
table4 = [a; out4];
fprintf(' Step 4, original formula: f(x)= x-sin(x)\n    	 x      	f(x)');
fprintf('\n %9.7f    %14.7e',table4);
fprintf('\n\n');
fprintf('The end\n');