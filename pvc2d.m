function [u] = pvc2d(a,b,c,d,n,m);

   hx = (b-a)/(n-1);
   hy = (d-c)/(m-1);
   x  = linspace(a,b,n);
   y  = linspace(c,d,m);

   [bx,by,gamma,fun,kappa,left,gleft,right,gright,bottom,gbottom,top,gtop] = aplicacao (x,y,n,m);

   [ai,bi,ci,di,ei]= coeficientes(hx,hy,kappa,bx,by,gamma,n,m);

   [A,f] = sistema_linear(ai,bi,ci,di,ei,fun,n,m);

   [A,f] = condicoes_contorno (A,f,n,m,left,gleft,right,gright,bottom,gbottom,top,gtop,ai,bi,ci,di,ei,hx,hy,kappa);
 
   u = A\f;

   grafico_solucao (u,x,y,n,m)

endfunction
