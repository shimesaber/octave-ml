function result = centering(A)
  [row,col] = size(A);
  One = ones(row,row);
  result = (eye(row) - One.*(1/row))*A;
endfunction
