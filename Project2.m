%% Question 1
%% Fitting the best linear model usign the least squares
%% Input the response data and obervations
Years = [1761; 1767; 1771; 1773; 1776; 1779; 1783; 1785; 1788; 1791];
KVnum = [1; 41; 111; 176; 246; 318; 422; 474; 535; 626];
%% Fit the least-square linear model using the function polyfit
linearModel = polyfit(KVnum, Years, 1);
%% Question 2
%% First Create the design matrix
A = [ones(1,10); KVnum'; (KVnum.^3)']';
%% Part 1: inverses(using SVD)
Ainv = pinv(A);
inerse =(inv(A'*A))*A';