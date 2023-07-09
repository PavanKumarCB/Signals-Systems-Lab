t = -5:0.01:5; 
signal = ramp(t + 2) - ramp(t + 1) - ramp(t - 2) + ramp(t - 3);

plot(t, signal, 'LineWidth', 2, 'color', 'black');
xlabel('Time');
ylabel('Amplitude');
title('Plot of the Signal r(t+2)-r(t+1)-r(t-2)+r(t-3)');
grid on;

function y = ramp(t)
    y = t .* (t >= 0);
end


