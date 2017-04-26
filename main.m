% Roshan M Regy, 2013A1PS646G
% Problem 7.5.7, Cell Cycle Modelling 
% main function used to call cell_cycle.m by ode45
clear all
close all
u = .02;
v = .566;



t =0:.1:1000;



  

ini = [u;v];


[time,results] = ode45(@cell_cycle, t, ini);
% 
% figure
% plot(time,results(:,1),'g')
% hold on
% plot(time,results(:,2),'r')
% 
% figure
% plot(results(:,1),results(:,2))

for i=1:100
subplot(2,2,1);
xlabel('Time')
ylabel('Active MPF Concentration')
plot(t,results(:,1));
hold on
a=plot(t(1),results(1,1),'o','MarkerFaceColor','g');
hold off
axis manual

% %a=plot(t(1),results(1,5),'0','MarkerFaceColor','green');
% %hold off
% axis manual
% 
% 
 title('Active MPF vs Time')
% 
% 
 subplot(2,2,2);
 xlabel('Time')
 ylabel('Cyclin Concentration')
 plot(t,results(:,2));
 hold on
 b=plot(t(1),results(1,2),'o','MarkerFaceColor','black');
 hold off
 axis manual
% 
% 
 title('Cyclin Concentration vs Time')
% 
 subplot(2,2,[3,4]);
% xlabel('Rabbit Population')
% ylabel('Fox Population')

 plot(results(:,1),results(:,2));
  title('Cyclin vs Active MPF concentration')

 hold on
  p = plot(results(1,1),results(1,2),'o','MarkerFaceColor','red');
 hold off
 axis manual
 for k=2:length(results(:,1))
     p.XData = results(k,1);
     p.YData = results(k,2);
     a.XData = t(k);
     a.YData = results(k,1);
     b.XData = t(k);
     b.YData = results(k,2);
     drawnow
end
 
end