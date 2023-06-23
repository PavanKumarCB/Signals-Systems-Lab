clc; close all; clear all;
t = 0:10;
r1 = t+2;
r2 = t+1;
r3 = t-2;
r4 = t-3;
y = r1-r2-r3+r4;
stem(t,y,'filled', Color='black'); grid on
xlabel('time'); ylabel('amplitude'); 
title('Experiment 2 Practice problem 1')