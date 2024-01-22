close all
hold on
Z=reshape(logsout{8}.Values.Data,1,5543);
%A(3010:3062)=A(3010:3062)/4;A(3404:3800)=(A(3404:3800)-2)/4+2;
plot(logsout{38}.Values.Data(1:5543),Z,'k')
plot(logsout{38}.Values.Data(1:5543),logsout{20}.Values.Data(1:5543),'b')
plot(logsout{38}.Values.Data(1:5543),logsout{22}.Values.Data(1:5543),'r')
plot(logsout{38}.Values.Data(1:5543),logsout{21}.Values.Data(1:5543),'g')
xlabel('t(s)');ylabel('z(m) / angle(rad)',"Rotation",90)
xlim([0 55])
legend(["z" "\phi" "\theta" "\psi"])

%% rollTest
vPhi=reshape(logsout{12}.Values.Data,1,15774);
arm=reshape(logsout{25}.Values.Data,1,15774);
t = linspace(9,71,15774);
hold on
plot(t(4400:6950)-26.3,logsout{56}.Values.Data(4400:6950),'k')
plot(t(4400:6950)-26.3,vPhi(4400:6950),'b')
xlabel('t(s)');ylabel('\phi(rad) / v\_\phi(rad/s)',"Rotation",90)
xlim([0 10]),ylim([-1 1])
legend(["\phi" "v\_\phi"])

%% pitchTest
vTheta=reshape(logsout{14}.Values.Data,1,32586);
arm=reshape(logsout{25}.Values.Data,1,32586);
t = linspace(11,140,32586);
hold on
plot(t(17430:19957)-80,logsout{57}.Values.Data(17430:19957),'k')
plot(t(17430:19957)-80,vTheta(17430:19957),'b')
xlabel('t(s)');ylabel('\theta(rad) / v\_\theta(rad/s)',"Rotation",90)
xlim([0 10]),ylim([-1 1])
legend(["\theta" "v\_\theta"])

%% yawTest
vPsi=reshape(logsout{13}.Values.Data,1,35962);
arm=reshape(logsout{21}.Values.Data,1,35962);
t = linspace(10,153,35962);
hold on
plot(t(17856:20372)-81,logsout{34}.Values.Data(17856:20372),'k')
plot(t(17856:20372)-81,vPsi(17856:20372),'b')
%plot(t(17856:20372)-81,arm(17856:20372),'r')
xlabel('t(s)');ylabel('\psi(rad) / v\_\psi(rad/s)',"Rotation",90)
xlim([0 10]),ylim([-1 1])
legend(["\psi" "v\_\psi"])