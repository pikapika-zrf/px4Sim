function [dydt,u] = systemFcnNTSMC(t,y)

alpha = 2;
beta = 1;
mu = 0.9;
gamma = 0.4;
r = 1.5;
ita = 1;
%y(1) = y(1) - (1);
s = alpha * y(1) +  beta * y(2) ^ mu + gamma * y(1) ^ r;
u = -0.1*sin(20*t) - alpha/(beta*mu) * y(2)^(2-mu) - ...
    gamma*r/(beta*mu) *(y(2)^(2-mu))*(y(1)^(r-1))-ita*sign(s);
dydt = [y(2); 0.1 * sin(20 * t) + u];