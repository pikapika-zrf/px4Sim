function [dydt,u] = systemFcnCNTSMC(t,y)

alpha = 2;
beta = 1;
mu = 0.9;
ita = 1;
%y(1) = y(1) - (1);
s = alpha * y(1) +  beta * y(2) ^ mu;
u = -0.1*sin(20*t) - alpha/(beta*mu) * y(2)^(2-mu)...
    -ita*sign(s);
dydt = [y(2); 0.1 * sin(20 * t) + u];