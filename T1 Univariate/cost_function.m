function J = cost_function(x, y, theta,m)

h = x * theta; # to obtain mx1 matrix to subtract from y mx1 matrix
J = 1/(2*m)*sum((h - y ).^ 2);

end
