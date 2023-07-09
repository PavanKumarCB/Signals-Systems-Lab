% Time range
n = -10:10;

% Step function
u = @(n) (n >= 0); % Unit step function

% Signal
x = u(n + 2) - 3*u(n - 1) + 2*u(n - 5);

% Plotting
stem(n, x, 'filled', 'color', 'black');
xlabel('n');
ylabel('Amplitude');
title('Signal: u(n+2) - 3u(n-1) + 2u(n-5)');
grid on;