clear;clc;
data = csv2cell('housepricepred_2.csv');
x1 = str2double(data{1,2}); # sqft_living
x2 = str2double(data{1,3}); #sqft_lot
y = str2double(data{1,1}); # price
x1(51)= [];
x2(51)= [];
y(51)=[];

[x1s,x2s,ys] = scale(x1,x2,y);
m = length(ys); #50 1
x0 = ones(m, 1);
x = [x0,x1s,x2s];
theta = zeros(3,1); #initial values in 3x1 matrix
iterations = 5000;
alpha  = 0.001;


J = cost_function(x,ys,theta, m);
[theta, J_history]  = gradient_descent(x,ys, m, theta, alpha, iterations);


plot(1:iterations, J_history);
xlabel('Iterations');
ylabel('Cost function');
xlim([0, 5000]);

