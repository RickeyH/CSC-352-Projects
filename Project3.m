%[time_10]=myEx1(10);
%[time_160]=myEx1(160);
%[time_320]=myEx1(320);
%[time_640]=myEx1(640);
%[time_1280]=myEx1(1280);
%[time_2560]=myEx1(2560);
%[time_5000]=myEx1(5000);
%[time_10000]=myEx1(10000);
%[time_100000]=myEx1(100000);
%myEx2(10);
%myEx2(100);
%myEx2(200);
%myEx3(10);
%myEx3(100);
%myEx3(200);
%myEx4(10);
%myEx4(100);
%myEx4(200);
A = [-2 1 0 0 0; 1 0 1 -2 0; 0 0 0 1 -2; 1 -2 1 0 0; 0 1 -2 1 0];
%Doing the LU factorization
[L,U] = lu(A);
%Checking whether A = L*U
Alu = L*U;
%Doing the LU factorization with pivoting
[pL,pU,P] = lu(A);
%Check whether A is singular
determinant = det(A);
k2 = cond(A);
%Using LU to solve Ax=b
b = [1; 1; 1; 1; 1];
Ux = inv(L)*b;
x = inv(U)*Ux;
%Using / to solve Ax=b again with the LU factorization
Unewx = L\b;
newx = U\Unewx;
[new_time_5000]=myEx0(5000);
[new_time_10000]=myEx0(10000);