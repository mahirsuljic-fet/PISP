[t,y] = ode45('hem', [0 0.5], [0 1]);
plot(t,y(:,1), 'k', 'LineWidth', 1.5);
hold on;
plot(t, y(:,2), 'r', 'LineWidth', 1.5);
legend('A', 'B');
xlabel('Vrijeme (s)');
ylabel('Kolicina hemikalije (g)');
title('Hemijska reakcija');
