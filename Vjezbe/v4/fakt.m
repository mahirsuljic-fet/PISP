function a = fakt(N)
  if N < 0
    a = NaN;
  else
    a = 1;
    for k=1:N
    a = a*k;
    end
  end
