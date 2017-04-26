% [x,y]= meshgrid(1:2000:100000,1:2000:100000);
% a = 1;
% b  = .01;
% d = .0005;
% g = .5;
% 
% xdot = a*x - b*x*y;
% ydot = d*x*y - g*y;
% figure
% quiver(x,y,xdot,ydot)
%% ODE function for the lotka_volterra model 

function dydt = lotka_volterra(t,ini)

a = ini(1);
b = ini(2);
d = ini(3);
g = ini(4);
R = ini(5);
F = ini(6);

dadt=0;
dbdt=0;
dddt=0;
dgdt=0;
dRdt = a*R-b*R*F;
dFdt = d*R*F - g*F;

dydt = [dadt;dbdt;dddt;dgdt;dRdt;dFdt];
