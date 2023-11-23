clc,clear,close all

t_end = 10; n = 10000;t_delta = t_end/n;
alpha = 2;beta = 1;gamma = 0.4;
mu = 0.9;r = 1.5;
K1 = 1;K2 = 1;

y = [1 -5];
s_integ = 0;
y1_array = [];
y2_array = [];
s_array = [];u_array=[];s_dot_array=[];
for t = linspace(0,t_end,n)
    s = alpha * y(1) +  (beta * y(2) ^ mu) + (gamma *  y(1) ^ r);
    if (t > 0) s_dot = (s - s_array(1,end)) / t_delta; end
    s_integ = s_integ + K2 * sign(s) * t_delta;

    u = -0.1*sin(20*t) - (alpha/(beta*mu) * y(2)^(2-mu)) ...
    -(gamma*r/(beta*mu) *(y(2)^(2-mu))*(y(1)^(r-1))) ...
    -(K1*(abs(s))^(1/2)*sign(s))- s_integ;

    y(2) = y(2) + (0.1*sin(20*t) + u) * t_delta;
    y(1) = y(1) + y(2) * t_delta;
    u_array = [u_array,u];
    s_array = [s_array,s];
    if (t > 0)  s_dot_array = [s_dot_array,s_dot]; end
    y1_array = [y1_array, y(1)];
    y2_array = [y2_array, y(2)];
end
t = linspace(0,t_end,n);
subplot(1,3,1);plot(t,y1_array,'k');xlabel('t');ylabel('x_1',"Rotation",0)
subplot(1,3,2);plot(t,u_array,'k');xlabel('t');ylabel('u',"Rotation",0);title('NTSTSMC')
subplot(1,3,3);plot(y1_array,y2_array,'k');xlabel('x_1');ylabel('x_2',"Rotation",0)
