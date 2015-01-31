function result = pcadr(M,d)
  [U,S,V] = svd(M);
  result = U(:,1:d) * S(1:d,1:d);
endfunction