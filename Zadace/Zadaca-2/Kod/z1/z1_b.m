syms x real;

y = (2+log(x))/(sqrt(3*x));

% izvodi
y_dif = diff(y);
y_dif2 = diff(y_dif);

% nule funkcije
zero_x = solve(y);
zero_y = subs(y, {x}, zero_x);
nula = zero_y;

% ekstremi
extr_x = solve(y_dif);
extr_y = subs(y, {x}, extr_x);
conv = subs(y_dif2, {x}, extr_x);

a = find(conv<0);
b = find(conv>0);

max = [extr_x(a)', extr_y(a)'];
min = [extr_x(b)', extr_y(b)'];

T = extr_x;

% horizontalna asimptota
ha = limit(y, inf);

% vertikalna asimptota
va = solve(sqrt(3*x));
limit(y, x, va, 'right');

% iscrtavanje

ezplot(y, [-1 8, -4 3]);
hold on;
grid on;
plot(zero_x, zero_y, 'bs');
plot(extr_x, extr_y, 'ko');
plot([-1 8], [ha ha], 'r');
plot([va va], [-4 3], 'r');

nula, ha, va, T