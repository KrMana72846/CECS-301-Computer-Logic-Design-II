% Kenny Khut
% CECS 463 Fall 2020
% Lab 07
% Date: November 19, 2020
clear all; close all; clc; format compact;
str=datestr(now); fprintf('Matlab Time Stamp: %s\n',str);
addpath('C:\Users\Kenny Khut\Desktop\CECS 463\Assignments\Labs\functions',path);

%% Problem 1
x=[1 3 5 7 9 11]; y=[8 10 0 2 4 6];
k = length(y)-1'
rhos=correlate(k,x,y)'

%% Problem 2
N=100; %Number of steps
figure(); hold on;
x = [0 1 1 0 0]; y = [0 0 1 1 0]; plot(x,y);  %Plot figure
Ln = (length(x)-1);
c = [sum(x(1:Ln)),sum(y(1:Ln))]/Ln; plot(c(1),c(2),'k*'); 
p=0; %Find perimeter of figure
for n=1:length(x)-1
p=p+sqrt((y(n+1)-y(n))^2+ ((x(n+1)-x(n))^2 ));
end
dels=p/N; d=zeros(1,100); k=0; %Get step size and zero distance array
for n=1:length(x)-1 %Step around perimeter of figure to find distances
m=(y(n+1)-y(n))/(x(n+1)-x(n)); %Slope of side of figure
delx=sign(x(n+1)-x(n))*dels*cos(atan(m)); %Find increments for x and y
dely=dels*sin(atan(m));
x1=x(n); y1=y(n); %Get vertex point and step down each side of figure
while (sqrt((x1-x(n+1))^2 + (y1-y(n+1))^2) > 0.5*dels)
k=k+1; d(k)= sqrt( (c(1)-x1)^2+(c(2)-y1)^2); %Find distance function
pause(0.1); %Pause and display results
plot(x1,y1,'r+'); plot([c(1),x1],[c(2),y1],'g-');
x1=x1+delx; y1=y1+dely; %Update to new point on side of figure
end
end

%%

%Matlab code for a distance function
clear all; close all; clc;
N=50; %Number of steps
figure(); hold on;
x=[0,1,2,0]; y=[0,1,0,0]; plot(x,y); %Plot figure
c = [sum(x(1:3)),sum(y(1:3))]/3; plot(c(1),c(2),'k*'); %Find centroid
p=0; %Find perimeter of figure
for n=1:length(x)-1
p=p+sqrt((y(n+1)-y(n))^2+ ((x(n+1)-x(n))^2 ));
end
dels=p/N; d=zeros(1,100); k=0; %Get step size and zero distance array
for n=1:length(x)-1 %Step around perimeter of figure to find distances
m=(y(n+1)-y(n))/(x(n+1)-x(n)); %Slope of side of figure
delx=sign(x(n+1)-x(n))*dels*cos(atan(m)); %Find increments for x and y
dely=dels*sin(atan(m));
x1=x(n); y1=y(n); %Get vertex point and step down each side of figure
while (sqrt((x1-x(n+1))^2 + (y1-y(n+1))^2) > 0.5*dels)
k=k+1; d(k)= sqrt( (c(1)-x1)^2+(c(2)-y1)^2); %Find distance function
pause(0.1); %Pause and display results
plot(x1,y1,'r+'); plot([c(1),x1],[c(2),y1],'g-');
x1=x1+delx; y1=y1+dely; %Update to new point on side of figure
end

end
