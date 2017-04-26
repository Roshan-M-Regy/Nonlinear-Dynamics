% ROshan M Regy, 2013A1PS646G
% Project 2, Problem 7.5.7, Cell cycle modelling 
% function called by main.m for cell cycle modelling 
function dydt = cell_cycle(time, ini)


beta = 0.015;
k2 = 0;
k4 = 180;% 180 for Limit cycle, 180 for excitable state
k_4 = .018;
k6 = 2;% 1 for limit cycle, 2 for excitable state, 
alpha = k_4/k4;
u = ini(1);
v = ini(2);
% if time > 30
%     k6 = 1
% end

dudt = k4*(v-u)*(alpha + u*u) - k6*u;
dvdt = beta-k6*u;
dydt = [dudt;dvdt];

% u = [0:.01:.2];
% 
% 
% for i=1:length(u)
%     y(i) =  u(i) + k6*u(i)/(k4*(alpha + u(i)^2));
%     x(i) = beta/k6;
%     x1(i) = sqrt(k6/k4);
%     x2(i) = sqrt(alpha+.001)
% end
% 
% 
% 
% 
% figure
% plot(u,y)
% hold on
% plot(x,y)
% hold on 
% plot(x1,y)
% hold on
% plot(x2,y)


