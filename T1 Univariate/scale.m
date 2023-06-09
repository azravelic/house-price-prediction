function [xs,ys] = scale(x,y)

  x_min = min(x);
  x_max = max(x);
  xs = (x - x_min) / (x_max - x_min);

  y_min = min(y);
  y_max = max(y);
  ys = (y - y_min) / (y_max - y_min);


 end
