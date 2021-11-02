function [time1]=myEx0(n)
A = dif2(n);
b = ones(n,1); % the right side vector doesnt change the time
tic;
sol = A\b;
time1=toc;
