function [dydt,u] = systemFcnNTSMC(t,y)

alphaTmp = 1;
alpha = 1/alphaTmp;
beta = 1;
mu = 0.9;
ita = 1;

%y(1) = y(1) - (1);
s = y(1) + 1/alpha * y(2) ^ mu + beta * atan(y(1));
u = -0.1*sin(20*t) - alpha/mu * y(2)^(2-mu) - ...
    alpha*beta/mu *(y(2)^(2-mu))*(1/(1+y(1)^2))-ita*sign(s);
dydt = [y(2); 0.1 * sin(20 * t) + u];