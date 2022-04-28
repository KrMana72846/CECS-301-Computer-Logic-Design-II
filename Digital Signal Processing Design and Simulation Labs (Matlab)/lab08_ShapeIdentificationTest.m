
%% Lab #08 Shape Identification and Correlation
clear all; close all; clc; format compact;
fprintf('Lab #08 Shape Identification and Correlation\n');
str=datestr(now); fprintf('Matlab Time Stamp: %s\n',str);
%%
disp('START');
NumFigures=5;
figs={' Fig1 '; ' Fig2 ' ;' Fig3 ' ;' Fig4 '; ' Fig5 '};
N=50; %Keep same number of steps aroung figures throughout.
x=[0 0 2 2];  y=[0 2 2 0]; [fig1 step]=dstfcn(x,y,N,1); pause(1);
x=[-1 1 3]; y=[0 4 0]; [fig2 step]=dstfcn(x,y,N,2); pause(1);
%%
x=[0 1 1];  y=[0 2 0]; [fig3 step]=dstfcn(x,y,N,3);pause(1);
% Some extra figures for further investigation (not part of lab)
x=[2,0,2,3,4,6,4,3]; y=[1,2,3,6,3,2,1,-2];[fig4 step]=dstfcn(x,y,N,4);pause(1);
x=[0,1,3,4]; y=[0,2,2,0]; [fig5 step]=dstfcn(x,y,N,5); pause(1);

%Put results in large MxN matrix, pad smallest with zeros to be length of
%largest, & normalize
L=[length(fig1),length(fig2),length(fig3),length(fig4),length(fig5)];
%L=[length(fig1),length(fig2),length(fig3)];
MaxLength=max(L);
d1=[fig1/max(fig1),zeros(1,MaxLength-length(fig1))];
d2=[fig2/max(fig2),zeros(1,MaxLength-length(fig2))];
d3=[fig3/max(fig3),zeros(1,MaxLength-length(fig3))];
d4=[fig4/max(fig4),zeros(1,MaxLength-length(fig4))];
d5=[fig5/max(fig5),zeros(1,MaxLength-length(fig5))];
%%
%Matrix of distance functions
D=[d1;d2;d3;d4;d5];
%D=[d1;d2;d3];
for m=1:NumFigures-1
    for n=m+1:NumFigures
        clear rhos;
        [f1 f2 Rmax Imax Rmin Imin]=figure_match(D(m,1:L(m)),D(n,1:L(n)));
        fprintf('COMPARE:  Figure %i and Figure %i\n',m,n);
        fprintf('Number of points used: %i\n',length(f1));
        fprintf('Rmax = %5.3f @%i   Rmin = %5.3f @%i\n\n',...
                Rmax, Imax, Rmin, Imin);
        figure(); hold on; 
        plot(f1,'b.'); plot(f2,'r.'); axis([0 max([L(m),L(n)])  0 1]);
        str=sprintf('  Rmax = %5.3f at %d',Rmax,Imax);
        title(strcat(figs(m),' & ',figs(n), str)); xlabel('Sample Index'); 
        ylabel('Normalized Distance Function');
        grid on; hold off;
        pause(1); 
    end
end
%% FUNCTIONS
%{
%%
function [d,step]=dstfcn(x,y,N,fig)
% Find the distance function for plane figure
% Inputs: v:  set of (x,y) coords for vertices of figure
%         N:  number of steps to take around figure
% Output: d:  distance function sequence
%
x=[x,x(1)]; y=[y,y(1)]; %Close figure diagram

numVerts=length(x)-1; %Find centroid of figure
c = [sum(x(1:numVerts)),sum(y(1:numVerts))]/numVerts; 
p=0; %Find perimeter of figure 
for n=1:length(x)-1 
    p=p+sqrt((y(n+1)-y(n))^2+ ((x(n+1)-x(n))^2 )); 
end 
dels=p/N; d=zeros(1,N); k=0;  %Get step size and zero distance array 
figure(); subplot(2,1,1); hold on; 
str=sprintf('Figure %d: Step size=%4.2f',fig,dels); title(str);
plot(x,y); %Plot figure
plot(c(1),c(2),'k*');  %Plot figure's centroid 
for n=1:numVerts  %Step around perimeter of figure to find distances 
    m=(y(n+1)-y(n))/(x(n+1)-x(n));  %Slope of side of figure 
    delx=sign(x(n+1)-x(n))*dels*abs(cos(atan(m))); %Find increments for x and y
    dely=sign(y(n+1)-y(n))*dels*abs(sin(atan(m)));  
    x1=x(n); y1=y(n); %Get vertex point and step down each side of figure
    step=sqrt(delx^2+dely^2);
    v0=[delx,dely]; v1=[x(n+1)-x1, y(n+1)-y1];
    while ( v0*v1' >= 0) %Vectors in same direction?
        k=k+1; 
        d(k)= sqrt((c(1)-x1)^2+(c(2)-y1)^2); %Find distance function 
        pause(0.1);  %Pause and display results 
        plot(x1,y1,'r+'); plot([c(1),x1],[c(2),y1],'g-'); 
        x1=x1+delx; y1=y1+dely; %Update to new point on side of figure 
        v1=[x(n+1)-x1, y(n+1)-y1];
     end 
end 
hold off;
k=0:length(d)-1;
subplot(2,1,2); plot(k,d,'k.','MarkerSize',5); grid on; axis([0,max(k)+1,0,max(d)+1]);
str=sprintf('Distance Function of Figure %d',fig); title(str); hold off; 
end
%%
function [f1 f2 Rmax Imax Rmin Imin]=figure_match(df1,df2)
clear rho;
[f1,f2]=stretch(df1,df2);
for k=1:length(f1)
    rho(k)=correlate(k,f1,f2);
end
[Rmax Imax]= max(rho);
[Rmin Imin]= min(rho);
end
%%
%Stretch interpolates shorter vector to make equal to longer
function [x,y]=stretch(xin,yin)
Nx=length(xin); Ny=length(yin);
if (Nx < Ny)    
     %If xin is shorter than yin
     pts = 1:Nx/Ny:Nx+1;
     xin=[xin,xin(end)]
     pts(1:Ny)
     xin = xin(round(pts(1:Ny)))
elseif (Ny < Nx) 
     %If yin is shorter than xin
     pts = 1:Ny/Nx:Ny+1;
     yin=[yin,yin(end)]
     yin = yin(round(pts(1:Nx)));
end
x=xin; y=yin; %Assign matched vectors to outputs
end
%%
function [rho] = correlate(k, x, y0)
% correlate.m - How much are 2 sequences alike?
% Usage: [rho] = correlate(k, x, y);
% inputs: k = shift (integer between 0 and length(y)-1)
% x, y = the sequences to correlate
% output: rho = the correlation coefficient -1..0..1
% Note: This function assumes length(x) = length(y).
N = length(x);
y = [y0(k+1:length(y0)), y0(1:k)]; % Shift y by k units
sxx = x*x.' - sum(x)*sum(x)/N;
syy = y*y.' - sum(y)*sum(y)/N;
sxy = x*y.' - sum(x)*sum(y)/N;
rho = sxy / sqrt(sxx*syy); % Correlation coefficient for lag k
end
%}
