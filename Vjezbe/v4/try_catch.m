a = [1 -3 2 5];

try
  index = input('Unesite subscript elementa kojeg zelite prikazati: ');
  disp(['a(' int2str(index) ')=' num2str(a(index))]);
catch
  disp(['Nedozvoljeni subscript: ' int2str(index)]);
end
