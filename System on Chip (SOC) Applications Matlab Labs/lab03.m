% Kenny Khut
% CECS 463 Fall 2020
% Lab 03
% Date: September 19, 2020
clear all; close all; clc; format compact;
str=datestr(now); fprintf('Matlab Time Stamp: %s\n',str);
addpath('C:\Users\Kenny\Desktop\CECS 463\Assignments\Labs\functions',path);
% [X] = dtft(x,n,w)
%% P1
% Compute the DTFT X(ejω) of the followin finite – duration sequence over -П ≤ ω ≤ П .

% a) x(n)=(0.6)^|n| [u(n+10)−u(n-11)]
M=5000; w=pi*(-M:M)/M; 
[x,n]= stepseq(-10,-10,10); 
x=((0.6).^abs(n) .* x); 
X=dtft(x,n,w);Xm=abs(X); Xa=angle(X); 
figure(); subplot(2,1,1); plot(w/pi,Xm); grid on; 
title('Problem 1(a) Magnitude of DTFT[x(n)]'); xlabel('w/\pi'); ylabel('|X(\omega)|');
subplot(2,1,2); plot(w/pi,Xa); grid on; 
title('Problem 1(a) Phase of DTFT[x(n)]'); xlabel('w/\pi'); ylabel('\angleH(\omega)');

% b) x(n)=n(0.9)^n [u(n)-u(n-21)]
[x,n]=stepseq(0,0,20); x=(n.*((0.9).^n)) .* x; 
X=dtft(x,n,w);Xm=abs(X); Xa=angle(X); 
figure(); subplot(2,1,1); plot(w/pi,Xm); grid on; 
title('Problem 1(b) Magnitude of DTFT[x(n)]'); xlabel('w/\pi'); ylabel('|X(\omega)|'); 
subplot(2,1,2); plot(w/pi,Xa); grid on; 
title('Problem 1(b) Phase of DTFT[x(n)]'); xlabel('w/\pi'); ylabel('\angleH(\omega)');

%% P2
% Determine analytically the DTFT using its definition of each of the following sequences.

% a) x(n) =(0.6)|n| [u(n+10)−u(n-11)]
M=5000; w=pi*[0:M]/M; a=0.6*exp(1j*w); N=11; 
sum=(1-a.^N)./(1-a); X=sum+conj(sum)-1; 
Xm=abs(X); Xa=angle(X); 
figure(); 
subplot(2,1,1); plot(w/pi,Xm); grid on; 
title('Problem 2(a) Magnitude of DTFT[x(n)]'); xlabel('w/\pi'); ylabel('|X(\omega)|'); 
subplot(2,1,2); plot(w/pi,Xa); grid on; 
title('Problem 2(a) Phase of DTFT[x(n)]'); xlabel('w/\pi'); ylabel('\angleH(\omega)');

% b) x(n) =4(-0.7)^n cos(0.25πn)u(n).
M=5000; w=pi*(0:M)/M; %Euler: cos(w)=exp(jw)/2 + exp(-jw/2) 
a1=(-0.7)*exp(1j*0.25*pi); a2=(-0.7)*exp(-1j*0.25*pi); 
X=4*( 1.0 ./ (1-a1*exp(-1j*w)) + 1.0 ./ (1-a2*exp(-1j*w)) )/2; 
Xm=abs(X); Xa=angle(X)*180/pi; 
figure(); 
subplot(2,1,1); plot(w/pi,Xm); grid on; 
title('Problem 2(b) Magnitude of DTFT[x(n)]'); 
xlabel('w/\pi'); ylabel('|X(\omega)|'); 
subplot(2,1,2); plot(w/pi,Xa); grid on; 
title('Problem 2(b) Phase of DTFT[x(n)]'); 
xlabel('w/\pi'); ylabel('\angleH(\omega) degrees');

%% P3
% Determine the sequences corresponding to the following DTFTS.

% a) X(e^(jω)) =[1-6cos(3ω)+8cos(5ω)] e^(-j3ω)

disp('Problem 3(a)'); 
disp(' Using Euler'' Identity:'); 
disp(' X(w)= [1 -6(exp(j3w)-exp(-j3w))/2 + 8(exp(j5w)-exp(-j5w))/2]exp(-j3w)'); 
disp(' = 4exp(j2w) - 3 + 1exp(-j3w) - 3exp(-j6w) + 4exp(-j8w)'); 
disp(' So x=[4, 0, 3*, 0, 0, 1, 0, 0, 3, 0, 4] with n=[-2:8]');

% b) X(e^(jω)) =2+j4 sin(2ω)-5cos(4ω).

disp('Problem 3(b)'); 
disp(' Using Euler'' Identity:'); 
disp(' X(w)= 2+j(4(exp(j2w)-exp(-j2w))/(2j)-5(exp(j4w)+exp(-j4w))/2'); 
disp(' = (5/2)exp(j4w) +2exp(j2w)+2-2exp(-j2w)-(5/2)exp(-j4w)'); 
disp(' So x=[-5/2, 0, 2, 0, 2*, 0, -2, 0, -5/2] with n=[-4:4]');
%% P4
% Determine the frequency response function H( ejω). 
% Plot the magnitude response and phase response over the interval [-П,П].

% a) h(n) ==(0.9)^|n|
 
M=5000; w=pi*(-M:M)/M; 
disp(' DTFT[x(n)]= 1.0./(1-(0.9)*exp(1j*w))+1.0./(1-(0.9)*exp(-1j*w))-1'); 
H=1.0./(1-(0.9)*exp(1j*w))+1.0./(1-(0.9)*exp(-1j*w))-1; 
figure(); Hm=abs(H); Ha=angle(H); subplot(2,1,1); plot(w/pi,Hm); 
grid on; title('Problem 4(a) Magnitude of DTFT[h(n)=0.9^{|n|})]'); 
xlabel('w/\pi'); ylabel('|H(\omega)|'); 
subplot(2,1,2); plot(w/pi,Ha); grid on; 
title('Problem 4(a) Phase of DTFT[h(n)=0.9^{|n|})]'); 
xlabel('w/\pi'); ylabel('\angleH(\omega)');
 
% b) h(n) ==(0.5)^|n| cos(0.1?n)
M=5000; w=pi*(-M:M)/M; 
%Euler: cos(w)=exp(jw)/2 + exp(-jw/2) 
% h(n)=0.5^|n|cos(0.1 pi n) u(n) 
% =0.5^|n|(exp(j0.1 pi n)/2+ 0.5^|n|(exp(-j0.1 pi n))/2 
a=0.5*exp( 1j*0.1*pi); H1=1.0./(1-a*exp(1j*w))+1.0./(1-a*exp(-1j*w))-1; 
a=0.5*exp(-1j*0.1*pi); H2=1.0./(1-a*exp(1j*w))+1.0./(1-a*exp(-1j*w))-1; 
H=(H1+H2)/2; 
figure(); 
Hm=abs(H); Ha=angle(H); 
subplot(2,1,1); plot(w/pi,Hm); grid on; 
title('Problem 4(b) Magnitude of DTFT[h(n)=0.9^{|n|})]'); 
xlabel('w/\pi'); ylabel('|H(\omega)|'); 
subplot(2,1,2); plot(w/pi,Ha); grid on; 
title('Problem 4(b) Phase of DTFT[h(n)=0.9^{|n|})]'); 
xlabel('w/\pi'); ylabel('\angleH(\omega) radians')

%% P5
% function [H] = freqresp(b,a,w)
% Frequency response function from difference equation
% [H] = freqresp(b,a,w)
% H = frequency response array evaluated at w frequencies
% b = numerator coefficient array
% a = denominator coefficient array (a(1)=1)
% w = frequency location array
% m = 0:length(b)-1; l = 0:length(a)-1; % index arrays m and l
% num = b * exp(-1j*m'*w); % Numerator calculations
% den = a * exp(-1j*l'*w); % Denominator calculations
% H = num ./ den; % Frequency response

%% P6
% Determine H(e^jw), and plot its magnitude and phase

% a) y(n) =x(n)-x(n2)+0.95y(n-1)-0.9025y(n-2)
M=5000; w=pi*(-M:M)/M; 
% 6(a) y(n) =x(n)-x(n-2)+0.95y(n-1)-0.9025y(n-2) 
a=[1,-0.95,0.9025]; b=[1,0,-1]; H=freqresp(b,a,w); 
figure(); Hm=abs(H); Ha=angle(H); 
subplot(2,1,1); plot(w/pi,Hm); grid on; 
title('Problem 6(a) Magnitude of DTFT[h(n)=0.9^{|n|})]'); 
xlabel('w/\pi'); ylabel('|H(\omega)|'); 
subplot(2,1,2); plot(w/pi,Ha); grid on; 
title('Problem 6(a) Phase of DTFT[h(n)=0.9^{|n|})]'); 
xlabel('w/\pi'); ylabel('\angleH(\omega) radians')

% b) y(n) =x(n)-1.7678x(n-1)+ 1.5625x(n-2)+1.1314y(n-1)-0.64y(n-2)
a=[1,-1.1314,0.64]; b=[1,-1.7678,1.5625]; H=freqresp(b,a,w); 
figure(); Hm=abs(H); Ha=angle(H); 
subplot(2,1,1); plot(w/pi,Hm); grid on; 
title('Problem 6(b) Magnitude of DTFT[h(n)=0.9^{|n|})]'); 
xlabel('w/\pi'); ylabel('|H(\omega)|'); 
subplot(2,1,2); plot(w/pi,Ha); grid on; 
title('Problem 6(b) Phase of DTFT[h(n)=0.9^{|n|})]'); 
xlabel('w/\pi'); ylabel('\angleH(\omega) radians')

%% P7
% Determine the steady response of the system through x(n) and proicis
% it through the filter function to obtain y(n).
% Compare y(n) with the steady state response

% a) x(n) ==1+cos(0.5πn + π/2)
M=5000; w=pi*(-M:M)/M;
b=[]; b(1:2:7)=1; n=0:3; a=[]; a(1:2:7)=(0.81).^n; 
n=0:length(a)-1; m=0:length(b)-1; 
% x(n)=1+cos(0.5pi*n)+pi/2) --> 2 frequncies of w=0,w=0.5pi 
w1=0; w2=0.5*pi; 
%Evaluate H(w) at these points 
w=[w1,w2]; H=freqresp(b,a,w); Hm=abs(H); 
yss=(Hm(1)+H(2)).*ones(1,201); 
n=0:200; x=1+cos(0.5*pi*n+pi/2); yf=filter(b,a,x); 
figure(); subplot(2,1,1); stem(n,yss); title('Problem 7(a) Steady State Response'); 
xlabel('n'); ylabel('yss(n)'); 
axis([0,200,0,2.5]); grid on; subplot(2,1,2); stem(n,yf); 
title('Problem 7(a) Filter Output'); xlabel('n'); 
ylabel('yf(n)'); axis([0,200,0,2.5]); grid on;

% b) x(n) ==2 sin(πn/4) + 3 cos (3πn/4)
b=[]; b(1:2:7)=1; n=0:3; a=[]; a(1:2:7)=(0.81).^n; n=0:length(a)-1; m=0:length(b)-1; 
% x(n)=2sin(pin/4)+3cos(3pin/4) --> 2 frequncies of w=pi/4,w=3pi/4 
w1=pi/4; w2=3*pi/4; 
%Evaluate H(w) at these points 
w=[w1,w2]; H=freqresp(b,a,w); Hm=abs(H); 
yss=(Hm(1)+H(2)).*ones(1,201); 
n=0:200; x=2*sin(pi*n/4)+3*cos(3*pi*n/4); yf=filter(b,a,x); 
figure(); subplot(2,1,1); stem(n,yss); 
title('Problem 7(b) Steady State Response'); 
xlabel('n'); ylabel('yss(n)'); 
axis([0,200,-4,4]); grid on; subplot(2,1,2); stem(n,yf); 
('Problem 7(b) Filter Output'); xlabel('n'); 
ylabel('yf(n)'); axis([0,200,-4,4]); grid on;
