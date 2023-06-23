[r, Fs] = audioread("myVoice.wav");

t = 0:1/Fs:(length(r)-1)/Fs;

subplot(2,1,1); plot(t,r, 'color', 'black')
xlabel('time'); ylabel('amplitude'); 
title('Time domain plot of audio signal');

n = length(r);
F = (-n/2:(n/2)-1).*Fs/n;
y = fft(r);
subplot(212); 
plot(F, fftshift(abs(y)), 'color', 'black');
xlabel('Frequency'); ylabel('Amplitude'); 
title('Frequency domain plot of audio signal')


