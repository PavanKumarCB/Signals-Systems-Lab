x = [1 2 3 4];
N=length(x);

% DFT
X=zeros(1,N);
for k=1:N
  for n=1:N
    X(k)=X(k)+x(n).*exp(-1j.*2.*pi.*(n-1).*(k-1)./N);
  end
end
subplot(211); stem(x, abs(X))

% IDFT
Y = zeros(1, N);
for k=1:n
    for n=1:N
        Y(k) = Y(k) + (1/N).*X(n).*exp((1j.*2.*pi.*(n-1).*(k-1)./N));
    end
end
subplot(212); stem(x, abs(Y))