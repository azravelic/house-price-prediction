clear;clc;
pkg load io;
data = csv2cell('housepricepred_1.csv');

x = str2double(data{1,2}); # sqft
y = str2double(data{1,1}); # price

[xs,ys] = scale(x,y);

m = length(ys); #50

%theta = zeros(2,1); #initial values in 2x1 matrix
theta = [0;1];
iterations = 2500;
alpha  = 0.001;

%plot(xs,ys, 'ro', 'MarkerSize', 10);
%xlabel('Square feets');
%ylabel('House price');

xs = [ones(m, 1), xs(:,1)];
ctheta  = 1:1:1000;
J = cost_function(xs,ys,ctheta, m);

plot(ctheta, J);
legend('training Data', 'Linear Regression');
#h = xs * theta; # to obtain mx1 matrix to subtract from y mx1 matrix




%J = cost_function(xs,ys,theta, m);
%[theta, J_history]  = gradient_descent(xs,ys, m, theta, alpha, iterations);


%{
hold on;
plot(xs(:,2), xs * theta, '-');
legend('training Data', 'Linear Regression');
hold off;


plot(1:iterations, J_history);
xlabel('Iterations');
ylabel('Cost function');
xlim([0, 5000]);
%}
