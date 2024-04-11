% Ova skripta rjesava polozaj i brzinu klatna.

[t,x] = ode45('klatno', [0 10], [0.9*pi 0]);
plot(x(:,1), x(:,2));
xlabel('Polozaj');
ylabel('Brzina');
title('Graficki prikaz polozaja i brzine klatna u faznoj ravni');
