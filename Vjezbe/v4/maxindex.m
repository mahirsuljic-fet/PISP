x = input('Unesite vektor: ');
max_vr = x(1);
max_indeks = 1;
for ii = 2:length(x)
  if(x(ii) > max_vr)
    max_vr = x(ii);
    max_indeks = ii;
  end
end

fprintf('Max vrijednost je %d\n', max_vr);
fprintf('Indeks max vrijednosti je %d\n', max_indeks);
