clear;                                                                  
%% destination
% x_d = 0; y_d = 0; z_d = 5; psi_d = 0;
%fai_d = 0; theta_d = 0;
%% model param
%Li J, Li Y. Dynamic analysis and PID control for a quadrotor[A]. 2011 IEEE International Conference on Mechatronics and Automation[C]. 2011: 573–578.
%m = 0.1; g = 9.8; L = 0.5;
%Ix = 0.002353; Iy = 0.002353; Iz = 0.05262;                                                     
%Ix = 1.25; Iy = 1.25; Iz = 2.5;                                                     
%Tiwary,2020,page 287
%Ix = 0.45; Iy = 0.51; Iz = 0.95;

%K1 = 0; K2 = 0; K3 = 0; K4 = 0; K5 = 0; K6 = 0; 
%K1 = 0.01; K2 = 0.01; K3 = 0.01; K4 = 0.01; K5 = 0.01; K6 = 0.01; 
%d1 = 0; d2 = 0; d3 = 0; d4 = 0; d5 = 0; d6 = 0;
%d1 = 0.01; d2 = 0.01; d3 = 0.01; d4 = 0.01; d5 = 0.01; d6 = 0.01;
 
%% controller param
% alpha_1 = 0.1; alpha_2 = 0.1; alpha_3 = 0.1; alpha_4 = 0.1; alpha_5 = 0.1; alpha_6 = 0.1;
% beta_1 = 0.1; beta_2 = 0.1; beta_3 = 0.1; beta_4 = 0.1; beta_5 = 0.1; beta_6 = 0.1;
% lamda_1 = 1.1; lamda_2 = 1.1; lamda_3 = 1.1; lamda_4 = 1.1; lamda_5 = 1.1; lamda_6 = 1.1;
% p1 = 3; p2 = 3; p3 = 3; p4 = 3; p5 = 3; p6 = 3;
% q1 = 1; q2 = 1; q3 = 1; q4 = 1; q5 = 1; q6 = 1;
% k1 = 1.5; k2 = 1.5; k3 = 1.5; k4 = 1.5; k5 = 1.5; k6 = 1.5;
% u_limit = 5;