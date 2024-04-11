function dxdt = klatno(t,x)
  L = 1;
  theta = x(1);
  gamma = x(2);

  dtheta = gamma;
  dgamma = -(9.8/L)*sin(theta);

  dxdy = zeros(2,1);

  dxdt(1) = dtheta;
  dxdt(2) = dgamma;
