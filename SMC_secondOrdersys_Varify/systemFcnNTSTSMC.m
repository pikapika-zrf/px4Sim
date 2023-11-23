function [dydt,u] = systemFcnNTSTSMC(t,y,t_delta)

alpha = 2;
beta = 1;
gamma = 0.4;
mu = 0.9;
r = 1.5;
K1 = 1;K2 = 1;
%y(1) = y(1) - (1);
s = alpha * y(1) +  abs(beta * y(2) ^ mu) + abs(gamma *  y(1) ^ r);
%s_integ = s_integ +  abs(K2*sign(s)*t_delta);
s_array = s * t_delta;
s_integ = trapz(t_array,s_array);
u = -0.1*sin(20*t) - abs(alpha/(beta*mu) * y(2)^(2-mu)) ...
    -abs(gamma*r/(beta*mu) *(y(2)^(2-mu))*(y(1)^(r-1))) ...
    -abs(K1*(abs(s))^(1/2)*sign(s))- K2 * s_integ;
dydt = [y(2); 0.1 * sin(20 * t) + u];