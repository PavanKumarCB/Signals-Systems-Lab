T = 10*(1/50);
fs = 1000;
t = 0:1/fs:T-1/fs;
x = sawtooth(2*pi*50*t, 0.5); 
subplot(2,2,1); plot(t,x,'black');
xlabel('Time(sec)'); ylabel('Amplitude');
title('Triangular pulse')
y=fft(x);
subplot(2,2,2);
plot(fftshift(abs(y)), 'black');
xlabel('frequency'); ylabel('amplitude'); title('Magnitude response');
theta = angle(y); subplot(2,2,3);
stem(theta, 'color', 'black');
xlabel("Frequency (Hz)"); ylabel("Phase / \pi");
title('phase response')