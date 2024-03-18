n=input('Unesite n')
m=input('Unesite m: ')

if(n <= 0 || m <= 0)
  error('n i m moraju biti pozitivni')
end

x(1:n) = 2*n;
y = diag(x);
y(find(y == 0)) = 3*m^2;

if (mod(n,2) == 0)
    y([n/2 n/2+1],:) = []
  else
    y(ceil(n/2),:) = []
end
