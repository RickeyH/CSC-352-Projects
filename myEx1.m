function [time1]=myEx1(n)
A = dif2(n);
b = ones(n,1); % the right side vector doesn’t change the time
tic;
sol = inv(A)*b;
time1=toc;
