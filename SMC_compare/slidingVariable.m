clc,clear,close all
tspan = [0 5];
x0 = 5;
figure;hold on
sol1 = ode45(@(t,x1) -1 * sign(x1).*(abs(x1).^0.3), tspan, x0);
t = linspace(0,5,500);
x1 = deval(sol1,t);
error1 = sum(sqrt(x1.^2));
plot(t,x1,'.r')

sol2 = ode45(@(t,x2) -sign(x2).*(abs(x2).^3) - sign(x2).*(abs(x2).^0.3), tspan, x0);
x2 = deval(sol2,t);
error2 = sum(sqrt(x2.^2));
plot(t,x2,'-g')

sol3 = ode45(@(t,x3) -x3 - sign(x3).*(abs(x3).^0.3), tspan, x0);
x3 = deval(sol3,t);
error3 = sum(sqrt(x3.^2));
plot(t,x3,'-.b')
%legend(["s1" "s2" "s3"])

%CSM
sol4 = ode45(@(t,x4) -1 * x4, tspan, x0);
x4 = deval(sol4,t);
error4 = sum(sqrt(x4.^2));
plot(t,x4,':r')

%TSM1
sol5 = ode45(@(t,x5) -1 * x5 - x5 .^(0.5), tspan, x0);
x5 = deval(sol5,t);
error5 = sum(sqrt(x5.^2));
plot(t,x5,'-m')

%TSM2
sol6 = ode45(@(t,x6) - x6 .^(0.5), tspan, x0);
x6 = deval(sol6,t);
error6 = sum(sqrt(x6.^2));
plot(t,x6,'--k')
%legend(["s4" "s5" "s6"])

%NTSM
sol7 = ode45(@(t,x7) (-x7).^(3), tspan, x0);
x7 = deval(sol7,t);
error7 = sum(sqrt(x7.^2));
plot(t,x7,'-k')

%NTSM改
sol8 = ode45(@(t,x8) (-x8 -x8^0.5).^(3), tspan, x0);
x8 = deval(sol8,t);
error8 = sum(sqrt(x8.^2));
plot(t,x8,'-.w')

sol9 = ode45(@(t,x9) (-x9^0.5).^(3), tspan, x0);
x9 = deval(sol9,t);
error9 = sum(sqrt(x9.^2));
plot(t,x9,'-k')
legend(["s1" "s2" "s3" "s4" "s5" "s6" "s7" "s8" "s9"])