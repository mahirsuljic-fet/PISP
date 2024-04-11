[t,x] = ode45('odefun', [0 10], [10]);
plot(t,y);
xlabel('Vrijeme');
ylabel('y(t)'):
