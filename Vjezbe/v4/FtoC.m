function FtoC(donja, gornja, korak)
  fahr = donja;
  fprintf('%6s\t%6s\n','Fahr.','Cels.');
  while (fahr <= gornja)
    cels = 5/9 * (fahr - 32);
    fprintf('%6.2f\t%6.2f\n','Fahr.','Cels.');
    fahr = fahr + korak;
  end
