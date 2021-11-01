function A = frank ( n )
% function A = frank ( n )
%    FRANK sets up the Frank matrix.
%
%  Parameters:
%    Input, integer N, the order of the matrix.
%    Output, real A(N,N), the Frank matrix.

%  Author:   John Burkardt
%  Modified by M. M. Sussman
%  $Date: 2007-12-24 22:33:37 $

A = zeros ( n, n );
for i = 1 : n
  for j = 1 : n
    if ( j < i-1 )
    elseif ( j == i-1 )
      A(i,j) = n+1-i;
    elseif ( j > i-1 )
      A(i,j) = n+1-j;
    end
  end
end
