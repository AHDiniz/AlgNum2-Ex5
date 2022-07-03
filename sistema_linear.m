function [A,f] = sistema_linear (a,b,c,d,e,fun,n,m)
 
 N = n*m;
 A = sparse(N,N);
 f = zeros(N,1);
 
  .
  .
  .

 for I = ....
   A(I,I-n) = ...;
   A(I,I-1) = ...;
   A(I,I) = ...;
   A(I,I+1) = ...;
   A(I,I+n) = ...; 
   f(I) = ...; 
 endfor
  .
  .
  .
  
endfunction

