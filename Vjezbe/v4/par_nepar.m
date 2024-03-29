function par_nepar(vrijednost)
  switch (vrijednost)
    case {1, 3, 5, 7, 9}
      disp('Vrijednost je neparna.')
    case {2, 4, 6, 8, 10}
      disp('Vrijednost je parna.')
    otherwise
      disp('Vrijednost je izvan zadatog intervala.')
  end
