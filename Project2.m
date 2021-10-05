%% Question 1
%% Fitting the best linear model usign the least squares
%% Input the response data and obervations
Years = [1761; 1767; 1771; 1773; 1776; 1779; 1783; 1785; 1788; 1791];
KVnum = [1; 41; 111; 176; 246; 318; 422; 474; 535; 626];
%% Fit the least-square linear model using the function polyfit
linearModel = polyfit(KVnum, Years, 1);
%% Question 2
%% First Create the design matrix
A = [ones(1,10); KVnum.'; (KVnum.^3).'].';
%% Part 1: Inverse of A^TA
inver = (inv(A.'*A));
m1 = inver*A.';
sol1 = m1*Years;
%% Part 2: Pseudoinverse
pseudoInver = pinv(A);
invPseudo = pinv(A)/A.';
sol2 = pinv(A)*Years;
%% Part 3: QR Factorization
[Q,R] = qr(A,0);
Qtb = Q.'*Years;
invR = inv(R);
sol3 = R\Qtb;
%% Question 3
%% Compute the condition number of A using the 2-norm
k2 = norm(inv(A.'*A),2).*norm(A.'*A,2);
%% Question 4
