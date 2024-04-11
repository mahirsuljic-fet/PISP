[t,x] = ode45('func', [0 10], [1]);
plot(t,y);
xlabel('Vrijeme');
ylabel('y(t)'):
