function plot2d(M,label)
  uniqLabel = unique(label);
  
  colorIndex = 1;
  
  for i = 1:size(uniqLabel)
    result = M.*(label==uniqLabel(i));
    plot(result(:,1),result(:,2),strcat(".", int2str(colorIndex)));
    colorIndex = colorIndex + 1;
    hold on
  endfor
  hold off
  
endfunction