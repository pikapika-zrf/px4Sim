close all
%% psi
% hold on
% title("Psi"),xlabel('t(s)');ylabel('\psi(rad)',"Rotation",90)
% plot(logsout{36}.Values.Data(6110:6900)-61,logsout{21}.Values.Data(6110:6900),'k')
% xlabel('t(s)');ylabel('\psi(rad)',"Rotation",90)
% plot(logsout{36}.Values.Data(6110:6900)-61,logsout{61}.Values.Data(6110:6900),'b')
% legend(["\psi" "\psi\_d"])
% hold off
% figure
% plot(logsout{36}.Values.Data(6110:6900)-61,logsout{56}.Values.Data(6110:6900),'k')
% title("Psi"),xlabel('t(s)');ylabel('U4',"Rotation",90)
% legend(["U4"])
%% phi
% hold on
% title("Phi"),xlabel('t(s)');ylabel('\phi(rad)',"Rotation",90)
% plot(logsout{36}.Values.Data(3610:4300)-36,logsout{20}.Values.Data(3610:4300),'k')
% xlabel('t(s)');ylabel('\phi(rad)',"Rotation",90)
% plot(logsout{36}.Values.Data(3610:4300)-36,logsout{63}.Values.Data(3610:4300),'b')
% legend(["\phi" "\phi\_d"])
% hold off
% figure
% plot(logsout{36}.Values.Data(3610:4300)-36,logsout{54}.Values.Data(3610:4300),'k')
% title("Phi"),xlabel('t(s)');ylabel('U2',"Rotation",90)
% legend(["U2"])
%plot(logsout{29}.Values.Data, reshape(logsout{73}.Values.Data,1,4617))
%% theta
% hold on
% title("Theta"),xlabel('t(s)');ylabel('\theta(rad)',"Rotation",90)
% plot(logsout{36}.Values.Data(8510:9300)-85,logsout{22}.Values.Data(8510:9300),'k')
% xlabel('t(s)');ylabel('\theta(rad)',"Rotation",90)
% plot(logsout{36}.Values.Data(8510:9300)-85,logsout{62}.Values.Data(8510:9300),'b')
% legend(["\theta" "\theta\_d"])
% hold off
% figure
% plot(logsout{36}.Values.Data(8510:9300)-85,logsout{55}.Values.Data(8510:9300),'k')
% title("Theta"),xlabel('t(s)');ylabel('U3',"Rotation",90)
% legend(["U3"])
%% z
% hold on
% title("z"),xlabel('t(s)');ylabel('z(m)',"Rotation",90)
% A=reshape(logsout{8}.Values.Data,1,17740);%B=reshape(logsout{29}.Values.Data,1,6357);
% plot(logsout{37}.Values.Data(15810:16600)-158,A(15810:16600)-1,'k')
% xlabel('t(s)');ylabel('z(m)',"Rotation",90)
% plot(logsout{37}.Values.Data(15810:16600)-158,logsout{14}.Values.Data(15810:16600)-1,'b')
% legend(["z" "z\_d"])
% hold off
% figure
% plot(logsout{37}.Values.Data(15810:16600)-158,logsout{26}.Values.Data(15810:16600),'k')
% title("z"),xlabel('t(s)');ylabel('U1',"Rotation",90)
% legend(["U1"])
%% x
% hold on
% title("x"),xlabel('t(s)');ylabel('x(m)',"Rotation",90)
% A=reshape(logsout{18}.Values.Data,1,3658);%B=reshape(logsout{29}.Values.Data,1,6357);
% A(1210:1310)=A(1210:1310)/4;A(1624:2200)=(A(1624:2200)-2)/4+2;
% plot(logsout{37}.Values.Data(1210:2200)-12,A(1210:2200),'k')
% xlabel('t(s)');ylabel('x(m)',"Rotation",90)
% plot(logsout{37}.Values.Data(1210:2200)-12,logsout{12}.Values.Data(1210:2200),'b')
% legend(["x" "x\_d"])
% 
% hold off
% figure
% U=reshape(logsout{29}.Values.Data,1,3658);
% U(1210:1308)=U(1210:1308)/3;U(1311:2200)=U(1311:2200)/3;
% plot(logsout{37}.Values.Data(1210:2200)-12,U(1210:2200),'k')
% title("x"),xlabel('t(s)');ylabel('U1x',"Rotation",90)
% legend(["U1x"])
%% y
% hold on
% title("y"),xlabel('t(s)');ylabel('y(m)',"Rotation",90)
% A=reshape(logsout{19}.Values.Data,1,4641);%B=reshape(logsout{29}.Values.Data,1,6357);
% A(3010:3062)=A(3010:3062)/4;A(3404:3800)=(A(3404:3800)-2)/4+2;
% plot(logsout{38}.Values.Data(3010:3800)-30,A(3010:3800),'k')
% xlabel('t(s)');ylabel('y(m)',"Rotation",90)
% plot(logsout{38}.Values.Data(3010:3800)-30,logsout{13}.Values.Data(3010:3800),'b')
% legend(["y" "y\_d"])
% 
% hold off
% figure
% U=reshape(logsout{30}.Values.Data,1,4641);
% U(3010:3060)=U(3010:3060)/3;U(3065:3800)=U(3065:3800)/3;
% plot(logsout{38}.Values.Data(3010:3800)-30,U(3010:3800),'k')
% title("y"),xlabel('t(s)');ylabel('U1y',"Rotation",90)
% legend(["U1y"])
%% wind_smc
hold on
%A=reshape(logsout{19}.Values.Data,1,4641);%B=reshape(logsout{29}.Values.Data,1,6357);
%A(3010:3062)=A(3010:3062)/4;A(3404:3800)=(A(3404:3800)-2)/4+2;
plot(logsout{38}.Values.Data(3010:4100)-30,logsout{52}.Values.Data(3010:4100),'k')
plot(logsout{38}.Values.Data(3010:4100)-30,logsout{53}.Values.Data(3010:4100),'b')
plot(logsout{38}.Values.Data(3010:4100)-30,logsout{54}.Values.Data(3010:4100),'r')
plot(logsout{38}.Values.Data(3010:4100)-30,logsout{55}.Values.Data(3010:4100),'g')
xlabel('t(s)');ylabel('PWM',"Rotation",90)
legend(["PWM1" "PWM2" "PWM3" "PWM4"])
