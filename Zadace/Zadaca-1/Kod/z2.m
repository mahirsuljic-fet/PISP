A = input("Unesite matricu A dimenzija nxn (n >= 3): ");

while length(A) < 3 || size(A)(1) != size(A)(2) || mod(size(A),2) == 0
  A = input("Unos nije validan!\nUnesite matricu A dimenzija nxn (n >= 3): ");
end

n = length(A);
A_lr = fliplr(A);
centralni_index = (size(A) + 1) / 2;
centralni_element = A(centralni_index(1), centralni_index(2));

sume = [sum(A,1) sum(A,2)' sum(diag(A)) sum(diag(A_lr))];
if length(find(sume != sume(1))) == 0
  disp("DA");

  V = [prod([diag(A_lr,-1)' diag(A,1)'])];

  submatrica = A(2:(n-1),2:(n-1));
  submatrica_lr = fliplr(submatrica);
  parni_glavne = diag(submatrica)(find(mod(diag(submatrica),2) == 0))';
  parni_sporedne = diag(submatrica_lr)(find(mod(diag(submatrica_lr),2) == 0))';
  diagsum = sum([parni_glavne parni_sporedne]) - centralni_element * (mod(centralni_element,2) == 0);

  V = [V diagsum];

  broj_rubnih = 0;
  for i = 1:n
    for j = [1 n]
      if A(i,j) < 8 && mod(i + j, 2) != 0
        broj_rubnih += 1;
      end
    end
  end

  for i = [1 n]
    for j = 2:(n-1)
      if A(i,j) < 8 && mod(i + j, 2) != 0
        broj_rubnih += 1;
      end
    end
  end

  V = [V broj_rubnih]
else
  disp("NE");

  B = diag(diag(A)) + fliplr(diag(diag(A_lr)));
  B(centralni_index(1), centralni_index(2)) -= centralni_element;
  B(find(B == 0)) = round(rand(n)*6 + 2)(find(B == 0))
end
