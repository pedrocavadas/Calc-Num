function [x, iter] = NewtonRaphson(F,DF,x0,tol,maxiter)
	iter = 0;
  error = inf;
  while error > tol && iter < maxiter
    iter = iter + 1;
    x = x0 - (DF(x0)\F(x0));
    error = norm(x-x0);
    x0 = x;
    fprintf('\nIteracoes = %3d\n', iter);
    fprintf('X = %f\n', x);
    fprintf('Erro = %f\n', error);
  end
  if error > tol
    x = NaN;
  end
return