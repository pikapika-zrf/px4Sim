function x = uavStateFcn(x,u2,u3,u4)

% Euler integration of continuous-time dynamics x'=f(x) with sample time dt
dt = 0.004; % [s] Sample time
x = x + vdpStateFcnContinuous(x,u2,u3,u4)*dt;
end

function dxdt = vdpStateFcnContinuous(x,u2,u3,u4)
%Ix=x(10);Iy=x(12);Iz=x(14);K1=x(16);K2=x(16);
dxdt = [x(2); x(3); (x(11)-x(12))/x(10)*x(5)*x(8) + 10*u2/x(10);...
        x(5); x(6); (x(12)-x(10))/x(11)*x(2)*x(8) + 10*u3/x(11);...
        x(8); x(9); (x(10)-x(11))/x(12)*x(2)*x(5) + 10*u4/x(12);...
        0;0;0];
end