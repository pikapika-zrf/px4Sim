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
sol4 = ode45(@(t,x4) -1 * x4, tspan, x0);
x4 = deval(sol4,t);
error4 = sum(sqrt(x4.^2));
plot(t,x4,'--k')

%TSM
alpha = 1;mu = 3/5;
sol5 = ode45(@(t,x) -alpha*x .^(mu), tspan, x0);
x = deval(sol5,t);
error5 = sum(sqrt(x.^2));
plot(t,x,':k')
% TSM1
alpha = 1;beta = 1;mu = 3/5;
sol5 = ode45(@(t,x) -alpha * x - beta * x .^(mu), tspan, x0);
x = deval(sol5,t);
error5 = sum(sqrt(x.^2));
plot(t,x,'-.k')

% %NTSM
% sol7 = ode45(@(t,x7) (-2 * x7).^(3), tspan, x0);
% x7 = deval(sol7,t);
% error7 = sum(sqrt(x7.^2));
% plot(t,x7,'-k')

%NTSM改
% sol8 = ode45(@(t,x8) (-x8 -x8^0.5).^(3), tspan, x0);
% x8 = deval(sol8,t);
% error8 = sum(sqrt(x8.^2));
% plot(t,x8,'-.r')
% 
mu=0.9;
sol = ode45(@(t,x) (-x-1*atan(x)).^(1/mu), tspan, x0);
x = deval(sol,t);
error9 = sum(sqrt(x.^2));
plot(t,x,'-k')

% %pid
% sol10 = ode45(@pidS,[0 20],[5; 0]);
% x10 = deval(sol10,t);
% error9 = sum(sqrt(x10.^2));
% plot(t,x10,'-.b')

xlabel('t')
ylabel('e_1')
legend(["CSMC" "TSMC1" "TSMC2" "NTSMC"])
