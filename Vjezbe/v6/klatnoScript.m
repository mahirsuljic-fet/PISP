% Ova skripta rjesava polozaj i brzinu klatna.

[t,x] = ode45('klatno', [0 10], [0.9*pi 0]);
plot(t,x(:,1));
hold on;
plot(t,x(:,2),'r');
legend('Polozaj','Brzina');
title('Graficki prikaz polozaja i brzine klatna');
