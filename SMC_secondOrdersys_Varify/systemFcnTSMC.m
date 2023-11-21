function [dydt,u] = systemFcnTSMC(t,y)

alpha = 1;
beta = 1;
mu = 3/5;
ita = 1;

%y(1) = y(1) - (1);
s = y(2) + alpha * y(1) + beta * y(1)^mu;
u = -0.1*sin(20*t) - alpha * y(2) - beta * mu *(y(1)^(mu-1))*y(2)-ita*sign(s);
dydt = [y(2); 0.1 * sin(20 * t) + u];