function [x1s,x2s,ys] = scale(x1, x2, y)

  x1s = (x1 - min(x1)) / (max(x1) - min(x1));
  x2s = (x2 - min(x2)) / (max(x2) - min(x2));
  ys = (y - min(y)) / (max(y) - min(y));


 end
