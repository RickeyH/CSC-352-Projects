function A = dif2 ( n )
% usage: function A = dif2 ( n )
%
% DIF2 sets up the second difference matrix.
% Input, integer n, the order of the matrix.  n should be at least 2.
% Output, real A(n,n), the second difference matrix.
%
%  Example: for  n = 5
%
%    A = [ -2  1  0  0  0;
%           1 -2  1  0  0;
%           0  1 -2  1  0;
%           0  0  1 -2  1;
%           0  0  0  1 -2 ]

%  Original Author:  John Burkardt
%  modified by M. M. Sussman
%  $Date: 2008-01-20 21:22:45 $
if n > 1
  % A eps is essentially zero, but Matlab will not recognize it
  % as zero.  If Matlab sees zeros, it tries to use sparse matrix
  % (more efficient than full matrix) methods.
  A = eps*ones(n,n) ...
    +       diag ( ones ( n-1, 1 ), -1 ) ...    %set lower diag
    - 2.0 * diag ( ones ( n,   1 ),  0 ) ...    %set main diag
    +       diag ( ones ( n-1, 1 ), +1 );       %set upper diag
else
  error('dif2: input parameter n must be larger than 1.\n');
end
