X = [-1 0 2];
Y = [0 -1 3];
p2 = polyfit(X,Y,2);
plot(X, Y, 'o', 'MarkerSize', 10);
hold on;
x = -3:0.1:3;
plot(x, polyval(p2,x), 'r--');
