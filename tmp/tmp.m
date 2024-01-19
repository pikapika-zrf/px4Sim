% x = linspace(0,1,100);
% fac1 = 0.3;fac2 = 0.7;
% y1 = fac1 * x .^ 2 + (1 - fac1) .* x;
% y2 = fac2 * x .^ 2 + (1 - fac2) .* x;
% hold on
% plot(x,y1);
% plot(x,y2,'*');
convertMatrix = [-1/sqrt(2)     1/sqrt(2)   1 1;
                1/sqrt(2)       -1/sqrt(2)  1 1;
                1/sqrt(2)       1/sqrt(2)  -1 1;
                -1/sqrt(2)      -1/sqrt(2) -1 1];
pwm = convertMatrix * [10; 0; 0; 0]
