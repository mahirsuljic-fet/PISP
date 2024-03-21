% ulazna matrica

A = [1 6 7 8 2;
     1 5 6 7 3;
     1 8 9 2 3;
     0 5 2 9 9]

r = [1 1 2 2 3 3 4 4];
k = [1 2 2 3 3 4 4 5];

indeksi = sub2ind(size(A), r, k)

A(indeksi)
