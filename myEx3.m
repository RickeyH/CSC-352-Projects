function myEx3(n)
A=dif2(n);
xKnown=ones(n,1);
b=A*xKnown;
xSolution=inv(A)*b;
error=norm(A*xSolution-b,inf)
det(A)
cond(A)