function m = dijagonala(x)
  m = ones(length(x) + 2);
  m(end-1:-1:2, 2:end-1) = diag(x);
