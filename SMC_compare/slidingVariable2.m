clc,clear,close all
tspan = [0 5];
x0 = 5;
figure;hold on
t = linspace(0,5,500);

%better
% sol2 = ode45(@(t,x2) -sign(x2).*(abs(x2).^3) - sign(x2).*(abs(x2).^0.3), tspan, x0);
% x2 = deval(sol2,t);
% error2 = sum(sqrt(x2.^2));
% plot(t,x2,'-g')

%CSM
% sol4 = ode45(@(t,x4) -1 * x4, tspan, x0);
% x4 = deval(sol4,t);
% error4 = sum(sqrt(x4.^2));
% plot(t,x4,':k')

%TSM
% alpha = 1;mu = 3/5;
% sol5 = ode45(@(t,x) -alpha*x .^(mu), tspan, x0);
% x = deval(sol5,t);
% error5 = sum(sqrt(x.^2));
% plot(t,x,':k')

% TSM1
% alpha = 1;beta = 1;mu = 3/5;
% sol5 = ode45(@(t,x) -alpha * x - beta * x .^(mu), tspan, x0);
% x = deval(sol5,t);
% error5 = sum(sqrt(x.^2));
% plot(t,x,'--k')
% 
% alpha = 1;mu=0.9;
% sol = ode45(@(t,x) (-alpha * x).^(1/mu), tspan, x0);
% x = deval(sol,t);
% error9 = sum(sqrt(x.^2));
% plot(t,x,'-.k')

mu=0.9;alpha = 2;beta = 1;gamma = 1;
sol = ode45(@(t,x) (1/beta*(-alpha*x-gamma*x^1.1)).^(1/mu), tspan, x0);
x = deval(sol,t);
error9 = sum(sqrt(x.^2));
plot(t,x,'-k')

mu=0.9;alpha = 0.2;beta = 0.1;gamma = 0.1;
sol = ode45(@(t,x) (1/beta*(-alpha*x-gamma*x^1.1)).^(1/mu), tspan, x0);
x = deval(sol,t);
error9 = sum(sqrt(x.^2));
plot(t,x,'-r')
% %pid
% sol10 = ode45(@pidS,[0 20],[5; 0]);
% x10 = deval(sol10,t);
% error9 = sum(sqrt(x10.^2));
% plot(t,x10,'-.b')
% 
% xlabel('t')
% ylabel('e_1')
% legend(["CSMC" "TSMC" "CNTSMC" "NTSMC"])
