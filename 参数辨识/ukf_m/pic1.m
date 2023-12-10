close all
%% phi
figure
hold on
t=0:0.01:50.75;
title("Phi"),xlabel('t(s)');ylabel('\phi(rad)',"Rotation",90)
plot(t(1:4999),logsout{11}.Values.Data(1:4999),'k-.')
xlabel('t(s)');ylabel('\phi(rad)',"Rotation",90)
plot(t(1:4999),logsout{20}.Values.Data(1:4999),'k')
legend(["ekf" "ukf"])
hold off
%% theta
figure
hold on
t=0:0.01:50.75;
title("Theta"),xlabel('t(s)');ylabel('\theta(rad)',"Rotation",90)
plot(t(1:4999),logsout{13}.Values.Data(1:4999),'k-.')
xlabel('t(s)');ylabel('\theta(rad)',"Rotation",90)
plot(t(1:4999),logsout{22}.Values.Data(1:4999),'k')
legend(["ekf" "ukf"])
hold off
%% psi
figure
hold on
t=0:0.01:50.75;
title("Psi"),xlabel('t(s)');ylabel('\psi(rad)',"Rotation",90)
plot(t(1:4999),logsout{12}.Values.Data(1:4999),'k')
xlabel('t(s)');ylabel('\psi(rad)',"Rotation",90)
plot(t(1:4999),logsout{21}.Values.Data(1:4999),'b-.')
legend(["ukf" "ekf"])
hold off
%% Ix
figure
hold on
t=0:0.01:50.75;
title("Ix"),xlabel('t(s)');ylabel('Ix',"Rotation",90)
plot(t(1:4999),logsout{55}.Values.Data(1:4999)/20,'k--')
Ix_error_ekf=sum(0.005-logsout{55}.Values.Data(1:4999)/20)/50;
xlabel('t(s)');ylabel('Ix',"Rotation",90)
plot(t(1:4999),logsout{58}.Values.Data(1:4999)/10,'k')
Ix_error_ukf=sum(0.005-logsout{58}.Values.Data(1:4999)/10)/50;
legend(["ekf" "ukf"])
hold off
%% Iy
figure
hold on
t=0:0.01:50.75;
title("Iy"),xlabel('t(s)');ylabel('Iy',"Rotation",90)
plot(t(1:4999),logsout{56}.Values.Data(1:4999)/250,'k')
Iy_error_ukf=sum(0.005-logsout{56}.Values.Data(1:4999)/250)/50;
xlabel('t(s)');ylabel('Iy',"Rotation",90)
plot(t(1:4999),logsout{59}.Values.Data(1:4999)/8,'k--')
Iy_error_ekf=sum(0.005-logsout{59}.Values.Data(1:4999)/8)/50;
legend(["ukf" "ekf"])
hold off
%% Iz
figure
hold on
t=0:0.01:50.75;
title("Iz"),xlabel('t(s)');ylabel('Iz',"Rotation",90)
plot(t(1:4999),-1*logsout{57}.Values.Data(1:4999)/50,'k')
Iz_error_ukf=sum(0.009+1*logsout{57}.Values.Data(1:4999)/50)/50;
xlabel('t(s)');ylabel('Iz',"Rotation",90)
plot(t(1:4999),logsout{60}.Values.Data(1:4999)/45,'k-.')
Iz_error_ekf=sum(0.009+logsout{60}.Values.Data(1:4999)/45)/100;
legend(["ukf" "ekf"])
hold off