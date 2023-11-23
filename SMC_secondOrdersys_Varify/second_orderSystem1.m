clc,clear,close all

tspan = [0 10];
n=1000;
t = linspace(0,10,n);
t_delta = 10/n;
y0 = [1 -5];

% sol = ode45(@(t,y) systemFcnSMC(t,y), tspan, y0);
% [y,u] = deval(sol,t);
% subplot(4,3,1);plot(t,y(1,:),'k');xlabel('t');ylabel('x_1',"Rotation",0)
% subplot(4,3,2);plot(t,u(2,:),'k');xlabel('t');ylabel('u',"Rotation",0);title('CSMC')
% subplot(4,3,3);plot(y(1,:),y(2,:),'k');xlabel('x_1');ylabel('x_2',"Rotation",0)
% 
% n=100000;
% t = linspace(0,10,n);
% sol = ode45(@(t,y) systemFcnTSMC(t,y), tspan, y0);
% [y,u] = deval(sol,t);
% subplot(4,3,4),plot(t,y(1,:),'k');xlabel('t');ylabel('x_1',"Rotation",0)
% subplot(4,3,5),plot(t,u(2,:),'k');xlabel('t');ylabel('u',"Rotation",0);title('TSMC')
% subplot(4,3,6),plot(y(1,:),y(2,:),'k');xlabel('x_1');ylabel('x_2',"Rotation",0)
% 
% n=1000;
% t = linspace(0,10,n);
% sol = ode45(@(t,y) systemFcnCNTSMC(t,y), tspan, y0);
% [y,u] = deval(sol,t);
% subplot(4,3,7),plot(t,y(1,:),'k');xlabel('t');ylabel('x_1',"Rotation",0)
% subplot(4,3,8),plot(t,u(2,:),'k');xlabel('t');ylabel('u',"Rotation",0);title('CNTSMC')
% subplot(4,3,9),plot(y(1,:),y(2,:),'k');xlabel('x_1');ylabel('x_2',"Rotation",0)
% 
% sol = ode45(@(t,y) systemFcnNTSMC(t,y), tspan, y0);
% [y,u] = deval(sol,t);
% subplot(4,3,10),plot(t,y(1,:),'k');xlabel('t');ylabel('x_1',"Rotation",0)
% subplot(4,3,11),plot(t,u(2,:),'k');xlabel('t');ylabel('u',"Rotation",0);title('NTSMC')
% subplot(4,3,12),plot(y(1,:),y(2,:),'k');xlabel('x_1');ylabel('x_2',"Rotation",0)

figure,
sol = ode45(@(t,y) systemFcnNTSTSMC(t,y,t_delta), tspan, y0);
[y,u] = deval(sol,t);
subplot(1,3,1),plot(t,y(1,:),'k');xlabel('t');ylabel('x_1',"Rotation",0)
subplot(1,3,2),plot(t,u(2,:),'k');xlabel('t');ylabel('u',"Rotation",0);title('NTSTSMC')
subplot(1,3,3),plot(y(1,:),y(2,:),'k');xlabel('x_1');ylabel('x_2',"Rotation",0)
