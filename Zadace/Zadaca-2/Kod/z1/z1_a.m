syms x y real;

alg_eq1 = x^2+y^2-5==0;
alg_eq2 = -3*x+2*y+1==0;

[sx, sy] = solve(alg_eq1, alg_eq2);

dif_eq = '3*D2y + 5*y = cos(2*x)';
dif_conds = 'y(0)=1, Dy(0)=0';

dif_y = dsolve(dif_eq, dif_conds, 'x');

disp('x: ');
pretty(sx);
disp('y: ');
pretty(sy);

subplot(1, 2, 1);

ezplot(alg_eq1);
hold on;
grid on;
ezplot(alg_eq2);
hold on;
plot(sx, sy, 'ks');
title('Algebarske');

subplot(1, 2, 2);

fplot(dif_y);
title('Diferencijalna');