%file f1.m          #Allows the use of both functions f1 and secant
%file secant.m
y = zeros(1,41);    #Initialize both y (array filled with the results of calling f1) to an array of zeros
TOL = 10^-4;        #with a tolerance of 10^-4
pos = 1;
count = 1;

for i=-10:.5:10,
    y(pos) = f1(i);
    if pos > 1
        if y(pos - 1) > 0 && y(pos) <= 0 || y(pos - 1) < 0 && y(pos) >= 0 
            #Determins if either side of the function crosses the x-axis
            disp(num2str(secant(i-.5,i,TOL)));
        end
    end
    pos++;
end