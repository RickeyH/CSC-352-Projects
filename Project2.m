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
inver = inv(A.'*A)*A.';
sol1 = inver*Years;
%% Part 2: Pseudoinverse
pseudoInver = pinv(A);
sol2 = pinv(A)*Years;
%% Part 3: QR Factorization
[Q,R] = qr(A);
Qtb = Q.'*Years;
sol3 = R\Qtb;
%% Analyzing part 1 and part 2
inv = inv(A.'*A);
Pinv = pinv(A)/A.';
Rinv = inv(R);