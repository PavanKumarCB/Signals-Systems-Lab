% syms k x;
% N = 3;
x = [1 2 3 4];
n = 1:1:4;
% y = fft(x);
% mag_y = abs(y); phase_y = angle(y);
% subplot(311); stem(n,x, 'filled', 'color', 'black');
% xlabel('n-->'); title('Input discrete signal');
% 
% F = 2*pi*n;
% subplot(312); stem(F/pi, mag_y, 'filled', 'color', 'black');
% title('Magnitude plot'); xlabel('Frequency in units of pi')
% 
% X = ifft(y);
% subplot(313); stem(F/pi, phase_y, "filled", 'color', 'black');
% title('Phase plot'); xlabel('Frequency in units of pi')

F = f * exp(-1i*(((2*pi))/N)*k);
y = symsum(F,k,0,N);
F1 = 2*pi*n;
mag_y = abs(y); phase_y = angle(y);
subplot(311); stem(F1,mag_y, 'color', 'black')



