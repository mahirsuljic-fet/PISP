function xmax = maxfun(X)
% Komentar koji se ispisuje kada ukuamo help maxfun
% Funkcija nalazi maksimalnu vrijednost u unesenom vektoru
  if nargin ~= 1
    error('Funkcija ima samo jedan ulazni argument')
  end

  if nargout ~= 1
    error('Funkcija ima samo jedan izlazni argument')
  end

  n = length(X);
  xmax = X(1);

  for i=1:n-1
    if X(i+1) > xmax
      xmax = X(i+1);
    end
  end
