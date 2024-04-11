function izvod(func, x)
  y = feval(func, x);
  dydx=diff(y)./diff(x);
  plot(x,y,'b')
  hold on
  plot(x(:,1:length(dydx)),dydx,'r--')
  title('Grafik funkcije i izvoda funkcije')
  xlabel('x-osa')
  ylabel('y-osa')
