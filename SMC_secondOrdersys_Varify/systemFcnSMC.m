function [dydt,u] = systemFcnSMC(t,y)

lambda = 1;
ita = 1;

%y(1) = y(1) - (1);
s = y(2) + lambda *  y(1);
u = -lambda * y(2)-0.1.*sin(20.*t)-ita.*sign(s);
dydt = [y(2); 0.1 * sin(20 * t) + u];