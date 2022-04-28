% Kenny Khut
% CECS 463 Fall 2020
% Lab 07
% Date: November 15, 2020
clear all; close all; clc; format compact;
str=datestr(now); fprintf('Matlab Time Stamp: %s\n',str);
addpath('C:\Users\Kenny\Desktop\CECS 463\Assignments\Labs\functions',path);

%% Problem 5.1
x1 = [4,1,-1,1]; N1 = 4;
Xk1 = dfs(x1,N1)'

x2 = [0,0,2j,0,2j,0]; N2 = 6;
Xk2 = dfs(x2,N2)'

%% Problem 5.2

x1 = [1j,2j,3j,4j]; N1 = 4;
Xk1 = idfs(x1,N1)'

x2 = [0,0,2,0,0]; N2 = 5;
Xk2 = idfs(x2,N2)'

%% Problem 5.3.1

n = -10:10; x = (0.6).^abs(n); N1 = length(x); M = 1000; w = (0:2*M)*pi/M; % Length of DFT
Xw = dtft(x,n,w); Xm=abs(Xw); Xa=angle(Xw)*180/pi;
figure();

subplot(2,1,1); plot(w/pi,Xm); % axis([0,1,0,5]);
title('Prob 5.3(1) DTFT Magnitude'); xlabel('\omega/\pi'); ylabel('|X(\omega)|'); grid on;

subplot(2,1,2); plot(w/pi,0*Xa); %axis([0,1,-200,200]);
title('Prob 5.3(1) DTFT Phase'); xlabel('\omega/\pi'); ylabel('\angle X(\omega)'); grid on;

%% Problem 5.3.2
n=-3:3; x=[1,2,3,4,3,2,1]; N=length(x);
x1=zeros(1,101); x1(48:54)=x(1:7); n1=-50:50; 
M=1000; w=[0:1:2*M]*pi/M; Xw=dtft(x,n,w); Xmag=abs(Xw); Xang=angle(Xw)*180/pi; 
figure(); 
subplot(2,1,1); plot(w/pi,Xmag);title('Prob 5.3(1) DTFT Magnitude'); 
xlabel('\omega/\pi'); ylabel('|X(\omega)|'); grid on; 
subplot(2,1,2); plot(w/pi,0*Xang);title('Prob 5.3(1) DTFT Phase'); 
xlabel('\omega/\pi'); ylabel('\angle X(\omega)'); grid on;
%% Problem 5.4

% problem 5.4.1)
disp('Problem 5.4(1)');
X=[10,-2+3j,3+4j,2-3j,4+5j,12]; N=10; 
X=[X,fliplr(conj(X(2:5)))]; x=real(idft(X,N)); %Get sequence x(n) 
WN=exp(-1j*2*pi/N); k=0:N-1; m=2; 
%Circular fold, shift then invert to get sequence x1(n) 
X1=circfold(X,N); X1=(WN.^(m*k)).*X1; x1=real(idft(X1,N)); 
%In time domain do the same x1n=circfoldt(x,N); 
x1n=circfold(x,N); x1n=cirshftt(x1n,m,N);
diff=sum(abs(x1-x1n)); disp([' Sum of |x1-x1n|=',num2str(diff)]);

% problem 5.4.2)
disp('Problem 5.4(2)'); X=[10,-2+3j,3+4j,2-3j,4+5j,12]; N=10; 
X=[X,fliplr(conj(X(2:5)))]; x=real(idft(X,N)) %Get sequence x(n)
WN=exp(-1j*2*pi/N); k=0:N-1; m=-5; 
%Circular shift to get sequence x1(n) 
X1=(WN.^(m*k)).*X; x1=real(idft(X1,N)); 
%In time domain do the same 
x2=cirshftt(x,m,N) 
diff=sum(abs(x2-x1)); 
disp([' Sum of |x2-x1|=',num2str(diff)]);
%% Problem 5.5

% problem 5.5.1)
disp(' (a) x=[5,4,3,2,1,0,0,1,2,3,4]; m=-5; N=12;');
x = [5,4,3,2,1,0,0,1,2,3,4];
m = -5; N = 12;
fprintf(' x=['); fprintf('%3d',x); fprintf(' ]\n');
y=cirshftf(x,m,N); y=round(real(y)); 
fprintf(' y=['); fprintf('%3d',y); fprintf(' ]\n');

% problem 5.5.2)
disp(' (b) x=[5,4,3,2,1,0,0,1,2,3,4]; m=8; N=15;');
x = [5,4,3,2,1,0,0,1,2,3,4];
m = 8; N = 15;
y=cirshftf(x,m,N); y=round(real(y));
fprintf(' x=['); fprintf('%3d',x); fprintf(' ]\n');
y=cirshftf(x,m,N); y=round(real(y));
fprintf(' y=['); fprintf('%3d',y); fprintf(' ]\n');
%% Problem 5.6

x1=[4,3,2,1]; x2=[1,2,3,4]; N=4; 
fprintf(' x1=['); fprintf('%3d',x1); fprintf(' ]\n'); 
fprintf(' x2=['); fprintf('%3d',x2); fprintf(' ]\n'); 
y=circonvf(x1,x2,N); 
fprintf('  y=['); fprintf('%3d',y); fprintf(' ]\n');


%% Problem 5.7

% problem 5.7.1
x1 = [1,1,1,1]; x2 = cos(pi/4*[0:5]); N = 8;
x3 = circonvt(x1,x2,N);
x4 = conv(x1,x2);
error=x3-x4(1:N);
fprintf('    x1=['); fprintf('%3d',x1); fprintf(' ]\n');
fprintf('    x2=['); fprintf('%8.4f',x2); fprintf(' ]\n');
fprintf('    x3=['); fprintf('%8.4f',x3); fprintf(' ]\n'); 
fprintf('    x4=['); fprintf('%8.4f',x4); fprintf(' ]\n'); 
fprintf(' x3-x4=['); fprintf('%8.4f',error); fprintf(' ]\n');
fprintf('\n');

% problem 5.7.2
N = 32; x1 = cos(2*pi/N*[0:15]); x2 = sin(2*pi/N*[0:15]);
x3 = circonvt(x1,x2,N); 
x4 = conv(x1,x2);
error=x3(1:N-1)-x4(1:N-1);
fprintf('    x1=['); fprintf('%3d',x1); fprintf(' ]\n'); 
fprintf('    x2=['); fprintf('%8.4f',x2); fprintf(' ]\n');
fprintf('    x3=['); fprintf('%8.4f',x3); fprintf(' ]\n'); 
fprintf('    x4=['); fprintf('%8.4f',x4); fprintf(' ]\n'); 
fprintf(' x3-x4=['); fprintf('%8.4f',error); fprintf(' ]\n');

%% Problem 5.8

% problem 5.8.1
 
disp('Problem 5.8(1)'); 
N=10; 
x1=sin(pi/3*[0:5]); n1=0:length(x1)-1; 
x2=cos(pi/4*[0:7]); n2=0:length(x2)-1; 
x3=circonvf(x1,x2,N); n3=0:length(x3)-1; 
fprintf(' x1=['); fprintf('%8.4f',x1); fprintf(' ]\n'); 
fprintf(' x2=['); fprintf('%8.4f',x2); fprintf(' ]\n'); 
fprintf(' x3=['); fprintf('%8.4f',x3); fprintf(' ]\n'); 
figure(); 
subplot(3,1,1); stem(n1,x1,'fill','MarkerSize',5); axis([-1,N,-2,2]); grid on; 
title('Prob. 5.8(1): x1(n)'); xlabel('n');ylabel('x1(n)'); 
subplot(3,1,2); stem(n2,x2,'fill','MarkerSize',5); axis([-1,N,-2,2]); grid on; 
title('Prob. 5.8(1): x2(n)'); xlabel('n');ylabel('x2(n)'); 
subplot(3,1,3); stem(n3,x3,'fill','MarkerSize',5); axis([-1,N,-4,4]); grid on;
title('Prob. 5.8(1): Circular Convolution x1*x2'); xlabel('n');ylabel('x3(n)');

% problem 5.8.2
disp('Problem 5.8(2)'); 
N=32; n=0:N-1;
x1=cos(2*pi/N*n); n1=0:length(x1)-1; 
x2=sin(2*pi/N*n); n2=0:length(x2)-1;
x3=circonvf(x1,x2,N); n3=0:length(x3)-1; 
fprintf(' x1=['); fprintf('%8.4f',x1); fprintf(' ]\n'); 
fprintf(' x2=['); fprintf('%8.4f',x2); fprintf(' ]\n'); 
fprintf(' x3=['); fprintf('%8.4f',x3); fprintf(' ]\n'); 
figure(); 
subplot(3,1,1); stem(n1,x1,'fill','MarkerSize',5); axis([-1,N,min(x1),max(x1)]); grid on;
title('Prob. 5.8(2): x1(n)'); xlabel('n');ylabel('x1(n)'); 
subplot(3,1,2); stem(n2,x2,'fill','MarkerSize',5); axis([-1,N,min(x2),max(x2)]); grid on;
title('Prob. 5.8(2): x2(n)'); xlabel('n');ylabel('x2(n)'); 
subplot(3,1,3); stem(n3,x3,'fill','MarkerSize',5); axis([-1,N,min(x3),max(x3)]); grid on;
title('Prob. 5.8(2): Circular Convolution x1*x2'); xlabel('n');ylabel('x3(n)');
%% Problem 5.9
disp('Problem 5.9(1-3)'); 
x1=[2,1,1,2]; n1=0:length(x1)-1; 
x2=[1,-1,-1,1]; n2=0:length(x2)-1; x=conv(x1,x2); nx=0:length(x)-1; 
fprintf(' x1=['); fprintf('%3d',x1); fprintf(' ]\n'); 
fprintf(' x2=['); fprintf('%3d',x2); fprintf(' ]\n'); 
fprintf(' x=x1*x2 =['); fprintf('%3d',x); fprintf(' ]\n'); 
N=4; 
x3=round(real(circonvf(x1,x2,N))); n3=0:length(x3)-1; 
fprintf(' N=%d x3=[',N); fprintf('%3d',x3); fprintf(' ]\n'); 
N=7; x3=round(real(circonvf(x1,x2,N))); n3=0:length(x3)-1; 
fprintf(' N=%d x3=[',N); fprintf('%3d',x3); fprintf(' ]\n'); 
N=8; x3=round(real(circonvf(x1,x2,N))); n3=0:length(x3)-1; 
fprintf(' N=%d x3=[',N); fprintf('%3d',x3); fprintf(' ]\n'); 
disp(' So N=7 will be same as linear convolution results');

%% Problem 5.10

disp('Problem 5.910(1)'); 
a=-1; b=1; x=a+(b-a)*rand(1,10^6); 
n=0:100; h=sin(0.4*pi*n); 
figure(); 
y=conv(x,h); ny=0:length(y)-1; 
subplot(2,2,1); plot(ny,y); 
title('Prob. 5.10) y=x1*x2');xlabel('n');ylabel('y(n)'); 
N=1024; y1=hsolpsav(x,h,N); ny1=0:length(y1)-1; 
subplot(2,2,2); plot(ny1,y1); 
title('Prob. 5.10) y1=((x1*x2))_{1024}');xlabel('n');ylabel('y1(n)');
N=2048; y2=hsolpsav(x,h,N); ny2=0:length(y2)-1; 
subplot(2,2,3); plot(ny2,y2); 
title('Prob. 5.10) y2=((x1*x2))_{2048}');xlabel('n');ylabel('y2(n)'); 
N=4096; y3=hsolpsav(x,h,N); ny3=0:length(y3)-1; 
subplot(2,2,4); plot(ny3,y3); 
title('Prob. 5.10) y3=((x1*x2))_{4096}');xlabel('n');ylabel('y3(n)');
