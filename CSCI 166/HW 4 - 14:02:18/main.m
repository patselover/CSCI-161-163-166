u = [ 1 4 0 4 4 0 4 -6 ];
v = [1 -5 2 22 -31 -5 28 -12];
uComp = compan(u);
vComp = compan(v);
uEig = eig(uComp);
vEig = eig(vComp);
printf("u's companion matrix: \n")
disp(uComp);
printf("\n")
printf("u's eigenvalues: \n")
disp(uEig);
printf("\n\n")
printf("v's companion matrix: \n")
disp(vComp);
printf("\n")
printf("v's eigenvalues: \n")
disp(vEig);