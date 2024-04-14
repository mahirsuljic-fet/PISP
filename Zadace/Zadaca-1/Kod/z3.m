function A=z3(x)
  n = length(x);
  A = zeros(n,3*n);

  A(1,1:n) = x;
  A(n,1:n) = x;
  A(:,2*n+1) = x(n:-1:1);
  A(:,3*n) = x(n:-1:1);

  for i=1:n
    A(n-i+1,i) = x(i);
    A(i,(n+i):-1:n+1) = x(1:i);
    A(i,n+i:2*n) = x(1:n-i+1);
    A(n-i+1,3*n-i+1) = x(i);
  end

  M = [1 1 1 ; 1 0 1 ; 1 1 1];
  C = conv2(A,M,'same');
  D = [];

  for i=1:n
    for j=1:3*n
      disp(['A(' num2str(i) ',' num2str(j) ')=' num2str(A(i,j)) ' okruzen sumom ' num2str(C(i,j))]);
      if A(i,j) ~= 0 && mod(C(i,j),A(i,j)) == 0
        D = [D A(i,j)];
      end
    end
  end

  subplot(1,2,1);
  imagesc(A);
  yticks(4.5:-0.5:0.5);
  colormap hot;

  subplot(1,2,2);
  plot(D);
