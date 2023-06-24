x = [1 2 3 4];
N=length(x);

% DFT
X=zeros(1,N);
for k=1:N
  for n=1:N
    X(k)=X(k)+x(n).*exp(-1j.*2.*pi.*(n-1).*(k-1)./N);
  end
end
X_mag = abs(X);
X_ph = angle(X);
subplot(221); stem(X_mag)
subplot(222); stem(X_ph)

% IDFT
Y = zeros(1, N);
for k=1:n
    for n=1:N
        Y(k) = Y(k) + (1/N).*X(n).*exp((1j.*2.*pi.*(n-1).*(k-1)./N));
    end
end
Y_mag = abs(Y);
Y_ph = angle(Y);
subplot(223); stem(Y_mag)
subplot(224); stem(Y_ph)

