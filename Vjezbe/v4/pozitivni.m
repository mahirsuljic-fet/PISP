x = input('Unesite vektor: ');
count = 0;
for ii = 1:length(x)
  if (x(ii) > 0)
    count = count + 1;
  end
end

fprintf('Broj pozitivnih vrijednost je %d\n', count);
