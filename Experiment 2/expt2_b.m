clc; close all;
n = -4:0.01:1;
u1 = n>=-2;
u2 = n>=1;
u3 = n>=5;
y = u1 - 3*u2 + 2*u3;
plot(n,y,color='#000000')
axis([-5 2 -3 2])
grid on
xlabel('time'); ylabel('amplitude'); 
title('Experiment 2 Practice problem 2')