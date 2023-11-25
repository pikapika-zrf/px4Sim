clc,clear,close all

t_end = 50; n = 1000;dt = t_end/n;
m = 0.8; g = 9.80665; Ix = 0.005; Iy = 0.005; Iz = 0.009; L = 0.33 / 2;
Kz = 0;

alpha = 2;beta = 1;gamma = 0.4;
mu = 0.9;r = 5/3;
K1 = 10;K2 = 10;
phi_dot = 0;theta_dot = 0;
e_psi = -1; e_psi_dot = 0; psi_des_dotdot = 0;
s_psi_integ = 0;
y1_array = [];
y2_array = [];
u_array=[];s_dot_array=[];
for t = linspace(0,t_end,n)
    
    s = alpha * e_psi +  real(beta * sign(e_psi_dot) * abs(e_psi_dot) ^ mu) + real(gamma * sign(e_psi) * abs(e_psi) ^ r);
    s_psi_integ = s_psi_integ + K2 * sign(s) * dt;

    u = -Iz*((Ix-Iy)/Iz*phi_dot*theta_dot - psi_des_dotdot + alpha/(beta*mu)*sign(e_psi_dot) * abs(e_psi_dot)^(2-mu)...
    + gamma*r/(beta*mu)*(sign(e_psi) * abs(e_psi)^(r-1))* sign(e_psi_dot) * abs(e_psi_dot)^(2-mu) + K1*(abs(s))^(1/2)*sign(s)...
    + s_psi_integ);
    
    u = u * 0.5;
    e_psi_dot = e_psi_dot + (u/Iz +(Ix - Iy)/Iz*phi_dot*theta_dot ) * dt;
    e_psi = e_psi + e_psi_dot * dt;
    u_array = [u_array,u];
    % if (t > 0)  s_dot_array = [s_dot_array,s_dot]; end
    y1_array = [y1_array, e_psi];
    y2_array = [y2_array, e_psi_dot];
end
t = linspace(0,t_end,n);
subplot(1,3,1);plot(t,y1_array,'k');xlabel('t');ylabel('x_1',"Rotation",0)
subplot(1,3,2);plot(t,u_array,'k');xlabel('t');ylabel('u',"Rotation",0);title('NTSTSMC')
subplot(1,3,3);plot(y1_array,y2_array,'k');xlabel('x_1');ylabel('x_2',"Rotation",0)
