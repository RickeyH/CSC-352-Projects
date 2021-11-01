function A = hilbert ( n )
% function A = hilbert ( n )
%    HILBERT sets up the Hilbert matrix.
%
%  Parameters:
%    Input, integer N, the order of the matrix.
%    Output, real A(N,N), the Hilbert matrix.
%

%  Author:   John Burkardt
%  Modified by M. M. Sussman
%  $Date: 2008-01-20 21:22:45 $

A = zeros ( n, n );
for i = 1 : n
  for j = 1 : n
    A(i,j) = 1 / ( i + j - 1 );
  end
end
