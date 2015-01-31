function result = laplacianEigenmap(kernel, d)
  lambda = diag(sum(kernel));
  P = lambda - kernel;
  P = inv(lambda) * P;
  P = (P + P')/2;
  [eigenVector,eigenValue] = eig(P);

  if eigenValue(1,1) < eigenValue(2,2)
    result = eigenVector(:,1:d);
  else
    result = eigenVector(:,(size(eigenValue)(1)):(size(eigenValue)(1)-d));  
  endif
  
endfunction