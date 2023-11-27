clc,clear

for num = 1
clear
t_end = 100; n = 5000;dt = t_end/n;
m = 0.8; g = 9.80665; %Ix = 0.005; Iy = 0.005; Iz = 0.009; L = 0.33 / 2;
Kz = 0;

alpha = 2;beta = 1;gamma = 0.4;
mu = 15/17;r = 5/3;

%K2_array = [];
K1 = 1;K2 = (K1^2)/2;

ez = -1; ez_dot = 0; z_des_dotdot = 0;
s_z_integ = 0;
y1_array = [];
y2_array = [];
s_array = [];s_z_integ_array =[];u_array=[];s_dot_array=0;
for t = linspace(0,t_end,n)
    
    s = alpha * ez +  real(beta * sign(ez_dot) * abs(ez_dot) ^ mu) + real(gamma * sign(ez) * abs(ez) ^ r);
    s_z_integ = s_z_integ + K2 * sign(s) * dt;
    if (t > 0); s_dot = (s - s_array(1,end))/dt; end

    u = -m*(-g - Kz/m*ez_dot - z_des_dotdot + alpha/(beta*mu)*sign(ez_dot) * abs(ez_dot)^(2-mu)...
    + gamma*r/(beta*mu)*(sign(ez) * abs(ez)^(r-1))* sign(ez_dot) * abs(ez_dot)^(2-mu) + K1*(abs(s))^(1/2)*sign(s)...
    + s_z_integ);

    u = u * 1;
    ez_dot = ez_dot + (u/m -g) * dt;
    ez = ez + ez_dot * dt;
    u_array = [u_array,u];
    s_array = [s_z_integ,s];
    s_z_integ_array = [s_z_integ_array, s_z_integ ];
    if (t > 0); s_dot_array = [s_dot_array,s_dot]; end
    y1_array = [y1_array, ez];
    y2_array = [y2_array, ez_dot];
end
t = linspace(0,t_end,n);
figure,
subplot(1,4,1);plot(t,y1_array,'k');xlabel('t');ylabel('x_1',"Rotation",0)
subplot(1,4,2);plot(t,u_array,'k');xlabel('t');ylabel('u',"Rotation",0);title('NTSTSMC')
subplot(1,4,3);plot(y1_array,y2_array,'k');xlabel('x_1');ylabel('x_2',"Rotation",0)
subplot(1,4,4);plot(t,s_dot_array,'k');xlabel('t');ylabel('s_{dot}',"Rotation",0)

end