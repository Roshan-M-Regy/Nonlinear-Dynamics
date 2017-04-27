clc;
clear all;
close all; 
r = 2.8:.001:4;
points = zeros(length(r),300);
i = 0;
for r= 2.8:.001:4
    i= i+1;
    x1 = rand(1);
    for j = 1:600
        x0 = x1;
        x1= r*x0*(1-x0);
         
         if j>300
             points(i,j-300) = x1;
         end
    end
    
end
r = 2.8:.001:4;
for i = 1:300
    hold on
    scatter(r,points(:,i),1)
end




   

    



     
 
 
 
 
 
     
