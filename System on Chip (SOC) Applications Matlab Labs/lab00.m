% Kenny Khut
% CECS 463 Fall 2020
% Lab 00
% Date: August 27, 2020
clear all; close all; clc; format compact;
str=datestr(now); fprintf('Matlab Time Stamp: %s\n',str);
%% P1
% x(t) = A cos (ωt + θ) + DC Offset.
% Determine the cosine’s DC offset, amplitude A, angular frequency  ω , and phase angles  θ  in degrees.

disp('Problem 1')
xmax=0.75; xmin=-2.75; p=0.04; x0=-2.5; f=1/p; w=2*pi*f; A=(xmax-xmin)/2; dcOffset=(xmax+xmin)/2;
t0=0.037; theta=((acos((xmin-dcOffset)/A))-w*t0)*180/pi;
%%dcOffset = -1; A = 1.75; w = 2*pi*25; theta = 25;
fprintf(' DC offset = %4.2f, A = %4.2f, w = %4.2f, theta = %4.2f degrees\n', ...
    dcOffset,A,w,theta);
t=0; xchk=A*cos(w*t+theta*pi/180)+dcOffset; %Check the theta value at t=0 
fprintf(' Check: x(t=0)= %4.2f (should be about -2.5)\n',xchk); t=0.037; 
xchk=A*cos(w*t+theta*pi/180)+dcOffset; %Check the theta value at t=0.037 
fprintf(' Check: x(t=0.037)= %4.2f (should be about -2.75)\n',xchk);
fprintf('\n')
%% P2
% 2(a) Verify complex operations
% 2(b) Plot individual complex points
% 2(c) Plot points represented as vectors

disp('Problem 2(a)')
x=1-2j; y=-1+1j;
a=x+y; b=x-y; c=x*y; d=x/y; e=x^y;
fprintf('x=(%5.2f) + (%5.2f)j \n',real(x),imag(x)); 
fprintf('y=(%5.2f) + (%5.2f)j \n',real(y),imag(y)); 
fprintf(' (1)a=x+y=(%5.2f) + (%5.2f)j \n',real(a),imag(a)); 
fprintf(' (2)b=x-y=(%5.2f) + (%5.2f)j \n',real(b),imag(b)); 
fprintf(' (3)c=x*y=(%5.2f) + (%5.2f)j \n',real(c),imag(c)); 
fprintf(' (4)d=x/y=(%5.2f) + (%5.2f)j \n',real(d),imag(d)); 
fprintf(' (5)e=x^y=(%5.2f) + (%5.2f)j \n',real(e),imag(e));
fprintf('\n')

disp('Problem 2(b)')
figure(); hold on;
xlabel('REAL AXIS'); ylabel('IMAGINARY AXIS');
plot(real(x),imag(x),'r*'); axis([-5,5,-5,5]);
plot(real(y),imag(y),'r*');
plot(real(a),imag(a),'b*');
plot(real(b),imag(b),'g*');
plot(real(c),imag(c),'k*');
plot(real(d),imag(d),'y*');
plot(real(e),imag(e),'m*');
title('1(b) Complex Points'); 
fprintf(' See Figure 1 for plot of results\n');
fprintf('\n')

disp('Problem 2(c)')
fprintf(' (1)a=x+y=(%5.2f) magnitude at angle (%5.2f) degrees\n',abs(a),angle(a)*180/pi); 
fprintf(' (2)b=x+y=(%5.2f) magnitude at angle (%5.2f) degrees\n',abs(b),angle(b)*180/pi); 
fprintf(' (3)c=x+y=(%5.2f) magnitude at angle (%5.2f) degrees\n',abs(c),angle(c)*180/pi); 
fprintf(' (4)d=x+y=(%5.2f) magnitude at angle (%5.2f) degrees\n',abs(d),angle(d)*180/pi); 
fprintf(' (5)e=x+y=(%5.2f) magnitude at angle (%5.2f) degrees\n',abs(e),angle(e)*180/pi);
figure(); hold on;
xlabel('REAL AXIS'); ylabel('IMAGINARY AXIS');
plot(real(x),imag(x),'r*'); axis([-5,5,-5,5]);
plot(real(y),imag(y),'r*');
plot(real(a),imag(a),'b*');
plot(real(b),imag(b),'g*');
plot(real(c),imag(c),'k*');
plot(real(d),imag(d),'y*');
plot(real(e),imag(e),'m*');
plot([0, real(x)], [0,imag(x)], 'r');
plot([0, real(y)], [0,imag(y)], 'r');
plot([0, real(a)], [0,imag(a)], 'b');
plot([0, real(b)], [0,imag(b)], 'g');
plot([0, real(c)], [0,imag(c)], 'k');
plot([0, real(d)], [0,imag(d)], 'y');
plot([0, real(e)], [0,imag(e)], 'm');
title('2(c) Complex Points as Vectors'); 
legend('x=1-2j','y=-1+1j','a=x+y=0-1j','b=x-y=2-3j','c=x*y=1+3j',... 
    'd=x-y=(-1.5+0.5j)/2','e=x^y=-0.45+1.28j'); hold off;
fprintf('\n')

%% P3
% Plot of two sinusoids as phasors in the complex lane

disp('Problem 3') 
fig=figure(); hold on; axis([-5,5,-5,5]); grid on; 
set(fig,'defaultLegendAutoUpdate','off');%...so legend will work right here 
x=3*exp(1j*45*pi/180); y=2*exp(1j*(-150-90)*pi/180); xmag=abs(x); xang=angle(x); ymag=abs(y); yang=angle(y); 
fprintf(' x=(%5.2f) + (%5.2f)j = ',real(x),imag(x)); 
fprintf('(%5.2f) magnitude at angle (%5.2f) degrees\n',abs(x),angle(x)*180/pi); 
fprintf(' y=(%5.2f) + (%5.2f)j = ',real(y),imag(y)); 
fprintf('(%5.2f) magnitude at angle (%5.2f) degrees\n',abs(y),angle(y)*180/pi);

plot(real(x),imag(x),'b*'); 
plot(real(y),imag(y),'r*');
legend('x=3cos(25t+45)','y=2sin(25t-150)'); 
plot([0,real(y)],[0,imag(y)],'r'); 
plot([0,real(x)],[0,imag(x)],'b'); 
xlabel('REAL AXIS'); ylabel('IMAGINARY AXIS'); 
title('3. Phasors in Complex Plane'); 
hold off;
fprintf(' See Figure 1 for phasors x, y\n');
fprintf('\n')

%% P4
% Plot of two sinusoids as phasors in the complex lane with sum of two phasors

disp('Problem 4');
fig=figure(); hold on; axis([-5,5,-5,5]); grid on; 
set(fig,'defaultLegendAutoUpdate','off');%...so legend will work right here 
x=3*exp(1j*45*pi/180); y=2*exp(1j*(-150-90)*pi/180); xmag=abs(x); xang=angle(x); ymag=abs(y); yang=angle(y);
s=x+y; 
plot(real(x),imag(x),'b*'); 
plot(real(y),imag(y),'r*'); 
plot(real(s),imag(s),'g*'); 
legend('x=3cos(25t+45)','y=2sin(25t-150)','s=4cos(25t+74)'); 
plot([0,real(y)],[0,imag(y)],'r'); 
plot([0,real(x)],[0,imag(x)],'b'); 
plot([0,real(s)],[0,imag(s)],'g'); 
xlabel('REAL AXIS'); ylabel('IMAGINARY AXIS'); 
title('4. Sum of 2 Phasors in Complex Plane'); 
fprintf(' s=(%5.2f) + (%5.2f)j = ',real(s),imag(s)); 
fprintf('(%5.2f) magnitude at angle (%5.2f) degrees\n',abs(s),angle(s)*180/pi); 
hold off;
disp(' See Figure 2 for phasors x, y and s');
