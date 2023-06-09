function [theta, J_history]  = gradient_descent(x, y, m, theta, alpha, iterations)
  J_history = zeros(iterations,1);
  for i = 1:iterations

    h = x*theta; #linear regression matrix to fit the data
    t1 = theta(1)-alpha*(1/m)*sum(h-y);
    t2 = theta(2)-alpha*(1/m)*sum((h-y).*x(:,2));

    theta(1) = t1;
    theta(2) = t2;

    J_history(i) = cost_function(x,y, theta, m);

  endfor
end
