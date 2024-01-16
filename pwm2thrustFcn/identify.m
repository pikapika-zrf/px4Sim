clear,clc
load('D:\zrf\code\px4Sim\pwm2thrustFcn\thrust.mat');

pwm_normalized= (thrust(:,1) - 1050) ./ (1790 - 1050);
thrust_normalized = (thrust(:,2) - 9) ./ (960 - 9);
plot(pwm_normalized,thrust_normalized,'ro');
xlabel("归一化后的PWM输入");ylabel("归一化后的推力输出");
%THR_MDL_FAC
%y_thrust = c * x_pwm^2 + (1 - c) * x_pwm;
F = @(c,x)c*x.^2 + (1-c)*x;
c0 = 0.5;
[c,resnorm,~,exitflag,output] = lsqcurvefit(F,c0,pwm_normalized,thrust_normalized)
hold on
plot(pwm_normalized,F(c,pwm_normalized),"k")
hold off

%%
clc,clear
c=0.3692;
x = linspace(0,1,100);
y = c .* x .^ 2 + (1-c).*x;
plot(x,y,"b--");
hold on
m = linspace(0,1,100);
n = sqrt((m+((1-c)^2)/(4*c))/c)-(1-c)/(2*c);
plot(n,m,"k");
