%file: secant.m     #Requires the use of the f1 function
%file f1.m
function [out] = secant(p0,p1,TOL)
    q0 = f1(p0);    #inititalize the q0 and q1 variables or
    q1 = f1(p1);    #values on either side of the x-axis
    for i=3:20,     #start at the 3rd iteration of p
        #set the new p -> (p3...p19) to determine a closer value to the root
        #set p equal to the point of the x-axis that the line between p0 and p1 intersect
        p = p1 - q1*(p1 - p0)/(q1 - q0);
        #if the tolerance is greater than the difference between p and p1 return the value
        if abs(p - p1) < TOL
            out = p;
            return;
        end
        #after we determine the value of p reset all the variables so we can do the next iteration of 
        #the secant function to create another line between p0 and p1 and determine where they cross the x-axis
        p0 = p1;
        q0 = q1;
        p1 = p;
        q1 = f1(p);
    end
    #if we get to this point then it is likely that there isn't a root 
    #because we are moving around the x-axis
    out = NaN;
return;