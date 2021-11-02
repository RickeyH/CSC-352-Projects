function myEx4(n)
A=frank(n);
xKnown=ones(n,1);
b=A*xKnown;
xSolution=inv(A)*b;
error=norm(A*xSolution-b,inf)
det(A)
cond(A)