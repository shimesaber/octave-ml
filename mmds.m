function result = mmds(A,d)

  cA = centering(A);
  
  result = pcadr(cA,d);
  
endfunction