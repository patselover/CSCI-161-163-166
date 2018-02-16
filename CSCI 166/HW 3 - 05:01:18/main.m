system1=[[3,2,-3,1],
         [1,-1,1,-1],
         [2,-5,6,3],
         [6,-4,4,3]]
B1=[5 7 10 20];
system2=[[1,1,1,-1],
         [3,-1,1,2],
         [1,-1,2,1],
         [2,3,1,-1]];
B2=[2 12 9 7];

if(abs(det(system1)) < 1.0e-14)
    printf("System1 matrix is singluar\n");
else
    [L1,U1]=lu(system1);
    x1 = (U1 \ (L1 \ B1.'));
    x1Direct = system1\B1.';

    printf('L1 = \n'); disp(L1);
    printf('U1 = \n'); disp(U1);
    printf('B1 = \n'); disp(B1);

    printf('x1 = \n'), disp(x1);
    printf('\n x1 directly = \n'), disp(x1Direct);
    endif;

if(abs(det(system1)) < 1.0e-14)
    printf("System2 matrix is singluar\n");
else
    [L2,U2]=lu(system2);
    x2 = (U2 \ (L2 \ B2.'));
    x2Direct = system2\B2.';

    printf('L2 = \n'); disp(L2);
    printf('U2 = \n'); disp(U2);
    printf('B2 = \n'); disp(B2);

    printf('x2 = \n'), disp(x2);
    printf('\n x2 directly = \n'), disp(x2Direct);
    endif;




