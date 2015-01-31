# plot2d(laplacianEigenmap(gaussianKernel(M,0.1),2),label)

function result = gaussianKernel(X,sigma)
  linerK = X * X';
  diagLK = diag(linerK);
  tmp = diagLK .* ones(size(linerK));
  
  D = tmp - 2*linerK + tmp';
 
  result = exp(-(1/sigma*sigma)*D);
  
endfunction