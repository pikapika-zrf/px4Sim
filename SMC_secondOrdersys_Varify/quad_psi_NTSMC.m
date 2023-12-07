clc,clear,close all
%% CNTSMC
t_end = 10; n = 500;dt = t_end/n;
m = 0.8; g = 9.80665; Ix = 0.005; Iy = 0.005; Iz = 0.009; L = 0.33 / 2;
Kz = 0;

alpha = 2;beta = 1;
mu = 0.9;r = 5/3;
K1 = 1;

phi_dot = 0;theta_dot = 0;
e_psi = -1; e_psi_dot = 0; psi_des_dotdot = 0;

y1_array = [];y2_array = [];
u_array=[];s_dot_array=[];
for t = linspace(0,t_end,n)
    
    s = alpha * e_psi +  (beta * sign(e_psi_dot) * abs(e_psi_dot) ^ mu);

    u = -Iz*((Ix-Iy)/Iz*phi_dot*theta_dot - psi_des_dotdot + alpha/(beta*mu)*sign(e_psi_dot) * abs(e_psi_dot)^(2-mu)...
        + K1 * sign(s));
    
    e_psi_dot = e_psi_dot + (u/Iz +(Ix - Iy)/Iz*phi_dot*theta_dot + 0.01 * sin(2*t) ) * dt;
    e_psi = e_psi + e_psi_dot * dt;
    u_array = [u_array,u];
    % if (t > 0)  s_dot_array = [s_dot_array,s_dot]; end
    y1_array = [y1_array, e_psi];
    y2_array = [y2_array, e_psi_dot];
end
t = linspace(0,t_end,n);
CNTSMCout=y1_array;
subplot(3,2,1);plot(t,y1_array,'k');xlabel('t(s)');ylabel('\phi(rad)',"Rotation",0);
subplot(3,2,2);plot(t,u_array,'k');xlabel('t(s)');ylabel('u',"Rotation",0);title('CNTSMC');
%subplot(3,3,3);plot(y1_array,y2_array,'k');xlabel('\phi');ylabel('\phi\_dot',"Rotation",0)
%% NTSMC
t_end = 10; n = 500;dt = t_end/n;
m = 0.8; g = 9.80665; Ix = 0.005; Iy = 0.005; Iz = 0.009; L = 0.33 / 2;
Kz = 0;

alpha = 2;beta = 1;gamma = 0.7;
mu = 0.9;r = 5/3;
K1 = 1;

phi_dot = 0;theta_dot = 0;
e_psi = -1; e_psi_dot = 0; psi_des_dotdot = 0;

y1_array = [];y2_array = [];
u_array=[];s_dot_array=[];
for t = linspace(0,t_end,n)
    
    s = alpha * e_psi +  (beta * sign(e_psi_dot) * abs(e_psi_dot) ^ mu) ...
        + (gamma * sign(e_psi) * abs(e_psi) ^ r);

    u = -Iz*((Ix-Iy)/Iz*phi_dot*theta_dot - psi_des_dotdot + alpha/(beta*mu)*sign(e_psi_dot) * abs(e_psi_dot)^(2-mu)...
    + gamma*r/(beta*mu)*(sign(e_psi) * abs(e_psi)^(r-1))* sign(e_psi_dot) * abs(e_psi_dot)^(2-mu) + K1*sign(s));
    
    e_psi_dot = e_psi_dot + (u/Iz +(Ix - Iy)/Iz*phi_dot*theta_dot + 0.01 * sin(2*t) ) * dt;
    e_psi = e_psi + e_psi_dot * dt;
    u_array = [u_array,u];
    % if (t > 0)  s_dot_array = [s_dot_array,s_dot]; end
    y1_array = [y1_array, e_psi];
    y2_array = [y2_array, e_psi_dot];
end
t = linspace(0,t_end,n);
subplot(3,2,3);hold on;plot(t,y1_array,'k');xlabel('t(s)');ylabel('\phi(rad)',"Rotation",0);
plot(t,CNTSMCout,'b--');legend(["NTSMC" "CNTSMC"]);
subplot(3,2,4);hold on;plot(t,u_array,'k');xlabel('t(s)');ylabel('u',"Rotation",0);title('NTSMC');
%subplot(3,3,6);hold on;plot(y1_array,y2_array,'k');xlabel('\phi');ylabel('\phi\_dot',"Rotation",0);
%% NTSTSMC
t_end = 10; n = 500;dt = t_end/n;
m = 0.8; g = 9.80665; Ix = 0.005; Iy = 0.005; Iz = 0.009; L = 0.33 / 2;
Kz = 0;

alpha = 2;beta = 1;gamma = 0.4;
mu = 0.9;r = 5/3;
K1 = 1.2;K2 = 1;

phi_dot = 0;theta_dot = 0;
e_psi = -1; e_psi_dot = 0; psi_des_dotdot = 0;
s_psi_integ = 0;

y1_array = [];y2_array = [];
u_array=[];s_dot_array=[];
for t = linspace(0,t_end,n)
    
    s = alpha * e_psi +  (beta * sign(e_psi_dot) * abs(e_psi_dot) ^ mu) ...
        + (gamma * sign(e_psi) * abs(e_psi) ^ r);
    s_psi_integ = s_psi_integ + K2 * sign(s) * dt;

    u = -Iz*((Ix-Iy)/Iz*phi_dot*theta_dot - psi_des_dotdot + alpha/(beta*mu)*sign(e_psi_dot) * abs(e_psi_dot)^(2-mu)...
    + gamma*r/(beta*mu)*(sign(e_psi) * abs(e_psi)^(r-1))* sign(e_psi_dot) * abs(e_psi_dot)^(2-mu) + K1*(abs(s))^(1/2)*sign(s)...
    + s_psi_integ);
    
    e_psi_dot = e_psi_dot + (u/Iz +(Ix - Iy)/Iz*phi_dot*theta_dot + 0.01 * sin(2*t) ) * dt;
    e_psi = e_psi + e_psi_dot * dt;
    u_array = [u_array,u];
    % if (t > 0)  s_dot_array = [s_dot_array,s_dot]; end
    y1_array = [y1_array, e_psi];
    y2_array = [y2_array, e_psi_dot];
end
t = linspace(0,t_end,n);

subplot(3,2,5);hold on;plot(t,y1_array,'k');xlabel('t(s)');ylabel('\phi(rad)',"Rotation",0);
subplot(3,2,6);hold on;plot(t,u_array,'k');xlabel('t(s)');ylabel('u',"Rotation",0);title('NTSTSMC');
%subplot(3,3,9);hold on;plot(y1_array,y2_array,'k');xlabel('\phi');ylabel('\phi\_dot',"Rotation",0);